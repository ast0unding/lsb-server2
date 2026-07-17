-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Gear
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

local conveyorPoints = ID.mob[3][2].gearPoints

local moveInterval = 20
local outerPoints  = 8
local pillarEntry  = 9

local phaseCollapse     = 0
local phaseShuffle      = 1
local phaseExit         = 2
local phaseOuterShuffle = 3

local function gatePoint(instance)
    return instance:getLocalVar('gearGatePoint')
end

local function ringPointInside(outerPoint)
    return pillarEntry + outerPoint % outerPoints
end

local function slotVar(index)
    return 'gearConveyorSlot' .. index
end

local function anyOccupied(instance, from, to)
    for i = from, to do
        if instance:getLocalVar(slotVar(i)) ~= 0 then
            return true
        end
    end

    return false
end

local function isNorthRoomGear(mob)
    local mobID = mob:getID()
    return mobID >= ID.mob[3][2].mobs_start and mobID <= ID.mob[3][2].mobs_end
end

local function isEastPathTrainGear(mob)
    local mobID = mob:getID()
    return mobID >= ID.mob[4][3].mobs_start and mobID <= ID.mob[4][3].mobs_start + 5
end

local function trainGearAhead(mob, instance)
    for id = mob:getID() - 1, ID.mob[4][3].mobs_start, -1 do
        local gear = GetMobByID(id, instance)
        if gear and gear:isSpawned() and gear:isAlive() then
            return gear
        end
    end

    return nil
end

local function nextPoint(instance, current, phase)
    local gate = gatePoint(instance)

    if current < pillarEntry then
        if current == gate and phase == phaseCollapse then
            if instance:getLocalVar(slotVar(ringPointInside(gate))) == 0 then
                return ringPointInside(gate)
            end

            return current
        end

        return current % outerPoints + 1
    end

    if phase == phaseExit and gate > 0 and current == ringPointInside(gate) then
        return gate
    end

    return current == #conveyorPoints and pillarEntry or current + 1
end

local function beginExitPhase(instance)
    if gatePoint(instance) == 0 then
        local best     = 2
        local bestDist = math.huge

        for _, char in ipairs(instance:getChars()) do
            local pos = char:getPos()

            for _, i in ipairs({ 2, 6 }) do
                local pt   = conveyorPoints[i]
                local dist = (pos.x - pt.x) ^ 2 + (pos.z - pt.z) ^ 2

                if dist < bestDist then
                    best     = i
                    bestDist = dist
                end
            end
        end

        instance:setLocalVar('gearGatePoint', best)
    end

    instance:setLocalVar('gearPhase', phaseExit)
end

