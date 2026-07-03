-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    local instance = npc:getInstance()
    if instance:getLocalVar('door8_opened') == 1 then
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    else
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        for id = ID.mob[3][2].mobs_start, ID.mob[3][2].mobs_end do
            SpawnMob(id, instance)
        end

        instance:setLocalVar('door7_opened', 1)

        door:setUntargetable(true)
    end
end

return entity
