-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Powderkeg Yanadahn
-----------------------------------
---@type TMobEntity
local entity = {}

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
