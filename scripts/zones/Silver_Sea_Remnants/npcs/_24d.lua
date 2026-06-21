-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: _24d
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    player:startEvent(300)
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == 300 and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()
        door:setUntargetable(true)
    end
end

return entity
