-----------------------------------
-- Era Dynamis - spawn engine
--
-- Spawns every era Dynamis entity as a dynamic entity: waves, statues,
-- their children, NMs, nightmare mobs and pets. Consumes the data in
-- spawn_lookups.lua and the per-zone tables in spawn_data/.
-----------------------------------
require('scripts/globals/dynamis')
require('scripts/globals/pathfind')
require('scripts/zones/Dynamis-Xarcabard/IDs')
require('modules/module_utils')
-----------------------------------
require('modules/era/lua/globals/dynamis/spawn_lookups')
-----------------------------------
-- Per-zone mob logic and spawn data
-----------------------------------
require('modules/era/lua/globals/dynamis/mobs/pets')
require('modules/era/lua/globals/dynamis/mobs/beaucedine')
require('modules/era/lua/globals/dynamis/mobs/buburimu')
require('modules/era/lua/globals/dynamis/mobs/qufim')
require('modules/era/lua/globals/dynamis/mobs/tavnazia')
require('modules/era/lua/globals/dynamis/mobs/valkurm')
require('modules/era/lua/globals/dynamis/mobs/xarcabard')
require('modules/era/lua/globals/dynamis/spawn_data/bastok')
require('modules/era/lua/globals/dynamis/spawn_data/beaucedine')
require('modules/era/lua/globals/dynamis/spawn_data/buburimu')
require('modules/era/lua/globals/dynamis/spawn_data/jeuno')
require('modules/era/lua/globals/dynamis/spawn_data/qufim')
require('modules/era/lua/globals/dynamis/spawn_data/san_doria')
require('modules/era/lua/globals/dynamis/spawn_data/tavnazia')
require('modules/era/lua/globals/dynamis/spawn_data/valkurm')
require('modules/era/lua/globals/dynamis/spawn_data/windurst')
require('modules/era/lua/globals/dynamis/spawn_data/xarcabard')
-----------------------------------
local moduleName = 'era_dynamis_spawning'

local m = Module:new(moduleName)

local lookups = xi.dynamis.spawnLookups
local family  = xi.dynamis.mobFamily

-- All dynamis mobs share one sublink id, so statues link when they see
-- normal mobs fighting (and vice versa).
xi.dynamis.SUBLINK_ID = 2

xi.dynamis.addSleepImmunity = function(mob)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
end

-- Recover abilities used by blue/green-eyed statues before dying.
local statueRecoverSkills =
{
    [xi.dynamis.eye.BLUE]  = 1124, -- Recover HP
    [xi.dynamis.eye.GREEN] = 1125, -- Recover MP
}

local STATUE_REFRESH_AMOUNT = 2000

-- Blue eyes refresh HP, green eyes refresh MP.
local statueRefresh =
{
    [xi.dynamis.eye.BLUE] =
    {
        restore = function(player, amount) return player:restoreHP(amount) end,
        message = xi.msg.basic.RECOVERS_HP,
    },
    [xi.dynamis.eye.GREEN] =
    {
        restore = function(player, amount) return player:restoreMP(amount) end,
        message = xi.msg.basic.RECOVERS_MP,
    },
}

-- Avatar pets roll a random model
local AVATAR_MODEL_LO = 793 -- Ifrit
local AVATAR_MODEL_HI = 798 -- Ramuh

-----------------------------------
-- Wave Spawning
-----------------------------------

xi.dynamis.spawnWaveIndicies = function(zone, waveNumber, indicies)
    if not waveNumber or not indicies then
        return
    end

    local zoneID = zone:getID()

    if not xi.dynamis.mobList[zoneID][waveNumber].wave then
        return
    end

    for _, mobIndex in pairs(indicies) do
        if xi.dynamis.mobList[zoneID][mobIndex].info.mobType == 'NM' then
            xi.dynamis.nmDynamicSpawn(mobIndex, nil, true, zoneID)
        else
            xi.dynamis.nonStandardDynamicSpawn(mobIndex, nil, true, zoneID)
        end
    end

    -- Account for previous waves if this is not the first wave.
    for n = 1, waveNumber do
        zone:setLocalVar(string.format('Wave_%i_Spawned', n), 1)
    end

    zone:setLocalVar(string.format('[DYNA]CurrentWave_%s', zoneID), waveNumber)
end

xi.dynamis.spawnWave = function(zone, zoneID, waveNumber)
    for _, mobIndex in pairs(xi.dynamis.mobList[zoneID][waveNumber].wave) do
        if xi.dynamis.mobList[zoneID][mobIndex].info.mobType == 'NM' then
            xi.dynamis.nmDynamicSpawn(mobIndex, nil, true, zoneID)
        else -- Nightmare mobs and statues
            xi.dynamis.nonStandardDynamicSpawn(mobIndex, nil, true, zoneID)
        end
    end

    if
        waveNumber == 4 and
        zoneID == xi.zone.DYNAMIS_XARCABARD
    then
        for _, player in pairs(zone:getPlayers()) do
            player:messageSpecial(zones[xi.zone.DYNAMIS_XARCABARD].text.PRISON_OF_SOULS_HAS_SET_FREE)
        end
    end

    zone:setLocalVar(string.format('Wave_%i_Spawned', waveNumber), 1)
    zone:setLocalVar(string.format('[DYNA]CurrentWave_%s', zoneID), waveNumber)
end

-----------------------------------
-- Child Spawning (statues and NMs releasing their mobs)
-----------------------------------

