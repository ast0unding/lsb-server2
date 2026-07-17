-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Gears
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local stage = instance:getStage()

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})
    end

    if
        optParams.isKiller and
        (stage == 3 or stage == 4)
    then
        local numDrops = math.random(3, 5)
        for i = 1, numDrops do
            local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
            player:addTreasure(cell, mob)
        end
    end

    if optParams.isKiller and stage == 3 then
        local mobID = mob:getID()
        local gyroN = ID.mob[3][2].gyroN
        local gyroE = ID.mob[3][3].gyroE

        if gyroN - mobID >= 1 and gyroN - mobID <= 8 then
            local kills = instance:getLocalVar('gyroNKills') + 1
            instance:setLocalVar('gyroNKills', kills)

            if kills == 8 then
                SpawnMob(gyroN, instance)
            end

        elseif gyroE - mobID >= 1 and gyroE - mobID <= 8 then
            local kills = instance:getLocalVar('gyroEKills') + 1
            instance:setLocalVar('gyroEKills', kills)

            if kills == 8 then
                SpawnMob(gyroE, instance)
            end
        end
    end
end

return entity
