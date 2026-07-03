-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Gear
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    local mobID = mob:getID()

    -- North Big Room (Floor 3) roaming
    if mobID >= ID.mob[3][2].mobs_start and mobID <= ID.mob[3][2].mobs_end then
        mob:setBaseSpeed(math.random(40, 55))
        entity.onMobRoam(mob)
    end
end

entity.onMobRoam = function(mob)
    local mobID = mob:getID()

    if not mob:isFollowingPath() then
        -- North Big Room (Floor 3) roaming
        if mobID >= ID.mob[3][2].mobs_start and mobID <= ID.mob[3][2].mobs_end then
            if ID.mob[3][2].gear_path then
                mob:pathThrough(ID.mob[3][2].gear_path, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT))
            end
        end
    end
end

entity.onMobDisengage = function(mob)
    entity.onMobRoam(mob)
end

entity.onMobDeath = function(mob, player, optParams)
    local mobID = mob:getID()
    local instance = mob:getInstance()

    if not instance then
        return
    end

    if optParams.isKiller then
        local stage = instance:getStage()

        -- Floor 3 drops
        if stage == 3 then
            if mobID >= ID.mob[3][2].mobs_start and mobID <= ID.mob[3][2].mobs_end then
                local numDrops = math.random(3, 5)
                for i = 1, numDrops do
                    local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
                    player:addTreasure(cell, mob)
                end
            end
        end
    end
end

return entity
