-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    local instance = npc:getInstance()

    if instance:getLocalVar('floor3_choice') == 1 then
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    else
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        instance:setLocalVar('floor3_choice', 2)

        for i = 1, 2 do
            for id = ID.mob[4][i].mobs_start, ID.mob[4][i].mobs_end do
                SpawnMob(id, instance)
            end
        end

        SpawnMob(ID.mob[4][1].rampart1, instance)
        SpawnMob(ID.mob[4][1].rampart2, instance)
        SpawnMob(ID.mob[4][1].rampart3, instance)
        SpawnMob(ID.mob[4][1].rampart4, instance)

        instance:setStage(4)
        instance:setProgress(1)

        door:setUntargetable(true)
    end
end

return entity
