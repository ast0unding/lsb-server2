-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Gyroscopic Gears
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

        if math.random(5) == 1 then
            player:addTreasure(xi.item.SILVER_SEA_CARD, mob)
        end
    end
end

return entity
