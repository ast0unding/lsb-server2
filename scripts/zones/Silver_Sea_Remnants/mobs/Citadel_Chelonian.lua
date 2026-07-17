-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Citadel Chelonian
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

    local citramp = GetMobByID(ID.mob[4][3].citramp, instance)
    if citramp then
        citramp:setLocalVar('spawnCount', 0)
        citramp:setLocalVar('timedSpawn', 0)
    end

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})
    end
end

return entity
