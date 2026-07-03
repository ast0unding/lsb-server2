-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    player:startEvent(xi.salvage.csid.DOOR_OPEN)
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        local instance = door:getInstance()
        if not instance then
            return
        end

        door:setAnimation(xi.animation.OPEN_DOOR)
        door:setUntargetable(true)
        instance:setProgress(3)
    end
end

return entity
