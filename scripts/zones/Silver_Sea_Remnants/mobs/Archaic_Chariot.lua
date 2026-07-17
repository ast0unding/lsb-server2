-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Chariot
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

        if instance:getStage() == 4 then
            local door = GetNPCByID(ID.npc[4][1].DOOR2, instance)
            if door then
                door:setLocalVar('open', 1)
            end
        end

        local numDrops = math.random(3, 5)
        for i = 1, numDrops do
            local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
            player:addTreasure(cell, mob)
        end

        if math.random(10) == 1 then
            player:addTreasure(xi.item.SILVER_SEA_CARD, mob)
        end
    end
end

return entity