local function runConveyorBeat(instance, cycle)
    local gears = {}
    for i = 1, #conveyorPoints do
        local mobID = instance:getLocalVar(slotVar(i))
        if mobID ~= 0 then
            local gearMob = GetMobByID(mobID, instance)
            if
                gearMob and
                gearMob:isSpawned() and
                gearMob:isAlive() and
                gearMob:getLocalVar('conveyorPoint') == i
            then
                gears[i] = gearMob
            else
                instance:setLocalVar(slotVar(i), 0)
            end
        end
    end

    local phase = instance:getLocalVar('gearPhase')

    if phase == phaseShuffle and cycle > instance:getLocalVar('gearShuffleEnd') then
        beginExitPhase(instance)
        phase = phaseExit
    elseif phase == phaseOuterShuffle and cycle > instance:getLocalVar('gearOuterShuffleEnd') then
        instance:setLocalVar('gearPhase', phaseCollapse)
        phase = phaseCollapse
    end

    local moved = {}

    local function moveGear(fromIndex, toIndex)
        local gearMob = gears[fromIndex]

        instance:setLocalVar(slotVar(toIndex), gearMob:getID())
        if instance:getLocalVar(slotVar(fromIndex)) == gearMob:getID() then
            instance:setLocalVar(slotVar(fromIndex), 0)
        end

        gears[toIndex]   = gearMob
        gears[fromIndex] = nil
        moved[gearMob:getID()] = true
        gearMob:setLocalVar('conveyorPoint', toIndex)

        local pt = conveyorPoints[toIndex]
        gearMob:setSpawn(pt.x, pt.y, pt.z, gearMob:getRotPos())
        gearMob:pathThrough({ pt.x, pt.y, pt.z }, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT))
    end

    local function rotateFullLoop(from, to)
        for i = from, to do
            if not gears[i] or gears[i]:isEngaged() then
                return
            end
        end

        local loop = {}
        for i = from, to do
            loop[i] = gears[i]
        end

        for i = from, to do
            local gearMob = loop[i]
            local target  = i == to and from or i + 1
            local pt      = conveyorPoints[target]

            instance:setLocalVar(slotVar(target), gearMob:getID())
            gears[target] = gearMob
            moved[gearMob:getID()] = true
            gearMob:setLocalVar('conveyorPoint', target)
            gearMob:setSpawn(pt.x, pt.y, pt.z, gearMob:getRotPos())
            gearMob:pathThrough({ pt.x, pt.y, pt.z }, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT))
        end
    end

    if phase == phaseShuffle then
        rotateFullLoop(pillarEntry, #conveyorPoints)
    elseif phase == phaseOuterShuffle then
        rotateFullLoop(1, outerPoints)
    end

    local sweepOrder = { 9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8 }

    local progress = true
    while progress do
        progress = false

        for _, i in ipairs(sweepOrder) do
            local gearMob = gears[i]
            if
                gearMob and
                not moved[gearMob:getID()] and
                not gearMob:isEngaged()
            then
                local target = nextPoint(instance, i, phase)
                if target ~= i and instance:getLocalVar(slotVar(target)) == 0 then
                    moveGear(i, target)
                    progress = true
                end
            end
        end
    end

    if phase == phaseCollapse and not anyOccupied(instance, 1, outerPoints) then
        local toggle = instance:getLocalVar('gearShuffleToggle')
        instance:setLocalVar('gearPhase', phaseShuffle)
        instance:setLocalVar('gearShuffleEnd', cycle + (toggle == 0 and 3 or 2))
        instance:setLocalVar('gearShuffleToggle', 1 - toggle)
    elseif phase == phaseExit and not anyOccupied(instance, pillarEntry, #conveyorPoints) then
        instance:setLocalVar('gearPhase', phaseOuterShuffle)
        instance:setLocalVar('gearOuterShuffleEnd', cycle + 1)
    end
end

entity.onMobSpawn = function(mob)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    if isEastPathTrainGear(mob) then
        mob:setBaseSpeed(50)
        mob:setMobMod(xi.mobMod.DONT_ROAM_HOME, 1)
        return
    end

    if not isNorthRoomGear(mob) then
        return
    end

    mob:setBaseSpeed(50)
    mob:setMobMod(xi.mobMod.NO_MOVE, 1)
    mob:setMobMod(xi.mobMod.DONT_ROAM_HOME, 1)

    local pos      = mob:getPos()
    local best     = 0
    local bestDist = math.huge

    for i = 1, #conveyorPoints do
        if instance:getLocalVar(slotVar(i)) == 0 then
            local pt   = conveyorPoints[i]
            local dist = math.sqrt((pos.x - pt.x) ^ 2 + (pos.z - pt.z) ^ 2)

            if dist < bestDist then
                best     = i
                bestDist = dist
            end
        end
    end

    if best > 0 then
        instance:setLocalVar(slotVar(best), mob:getID())
        mob:setLocalVar('conveyorPoint', best)

        if instance:getLocalVar('gearConveyorEpoch') == 0 then
            instance:setLocalVar('gearConveyorEpoch', GetSystemTime())
        end

        local pt = conveyorPoints[best]
        mob:setSpawn(pt.x, pt.y, pt.z, mob:getRotPos())

        if bestDist > 2 then
            mob:pathThrough({ pt.x, pt.y, pt.z }, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT))
        end
    end
end

entity.onMobRoam = function(mob)
    local instance = mob:getInstance()
    if not instance then
        return
    end

    if isEastPathTrainGear(mob) then
        local leader = trainGearAhead(mob, instance)

        if leader then
            if not mob:hasFollowTarget() then
                mob:follow(leader, xi.followType.ROAM)
            end
        elseif not mob:isFollowingPath() then
            mob:pathThrough(ID.mob[4][3].gearPath, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT, xi.pathflag.PATROL))
        end

        return
    end

    if mob:getLocalVar('conveyorPoint') == 0 then
        return
    end

    local epoch = instance:getLocalVar('gearConveyorEpoch')
    if epoch == 0 then
        return
    end

    local cycle = math.floor((GetSystemTime() - epoch) / moveInterval)
    if instance:getLocalVar('gearLastBeat') >= cycle then
        return
    end

    instance:setLocalVar('gearLastBeat', cycle)
    runConveyorBeat(instance, cycle)
end

entity.onMobEngage = function(mob)
    if mob:getLocalVar('conveyorPoint') > 0 then
        mob:setMobMod(xi.mobMod.NO_MOVE, 0)
    end
end

entity.onMobDisengage = function(mob)
    local current = mob:getLocalVar('conveyorPoint')
    if current > 0 then
        mob:setMobMod(xi.mobMod.NO_MOVE, 1)

        local pt = conveyorPoints[current]
        mob:pathThrough({ pt.x, pt.y, pt.z }, bit.bor(xi.pathflag.RUN, xi.pathflag.SCRIPT))
    end
end

entity.onMobDeath = function(mob, player, optParams)
    local mobID = mob:getID()
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local current = mob:getLocalVar('conveyorPoint')
    if current > 0 and instance:getLocalVar(slotVar(current)) == mobID then
        instance:setLocalVar(slotVar(current), 0)
    end

    if isEastPathTrainGear(mob) then
        for id = mobID + 1, ID.mob[4][3].mobs_start + 5 do
            local gear = GetMobByID(id, instance)
            if gear and gear:isSpawned() and gear:isAlive() then
                gear:unfollow()
                break
            end
        end
    end

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})

        local stage = instance:getStage()

        if stage == 3 or stage == 4 then
            local numDrops = math.random(3, 5)
            for i = 1, numDrops do
                local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
                player:addTreasure(cell, mob)
            end
        end

        if stage == 3 then
            local gyroN = ID.mob[3][2].gyroN
            local gyroE = ID.mob[3][3].gyroE

            if gyroN - mobID >= 1 and gyroN - mobID <= 8 then
                local kills = instance:getLocalVar('gyroNKills') + 1
                instance:setLocalVar('gyroNKills', kills)

                if kills == 8 then
                    SpawnMob(gyroN, instance)
                end

            elseif gyroE - mobID >= 1 and gyroE - mobID <= 8 then
                local kills = instance:getLocalVar('gyroEKills') + 1
                instance:setLocalVar('gyroEKills', kills)

                if kills == 8 then
                    SpawnMob(gyroE, instance)
                end
            end
        end
    end
end

return entity
