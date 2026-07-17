-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    local instance = npc:getInstance()
    if npc:getLocalVar('open') == 0 then
        if instance:getLocalVar('door6_opened') == 1 then
            player:messageSpecial(ID.text.DOOR_IS_SEALED)
        else
            player:messageSpecial(ID.text.DOOR_IS_SEALED_MYSTERIOUS)
        end

    elseif instance:getLocalVar('door6_opened') == 1 then
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    elseif instance:getProgress() < 10 then
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    else
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)

        local instance = door:getInstance()
        local GATEGUARD_E = { ID.mob[3][4].rampart1, ID.mob[3][4].rampart2, ID.mob[3][4].rampart3, ID.mob[3][4].rampart4 }

        math.randomseed(os.time() + instance:getID())
        math.random(); math.random(); math.random()
        instance:setLocalVar('GATE_E', GATEGUARD_E[math.random(#GATEGUARD_E)])

        for i = 3, 4 do
            for
                id = ID.mob[3][i].mobs_start,
                ID.mob[3][i].mobs_end
            do
                SpawnMob(id, instance)
            end

            SpawnMob(ID.mob[3][i].rampart1, instance)
            SpawnMob(ID.mob[3][i].rampart2, instance)
            SpawnMob(ID.mob[3][i].rampart3, instance)
            SpawnMob(ID.mob[3][i].rampart4, instance)
        end

        instance:setProgress(10)
        instance:setLocalVar('door5_opened', 1)
        door:setUntargetable(true)
    end
end

return entity
