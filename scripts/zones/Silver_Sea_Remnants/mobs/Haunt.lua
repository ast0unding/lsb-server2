-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Haunt
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

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})

        local stage = instance:getStage()

        if stage == 3 then
            local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
            player:addTreasure(cell, mob)
        end
    end
end

return entity
