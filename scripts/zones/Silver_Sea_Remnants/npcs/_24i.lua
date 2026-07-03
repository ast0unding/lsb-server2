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
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()
        door:setUntargetable(true)
    end
end

return entity