xi.dynamis.parentOnEngaged = function(mob, target)
    local parentIndex = mob:getZone():getLocalVar(string.format('MobIndex_%s', mob:getID()))

    if mob:getLocalVar('SpawnedChildren') ~= 0 or parentIndex == 0 then
        return
    end

    mob:setLocalVar('SpawnedChildren', 1)

    local zoneID = mob:getZoneID()
    local entry  = xi.dynamis.mobList[zoneID][parentIndex]

    mob:setAnimationSub(mob:getLocalVar('eyeColor'))

    if entry.nmchildren ~= nil then
        -- nmchildren may lead with a boolean: force-link the children.
        local forceLink = entry.nmchildren[1]

        for _, childIndex in pairs(entry.nmchildren) do
            if type(childIndex) ~= 'boolean' then
                if xi.dynamis.mobList[zoneID][childIndex].info.mobType == 'NM' then
                    xi.dynamis.nmDynamicSpawn(childIndex, parentIndex, forceLink, zoneID, target, mob)
                else -- Nightmare mobs and statues
                    xi.dynamis.nonStandardDynamicSpawn(childIndex, mob, forceLink, zoneID, target, parentIndex)
                end
            end
        end
    end

    if entry.mobchildren ~= nil then
        xi.dynamis.normalDynamicSpawn(mob, parentIndex, target)
    end
end

xi.dynamis.normalDynamicSpawn = function(oMob, oMobIndex, target)
    local zoneID = oMob:getZoneID()
    local zone   = GetZone(zoneID)
    local entry  = xi.dynamis.mobList[zoneID][oMobIndex]

    -- Resolve which job table this parent spawns from.
    local jobTable
    if oMob:getFamily() == family.AHRIMAN then
        local floor = entry.info.floor
        if floor ~= nil then
            jobTable = lookups.normal[family.AHRIMAN][zoneID][floor]
        else
            jobTable = lookups.normal[family.AHRIMAN][zoneID]
        end
    elseif oMob:getFamily() == family.STATUE then
        jobTable = lookups.normalStatue[oMob:getSpecies()]
    else
        jobTable = lookups.normal[oMob:getFamily()]
    end

    if jobTable == nil then
        return
    end

    local levels = jobTable.levels or lookups.levels.normal

    for job, count in pairs(entry.mobchildren) do
        local jobEntry = jobTable[job]

        for _ = 1, count do
            local child = zone:insertDynamicEntity({
                objtype     = xi.objType.MOB,
                name        = jobEntry.name,
                x           = oMob:getXPos() + math.random() * 6 - 3,
                y           = oMob:getYPos() - 0.3,
                z           = oMob:getZPos() + math.random() * 6 - 3,
                rotation    = oMob:getRotPos(),
                groupId     = jobEntry.groupId,
                groupZoneId = jobEntry.groupZoneId,
                minLevel    = levels.min,
                maxLevel    = levels.max,
                spellList   = jobEntry.spellList,
                skillList   = jobEntry.skillList,
                entityFlags = jobEntry.flags,

                releaseIdOnDisappear  = true,
                specialSpawnAnimation = not jobEntry.skipSpawnAnimation,

                onMobSpawn = function(mobArg)
                    xi.dynamis.setMobStats(mobArg)

                    -- Hydra mobs in Dynamis - Beaucedine are immune to sleep.
                    if
                        mobArg:getFamily() == family.FOMOR and
                        mobArg:getZoneID() == xi.zone.DYNAMIS_BEAUCEDINE
                    then
                        xi.dynamis.addSleepImmunity(mobArg)
                    end

                    mobArg:setMobMod(xi.mobMod.SUBLINK, xi.dynamis.SUBLINK_ID)
                end,

                onMobEngage = function(mobArg, mobTarget)
                    xi.dynamis.mobOnEngaged(mobArg, mobTarget)
                end,

                onMobDeath = function(mobArg, player, optParams)
                    xi.dynamis.mobOnDeath(mobArg, player, optParams)
                end,

                onMobDespawn = function(mobArg)
                    xi.dynamis.mobOnDespawn(mobArg)
                end,

                mixins =
                {
                    require('scripts/mixins/job_special'),
                },
            })

            child:resolveSpeciesFamily()
            child:setSpawn(oMob:getXPos() + math.random() * 6 - 3, oMob:getYPos() - 0.3, oMob:getZPos() + math.random() * 6 - 3, oMob:getRotPos())
            child:spawn()

            -- Currency drops depend on the child's family, only known
            -- after instantiation.
            local zoneDrops = lookups.normalDrops[zoneID]
            if zoneDrops and zoneDrops[child:getFamily()] then
                child:setDropID(zoneDrops[child:getFamily()])
            end

            child:setLocalVar('Parent', oMob:getID())
            child:updateEnmity(target)
        end
    end
end

