-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Devilet
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

local roamArea = ID.mob[3][2].deviletRoamArea
local pillar   = ID.mob[3][2].pillar

local function isNorthRoomDevilet(mob)
    return mob:getID() == ID.mob[3][2].mobs_start
end

local function randomRoomPoint()
    local x, z
    repeat
        x = math.random(roamArea.xMin, roamArea.xMax)
        z = math.random(roamArea.zMin, roamArea.zMax)
    until not (x > pillar.xMin and x < pillar.xMax and z > pillar.zMin and z < pillar.zMax)

    return x, z
end

entity.onMobSpawn = function(mob)
    if not isNorthRoomDevilet(mob) then
        return
    end

    mob:setBaseSpeed(200)
    mob:setAggressive(false)
    mob:setMobMod(xi.mobMod.DONT_ROAM_HOME, 1)
    mob:setMaxHP(26175)
    mob:setHP(26175)
end

entity.onMobRoam = function(mob)
    if not isNorthRoomDevilet(mob) or mob:isFollowingPath() then
        return
    end

    local x, z = randomRoomPoint()
    mob:pathTo(x, 0, z, xi.pathflag.RUN)
end

entity.onMobFight = function(mob, target)
    if not isNorthRoomDevilet(mob) then
        return
    end

    local fleeCount = mob:getLocalVar('fleeCount')
    if fleeCount >= 7 or mob:getHPP() > 100 - (fleeCount + 1) * 12.5 then
        return
    end

    repeat
        fleeCount = fleeCount + 1
    until fleeCount >= 7 or mob:getHPP() > 100 - (fleeCount + 1) * 12.5

    mob:setLocalVar('fleeCount', fleeCount)

    for _, entry in ipairs(mob:getEnmityList() or {}) do
        if entry.entity then
            mob:clearEnmityForEntity(entry.entity)
        end
    end

    mob:disengage()

    local tpos     = target:getPos()
    local bestX    = 0
    local bestZ    = 0
    local bestDist = -1

    for _ = 1, 5 do
        local x, z = randomRoomPoint()
        local dist = (tpos.x - x) ^ 2 + (tpos.z - z) ^ 2

        if dist > bestDist then
            bestX    = x
            bestZ    = z
            bestDist = dist
        end
    end

    mob:pathTo(bestX, 0, bestZ, xi.pathflag.RUN)
end

entity.onMobDeath = function(mob, player, optParams)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    local door = GetNPCByID(ID.npc[1][2].DOOR1, instance)
    if optParams.isKiller then
        local stage = instance:getStage()

        -- Floor 2 SE Path
        if stage == 2 then
            if
                ID.npc[2] and
                ID.npc[2][3] and
                ID.npc[2][3].DOOR1
            then
                local door = GetNPCByID(ID.npc[2][3].DOOR1, instance)
                if door then
                    local openCount = door:getLocalVar('open')
                    door:setLocalVar('open', openCount + 1)
                end
            end

            local drops = ID.drops[3].CELLS
            if drops and #drops >= 2 then
                -- Safely pick two distinct random indices
                local index1 = math.random(1, #drops)
                local index2 = math.random(1, #drops - 1)

                if index2 >= index1 then
                    index2 = index2 + 1
                end

                local cell1 = drops[index1]
                local cell2 = drops[index2]

                player:addTreasure(cell1, mob)
                player:addTreasure(cell1, mob)
                player:addTreasure(cell2, mob)
                player:addTreasure(cell2, mob)
            end

            local prog = instance:getProgress()
            instance:setProgress(prog + 1)

        elseif stage == 3 then
            local door = GetNPCByID(ID.npc[3][1].DOOR5, instance)
            if door then
                door:setLocalVar('open', 1)
            end

            local slot = GetNPCByID(ID.npc[3][1].SLOT, instance)
            if slot then
                slot:setStatus(xi.status.NORMAL)
            end

            for i = xi.item.CASTELLANUS_CELL, xi.item.STRATUS_CELL do
                player:addTreasure(i, mob)
            end

            player:addTreasure(xi.item.CUMULUS_CELL, mob)
        end
    end
end

return entity
