-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    if npc:getLocalVar('open') == 1 then
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    else
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        SpawnMob(ID.mob[5][1].chariot, instance)
        instance:setProgress(0)

        local doorW = GetNPCByID(ID.npc[4][1].DOOR1, instance)
        if doorW then
            doorW:setUntargetable(true)
        end

        door:setUntargetable(true)
    end
end

return entity
