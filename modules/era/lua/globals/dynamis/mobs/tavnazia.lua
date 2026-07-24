-----------------------------------
-- Era Dynamis - Dynamis-Tavnazia mobs (Diabolos fights, nightmares)
-----------------------------------
require('scripts/globals/dynamis')
require('scripts/zones/Dynamis-Tavnazia/IDs')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local ID = zones[xi.zone.DYNAMIS_TAVNAZIA]

-- These dialog lines are not named in the zone's IDs.lua; they sit at
-- fixed offsets from DYNAMIS_TIME_BEGIN.
local umbralText =
{
    I_AM_A_UNIQUE_ENTITY = ID.text.DYNAMIS_TIME_BEGIN + 60, -- I am...a unique entity...
    NOW_I_WILL_JOIN_THEM = ID.text.DYNAMIS_TIME_BEGIN + 64, -- Now I will join them...
}

local STARLIGHT_MUSIC = 239

-- Spawn table indexes.
local NIGHTMARE_WORM_INDEX    = 2
local NIGHTMARE_ANTLION_INDEX = 3
local DIABOLOS_SHARD_INDEX    = 252
local DIABOLOS_CLUB_INDEX     = 110
local DIABOLOS_HEART_INDEX    = 111
local DIABOLOS_SPADE_INDEX    = 112
local DIABOLOS_DIAMOND_INDEX  = 113
local UMBRAL_FIRST_INDEX      = 106
local UMBRAL_LAST_INDEX       = 109

-- Diabolos mob skill ids (module SQL rows; not in xi.mobSkill)
local RUINOUS_OMEN = 1911
local CAMISADO     = 1903
local NIGHTMARE    = 1908
local DAY_DREAM    = 1919

local wormPositions =
{
    { x = -0.4922, y = -22.75,  z = -26.778, rot = 193 },
    { x = -21.282, y = -21.991, z = -21.588, rot = 226 },
    { x = -20.901, y = -22,     z = 21.3637, rot = 34 },
    { x = 0.183,   y = -22.75,  z = 24.414,  rot = 62 },
    { x = 30.721,  y = -22,     z = -2.156,  rot = 142 },
}

local antlionPositions =
{
    { x = 19.105,  y = -36,    z = 18.66,  rot = 100 },
    { x = 19.72,   y = -35.8,  z = -18.83, rot = 164 },
    { x = -19.13,  y = -35.94, z = -19.75, rot = 225 },
    { x = -21.65,  y = -36,    z = 18.61,  rot = 25 },
}

-- Antlion trigger area ids follow the worm areas.
local ANTLION_AREA_OFFSET = #wormPositions

