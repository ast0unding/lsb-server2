-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    if npc:getInstance():getProgress() == 0 then
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    else
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        if ID.mob[2] and ID.mob[2][4] then
            for id = ID.mob[2][4].mobs_start, ID.mob[2][4].mobs_end do
                SpawnMob(id, instance)
            end
        end

        instance:setProgress(4)
        door:setUntargetable(true)
    end
end

return entity
