-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Deadpan Devilet
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
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
        if
            ID.mob[2] and
            ID.mob[2][2] and
            ID.mob[2][2].dekka
        then
            SpawnMob(ID.mob[2][2].dekka, instance)
        end

        if
            ID.npc[2] and
            ID.npc[2][3] and
            ID.npc[2][3].DOOR2
        then
            local door = GetNPCByID(ID.npc[2][3].DOOR2, instance)
            if door then
                door:setLocalVar('open', 1)
            end
        end

        local drops = ID.drops[3] and ID.drops[3].DEADCELLS
        if drops and #drops > 0 then
            for i = 1, 10 do
                player:addTreasure(drops[math.random(#drops)], mob)
            end
        end

        xi.salvage.spawnTempChest(mob, {})
    end
end

return entity
