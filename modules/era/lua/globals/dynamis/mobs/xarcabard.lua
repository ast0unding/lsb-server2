-----------------------------------
-- Era Dynamis - Dynamis-Xarcabard mobs
--
-- Dynamis Lord (with Ying/Yang and his clones) and the animated
-- weapons with their satellites.
-----------------------------------
require('scripts/globals/dynamis')
require('scripts/zones/Dynamis-Xarcabard/IDs')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local ID = zones[xi.zone.DYNAMIS_XARCABARD]

-- Spawn table indexes.
local YANG_INDEX         = 177
local YING_INDEX         = 178
local DYNAMIS_LORD_INDEX = 179

-- The Dynamis Lord/Ying/Yang dialog lines are not named in the zone's
-- IDs.lua; they sit at fixed offsets from the animated weapon dialog block.
local lordText = ID.text.ANIMATED_KNUCKLES_DIALOG - 25
local yingText = ID.text.ANIMATED_KNUCKLES_DIALOG - 8
local yangText = ID.text.ANIMATED_KNUCKLES_DIALOG - 7

-- Dynamis Lord two-hours; each fires once per fight.
local lordSpecials =
{
    { id = xi.mobSkill.HUNDRED_FISTS_1,  hpp = 95, doneVar = 'DL_Hundred_Fists',  textOffset = 11 },
    { id = xi.mobSkill.MIGHTY_STRIKES_1, hpp = 95, doneVar = 'DL_Mighty_Strikes', textOffset = 14 },
    { id = xi.mobSkill.BLOOD_WEAPON_1,   hpp = 95, doneVar = 'DL_Blood_Weapon',   textOffset = 12 },
    { id = xi.mobSkill.CHAINSPELL_1,     hpp = 50, doneVar = 'DL_Chainspell',     textOffset = 13 },
}

-- Dynamis Lord weapon skill ids.
local TERA_SLASH         = 1131
local BLOODY_CLAW        = 1132
local OBLIVION_SMASH_A   = 1133
local OBLIVION_SMASH_B   = 1134
local TERA_SLASH_JUMPING = 1135 -- Insta-death variant

local function spawnDragons(oMob, target)
    local zoneID = oMob:getZoneID()

    for _, dragonIndex in pairs({ YANG_INDEX, YING_INDEX }) do
        xi.dynamis.nmDynamicSpawn(dragonIndex, DYNAMIS_LORD_INDEX, true, zoneID, target, oMob, oMob:getID())
    end
end

local function spawnClones(oMob)
    local zoneID     = oMob:getZoneID()
    local victimList = oMob:getEnmityList()

    for _ = 1, 4 do
        local victim = utils.randomEntry(victimList)['entity']
        xi.dynamis.nmDynamicSpawn(DYNAMIS_LORD_INDEX, DYNAMIS_LORD_INDEX, true, zoneID, victim, oMob, oMob:getID())
    end
end

