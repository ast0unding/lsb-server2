-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Dekka
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    entity.onMobRoam(mob)
end

entity.onMobRoam = function(mob)
    if not mob:isFollowingPath() then
        mob:setMod(xi.mod.MOVE_SPEED_STACKABLE, 60)
        mob:pathThrough(ID.mob[2][2].roam_path, xi.pathflag.RUN, xi.pathflag.SCRIPT)
    end
end

entity.onMobDeath = function(mob, player, isKiller)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    if isKiller then
        -- salvageUtil.spawnTempChest(mob, {})
    end
end

return entity
