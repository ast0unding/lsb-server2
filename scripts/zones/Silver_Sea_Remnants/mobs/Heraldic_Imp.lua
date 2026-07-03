-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Heraldic Imp
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
        local drops = ID.drops[3] and ID.drops[3].CELLS
        local mobId = mob:getID()
        local impIndex = (mobId % 4) + 1 -- 1 to 4

        if drops and #drops >= 8 then
            local cell1 = drops[(impIndex * 2) - 1]
            local cell2 = drops[(impIndex * 2)]
            for i = 1, 3 do
                player:addTreasure(cell1, mob)
            end

            for i = 1, 3 do
                player:addTreasure(cell2, mob)
            end

        elseif drops and #drops >= 2 then
            local cell1 = drops[1]
            local cell2 = drops[2]
            for i = 1, 3 do
                player:addTreasure(cell1, mob)
                player:addTreasure(cell2, mob)
            end
        end
    end
end

return entity