xi.dynamis.onSpawnDynaLord = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setMegaBossStats(mob)
    mob:setMod(xi.mod.SLEEPRES, 100)
    mob:setMod(xi.mod.BINDRES, 100)
    mob:setMod(xi.mod.GRAVITYRES, 100)
    mob:setMod(xi.mod.UFASTCAST, 100)
    mob:setMod(xi.mod.MOVE, 20)
    mob:setMobMod(xi.mobMod.WEAPON_BONUS, 55) -- 90 + 55 = 145 base damage
    mob:setMod(xi.mod.ATT, 524) -- 580 total
    mob:setMod(xi.mod.DEF, 371) -- 425 total
    mob:setMod(xi.mod.EVA, 320) -- 359 total
    mob:setMod(xi.mod.REFRESH, 500)

    mob:addListener('WEAPONSKILL_STATE_ENTER', 'DL_WEAPONSKILL_STATE_ENTER', function(mobArg, skillId)
        for _, special in pairs(lordSpecials) do
            if skillId == special.id then
                mobArg:messageText(mobArg, lordText + special.textOffset)
                break
            end
        end

        local zone = mobArg:getZone()
        if
            mobArg:getLocalVar('Clone') == 1 and
            skillId == zone:getLocalVar('CloneMove')
        then
            -- Wait about 4 seconds for the TP move to be attempted, then despawn.
            mobArg:timer(4200, function(cloneArg)
                DespawnMob(cloneArg:getID())
            end)
        end
    end)

    mob:addListener('COMBAT_TICK', 'DL_JSA_TICK', function(mobArg)
        -- Handle clone moves.
        if mobArg:getLocalVar('readyForCloneWS') == 1 then
            local move = mobArg:getZone():getLocalVar('CloneMove')
            mobArg:setLocalVar('readyForCloneWS', 0)

            if move >= TERA_SLASH and move < OBLIVION_SMASH_B then
                mobArg:queue(0, function(queuedArg)
                    queuedArg:setMobAbilityEnabled(true)
                    queuedArg:useMobAbility(move)
                end)
            else
                mobArg:queue(0, function(queuedArg)
                    queuedArg:setMobAbilityEnabled(true)
                    queuedArg:useMobAbility(move, queuedArg:getTarget())
                end)
            end
        elseif mobArg:getLocalVar('Clone') == 0 then
            mobArg:getZone():setLocalVar('DL_HP', mobArg:getHP())
            mobArg:setMagicCastingEnabled(true)
            mobArg:setMobAbilityEnabled(true)
            mobArg:setAutoAttackEnabled(true)
        end

        -- Handle two-hours.
        if
            mobArg:getLocalVar('Clone') == 0 and
            mobArg:getZone():getLocalVar('2hrCool') <= GetSystemTime()
        then
            for _, special in pairs(lordSpecials) do
                if
                    mobArg:getZone():getLocalVar(special.doneVar) ~= 1 and
                    mobArg:getHPP() <= special.hpp
                then
                    mobArg:setLocalVar('readyForCloneWS', 0)
                    mobArg:queue(0, function(queuedArg)
                        queuedArg:useMobAbility(special.id)
                    end)

                    mobArg:getZone():setLocalVar(special.doneVar, 1)
                    mobArg:getZone():setLocalVar('2hrCool', GetSystemTime() + 30)
                    break
                end
            end
        end
    end)
end

-- While either dragon lives, the Dynamis Lord takes no damage.
local function dragonOnSpawn(mob)
    local zone     = mob:getZone()
    local mainLord = zone:getLocalVar(tostring(DYNAMIS_LORD_INDEX))

    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.addSleepImmunity(mob)
    mob:addImmunity(xi.immunity.GRAVITY)
    xi.dynamis.setNMStats(mob)

    if mainLord ~= 0 then
        local dynaLord = GetMobByID(mainLord)
        if
            dynaLord and
            dynaLord:getLocalVar('magImmune') < 2 -- Both dragons have not been killed yet
        then
            dynaLord:setMod(xi.mod.UDMGPHYS, -1000)
            dynaLord:setMod(xi.mod.UDMGRANGE, -1000)
            dynaLord:setMod(xi.mod.UDMGMAGIC, -1000)
            dynaLord:setMod(xi.mod.UDMGBREATH, -1000)
            dynaLord:setLocalVar('magImmune', 0)
        end
    end
end

xi.dynamis.onSpawnYing = function(mob)
    dragonOnSpawn(mob)
end

xi.dynamis.onSpawnYang = function(mob)
    dragonOnSpawn(mob)
end

xi.dynamis.onEngagedDynaLord = function(mob, target)
    local zone = mob:getZone()

    if mob:getLocalVar('Clone') == 1 then
        mob:setAutoAttackEnabled(false)
        mob:setMagicCastingEnabled(false)
        mob:setHP(zone:getLocalVar('DL_HP'))
        mob:setLocalVar('readyForCloneWS', 1)
    else
        mob:showText(mob, lordText + 8) -- Immortal drakes, defeated...
        zone:setLocalVar('teraTime', GetSystemTime() + math.random(90, 120))
        zone:setLocalVar('dragonLastPop', GetSystemTime() + 30)
    end
end

