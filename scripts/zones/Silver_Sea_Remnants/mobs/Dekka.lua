-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Dekka
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    mob:setMobMod(xi.mobMod.NO_MOVE, 1)
end

entity.onMobDeath = function(mob, player, optParams)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})
    end
end

return entity
