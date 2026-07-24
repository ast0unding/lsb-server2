/************************************************************************
 * Era Dynamis (level 75 cap) support functions
 *
 * Hourglass item handling for the era entry flow (the Perpetual
 * Hourglass carries its instance token in the item's extra data), plus
 * SQL-backed instance/participant tracking used by !restoredyna.
 ************************************************************************/

#include "common/database.h"
#include "common/logging.h"

#include "map/entities/char_entity.h"
#include "map/entities/mob_entity.h"
#include "map/enums/item_lockflg.h"
#include "map/item_container.h"
#include "map/items/item.h"
#include "map/lua/lua_base_entity.h"
#include "map/lua/luautils.h"
#include "map/packets/s2c/0x01d_item_same.h"
#include "map/packets/s2c/0x01f_item_list.h"
#include "map/utils/charutils.h"
#include "map/utils/itemutils.h"
#include "map/utils/moduleutils.h"

#include "data/enums/mob_type.h"

#include <ctime>
#include <unordered_map>

namespace
{
    constexpr uint16 HOURGLASS_ID = 4237; // Perpetual Hourglass

    // View over the hourglass's CItem extra data (must be 24 bytes).
    struct HourglassExdata
    {
        uint8  _unused0[2]; // 0x00
        uint8  flag;        // 0x02 - marked 1 for module-created hourglasses
        uint8  _unused1;    // 0x03
        uint32 registrant;  // 0x04 - character id of the original registrant
        uint32 timepoint;   // 0x08 - instance expiry timestamp shown by the glass
        uint32 created;     // 0x0C - creation timestamp
        uint8  zone;        // 0x10 - dynamis zone id
        uint8  _unused2[3]; // 0x11
        uint32 token;       // 0x14 - instance token
    };

    static_assert(sizeof(HourglassExdata) == CItem::extra_size);

    uint32 currentEpoch()
    {
        return static_cast<uint32>(std::time(nullptr));
    }

    void buildHourglass(CCharEntity* PChar, uint8 zoneID, uint32 dynamisToken, uint32 registrantID)
    {
        auto PItem = xi::items::spawn(HOURGLASS_ID);
        if (!PItem)
        {
            ShowError("era_dynamis: unable to spawn Perpetual Hourglass item");
            return;
        }

        PItem->setQuantity(1);

        auto& exdata      = PItem->exdata<HourglassExdata>();
        exdata.flag       = 1;
        exdata.registrant = registrantID;
        exdata.created    = currentEpoch();
        exdata.zone       = zoneID;
        exdata.token      = dynamisToken;

        charutils::AddItem(PChar, LOC_INVENTORY, std::move(PItem));
    }
}; // namespace

