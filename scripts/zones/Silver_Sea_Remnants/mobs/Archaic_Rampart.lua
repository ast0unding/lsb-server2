-----------------------------------
-- Instance: Silver Sea Remnants
-- Mob: Archaic Rampart
-----------------------------------
mixins = { require('scripts/mixins/families/rampart') }
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobSpawn = function(mob)
    local instance = mob:getInstance()

    if not instance then
        return
    end

    local mobID = mob:getID()
    local isFloor3 = (mobID >= ID.mob[3][1].rampart1 and mobID <= ID.mob[3][4].rampart4)

    if isFloor3 then
        mob:setMobMod(xi.mobMod.ROAM_DISTANCE, 0)
        mob:setLocalVar('lastPetPop', os.time())

        local isWestRampart = (mobID == ID.mob[3][3].rampart1 or
                               mobID == ID.mob[3][3].rampart2 or
                               mobID == ID.mob[3][3].rampart3 or
                               mobID == ID.mob[3][3].rampart4)

        if
            instance:getLocalVar('GATE_E') == mobID or
            isWestRampart
        then
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
    local isFloor3 = (mobID >= ID.mob[3][1].rampart1 and mobID <= ID.mob[3][4].rampart4)

    if isFloor3 then
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
    local isFloor3 = (mobID >= ID.mob[3][1].rampart1 and mobID <= ID.mob[3][4].rampart4)

    if isFloor3 then
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
    local isFloor3 = (mobID >= ID.mob[3][1].rampart1 and mobID <= ID.mob[3][4].rampart4)

    if isFloor3 then
        if instance:getLocalVar('GATE_E') == mobID then
            instance:setLocalVar('door_E_open', 1)
        end

        if optParams.isKiller then
            if math.random(5) == 1 then
                player:addTreasure(xi.item.SILVER_SEA_CARD, mob)
            end
        end
    end
end

return entity
