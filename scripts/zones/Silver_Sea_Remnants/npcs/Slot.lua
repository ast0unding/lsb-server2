-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: Slot
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.SLOT_TRIGGER)
end

entity.onTrade = function(player, npc, trade)
    local instance = npc:getInstance()
    if not instance then
        return
    end

    if npcUtil.tradeHasExactly(trade, xi.item.ZHAYOLM_CARD) then
        local mob = GetMobByID(ID.mob[3][2].don, instance)
        if mob and not mob:isSpawned() then
            player:tradeComplete()
            SpawnMob(ID.mob[3][2].don, instance):updateClaim(player)
            npc:setStatus(xi.status.DISAPPEAR)
        end
    end
end

return entity