xi.dynamis.nonStandardDynamicSpawn = function(mobIndex, oMob, forceLink, zoneID, target, oMobIndex)
    local zone    = GetZone(zoneID)
    local entry   = xi.dynamis.mobList[zoneID][mobIndex]
    local mobType = entry.info.mobType
    local lookup  = lookups.nonStandard[mobType][entry.info.name]

    local xPos = 0
    local yPos = 0
    local zPos = 0
    local rPos = 0

    if entry.pos ~= nil then
        xPos = entry.pos.x
        yPos = entry.pos.y
        zPos = entry.pos.z
        rPos = entry.pos.rot
    elseif oMob ~= nil then
        xPos = oMob:getXPos() + math.random() * 6 - 3
        yPos = oMob:getYPos() - 0.3
        zPos = oMob:getZPos() + math.random() * 6 - 3
        rPos = oMob:getRotPos()
    end

    -- Wave-spawned Tavnazia mobs keep their lookup flags.
    local flags = 0
    if
        zoneID == xi.zone.DYNAMIS_TAVNAZIA and
        oMob == nil and
        lookup.flags ~= nil
    then
        flags = lookup.flags
    end

    local levels = lookups.levels.nightmare
    if mobType == 'Statue' then
        levels = lookups.levels.statue
    elseif mobType == 'Beastmen' then
        levels = lookups.levels.normal
    elseif mobType == 'Other' then
        levels = lookups.levels.nm
    end

    -- Per-type AI handlers. Handlers are cached by entity name, so same-named
    -- mobs share the first spawn's closure. Never capture this call's mobIndex
    -- in a handler: read the spawned mob's own index from its zone variable.
    local aiHandlers =
    {
        ['Statue'] =
        {
            onMobSpawn = function(mob)
                local spawnIndex = mob:getZone():getLocalVar(string.format('MobIndex_%s', mob:getID()))
                xi.dynamis.setStatueStats(mob, spawnIndex)

                if
                    zoneID == xi.zone.DYNAMIS_XARCABARD and
                    lookups.superlinkXarcabard[spawnIndex]
                then
                    mob:setMobMod(xi.mobMod.SUPERLINK, lookups.superlinkXarcabard[spawnIndex])
                end
            end,

            onMobFight = function(mob, mobTarget)
                xi.dynamis.statueOnFight(mob, mobTarget)
            end,
        },
        ['Nightmare'] =
        {
            onMobSpawn = function(mob)
                xi.dynamis.setNightmareStats(mob)
            end,
        },
        ['Beastmen'] =
        {
            onMobSpawn = function(mob)
                xi.dynamis.setMobStats(mob)
            end,

            onMobEngage = function(mob, mobTarget)
                xi.dynamis.mobOnEngaged(mob, mobTarget)
            end,

            mixins = { require('scripts/mixins/job_special') },
        },
        ['Elemental'] =
        {
            onMobSpawn = function(mob)
                xi.dynamis.setNightmareStats(mob)
            end,
        },
        ['Other'] =
        {
            onMobSpawn = function(mob)
                xi.dynamis.setMobStats(mob)
                xi.dynamis.addSleepImmunity(mob)
            end,

            onMobEngage = function(mob, mobTarget)
                xi.dynamis.mobOnEngaged(mob, mobTarget)
            end,
        },
    }

    local handlers = aiHandlers[mobType]

    local mob = zone:insertDynamicEntity({
        objtype     = xi.objType.MOB,
        name        = lookup.name,
        x           = xPos,
        y           = yPos,
        z           = zPos,
        rotation    = rPos,
        groupId     = lookup.groupId,
        groupZoneId = lookup.groupZoneId,
        minLevel    = levels.min,
        maxLevel    = levels.max,
        spellList   = lookup.spellList,
        skillList   = lookup.skillList,
        entityFlags = flags,

        releaseIdOnDisappear  = true,
        specialSpawnAnimation = oMob ~= nil,

        onMobSpawn = function(mob)
            handlers.onMobSpawn(mob)
            mob:setMobMod(xi.mobMod.SUBLINK, xi.dynamis.SUBLINK_ID)
        end,

        onMobEngage = handlers.onMobEngage,
        onMobFight   = handlers.onMobFight,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        onMobDespawn = function(mob)
            xi.dynamis.mobOnDespawn(mob)
        end,

        mixins = handlers.mixins,
    })

    mob:resolveSpeciesFamily()

    -- The index vars must exist before spawn(): onMobSpawn reads them.
    zone:setLocalVar(string.format('MobIndex_%s', mob:getID()), mobIndex)
    mob:setLocalVar(string.format('MobIndex_%s', mob:getID()), mobIndex)

    mob:setSpawn(xPos, yPos, zPos, rPos)
    mob:spawn()

    -- Statues are fixtures: no patrol routes (they only move to chase).
    if mobType ~= 'Statue' then
        xi.dynamis.generatePath(mob, mobIndex)
    end

    -- Xarcabard/Beaucedine statues use zone-wide droplist overrides.
    local dropId        = lookup.dropId
    local zoneOverrides = lookups.statueDropOverrides[zoneID]
    if zoneOverrides and zoneOverrides[mob:getSpecies()] then
        dropId = zoneOverrides[mob:getSpecies()]
    end

    mob:setDropID(dropId)

    if lookup.floor ~= nil then
        mob:setLocalVar('Floor', lookup.floor)
    end

    if entry.info.deathVar ~= nil then
        zone:setLocalVar(entry.info.deathVar, 0)
        mob:setLocalVar('hasMobVar', 1)
    end

    if oMob ~= nil and oMob ~= 0 then
        mob:setLocalVar('Parent', oMob:getID())
        if forceLink then
            mob:updateEnmity(target)
        end
    end
end

-----------------------------------
-- NM Spawning
-----------------------------------