xi.dynamis.onFightDynaLord = function(mob, target)
    local zone     = mob:getZone()
    local teraTime = zone:getLocalVar('teraTime')

    if mob:getLocalVar('Clone') == 1 then
        mob:setMagicCastingEnabled(false)
        mob:setAutoAttackEnabled(false)
        mob:setMobAbilityEnabled(false)
        mob:setDropID(0)
        -- Return here to prevent clones from spawning anything additional.
        return
    end

    if mob:getLocalVar('readyForCloneWS') ~= 0 then
        return
    end

    if
        GetSystemTime() > teraTime and
        mob:getLocalVar('cloneSpawn') <= GetSystemTime()
    then
        mob:setLocalVar('cloneSpawn', GetSystemTime() + 5)
        mob:entityAnimationPacket('casm')
        mob:setAutoAttackEnabled(false)
        mob:setMagicCastingEnabled(false)
        mob:setMobAbilityEnabled(false)
        mob:timer(3000, function(mobArg)
            spawnClones(mobArg)

            local cloneMoves = { TERA_SLASH, OBLIVION_SMASH_A, OBLIVION_SMASH_B }
            zone:setLocalVar('CloneMove', cloneMoves[math.random(1, #cloneMoves)])
            mobArg:setLocalVar('readyForCloneWS', 1)
            zone:setLocalVar('teraTime', GetSystemTime() + math.random(90, 120))
            mobArg:entityAnimationPacket('shsm')
            mobArg:setMobAbilityEnabled(true)
        end)
    end

    if
        zone:getLocalVar('ying_killed') == 1 and
        zone:getLocalVar('yang_killed') == 1 and
        zone:getLocalVar('dragonSpawn') <= GetSystemTime()
    then
        zone:setLocalVar('dragonSpawn', GetSystemTime() + 5)
        if zone:getLocalVar('dragonLastPop') <= GetSystemTime() then -- Respawn Ying and Yang
            mob:setAutoAttackEnabled(false)
            mob:setMagicCastingEnabled(false)
            mob:setMobAbilityEnabled(false)
            mob:entityAnimationPacket('casm')
            mob:timer(3000, function(mobArg)
                spawnDragons(mobArg, target)
                mobArg:entityAnimationPacket('shsm')
                mobArg:setAutoAttackEnabled(true)
                mobArg:setMagicCastingEnabled(true)
                mobArg:setMobAbilityEnabled(true)

                if mobArg:getLocalVar('initialSpawnDialog') ~= 1 then
                    mobArg:showText(mobArg, lordText + 7)
                    mobArg:setLocalVar('initialSpawnDialog', 1)
                end
            end)
        end
    end

    -- Keep living dragons on the Dynamis Lord's current target.
    for killedVar, dragonIndex in pairs({
        ['ying_killed'] = YING_INDEX,
        ['yang_killed'] = YANG_INDEX,
    }) do
        if zone:getLocalVar(killedVar) == 0 then
            local dragon = GetMobByID(zone:getLocalVar(tostring(dragonIndex)))
            if dragon and not dragon:isEngaged() then
                dragon:updateEnmity(target)
            end
        end
    end
end

-- Each dragon respawns its twin 30 seconds after it dies, and vanishes
-- once the Dynamis Lord falls.
local function dragonOnFight(mob, target, otherKilledVar, otherToDVar)
    local zone = mob:getZone()

    if mob:getLocalVar('Spawning') <= GetSystemTime() then
        mob:setLocalVar('Spawning', GetSystemTime() + 5)
        if
            zone:getLocalVar(otherKilledVar) == 1 and
            GetSystemTime() > zone:getLocalVar(otherToDVar) + 30
        then
            spawnDragons(mob, target)
        end
    end

    local lordID = zone:getLocalVar(tostring(DYNAMIS_LORD_INDEX))
    if lordID ~= 0 then
        local lord = GetMobByID(lordID)
        if not lord or lord:getHP() == 0 then
            DespawnMob(mob:getID())
        end
    end
end

xi.dynamis.onFightYing = function(mob, target)
    dragonOnFight(mob, target, 'yang_killed', 'yangToD')
end

xi.dynamis.onFightYang = function(mob, target)
    dragonOnFight(mob, target, 'ying_killed', 'yingToD')
end

xi.dynamis.onMagicPrepDynaLord = function(mob, target)
    -- Small chance to choose Death.
    if math.random(1, 100) <= 3 then
        return xi.magic.spell.DEATH
    end
end

xi.dynamis.onWeaponskillPrepDynaLord = function(mob, target)
    -- At or below 25% HP, Tera Slash and Oblivion Smash gain a jumping
    -- animation variant that can insta-kill on hit.
    if mob:getHPP() <= 25 then
        local weaponSkills =
        {
            [TERA_SLASH_JUMPING] = 25,
            [OBLIVION_SMASH_A]   = 50,
            [OBLIVION_SMASH_B]   = 75,
            [BLOODY_CLAW]        = 100,
        }

        local roll = math.random(1, 100)
        for skill, chance in pairs(weaponSkills) do
            if chance >= roll then
                return skill
            end
        end
    end
end

xi.dynamis.onWeaponskillDynaLord = function(mob, skill)
    if
        skill:getID() == TERA_SLASH_JUMPING and
        mob:getLocalVar('Clone') == 0
    then
        mob:showText(mob, lordText + 1)
    end
end

xi.dynamis.onDeathDynaLord = function(mob, player, optParams)
    local zone = mob:getZone()
    xi.dynamis.megaBossOnDeath(mob, player, optParams)

    if
        mob:getLocalVar('Clone') == 0 and
        mob:getLocalVar('hasDespawnedAdds') == 0
    then
        mob:showText(mob, lordText + 2)

        for _, dragonIndex in pairs({ YANG_INDEX, YING_INDEX }) do
            DespawnMob(zone:getLocalVar(tostring(dragonIndex)))
        end

        -- Despawn clones if they happen to be alive.
        for _, mobInZone in pairs(zone:getMobs()) do
            if
                mobInZone:getLocalVar('Clone') == 1 and
                mobInZone:isSpawned()
            then
                DespawnMob(mobInZone:getID())
            end
        end
    end
end

local function dragonOnDeath(mob, player, optParams, otherKilledVar, ownToDVar, deathText, immuneVar, otherImmuneVar)
    local zone     = mob:getZone()
    local mainLord = zone:getLocalVar(tostring(DYNAMIS_LORD_INDEX))

    xi.dynamis.mobOnDeath(mob, player, optParams)

    if optParams.isKiller then
        if zone:getLocalVar(otherKilledVar) == 0 then
            mob:showText(mob, deathText + 2)
            zone:setLocalVar('dragonLastPop', GetSystemTime() + 30)
        else
            mob:showText(mob, deathText)
        end
    end

    zone:setLocalVar(ownToDVar, GetSystemTime())

    if mainLord ~= 0 then
        local dynaLord = GetMobByID(mainLord)
        if dynaLord and dynaLord:getLocalVar(immuneVar) == 0 then
            dynaLord:setMod(xi.mod.UDMGPHYS, 0)
            dynaLord:setMod(xi.mod.UDMGRANGE, 0)
            dynaLord:setMod(xi.mod.UDMGMAGIC, 0)
            dynaLord:setMod(xi.mod.UDMGBREATH, 0)

            if dynaLord:getLocalVar(otherImmuneVar) == 1 then -- Other dragon is also dead
                dynaLord:setLocalVar('physImmune', 2)
                dynaLord:setLocalVar('magImmune', 2)
            else
                dynaLord:setLocalVar(immuneVar, 1)
            end
        end
    end
end

xi.dynamis.onDeathYing = function(mob, player, optParams)
    dragonOnDeath(mob, player, optParams, 'yang_killed', 'yingToD', yingText, 'magImmune', 'physImmune')
end

xi.dynamis.onDeathYang = function(mob, player, optParams)
    dragonOnDeath(mob, player, optParams, 'ying_killed', 'yangToD', yangText, 'physImmune', 'magImmune')
end

xi.dynamis.onMobRoamXarc = function(mob)
    local currentPos = mob:getPos()
    local spawnPos   = mob:getSpawnPos()

    if currentPos.x ~= spawnPos.x and currentPos.z ~= spawnPos.z then
        mob:pathTo(spawnPos.x, spawnPos.y, spawnPos.z)
    end
end

-----------------------------------
-- Animated Weapons
-----------------------------------

-- Keyed by spawn table index. Children are the weapon's satellites;
-- spells roll against a 1-100 pick (entries trigger when chance <= pick
-- and the enhancing effect is not already up). xi.effect.KO marks
-- offensive spells, which target the current target instead of self.
xi.dynamis.animatedInfo =
{
    [151] = -- Animated Hammer
    {
        children = { 180, 181, 182, 183 },
        spells =
        {
            { spell = xi.magic.spell.PHALANX, chance = 100, effect = xi.effect.PHALANX },
            { spell = xi.magic.spell.HOLY,    chance = 100, effect = xi.effect.KO },
        },
    },
    [152] = -- Animated Dagger
    {
        children = { 184, 185, 186, 187 },
        spells =
        {
            { spell = xi.magic.spell.AEROGA_III,  chance = 50,  effect = xi.effect.KO },
            { spell = xi.magic.spell.FLASH,       chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.POISONGA_II, chance = 100, effect = xi.effect.KO },
        },
    },
    [153] = -- Animated Shield
    {
        children = { 188, 189, 190, 191 },
        spells =
        {
            { spell = xi.magic.spell.PHALANX,    chance = 100, effect = xi.effect.PHALANX },
            { spell = xi.magic.spell.CURAGA_III, chance = 50,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.PROTECT_IV, chance = 100, effect = xi.effect.PROTECT },
            { spell = xi.magic.spell.SLEEPGA,    chance = 100, effect = xi.effect.KO },
        },
    },
    [154] = -- Animated Claymore
    {
        children = { 192, 193, 194, 195 },
        spells =
        {
            { spell = xi.magic.spell.BLIZZAGA_III, chance = 50,  effect = xi.effect.KO },
            { spell = xi.magic.spell.ICE_SPIKES,   chance = 75,  effect = xi.effect.ICE_SPIKES },
            { spell = xi.magic.spell.SLEEPGA,      chance = 100, effect = xi.effect.KO },
        },
    },
    [155] = -- Animated Gun
    {
        children = { 196, 197, 198, 199 },
        spells =
        {
            { spell = xi.magic.spell.FLARE,        chance = 50,  effect = xi.effect.KO },
            { spell = xi.magic.spell.BLAZE_SPIKES, chance = 75,  effect = xi.effect.BLAZE_SPIKES },
            { spell = xi.magic.spell.GRAVIGA,      chance = 100, effect = xi.effect.KO },
        },
    },
    [156] = -- Animated Longbow
    {
        children = { 200, 201, 202, 203 },
        spells =
        {
            { spell = xi.magic.spell.CURAGA_III, chance = 25,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.BLINK,      chance = 50,  effect = xi.effect.BLINK },
            { spell = xi.magic.spell.TORNADO,    chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.BINDGA,     chance = 100, effect = xi.effect.KO },
        },
    },
    [157] = -- Animated Tachi
    {
        children = { 204, 205, 206, 207 },
        spells =
        {
            { spell = xi.magic.spell.CURAGA_III, chance = 25,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.SILENCEGA,  chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.BINDGA,     chance = 100, effect = xi.effect.KO },
        },
    },
    [158] = -- Animated Tabar
    {
        children = { 208, 209, 210, 211 },
        spells =
        {
            { spell = xi.magic.spell.BLINK,    chance = 25,  effect = xi.effect.BLINK },
            { spell = xi.magic.spell.SLEEPGA,  chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.PARALYGA, chance = 100, effect = xi.effect.KO },
        },
    },
    [159] = -- Animated Staff
    {
        children = { 212, 213, 214, 215 },
        spells =
        {
            { spell = xi.magic.spell.HOLY,    chance = 50,  effect = xi.effect.KO },
            { spell = xi.magic.spell.BREAKGA, chance = 100, effect = xi.effect.KO },
        },
    },
    [160] = -- Animated Spear
    {
        children = { 216, 217, 218, 219 },
        spells =
        {
            { spell = xi.magic.spell.CURAGA_II,    chance = 50,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.THUNDAGA_III, chance = 100, effect = xi.effect.KO },
        },
    },
    [161] = -- Animated Kunai
    {
        children = { 220, 221, 222, 223 },
        spells =
        {
            { spell = xi.magic.spell.JUBAKU_NI,   chance = 50,  effect = xi.effect.KO },
            { spell = xi.magic.spell.KURAYAMI_NI, chance = 100, effect = xi.effect.KO },
        },
    },
    [162] = -- Animated Knuckles
    {
        children = { 224, 225, 226, 227 },
        spells =
        {
            { spell = xi.magic.spell.PROTECTRA_IV, chance = 25,  effect = xi.effect.PROTECT },
            { spell = xi.magic.spell.BLAZE_SPIKES, chance = 50,  effect = xi.effect.BLAZE_SPIKES },
            { spell = xi.magic.spell.HASTEGA,      chance = 100, effect = xi.effect.WEAKNESS },
        },
    },
    [163] = -- Animated Great Axe
    {
        children = { 228, 229, 230, 231 },
        spells =
        {
            { spell = xi.magic.spell.BLAZE_SPIKES, chance = 25,  effect = xi.effect.BLAZE_SPIKES },
            { spell = xi.magic.spell.ABSORB_STR,   chance = 75,  effect = xi.effect.STR_BOOST },
            { spell = xi.magic.spell.SLOWGA,       chance = 100, effect = xi.effect.KO },
        },
    },
    [164] = -- Animated Horn
    {
        children = { 232, 233, 234, 235 },
        spells =
        {
            { spell = xi.magic.spell.HORDE_LULLABY, chance = 100, effect = xi.effect.KO },
        },
    },
    [165] = -- Animated Longsword
    {
        children = { 236, 237, 238, 239 },
        spells =
        {
            { spell = xi.magic.spell.CURE_IV,    chance = 25,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.CURAGA_III, chance = 50,  effect = xi.effect.WEAKNESS },
            { spell = xi.magic.spell.HOLY,       chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.DISPELGA,   chance = 100, effect = xi.effect.KO },
        },
    },
    [166] = -- Animated Scythe
    {
        children = { 240, 241, 242, 243 },
        spells =
        {
            { spell = xi.magic.spell.PHALANX, chance = 25,  effect = xi.effect.PHALANX },
            { spell = xi.magic.spell.BIO_III, chance = 75,  effect = xi.effect.KO },
            { spell = xi.magic.spell.BINDGA,  chance = 100, effect = xi.effect.KO },
        },
    },
}

xi.dynamis.onSpawnAnimated = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setAnimatedWeaponStats(mob)
    mob:timer(500, function(mobArg)
        mobArg:setAnimationSub(3)
    end)
end

xi.dynamis.onEngagedAnimated = function(mob, target)
    mob:setLocalVar('changeTime', GetSystemTime() + math.random(55, 65))
    mob:setLocalVar('castTime', GetSystemTime() + math.random(8, 10))
end

xi.dynamis.onFightAnimated = function(mob, target)
    if mob:getLocalVar('animSwap') == 0 then
        mob:setLocalVar('animSwap', 1)
        mob:setAnimationSub(3)
    end

    if mob:getLocalVar('changeTime') <= GetSystemTime() then
        mob:addMP(200)
        mob:castSpell(xi.magic.spell.WARP, mob)
        mob:setLocalVar('changeTime', GetSystemTime() + math.random(55, 65))
    end

    if mob:getLocalVar('castTime') <= GetSystemTime() then
        local pick = math.random(1, 100)

        for _, entry in ipairs(xi.dynamis.animatedInfo[mob:getLocalVar('MobIndex')].spells) do
            if
                entry.chance <= pick and
                not mob:hasStatusEffect(entry.effect)
            then
                local chosenTarget = mob
                if entry.effect == xi.effect.KO then
                    chosenTarget = target
                end

                mob:castSpell(entry.spell, chosenTarget)
                mob:setLocalVar('castTime', GetSystemTime() + math.random(18, 25))
                break
            end
        end
    end
end

xi.dynamis.onSpawnSatellite = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setNMStats(mob)
    mob:timer(500, function(mobArg)
        mobArg:setLocalVar('animSub', math.random(5, 6))
        mobArg:setAnimationSub(mobArg:getLocalVar('animSub'))
    end)
end

xi.dynamis.onEngageSatellite = function(mob, target)
end

xi.dynamis.onFightSatellite = function(mob, target)
    if mob:getLocalVar('animSwap') == 0 then
        mob:setLocalVar('animSwap', 1)
        mob:setAnimationSub(mob:getLocalVar('animSub'))
    end

    -- Despawn if the animated weapon parent dies.
    local parent = GetMobByID(mob:getLocalVar('ParentID'))
    if not parent or parent:getHP() == 0 then
        DespawnMob(mob:getID())
    end
end