class EraDynamisModule : public CPPModule
{
    void OnInit() override
    {
        TracyZoneScoped;

        // player:createHourglass(dynaZoneID, dynamisToken)
        lua["CBaseEntity"]["createHourglass"] = [](CLuaBaseEntity* PLuaBaseEntity, uint8 zoneID, uint32 dynamisToken)
        {
            auto* PChar = dynamic_cast<CCharEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (PChar)
            {
                buildHourglass(PChar, zoneID, dynamisToken, PChar->id);
            }
        };

        // player:duplicateHourglass(dynaZoneID, dynamisToken, originalRegistrantID)
        lua["CBaseEntity"]["duplicateHourglass"] = [](CLuaBaseEntity* PLuaBaseEntity, uint8 zoneID, uint32 dynamisToken, uint32 originalRegistrant)
        {
            auto* PChar = dynamic_cast<CCharEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (PChar)
            {
                for (int i = 0; i < 2; ++i)
                {
                    buildHourglass(PChar, zoneID, dynamisToken, originalRegistrant);
                }
            }
        };

        // player:updateHourglass(dynamisToken, timepoint)
        // Refreshes the expiry timestamp on every matching hourglass.
        lua["CBaseEntity"]["updateHourglass"] = [](CLuaBaseEntity* PLuaBaseEntity, uint32 dynamisToken, uint32 timepoint)
        {
            auto* PChar = dynamic_cast<CCharEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (!PChar)
            {
                return;
            }

            uint8 itemsUpdated = 0;
            PChar->getStorage(LOC_INVENTORY)->ForEachItem([&](CItem* PItem)
            {
                if (PItem && PItem->getID() == HOURGLASS_ID && PItem->exdata<HourglassExdata>().token == dynamisToken)
                {
                    PItem->exdata<HourglassExdata>().timepoint = timepoint;
                    PChar->pushPacket<GP_SERV_COMMAND_ITEM_LIST>(PItem, ItemLockFlg::Normal);
                    ++itemsUpdated;
                }
            });

            if (itemsUpdated)
            {
                PChar->pushPacket<GP_SERV_COMMAND_ITEM_SAME>(PChar);
            }
        };

        // player:validateHourglass(dynamisToken) -> bool
        lua["CBaseEntity"]["validateHourglass"] = [](CLuaBaseEntity* PLuaBaseEntity, uint32 dynamisToken) -> bool
        {
            auto* PChar = dynamic_cast<CCharEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (!PChar)
            {
                return false;
            }

            bool found = false;
            PChar->getStorage(LOC_INVENTORY)->ForEachItem([&](CItem* PItem)
            {
                if (PItem && PItem->getID() == HOURGLASS_ID && PItem->exdata<HourglassExdata>().token == dynamisToken)
                {
                    found = true;
                }
            });

            return found;
        };

        // mob:setMobType(xi.mobType.X)
        // Dynamic entities need their type forced to Battlefield.
        lua["CBaseEntity"]["setMobType"] = [](CLuaBaseEntity* PLuaBaseEntity, uint8 mobType)
        {
            if (auto* PMob = dynamic_cast<CMobEntity*>(PLuaBaseEntity->GetBaseEntity()))
            {
                PMob->m_Type = static_cast<xi::MobType>(mobType);
            }
        };

        // mob:resolveSpeciesFamily()
        // InstantiateDynamicMob copies the pool's species but never resolves
        // the family, so every dynamic entity spawns with family 0. All
        // family-keyed behavior (statue detection, child job tables, MDB,
        // EES) depends on it. Call before spawn() so the core's stat setup
        // sees the right family too.
        lua["CBaseEntity"]["resolveSpeciesFamily"] = [](CLuaBaseEntity* PLuaBaseEntity)
        {
            static std::unordered_map<uint16, uint16> speciesFamilyCache;

            auto* PMob = dynamic_cast<CMobEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (!PMob)
            {
                return;
            }

            auto it = speciesFamilyCache.find(PMob->m_Species);
            if (it == speciesFamilyCache.end())
            {
                uint16 familyId = 0;

                const auto rset = db::preparedStmt("SELECT familyID FROM mob_species_system WHERE speciesID = ?", PMob->m_Species);
                if (rset && rset->rowsCount() && rset->next())
                {
                    familyId = rset->get<uint16>("familyID");
                }
                else
                {
                    ShowError("era_dynamis: no mob_species_system entry for species %u", PMob->m_Species);
                }

                it = speciesFamilyCache.emplace(PMob->m_Species, familyId).first;
            }

            PMob->m_Family = it->second;
        };

        // player:getDynaInstance() -> most recent instance id the player registered for
        lua["CBaseEntity"]["getDynaInstance"] = [](CLuaBaseEntity* PLuaBaseEntity) -> uint32
        {
            auto* PChar = dynamic_cast<CCharEntity*>(PLuaBaseEntity->GetBaseEntity());
            if (PChar)
            {
                const auto rset = db::preparedStmt("SELECT COALESCE(MAX(instanceid), 0) AS instanceid "
                                                   "FROM dynamis_participants WHERE charid = ?",
                                                   PChar->id);
                if (rset && rset->rowsCount() && rset->next())
                {
                    return rset->get<uint32>("instanceid");
                }
            }

            return 0;
        };

        // RegisterDynamisInstance(zoneID, charID) -> new instance id
        lua["RegisterDynamisInstance"] = [](uint32 zoneID, uint32 charID) -> uint32
        {
            uint32 instanceID = 1;

            const auto rset = db::preparedStmt("SELECT COALESCE(MAX(instanceid), 0) AS instanceid FROM dynamis_instances");
            if (rset && rset->rowsCount() && rset->next())
            {
                instanceID = rset->get<uint32>("instanceid") + 1;
            }

            if (!db::preparedStmt("INSERT INTO dynamis_instances VALUES (?, ?, ?)", instanceID, zoneID, charID))
            {
                ShowError("era_dynamis: failed to register dynamis instance");
                return 0;
            }

            return instanceID;
        };

        // AddDynamisParticipant(instanceID, charID)
        lua["AddDynamisParticipant"] = [](uint32 instanceID, uint32 charID) -> bool
        {
            return db::preparedStmt("REPLACE INTO dynamis_participants VALUES (?, ?)", instanceID, charID) != nullptr;
        };

        // ResetDynamisInstance(instanceID)
        // Clears the re-entry lockout for every registered participant.
        lua["ResetDynamisInstance"] = [](uint32 instanceID)
        {
            const auto rset = db::preparedStmt("SELECT charid FROM dynamis_participants WHERE instanceid = ?", instanceID);
            if (!rset)
            {
                return;
            }

            while (rset->next())
            {
                db::preparedStmt("UPDATE char_vars SET value = 0 "
                                 "WHERE charid = ? AND varname = 'DynaReservationStart'",
                                 rset->get<uint32>("charid"));
            }
        };

        // SaveDynamisSnapshot(instanceID, { mobIndex, ... })
        lua["SaveDynamisSnapshot"] = [](uint32 instanceID, sol::table indicies)
        {
            if (!db::preparedStmt("DELETE FROM dynamis_instance_state WHERE instanceid = ?", instanceID))
            {
                ShowDebug(fmt::format("era_dynamis: failed to clear dynamis_instance_state for instance {}", instanceID));
            }

            for (const auto& [_, value] : indicies)
            {
                const auto mobIndex = value.as<uint32>();
                if (mobIndex == 0)
                {
                    continue;
                }

                if (!db::preparedStmt("REPLACE INTO dynamis_instance_state VALUES (?, ?)", instanceID, mobIndex))
                {
                    ShowDebug(fmt::format("era_dynamis: failed to save state for instance {} mob index {}", instanceID, mobIndex));
                }
            }
        };

        // LoadDynamisSnapshot(instanceID) -> { mobIndex, ... }
        lua["LoadDynamisSnapshot"] = [](uint32 instanceID) -> sol::table
        {
            auto mobIndicies = ::lua.create_table();

            const auto rset = db::preparedStmt("SELECT mobindex FROM dynamis_instance_state WHERE instanceid = ?", instanceID);
            if (rset)
            {
                while (rset->next())
                {
                    mobIndicies.add(rset->get<uint32>("mobindex"));
                }
            }

            return mobIndicies;
        };
    }
};

REGISTER_CPP_MODULE(EraDynamisModule);