-- AI handler sets per nmInfoLookup aiType. Handlers referencing
-- xi.dynamis.* functions resolve them at call time; the per-zone
-- implementations live in the mobs/ files.
local nmHandlers =
{
    ['Beastmen'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setNMStats(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.mobOnEngaged(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special'), require('scripts/mixins/remove_doom') },
    },
    ['XarcNM'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setNMStats(mob)
            xi.dynamis.addSleepImmunity(mob)

            if mob:getName() == 'DE_M.Orias' then
                mob:addImmunity(xi.immunity.SILENCE)
            end
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.mobOnEngaged(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special'), require('scripts/mixins/remove_doom') },
    },
    ['Statue Megaboss'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setMegaBossStats(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.megaBossOnDeath(mob, player, optParams)
        end,
    },
    ['Angra Mainyu'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnAngra(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedAngra(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightAngra(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onRoamAngra(mob)
        end,

        onMobMagicPrepare = function(mob, mobTarget, spellId)
            xi.dynamis.onMagicPrepAngra(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.megaBossOnDeath(mob, player, optParams)
        end,
    },
    ['Dagourmarche'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDagour(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedDagour(mob, mobTarget)
        end,

        onMobMagicPrepare = function(mob, mobTarget, spellId)
            xi.dynamis.onWeaponskillPrepDagour(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special') },
    },
    ['Goublefaupe'] =
    {
        onMobInitialize = function(mob)
            mob:setMobMod(xi.mobMod.MP_BASE, 100)
        end,

        onMobSpawn = function(mob)
            xi.dynamis.onSpawnGouble(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special') },
    },
    ['Mildaunegeux'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnMildaun(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special') },
    },
    ['Quiebitiel'] =
    {
        onMobInitialize = function(mob)
            mob:setMobMod(xi.mobMod.MP_BASE, 100)
        end,

        onMobSpawn = function(mob)
            xi.dynamis.onSpawnQuieb(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special') },
    },
    ['Velosareon'] =
    {
        onMobInitialize = function(mob)
            mob:setMobMod(xi.mobMod.MP_BASE, 100)
        end,

        onMobSpawn = function(mob)
            xi.dynamis.onSpawnVelosar(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/job_special') },
    },
    ['Apocalyptic Beast'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnApoc(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedApoc(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightApoc(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.megaBossOnDeath(mob, player, optParams)
        end,
    },
    ['Antaeus'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnAntaeus(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedAntaeus(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightAntaeus(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.megaBossOnDeath(mob, player, optParams)
        end,
    },
    ['Cirrate Christelle'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnCirrate(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedCirrate(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightCirrate(mob, mobTarget)
        end,

        onMobWeaponSkillPrepare = function(mob)
            xi.dynamis.onWeaponskillPrepCirrate(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.megaBossOnDeath(mob, player, optParams)
        end,
    },
    ['Fairy Ring'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnFairy(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ["Nant'ina"] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnNoAuto(mob)
        end,

        onMobWeaponSkillPrepare = function(mob)
            xi.dynamis.onWeaponskillPrepNantina(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Nightmare Morbol'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setNMStats(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngageMorbol(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Dynamis Lord'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDynaLord(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedDynaLord(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightDynaLord(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamXarc(mob)
        end,

        onMobMagicPrepare = function(mob, mobTarget)
            xi.dynamis.onMagicPrepDynaLord(mob, mobTarget)
        end,

        onMobWeaponSkillPrepare = function(mob, mobTarget)
            xi.dynamis.onWeaponskillPrepDynaLord(mob, mobTarget)
        end,

        onMobWeaponSkill = function(mob, skill)
            xi.dynamis.onWeaponskillDynaLord(mob, skill)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.onDeathDynaLord(mob, player, optParams)
        end,
    },
    ['Ying'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnYing(mob)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightYing(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamXarc(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.onDeathYing(mob, player, optParams)
        end,
    },
    ['Yang'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnYang(mob)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightYang(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamXarc(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.onDeathYang(mob, player, optParams)
        end,
    },
    ['Animated Weapon'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnAnimated(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngagedAnimated(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightAnimated(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamXarc(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,

        mixins = { require('modules/era/lua/globals/dynamis/mixins/animated_weapons') },
    },
    ['Satellite Weapon'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnSatellite(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onEngageSatellite(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightSatellite(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamXarc(mob)
        end,

        onMobDeath = function(mob)
        end,
    },
    ['Buburimu Dragon'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnNoAuto(mob)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onFightDragon(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onRoamDragon(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['No Auto Attack'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnNoAuto(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Enabled Auto Attack'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setNMStats(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Pukis'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.setNMStats(mob)
            xi.dynamis.addSleepImmunity(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Nightmare Worm'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnNightmareWorm(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedNightmareWorm(mob, mobTarget)
        end,

        onMobWeaponSkillPrepare = function(mob, mobTarget)
            mob:drawIn(mobTarget, 1, 35)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.wormDeath(mob, player, optParams)
        end,
    },
    ['Nightmare Antlion'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnNightmareAntlion(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.antlionDeath(mob, player, optParams)
        end,

        mixins = { require('scripts/mixins/families/antlion_ambush') },
    },
    ['Umbral Diabolos'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnUmbralDiabolos(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedUmbralDiabolos(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
    ['Diabolos Club'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDiabolosClub(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedDiabolos(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onMobFightDiabolosClub(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamDiabolos(mob)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeathDiabolos(mob, player, optParams)
        end,
    },
    ['Diabolos Heart'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDiabolosHeart(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedDiabolos(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onMobFightDiabolosHeart(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamDiabolos(mob)
        end,

        onMobMagicPrepare = function(mob, mobTarget, spellId)
            xi.dynamis.onMobMagicPrepareDiabolosHeart(mob, mobTarget, spellId)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeathDiabolos(mob, player, optParams)
        end,
    },
    ['Diabolos Spade'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDiabolosSpade(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedDiabolos(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onMobFightDiabolosSpade(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamDiabolos(mob)
        end,

        onMobWeaponSkillPrepare = function(mob, mobTarget)
            xi.dynamis.onMobWeaponSkillPrepareDiabolosSpade(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeathDiabolos(mob, player, optParams)
        end,
    },
    ['Diabolos Diamond'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDiabolosDiamond(mob)
        end,

        onMobEngage = function(mob, mobTarget)
            xi.dynamis.onMobEngagedDiabolos(mob, mobTarget)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onMobFightDiabolosDiamond(mob, mobTarget)
        end,

        onMobRoam = function(mob)
            xi.dynamis.onMobRoamDiabolos(mob)
        end,

        onMobWeaponSkill = function(mobTarget, mob, skill)
            xi.dynamis.onMobWeaponSkillDiabolosDiamond(mobTarget, mob, skill)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeathDiabolos(mob, player, optParams)
        end,
    },
    ['Diabolos Shard'] =
    {
        onMobSpawn = function(mob)
            xi.dynamis.onSpawnDiabolosShard(mob)
        end,

        onMobFight = function(mob, mobTarget)
            xi.dynamis.onMobFightDiabolosShard(mob, mobTarget)
        end,

        onMobDeath = function(mob, player, optParams)
            xi.dynamis.mobOnDeath(mob, player, optParams)
        end,
    },
}

xi.dynamis.nmDynamicSpawn = function(mobIndex, oMobIndex, forceLink, zoneID, target, oMob, mainDynaLord)
    if mobIndex == nil then
        return
    end

    local zone     = GetZone(zoneID)
    local entry    = xi.dynamis.mobList[zoneID][mobIndex]
    local mobName  = entry.info.name
    local lookup   = xi.dynamis.nmInfoLookup[mobName]
    local handlers = nmHandlers[lookup.aiType]
    local levels   = lookups.levels.nm

    local xPos = 0
    local yPos = 0
    local zPos = 0
    local rPos = 0

    if
        target and
        (
            -- Diabolos Shard (252), Nightmare Worm (2) and Nightmare
            -- Antlion (3) appear next to their victims.
            (zoneID == xi.zone.DYNAMIS_TAVNAZIA and (mobIndex == 252 or mobIndex == 2 or mobIndex == 3)) or
            -- As do Dynamis Lord clones (179).
            (zoneID == xi.zone.DYNAMIS_XARCABARD and mobIndex == 179 and oMobIndex == 179)
        )
    then
        xPos = target:getXPos() + math.random() * 6 - 3
        yPos = target:getYPos() - 0.3
        zPos = target:getZPos() + math.random() * 6 - 3
        rPos = target:getRotPos()
    elseif entry.pos then
        xPos = entry.pos.x
        yPos = entry.pos.y
        zPos = entry.pos.z
        rPos = entry.pos.rot
    else
        xPos = oMob:getXPos() + math.random() * 6 - 3
        yPos = oMob:getYPos() - 0.3
        zPos = oMob:getZPos() + math.random() * 6 - 3
        rPos = oMob:getRotPos()
    end

    local mob = zone:insertDynamicEntity({
        objtype     = xi.objType.MOB,
        name        = lookup.name,
        x           = xPos,
        y           = yPos,
        z           = zPos,
        rotation    = rPos,
        groupId     = lookup.groupId,
        groupZoneId = lookup.groupZoneId,
        minLevel    = levels.min,
        maxLevel    = levels.max,
        dropId      = lookup.dropId,
        spellList   = lookup.spellList,
        skillList   = lookup.skillList,
        entityFlags = lookup.flags or 0,

        releaseIdOnDisappear  = true,
        specialSpawnAnimation = oMob ~= nil,

        -- Dynamic mobs do not inherit pool mob mods; some NMs set theirs
        -- in onMobInitialize.
        onMobInitialize = function(mobArg)
            if lookup.spellList ~= nil and lookup.spellList ~= 0 then
                mobArg:setMobMod(xi.mobMod.MAGIC_COOL, 25)
            end

            if handlers.onMobInitialize then
                handlers.onMobInitialize(mobArg)
            end
        end,

        onMobSpawn = function(mobArg)
            handlers.onMobSpawn(mobArg)
            mobArg:setMobMod(xi.mobMod.SUBLINK, xi.dynamis.SUBLINK_ID)
        end,

        onMobEngage            = handlers.onMobEngage,
        onMobFight              = handlers.onMobFight,
        onMobRoam               = handlers.onMobRoam,
        onMobMagicPrepare       = handlers.onMobMagicPrepare,
        onMobWeaponSkillPrepare = handlers.onMobWeaponSkillPrepare,
        onMobWeaponSkill        = handlers.onMobWeaponSkill,
        onMobDeath              = handlers.onMobDeath,

        onMobDespawn = function(mobArg)
            xi.dynamis.mobOnDespawn(mobArg)
        end,

        mixins = handlers.mixins,
    })

    mob:resolveSpeciesFamily()
    xi.dynamis.generatePath(mob, mobIndex)

    -- Clones and Ying/Yang only spawn for the main Dynamis Lord parent.
    if oMob ~= nil and mainDynaLord == oMob:getID() and mobName == 'Dynamis Lord' then
        -- Clones appear on the victim, then their spawn point resets.
        mob:setSpawn(target:getXPos(), target:getYPos(), target:getZPos(), target:getRotPos())
        mob:spawn()
        mob:setSpawn(xPos, yPos, zPos, rPos)
        mob:setLocalVar('Clone', 1)
        -- Do not set the zone mobIndex var for clones; 179 must stay the real DL.
    elseif oMob ~= nil and mainDynaLord == oMob:getID() and (mobName == 'Ying' or mobName == 'Yang') then
        mob:setSpawn(oMob:getXPos(), oMob:getYPos(), oMob:getZPos(), oMob:getRotPos())
        mob:spawn()
        mob:setSpawn(xPos, yPos, zPos, rPos)
        zone:setLocalVar(tostring(mobIndex), mob:getID())
    else
        mob:setSpawn(xPos, yPos, zPos, rPos)
        mob:spawn()
        zone:setLocalVar(tostring(mobIndex), mob:getID())
    end

    zone:setLocalVar(string.format('MobIndex_%s', mob:getID()), mobIndex)
    mob:setLocalVar(string.format('MobIndex_%s', mob:getID()), mobIndex)
    mob:setLocalVar('MobIndex', mobIndex)

    if oMobIndex ~= nil then
        mob:setLocalVar('Parent', oMobIndex)
        mob:setLocalVar('ParentID', oMob:getID())
        oMob:setLocalVar(string.format('ChildID_%s', mobIndex), mob:getID())
    end

    if entry.info.deathVar ~= nil then
        zone:setLocalVar(entry.info.deathVar, 0)
        mob:setLocalVar('hasMobVar', 1)
    end

    zone:setLocalVar(mobName, mob:getID())

    if forceLink then
        mob:updateEnmity(target)
    end
end

-----------------------------------
-- Pet Spawning
-----------------------------------

local petHandlers =
{
    [xi.job.SMN] =
    {
        ['Apocalyptic Beast'] =
        {
            mixins = { require('scripts/mixins/families/avatar') },
        },
        ['Dagourmarche'] =
        {
            onMobFight = function(mob, mobTarget)
                xi.dynamis.onFightMultiPet(mob, mobTarget)
            end,

            onMobRoam = function(mob)
                xi.dynamis.onRoamMultiPet(mob)
            end,

            mixins = { require('scripts/mixins/families/avatar') },
        },
        ['Normal'] =
        {
            mixins = { require('modules/era/lua/globals/dynamis/mixins/avatar_persist') },
        },
    },
    [xi.job.BST] =
    {
        ['Dagourmarche'] =
        {
            onMobFight = function(mob, mobTarget)
                xi.dynamis.onFightMultiPet(mob, mobTarget)
            end,

            onMobRoam = function(mob)
                xi.dynamis.onRoamMultiPet(mob)
            end,
        },
        ['Normal'] = {},
    },
    [xi.job.DRG] =
    {
        ['Apocalyptic Beast'] =
        {
            onMobFight = function(mob, mobTarget)
                xi.dynamis.onFightApocDRG(mob, mobTarget)
            end,

            onMobRoam = function(mob)
                xi.dynamis.onRoamApocDRG(mob)
            end,
        },
        ['Dagourmarche'] =
        {
            onMobFight = function(mob, mobTarget)
                xi.dynamis.onFightMultiPet(mob, mobTarget)
            end,

            onMobRoam = function(mob)
                xi.dynamis.onRoamMultiPet(mob)
            end,
        },
        ['Normal'] = {},
    },
}

xi.dynamis.spawnDynamicPet = function(target, oMob, mobJob)
    local zone      = oMob:getZone()
    local zoneID    = oMob:getZoneID()
    local mobName   = oMob:getName()
    local oMobIndex = zone:getLocalVar(string.format('MobIndex_%s', oMob:getID()))
    local isNM      = false

    if oMobIndex ~= 0 then
        local info = xi.dynamis.mobList[zoneID][oMobIndex].info
        isNM = info.mobType == 'NM'

        if info.name ~= nil then
            mobName = info.name
        end
    end

    if mobJob == nil then
        mobJob = oMob:getMainJob()
    end

    local familyPets = lookups.pets[mobJob] and lookups.pets[mobJob][oMob:getFamily()]
    if familyPets == nil then
        return
    end

    local petEntry
    if isNM then
        petEntry = familyPets.nm and familyPets.nm[mobName]
    else
        petEntry = familyPets.normal
    end

    if petEntry == nil then
        printf('era_dynamis: no pet entry for %s (job %i, family %i)', mobName, mobJob, oMob:getFamily())
        return
    end

    local handlers = petHandlers[mobJob][mobName] or petHandlers[mobJob]['Normal']

    local mob = zone:insertDynamicEntity({
        objtype     = xi.objType.MOB,
        name        = petEntry.name,
        x           = oMob:getXPos(),
        y           = oMob:getYPos(),
        z           = oMob:getZPos(),
        rotation    = oMob:getRotPos(),
        groupId     = petEntry.groupId,
        groupZoneId = petEntry.groupZoneId,
        minLevel    = lookups.levels.pet.min,
        maxLevel    = lookups.levels.pet.max,
        dropId      = petEntry.dropId,
        spellList   = petEntry.spellList,
        skillList   = petEntry.skillList,

        releaseIdOnDisappear  = true,
        specialSpawnAnimation = true,

        onMobSpawn = function(mobArg)
            xi.dynamis.setPetStats(mobArg)
            mobArg:setMobMod(xi.mobMod.SUBLINK, xi.dynamis.SUBLINK_ID)
        end,

        onMobFight = handlers.onMobFight,
        onMobRoam  = handlers.onMobRoam,

        onMobDeath = function(mobArg, player, optParams)
            xi.dynamis.onPetDeath(mobArg)
        end,

        onMobDespawn = function(mobArg)
            xi.dynamis.mobOnDespawn(mobArg)
        end,

        mixins = handlers.mixins,
    })

    mob:resolveSpeciesFamily()
    mob:setSpawn(oMob:getXPos() + math.random() * 6 - 3, oMob:getYPos() - 0.3, oMob:getZPos() + math.random() * 6 - 3, oMob:getRotPos())
    mob:spawn()

    oMob:setPet(mob)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:updateEnmity(target)
end

-----------------------------------
-- Pathing
-----------------------------------

xi.dynamis.generatePath = function(mob, mobIndex)
    local entry = xi.dynamis.mobList[mob:getZoneID()][mobIndex]
    if entry == nil or entry.patrolPath == nil then
        return
    end

    local first  = entry.patrolPath[1]
    local second = entry.patrolPath[2]
    local pathNodes =
    {
        { x = first.x,  y = first.y,  z = first.z,  wait = 1000 },
        { x = second.x, y = second.y, z = second.z, wait = 1000 },
    }

    mob:pathThrough(pathNodes, xi.path.flag.PATROL)
end

-----------------------------------
-- Mob Stats
-----------------------------------

xi.dynamis.setSpecialSkill = function(mob)
    local specialSkill = lookups.rangedSpecialSkills[mob:getFamily()]
    if
        specialSkill and
        (mob:getMainJob() == xi.job.NIN or mob:getMainJob() == xi.job.RNG)
    then
        mob:setMobMod(xi.mobMod.SPECIAL_SKILL, specialSkill)
    end
end

xi.dynamis.setMDB = function(mob)
    local mdb = lookups.mdbSpeciesOverrides[mob:getSpecies()] or lookups.mdbOverrides[mob:getFamily()]
    if mdb then
        mob:setMod(xi.mod.MDEF, mdb)
    end
end

local function applyJobSpecial(mob)
    local special = lookups.jobSpecials[mob:getMainJob()]
    if special == nil then
        return
    end

    local skillId = special.id
    if special.useFamilyEES then
        skillId = lookups.familyEES[mob:getFamily()]
    end

    if skillId == nil then
        return
    end

    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = skillId, hpp = math.random(special.hppMin, special.hppMax) },
        },
    })
end

xi.dynamis.setMobStats = function(mob)
    if mob == nil then
        return
    end

    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    xi.dynamis.setSpecialSkill(mob)
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 1)
    mob:setTrueDetection(true)

    if mob:getFamily() == family.FOMOR then
        mob:setMobLevel(math.random(80, 82))
    elseif mob:getFamily() == family.DEMON then
        mob:setMobLevel(math.random(77, 80))
    else
        mob:setMobLevel(math.random(77, 78))
    end

    applyJobSpecial(mob)
    xi.dynamis.addParentListeners(mob)

    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)
end

xi.dynamis.setNightmareStats = function(mob)
    if mob == nil then
        return
    end

    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    xi.dynamis.setSpecialSkill(mob)
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 1)
    mob:setMobLevel(math.random(78, 80))
    mob:setTrueDetection(true)

    xi.dynamis.addParentListeners(mob)

    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)

    if mob:getZoneID() == xi.zone.DYNAMIS_TAVNAZIA then
        mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    else
        mob:setRoamFlags(xi.roamFlag.NONE)
    end

    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
end

xi.dynamis.setNMStats = function(mob)
    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    xi.dynamis.setSpecialSkill(mob)
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)
    -- Casters need a magic cooldown; harmless on NMs without a spell list.
    -- Set before setMobLevel so CalculateMobStats does not warn.
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 25)
    mob:setMobLevel(math.random(80, 82))
    mob:setTrueDetection(true)
    xi.dynamis.setMDB(mob)

    xi.dynamis.addParentListeners(mob)

    if mob:getMainJob() == xi.job.NIN then
        xi.mix.jobSpecial.config(mob, {
            specials =
            {
                { id = xi.mobSkill.MIJIN_GAKURE_1, hpp = math.random(15, 25) },
            },
        })
    end

    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
end

xi.dynamis.setStatueStats = function(mob, mobIndex)
    local zoneID = mob:getZoneID()
    local eyes   = xi.dynamis.mobList[zoneID][mobIndex].eyes

    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)
    mob:setMobLevel(math.random(82, 84))

    if mob:getFamily() == family.AHRIMAN then
        -- Eyes keep normal movement speed; Xarcabard eyes have far less
        -- HP than Beaucedine's (~1040 vs ~2600 base).
        if zoneID == xi.zone.DYNAMIS_XARCABARD then
            mob:addMod(xi.mod.HPP, -60)
        end
    else
        -- Statues stand still while idle (no roam, no patrol) but plod
        -- slowly after their target once engaged.
        mob:setBaseSpeed(20)
    end

    mob:setTrueDetection(true)
    mob:setMod(xi.mod.REGEN, 0)
    mob:setMod(xi.mod.MPHEAL, 0)

    xi.dynamis.setMDB(mob)
    xi.dynamis.addParentListeners(mob)

    if mob:getFamily() == family.STATUE then
        if eyes ~= nil then
            mob:setLocalVar('eyeColor', eyes)
            mob:setAnimationSub(eyes)
        else
            mob:setLocalVar('eyeColor', xi.dynamis.eye.RED)
        end
    end

    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
end

xi.dynamis.setMegaBossStats = function(mob)
    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)
    mob:setMobLevel(88)
    mob:setMod(xi.mod.STR, -10)
    mob:setTrueDetection(true)
    xi.dynamis.setMDB(mob)
    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
    xi.dynamis.addParentListeners(mob)
end

xi.dynamis.setPetStats = function(mob)
    if mob:getFamily() == family.AVATAR then
        mob:setModelId(math.random(AVATAR_MODEL_LO, AVATAR_MODEL_HI))
    end

    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 1)
    mob:setMobLevel(79)
    mob:setTrueDetection(true)
    xi.dynamis.setMDB(mob)
    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
end

xi.dynamis.setAnimatedWeaponStats = function(mob)
    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:setMobMod(xi.mobMod.CHECK_AS_NM, 2)
    -- Animated weapons cast from their pool spell list, so they need a
    -- magic cooldown, otherwise cast timing is wrong.
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 25)
    mob:setMobMod(xi.mobMod.NO_MOVE, 0)
    mob:setMobMod(xi.mobMod.HP_HEAL_CHANCE, 90)
    mob:setMod(xi.mod.STUNRES, 75)
    mob:setMod(xi.mod.PARALYZERES, 100)
    mob:setMod(xi.mod.SLOWRES, 100)
    mob:setMod(xi.mod.SILENCERES, 100)
    mob:setMod(xi.mod.LULLABYRES, 100)
    mob:setMod(xi.mod.SLEEPRES, 100)
    mob:setMobMod(xi.mobMod.CHARMABLE, 0)
    xi.dynamis.addParentListeners(mob)
end

-- Briefly removes a mob from play with a vanish/appear animation.
xi.dynamis.teleport = function(mob, hideDuration)
    if mob:isDead() then
        return
    end

    mob:hideName(true)
    mob:setUntargetable(true)
    mob:setAutoAttackEnabled(false)
    mob:setMagicCastingEnabled(false)
    mob:setMobAbilityEnabled(false)
    mob:entityAnimationPacket('kesu')

    hideDuration = math.max(hideDuration or 5000, 1500)

    mob:timer(hideDuration, function(mobArg)
        mobArg:hideName(false)
        mobArg:setUntargetable(false)
        mobArg:setAutoAttackEnabled(true)
        mobArg:setMagicCastingEnabled(true)
        mobArg:setMobAbilityEnabled(true)

        if mobArg:isDead() then
            return
        end

        mobArg:entityAnimationPacket('deru')
        mobArg:setLocalVar('teleTime', GetSystemTime())
    end)
end

xi.dynamis.addParentListeners = function(mob)
    mob:addListener('TAKE_DAMAGE', 'DYNA_DMG_TAKE', function(mobArg, amount, attacker, attackType, damageType)
        -- TAKE_DAMAGE fires before the damage is applied, so the mob still
        -- reads as alive. A hit covering its remaining HP kills it outright,
        -- so it should release nothing.
        if amount >= mobArg:getHP() then
            return
        end

        xi.dynamis.parentOnEngaged(mobArg, attacker)
    end)

    mob:addListener('ENGAGE', 'DYNA_ENGAGE', function(mobArg, target)
        xi.dynamis.parentOnEngaged(mobArg, target)
    end)
end

-----------------------------------
-- Mob Death
-----------------------------------

xi.dynamis.mobOnDeath = function(mob, player, optParams)
    -- Refresh statues restore their killer. Checked before the once-per-mob
    -- guard below, because that guard latches on whichever party member's
    -- callback arrives first, which is not necessarily the killer.
    if type(optParams) == 'table' and optParams.isKiller then
        local refresh = statueRefresh[mob:getLocalVar('eyeColor')]
        if refresh then
            -- The amount is param0: this message reads its number from the
            -- first parameter, not the second.
            local restored = refresh.restore(player, STATUE_REFRESH_AMOUNT)
            player:messageBasic(refresh.message, restored)
        end
    end

    -- onMobDeath fires once per party member; only run once per mob.
    if mob:getLocalVar('dynamisMobOnDeathTriggered') == 1 then
        return
    end

    mob:setLocalVar('dynamisMobOnDeathTriggered', 1)

    local zone     = mob:getZone()
    local zoneID   = mob:getZoneID()
    local mobIndex = zone:getLocalVar(string.format('MobIndex_%s', mob:getID()))

    if mob:getLocalVar('hasMobVar') == 1 then
        zone:setLocalVar(xi.dynamis.mobList[zoneID][mobIndex].info.deathVar, 1)

        if zoneID == xi.zone.DYNAMIS_VALKURM then
            local nightmareFlies = { [21] = true, [22] = true, [23] = true }
            if nightmareFlies[mobIndex] then
                xi.dynamis.nightmareFlyCheck(zone)
            end
        end
    end

    if mobIndex ~= 0 and mobIndex ~= nil then
        xi.dynamis.addTimeToDynamis(zone, mobIndex)
    end

    if zoneID == xi.zone.DYNAMIS_TAVNAZIA and mobIndex ~= nil then
        -- Diabolos fragments; check whether the ??? can appear.
        if
            mobIndex == 9 or
            mobIndex == 15 or
            mobIndex == 67 or
            mobIndex == 75
        then
            xi.dynamis.tavQMSpawnCheck(mob, zone, zoneID)
        end
    end

    zone:setLocalVar(string.format('MobIndex_%s', mob:getID()), 0)
    zone:setLocalVar(tostring(mobIndex), 0)
end

xi.dynamis.mobOnDespawn = function(mob)
    local zone = mob:getZone()
    zone:setLocalVar(string.format('MobIndex_%s', mob:getID()), 0)
    zone:setLocalVar(tostring(mob:getID()), 0)
end

m:addOverride('xi.dynamis.megaBossOnDeath', function(mob, player, optParams)
    -- onMobDeath fires once per party member; only run once per mob.
    if mob:getLocalVar('dynamisMobOnDeathTriggered') == 1 then
        return
    end

    local zone     = mob:getZone()
    local zoneID   = mob:getZoneID()
    local mobIndex = zone:getLocalVar(string.format('MobIndex_%s', mob:getID()))
    local deathVar = xi.dynamis.mobList[zoneID][mobIndex].info.deathVar

    if mob:getLocalVar('GaveTimeExtension') ~= 1 then
        xi.dynamis.mobOnDeath(mob, player, deathVar) -- Process time extension and wave spawning

        -- Reveal the win ??? at the boss's death position.
        local winQM = GetNPCByID(xi.dynamis.dynaInfoEra[zoneID].winQM)
        local pos   = mob:getPos()
        winQM:setPos(pos.x, pos.y, pos.z, pos.rot)
        winQM:setStatus(xi.status.NORMAL)
        mob:setLocalVar('GaveTimeExtension', 1)
    end

    if zone:getLocalVar('TitleGranted') < 1 then
        for _, member in pairs(zone:getPlayers()) do
            member:addTitle(xi.dynamis.dynaInfoEra[zoneID].winTitle)
        end

        zone:setLocalVar('TitleGranted', 1)
    end

    mob:setLocalVar('dynamisMobOnDeathTriggered', 1)
end)

-----------------------------------
-- Statue Behavior
-----------------------------------

xi.dynamis.statueOnFight = function(mob, target)
    if mob:getHP() ~= 1 then
        return
    end

    local recoverSkill = statueRecoverSkills[mob:getAnimationSub()]
    if recoverSkill == nil then -- Not an HP/MP restore statue
        return
    end

    if mob:hasStatusEffect(xi.effect.REGEN) then
        mob:delStatusEffect(xi.effect.REGEN)
        mob:setHP(1)
    end

    if mob:getLocalVar('reset') ~= 1 then
        mob:setLocalVar('reset', 1)
        mob:addStatusEffect(xi.effect.STUN, { power = 1, duration = 10, origin = mob })
        mob:setUntargetable(true)
        mob:setMagicCastingEnabled(false)
        mob:setAutoAttackEnabled(false)
        mob:setMobAbilityEnabled(false)

        mob:timer(1000, function(mobArg) -- Allow the stun to tick
            mobArg:setTP(0)
            mobArg:setMobAbilityEnabled(true)
            mobArg:delStatusEffectSilent(xi.effect.STUN) -- Remove stun so the skill can go off.
            mobArg:useMobAbility(statueRecoverSkills[mobArg:getAnimationSub()])
        end)

        mob:timer(5000, function(mobArg)
            if mobArg:isAlive() then
                mobArg:setUnkillable(false)
                mobArg:setHP(0)
            end
        end)
    end
end

-----------------------------------
-- Pet Release
-----------------------------------

xi.dynamis.mobOnEngaged = function(mob, target)
    if mob:getLocalVar('SpawnedPets') ~= 0 then
        return
    end

    mob:setLocalVar('SpawnedPets', 1)

    if mob:getMainJob() == xi.job.BST or mob:getMainJob() == xi.job.SMN then
        mob:entityAnimationPacket('casm')
        mob:setAutoAttackEnabled(false)
        mob:setMagicCastingEnabled(false)
        mob:setMobAbilityEnabled(false)

        mob:addStatusEffect(xi.effect.BIND, {
            icon     = xi.effect.BIND,
            power    = 1,
            tick     = 3,
            duration = 6,
            flag     = xi.effectFlag.NO_LOSS_MESSAGE,
            origin   = mob,
        })

        mob:timer(3000, function(mobArg)
            if mobArg:isAlive() then
                xi.dynamis.spawnDynamicPet(target, mobArg, mobArg:getMainJob())
                mobArg:entityAnimationPacket('shsm')
                mobArg:setAutoAttackEnabled(true)
                mobArg:setMagicCastingEnabled(true)
                mobArg:setMobAbilityEnabled(true)

                if mobArg:hasStatusEffect(xi.effect.BIND) then
                    mobArg:delStatusEffectSilent(xi.effect.BIND)
                end
            end
        end)
    elseif mob:getMainJob() == xi.job.DRG then
        xi.dynamis.spawnDynamicPet(target, mob, xi.job.DRG)
    end
end

return m
