-----------------------------------
-- Era Dynamis - Dynamis-Valkurm mobs (Cirrate Christelle and court)
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local dragontraps = { 'dragontrap1_killed', 'dragontrap2_killed', 'dragontrap3_killed' }
local morbols     = { 'morbol1_killed', 'morbol2_killed' }
local flies       = { 'fly1_killed', 'fly2_killed', 'fly3_killed' }

-- Nightmare Morbol children released by Cirrate (spawn table indexes).
local morbolChildren    = { 289, 290 }
local morbolParentIndex = 24

local function countKills(zone, varNames)
    local killed = 0
    for _, varName in pairs(varNames) do
        if zone:getLocalVar(varName) == 1 then
            killed = killed + 1
        end
    end

    return killed
end

-- Killing all three Nightmare Flies unlocks subjobs.
xi.dynamis.nightmareFlyCheck = function(zone)
    if
        countKills(zone, flies) == 3 and
        zone:getLocalVar('SJUnlock') ~= 1
    then
        for _, player in pairs(zone:getPlayers()) do
            if player:hasStatusEffect(xi.effect.SJ_RESTRICTION) then
                player:delStatusEffect(xi.effect.SJ_RESTRICTION)
            end
        end

        zone:setLocalVar('SJUnlock', 1)
    end
end

xi.dynamis.onSpawnCirrate = function(mob)
    -- Buffs Cirrate gains as members of her court die.
    -- statVar/statValue feed her breath skill scripts; doneVar latches.
    xi.dynamis.cirrateBuffs =
    {
        { deathVars = dragontraps,                statVar = 'putridbreathcap',        statValue = 3,  doneVar = 'dragon_killed', skillId = xi.mobSkill.PUTRID_BREATH_2 },
        { deathVars = { 'fairy_ring_killed' },    statVar = 'miasmicbreathpower',     statValue = 30, doneVar = 'fairy_killed',  skillId = xi.mobSkill.MIASMIC_BREATH_2, speed = 40 },
        { deathVars = { 'nanatina_killed' },      statVar = 'fragrantbreathduration', statValue = 30, doneVar = 'nana_killed',   skillId = xi.mobSkill.FRAGRANT_BREATH_2 },
        { deathVars = { 'stcemqestcint_killed' }, statVar = 'vampiriclashpower',      statValue = 1,  doneVar = 'stcem_killed',  skillId = xi.mobSkill.VAMPIRIC_LASH_2 },
    }

    -- TP skill weights; a court death raises its skill's weight to 12.
    xi.dynamis.cirrateSkills =
    {
        [xi.mobSkill.FRAGRANT_BREATH_2]      = 20,
        [xi.mobSkill.MIASMIC_BREATH_2]       = 20,
        [xi.mobSkill.PUTRID_BREATH_2]        = 20,
        [xi.mobSkill.VAMPIRIC_LASH_2]        = 20,
        [xi.mobSkill.EXTREMELY_BAD_BREATH_2] = 20,
    }

    mob:addListener('WEAPONSKILL_STATE_EXIT', 'CIRRATE_WEAPONSKILL_STATE_EXIT', function(mobArg)
        mobArg:getZone():setLocalVar('cirrate_tp', 0)
        mobArg:setTP(0)
    end)

    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setMegaBossStats(mob)
    mob:setBaseSpeed(140)
    mob:addMod(xi.mod.REGAIN, 1250)
    mob:setAutoAttackEnabled(false)
end

xi.dynamis.onSpawnFairy = function(mob)
    mob:setBaseSpeed(140)
    xi.dynamis.onSpawnNoAuto(mob)
end

xi.dynamis.onEngageMorbol = function(mob, target)
    local cirrate = GetMobByID(mob:getLocalVar('ParentID'))
    if cirrate then
        mob:setBaseSpeed(cirrate:getBaseSpeed())
    end
end

xi.dynamis.onEngagedCirrate = function(mob, target)
    if
        countKills(mob:getZone(), dragontraps) < 3 and
        countKills(mob:getZone(), morbols) == 0 and
        mob:getLocalVar('spawnedPets') == 0
    then
        mob:setLocalVar('spawnedPets', 1)

        for _, childIndex in ipairs(morbolChildren) do
            xi.dynamis.nmDynamicSpawn(childIndex, morbolParentIndex, true, mob:getZoneID(), target, mob)
        end
    end
end

xi.dynamis.onFightCirrate = function(mob, target)
    local zone   = mob:getZone()
    local buffs  = xi.dynamis.cirrateBuffs
    local skills = xi.dynamis.cirrateSkills

    if #buffs > 0 then
        local selection = math.random(1, #buffs)
        local buff      = buffs[selection]

        if countKills(zone, buff.deathVars) > 0 then
            mob:setLocalVar(buff.statVar, buff.statValue)
            zone:setLocalVar(buff.doneVar, 1)

            if buff.speed ~= nil then
                mob:setBaseSpeed(buff.speed)
            end

            skills[buff.skillId] = 12
            table.remove(buffs, selection)
        end
    end

    if
        mob:getTP() >= 2000 and
        zone:getLocalVar('cirrate_tp') == 0
    then
        -- Latch so the skill roll below only happens once.
        zone:setLocalVar('cirrate_tp', 1)

        local total = 0
        for _, chance in pairs(skills) do
            total = total + chance
        end

        local roll     = math.random(1, total)
        local rollBase = 0
        for skill, chance in pairs(skills) do
            if roll <= rollBase + chance then
                return mob:useMobAbility(skill)
            end

            rollBase = rollBase + chance
        end
    end
end

xi.dynamis.onWeaponskillPrepCirrate = function(mob)
end

xi.dynamis.onWeaponskillPrepNantina = function(mob)
    if math.random(1, 100) <= 10 then
        return 1619 -- Attractant (charm)
    elseif mob:getHPP() > 25 then
        return 1617
    else
        return 1618
    end
end
