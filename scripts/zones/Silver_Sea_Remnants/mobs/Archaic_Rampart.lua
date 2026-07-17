-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Rampart
-----------------------------------
mixins = { require('scripts/mixins/families/rampart') }
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

local function isFloor3Rampart(mobID)
    return mobID >= ID.mob[3][1].rampart1 and mobID <= ID.mob[3][4].rampart4
end

local function isFloor4Rampart(mobID)
    return (mobID >= ID.mob[4][1].rampart1 and mobID <= ID.mob[4][1].rampart4) or
        (mobID >= ID.mob[4][3].rampart1 and mobID <= ID.mob[4][3].rampart4)
end

entity.onMobSpawn = function(mob)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local mobID = mob:getID()
    mob:setMobMod(xi.mobMod.ROAM_DISTANCE, 0)

    if isFloor4Rampart(mobID) then
        mob:setLocalVar('spawnCount', 3)
    end

    if mobID == ID.mob[4][3].citramp then
        mob:setLocalVar('spawnCount', 1)
        mob:setLocalVar('spawnLimit', 1)
        mob:setLocalVar('timedSpawn', 70)
    end

    if isFloor3Rampart(mobID) then
        mob:setLocalVar('lastPetPop', os.time())

        if instance:getLocalVar('GATE_E') == mobID then
            mob:setMobMod(xi.mobMod.NO_MOVE, 1)
        end
    end
end

entity.onMobRoam = function(mob)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local mobID = mob:getID()

    if isFloor3Rampart(mobID) then
        local popTime = mob:getLocalVar('lastPetPop')

        local function isPetSpawned(petOffset)
            local pet = GetMobByID(mobID + petOffset, instance)

            if pet then
                return pet:isSpawned()
            end

            return false
        end

        if os.time() - popTime > 60 then
            if not isPetSpawned(1) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 1, instance)
                end)

            elseif not isPetSpawned(2) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 2, instance)
                end)

            elseif not isPetSpawned(3) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 3, instance)
                end)
            end
        end
    end
end

entity.onMobFight = function(mob, target)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local mobID = mob:getID()

    if isFloor3Rampart(mobID) then
        local popTime = mob:getLocalVar('lastPetPop')

        local function isPetSpawned(petOffset)
            local pet = GetMobByID(mobID + petOffset, instance)

            if pet then
                return pet:isSpawned()
            end

            return false
        end

        if os.time() - popTime > 15 then
            if not isPetSpawned(1) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 1, instance)
                end)

            elseif not isPetSpawned(2) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 2, instance)
                end)

            elseif not isPetSpawned(3) then
                mob:useMobAbility(xi.mobSkill.REINFORCEMENTS)
                mob:setLocalVar('lastPetPop', os.time())
                mob:timer(2500, function(m)
                    SpawnMob(mobID + 3, instance)
                end)
            end
        end

        for i = 1, 3 do
            local pet = GetMobByID(mobID + i, instance)
            if pet and pet:isSpawned() then
                pet:updateEnmity(target)
            end
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local mobID = mob:getID()

    if optParams.isKiller then
        xi.salvage.spawnTempChest(mob, {})
    end

    if
        isFloor3Rampart(mobID) and
        instance:getLocalVar('GATE_E') == mobID
    then
        instance:setLocalVar('door_E_open', 1)
    end

    if
        optParams.isKiller and
        mobID >= ID.mob[4][3].rampart1 and
        mobID <= ID.mob[4][3].rampart4
    then
        local kills = instance:getLocalVar('eastRampartKills') + 1
        instance:setLocalVar('eastRampartKills', kills)

        if kills == 4 then
            SpawnMob(ID.mob[4][3].citramp, instance)
        end
    end

    if
        (isFloor3Rampart(mobID) or
        isFloor4Rampart(mobID) or
        mobID == ID.mob[4][3].citramp) and
        optParams.isKiller
    then
        local numDrops = math.random(3, 5)
        for i = 1, numDrops do
            local cell = ID.drops[3].CELLS[math.random(#ID.drops[3].CELLS)]
            player:addTreasure(cell, mob)
        end

        if math.random(5) == 1 then
            player:addTreasure(xi.item.SILVER_SEA_CARD, mob)
        end
    end
end

return entity