xi.dynamis.dynamisTavnaziaOnNewDynamis = function(player, zone)
    zone:setLocalVar('nightmareWormArea', math.random(#wormPositions))
    zone:setLocalVar('nightmareAntlionArea', math.random(#antlionPositions) + ANTLION_AREA_OFFSET)
end

xi.dynamis.dynamisTavnaziaOnZoneInitializeEra = function(zone)
    -- Thin rectangular trigger areas centered on each spawn point.
    for i, pos in ipairs(wormPositions) do
        zone:registerCuboidTriggerArea(i, pos.x - 5, -23, pos.z - 5, pos.x + 5, -22, pos.z + 5)
    end

    for i, pos in ipairs(antlionPositions) do
        zone:registerCuboidTriggerArea(i + ANTLION_AREA_OFFSET, pos.x - 5, -36, pos.z - 5, pos.x + 5, -35, pos.z + 5)
    end
end

xi.dynamis.dynamisTavnaziaOnTriggerAreaEnter = function(player, triggerArea)
    local zone = player:getZone()

    if
        zone:getLocalVar('nightmareWormSpawned') == 0 and
        triggerArea:getTriggerAreaID() == zone:getLocalVar('nightmareWormArea')
    then
        zone:setLocalVar('nightmareWormSpawned', 1)
        xi.dynamis.nmDynamicSpawn(NIGHTMARE_WORM_INDEX, nil, true, xi.zone.DYNAMIS_TAVNAZIA, player)
    end

    if
        zone:getLocalVar('nightmareAntlionSpawned') == 0 and
        triggerArea:getTriggerAreaID() == zone:getLocalVar('nightmareAntlionArea')
    then
        zone:setLocalVar('nightmareAntlionSpawned', 1)
        xi.dynamis.nmDynamicSpawn(NIGHTMARE_ANTLION_INDEX, nil, true, xi.zone.DYNAMIS_TAVNAZIA, player)
    end
end

local firstEyes  = { 'eyeOneKilled', 'eyeTwoKilled' }
local secondEyes = { 'eyeThreeKilled', 'eyeFourKilled' }

local function checkRuinousOmen(mob)
    if
        mob:isAlive() and
        mob:getHPP() < mob:getLocalVar('RuinousOmenHPP')
    then
        mob:setLocalVar('RuinousOmenHPP', 0)
        mob:useMobAbility(RUINOUS_OMEN)
    end
end

xi.dynamis.onSpawnNightmareWorm = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setRoamFlags(xi.roamFlag.WORM)
end

xi.dynamis.onSpawnNightmareAntlion = function(mob)
    xi.dynamis.setNMStats(mob)
end

xi.dynamis.onMobEngagedNightmareWorm = function(mob, target)
    mob:setAnimationSub(0)
    mob:hideName(false)
    mob:setUntargetable(false)
end

-- Killing eyes gives each time extension ??? a chance to appear:
-- guaranteed at two kills, 50% at one.
local function checkTimeExtensionNPC(zone, spawnedVar, eyeVars, npcID)
    if zone:getLocalVar(spawnedVar) ~= 0 then
        return
    end

    local timeNPC = GetNPCByID(npcID)
    if timeNPC == nil or timeNPC:getStatus() == xi.status.NORMAL then
        return
    end

    local killed = 0
    for _, eye in pairs(eyeVars) do
        if zone:getLocalVar(eye) == 1 then
            killed = killed + 1
        end
    end

    if
        killed == 2 or
        (killed == 1 and math.random(1, 2) == 2)
    then
        timeNPC:setStatus(xi.status.NORMAL)
        zone:setLocalVar(spawnedVar, 1)
    end
end

xi.dynamis.tavQMSpawnCheck = function(mob, zone, zoneID)
    local timeExtensions = xi.dynamis.dynaInfoEra[zoneID].timeExtensions

    checkTimeExtensionNPC(zone, 'timeExtensionOneSpawned', firstEyes, timeExtensions[1])
    checkTimeExtensionNPC(zone, 'timeExtensionTwoSpawned', secondEyes, timeExtensions[2])
end

local function unlockSubjobs(zone)
    for _, player in pairs(zone:getPlayers()) do
        if player:hasStatusEffect(xi.effect.SJ_RESTRICTION) then
            player:delStatusEffect(xi.effect.SJ_RESTRICTION)
        end
    end

    zone:setLocalVar('SJUnlock', 1)
end

xi.dynamis.antlionDeath = function(mob)
    local zone     = mob:getZone()
    local mobIndex = zone:getLocalVar(string.format('MobIndex_%s', mob:getID()))

    zone:setLocalVar('antlionDeath', 1)

    if zone:getLocalVar('wormDeath') == 1 then
        unlockSubjobs(zone)
    end

    xi.dynamis.addTimeToDynamis(zone, mobIndex)
end

xi.dynamis.wormDeath = function(mob)
    local zone = mob:getZone()

    zone:setLocalVar('wormDeath', 1)

    if zone:getLocalVar('antlionDeath') == 1 then
        unlockSubjobs(zone)
    end
end

-----------------------------------
-- Umbral Diabolos
-----------------------------------

xi.dynamis.onSpawnUmbralDiabolos = function(mob)
    mob:setAutoAttackEnabled(false)
    mob:setMobType(xi.mobType.BATTLEFIELD)
    mob:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = mob })
    mob:setMobMod(xi.mobMod.DETECTION, xi.detects.SIGHT)
    mob:setMobMod(xi.mobMod.ALWAYS_AGGRO, 1)
end

xi.dynamis.onMobEngagedUmbralDiabolos = function(mob, target)
    local zoneID = mob:getZoneID()
    local zone   = mob:getZone()

    if zone:getLocalVar('Starlight') == 0 then
        zone:setLocalVar('Starlight', 1)
        for _, member in pairs(zone:getPlayers()) do
            for musicSlot = 0, 3 do -- Background and combat music
                member:changeMusic(musicSlot, STARLIGHT_MUSIC)
            end
        end
    end

    mob:messageText(mob, umbralText.I_AM_A_UNIQUE_ENTITY + zone:getLocalVar('UmbralTextOffset'))
    zone:setLocalVar('UmbralTextOffset', zone:getLocalVar('UmbralTextOffset') + 1)

    -- Each Umbral awakens one of the remaining Diabolos aspects.
    local remainingDiabolos = {}
    for _, aspect in ipairs({
        { var = 'DiabolosClub',    index = DIABOLOS_CLUB_INDEX },
        { var = 'DiabolosHeart',   index = DIABOLOS_HEART_INDEX },
        { var = 'DiabolosSpade',   index = DIABOLOS_SPADE_INDEX },
        { var = 'DiabolosDiamond', index = DIABOLOS_DIAMOND_INDEX },
    }) do
        if zone:getLocalVar(aspect.var) == 0 then
            table.insert(remainingDiabolos, aspect.index)
        end
    end

    xi.dynamis.nmDynamicSpawn(remainingDiabolos[math.random(#remainingDiabolos)], nil, false, zoneID)
    DespawnMob(mob:getID())
end

xi.dynamis.setDiabolosCommonTraits = function(mob)
    mob:setMod(xi.mod.BINDRES, 100)
    mob:setMod(xi.mod.GRAVITYRES, 100)
    mob:setMod(xi.mod.LULLABYRES, 100)
    mob:setMod(xi.mod.SLEEPRES, 100)
    -- Some forum posts claim a stun or so would get through unresisted.
    mob:setMod(xi.mod.STUNRES, 95)
    mob:setMod(xi.mod.SILENCERES, 100)
    mob:setMod(xi.mod.BLINDRES, 100)
    mob:setMod(xi.mod.CURSERES, 100)
    mob:setMod(xi.mod.PARALYZERES, 100)
    mob:setMod(xi.mod.SLOWRES, 95)
    mob:setMod(xi.mod.POISONRES, 95)
    mob:setMobMod(xi.mobMod.SUPERLINK, 5)
    mob:setMod(xi.mod.REFRESH, 700)
    mob:setLocalVar('RuinousOmenHPP', math.random(35, 65))
    mob:setMobMod(xi.mobMod.NO_STANDBACK, 1)
    mob:setMod(xi.mod.REGAIN, 50)
end

xi.dynamis.onSpawnDiabolosClub = function(mob)
    mob:getZone():setLocalVar('DiabolosClub', mob:getID())
    xi.dynamis.setMegaBossStats(mob)
    xi.dynamis.setDiabolosCommonTraits(mob)
    mob:setLocalVar('ShardSummon1', math.random(50, 75))
    mob:setLocalVar('ShardSummon2', math.random(25, 40))
end

xi.dynamis.onMobFightDiabolosClub = function(mob, mobTarget)
    for _, summonVar in ipairs({ 'ShardSummon1', 'ShardSummon2' }) do
        if
            mob:getLocalVar(summonVar) > 0 and
            mob:isAlive() and
            mob:getHPP() < mob:getLocalVar(summonVar)
        then
            mob:setLocalVar(summonVar, 0)
            xi.dynamis.nmDynamicSpawn(DIABOLOS_SHARD_INDEX, DIABOLOS_CLUB_INDEX, true, mob:getZoneID(), mobTarget, mob)
        end
    end

    if mob:getLocalVar('RuinousOmenHPP') > 0 then
        checkRuinousOmen(mob)
    end
end

xi.dynamis.onSpawnDiabolosHeart = function(mob)
    mob:getZone():setLocalVar('DiabolosHeart', mob:getID())
    xi.dynamis.setMegaBossStats(mob)
    xi.dynamis.setDiabolosCommonTraits(mob)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 15)
end

xi.dynamis.onMobFightDiabolosHeart = function(mob, mobTarget)
    if mob:getLocalVar('RuinousOmenHPP') > 0 then
        checkRuinousOmen(mob)
    end
end

xi.dynamis.onMobMagicPrepareDiabolosHeart = function(mob, mobTarget, spellId)
    if mob:getHPP() <= 20 then
        mob:setMobMod(xi.mobMod.MAGIC_COOL, 10)
        if math.random(1, 3) <= 2 then
            return xi.magic.spell.DRAIN
        end
    else
        mob:setMobMod(xi.mobMod.MAGIC_COOL, 15)
    end
end

xi.dynamis.onSpawnDiabolosSpade = function(mob)
    mob:getZone():setLocalVar('DiabolosSpade', mob:getID())
    xi.dynamis.setMegaBossStats(mob)
    xi.dynamis.setDiabolosCommonTraits(mob)
end

xi.dynamis.onMobFightDiabolosSpade = function(mob, mobTarget)
    if mob:getLocalVar('RuinousOmenHPP') > 0 then
        checkRuinousOmen(mob)
    end
end

xi.dynamis.onMobWeaponSkillPrepareDiabolosSpade = function(mob, target)
    -- Favors/spams Nether Blast (1910) per some reports.
    -- Consider adding a higher percentage of usage:
    -- if math.random(1, 2) == 2 then
    --     return 1910
    -- end
end

xi.dynamis.onSpawnDiabolosDiamond = function(mob)
    mob:getZone():setLocalVar('DiabolosDiamond', mob:getID())
    xi.dynamis.setMegaBossStats(mob)
    xi.dynamis.setDiabolosCommonTraits(mob)
    mob:setAutoAttackEnabled(false)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 25)
end

xi.dynamis.onMobFightDiabolosDiamond = function(mob, mobTarget)
    if mob:getLocalVar('RuinousOmenHPP') > 0 then
        checkRuinousOmen(mob)
    end
end

local function queueDayDream(mob)
    mob:queue(1000, function(mobArg)
        if mobArg:isDead() then
            return
        end

        local dayDreamTarget = mobArg:getTarget()
        if dayDreamTarget:isPet() then
            dayDreamTarget = dayDreamTarget:getMaster()
        end

        mobArg:drawIn(dayDreamTarget, 20, 0)
        mobArg:useMobAbility(DAY_DREAM, dayDreamTarget)
    end)
end

xi.dynamis.onMobWeaponSkillDiabolosDiamond = function(target, mob, skill)
    -- Nightmare (1908) was used - the fun begins.
    if
        skill:getID() == NIGHTMARE and
        mob:getLocalVar('DayDreamsLeft') == 0
    then
        -- Reported to get stronger the more times Nightmare happens.
        -- Video evidence showed 5 charms at low HP:
        -- https://youtu.be/Bvp-T3_U7xA?t=74
        mob:setLocalVar('DayDreamsLeft', 5)
        queueDayDream(mob)
    end

    if
        skill:getID() == DAY_DREAM and
        mob:getLocalVar('DayDreamsLeft') > 0
    then
        mob:setLocalVar('DayDreamsLeft', mob:getLocalVar('DayDreamsLeft') - 1)
        queueDayDream(mob)
    end
end

xi.dynamis.onSpawnDiabolosShard = function(mob)
    xi.dynamis.setMegaBossStats(mob)
    xi.dynamis.setDiabolosCommonTraits(mob)
end

xi.dynamis.onMobFightDiabolosShard = function(mob, mobTarget)
    mob:useMobAbility(CAMISADO)
end

xi.dynamis.onMobWeaponSkillDiabolosShard = function(target, mob, skill)
    mob:setHP(0)
end

-- TODO: The Umbrals are supposed to be NPCs.

xi.dynamis.mobOnDeathDiabolos = function(mob, player, optParams)
    local zone = mob:getZone()
    if zone:getLocalVar('ProcessMegaBossDeathOnce') > 0 then
        return
    end

    -- Dynamic ids cannot be trusted outside the scope of a mob's life,
    -- so deaths are latched through zone variables.
    local aspects = { 'DiabolosClub', 'DiabolosHeart', 'DiabolosSpade', 'DiabolosDiamond' }

    for _, aspect in ipairs(aspects) do
        if mob:getID() == zone:getLocalVar(aspect) then
            zone:setLocalVar(aspect .. 'Death', 1)
        end
    end

    local allDead = true
    for _, aspect in ipairs(aspects) do
        if
            zone:getLocalVar(aspect) > 0 and
            zone:getLocalVar(aspect .. 'Death') == 0
        then
            allDead = false
        end
    end

    if allDead then
        zone:setLocalVar('ProcessMegaBossDeathOnce', 1)

        -- Despawn any remaining Umbrals.
        for i = UMBRAL_FIRST_INDEX, UMBRAL_LAST_INDEX do
            local mobID = zone:getLocalVar(tostring(i))
            if mobID > 0 then
                DespawnMob(mobID)
            end
        end

        xi.dynamis.megaBossOnDeath(mob, player, optParams)
    end
end

xi.dynamis.onMobEngagedDiabolos = function(mob, mobTarget)
    local zone = mob:getZone()
    mob:setLocalVar('hasEngaged', 1)

    for _, aspect in ipairs({ 'DiabolosClub', 'DiabolosHeart', 'DiabolosSpade', 'DiabolosDiamond' }) do
        if mob:getID() == zone:getLocalVar(aspect) then
            zone:setLocalVar(aspect .. 'Engaged', 1)
        end
    end
end

xi.dynamis.onMobRoamDiabolos = function(mob)
    local zone = mob:getZone()

    -- Do nothing if never engaged.
    if mob:getLocalVar('hasEngaged') == 0 then
        return
    end

    for _, aspect in ipairs({ 'DiabolosClub', 'DiabolosHeart', 'DiabolosSpade', 'DiabolosDiamond' }) do
        if mob:getID() == zone:getLocalVar(aspect) then
            zone:setLocalVar(aspect .. 'Engaged', 0)
        end
    end

    -- If no spawned aspect holds hate, they all leave.
    local noHate = true
    for _, aspect in ipairs({ 'DiabolosClub', 'DiabolosHeart', 'DiabolosSpade', 'DiabolosDiamond' }) do
        if
            zone:getLocalVar(aspect) > 0 and
            zone:getLocalVar(aspect .. 'Engaged') == 1
        then
            noHate = false
        end
    end

    if noHate then
        mob:messageText(mob, umbralText.NOW_I_WILL_JOIN_THEM)

        DespawnMob(mob:getID())

        for i = UMBRAL_FIRST_INDEX, UMBRAL_LAST_INDEX do
            local mobID = zone:getLocalVar(tostring(i))
            if mobID > 0 then
                DespawnMob(mobID)
            end
        end
    end
end
