-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: _24e
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    if npc:getInstance():getProgress() == 0 then
        player:startEvent(300)
    else
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == 300 and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        if ID.mob[2] and ID.mob[2][2] and ID.mob[2][2].deadpan then
            SpawnMob(ID.mob[2][2].deadpan, instance)
        end

        if ID.npc[2] and ID.npc[2][1] and ID.npc[2][1].SOCKET then
            local socket = GetNPCByID(ID.npc[2][1].SOCKET, instance)
            if socket then
                socket:setStatus(xi.status.NORMAL)
            end
        end

        instance:setProgress(2)
        door:setUntargetable(true)
    end
end

return entity
