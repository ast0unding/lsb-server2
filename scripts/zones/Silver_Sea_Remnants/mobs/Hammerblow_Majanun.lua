-----------------------------------
-- Area: Silver Sea Remnants
--  Mob: Hammerblow Majanun
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    -- Add Salvage Event Bonus
end

entity.onMobDeath = function(mob, player, optParams)
    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})
    end
end

return entity
