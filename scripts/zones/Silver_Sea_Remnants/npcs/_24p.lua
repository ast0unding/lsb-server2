-----------------------------------
-- Instance: Silver Sea Remnants
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    local instance = npc:getInstance()

    if instance:getLocalVar('floor3_choice') == 2 then
        player:messageSpecial(ID.text.DOOR_IS_SEALED)
    elseif instance:getLocalVar('door_E_open') >= 1 then
        player:startEvent(xi.salvage.csid.DOOR_OPEN)
    else
        player:messageSpecial(ID.text.DOOR_IS_SEALED_MYSTERIOUS)
    end
end

entity.onEventFinish = function(player, csid, option, door)
    if csid == xi.salvage.csid.DOOR_OPEN and option == 1 then
        door:setAnimation(xi.animation.OPEN_DOOR)
        local instance = door:getInstance()

        instance:setLocalVar('floor3_choice', 1)

        for id = ID.mob[4][3].mobs_start, ID.mob[4][3].mobs_end do
            SpawnMob(id, instance)
        end

        SpawnMob(ID.mob[4][3].rampart1, instance)
        SpawnMob(ID.mob[4][3].rampart2, instance)
        SpawnMob(ID.mob[4][3].rampart3, instance)
        SpawnMob(ID.mob[4][3].rampart4, instance)

        instance:setStage(4)
        instance:setProgress(2)

        door:setUntargetable(true)
    end
end

return entity
