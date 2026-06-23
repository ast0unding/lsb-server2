-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Gakke
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    local cell = mob:getLocalVar('Cell')
    local amount = mob:getLocalVar('Qnt') * 2

    if isKiller and cell > 0 then
        for i = 1, amount do
            player:addTreasure(cell, mob)
        end
    end
end

return entity
