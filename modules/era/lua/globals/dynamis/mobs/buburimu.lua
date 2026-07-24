-----------------------------------
-- Era Dynamis - Dynamis-Buburimu mobs (Apocalyptic Beast, dragons)
--
-- The Apocalyptic Beast cycles through every job two-hour; killing the
-- matching NM beforehand locks that two-hour out (it fizzles into a
-- brief Hysteria instead). Killing the ten dragons locks out his
-- breath/TP moves one by one.
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local function apocRemoveAdditionalEffects(mob)
    local statusEffects =
    {
        xi.effect.MIGHTY_STRIKES,
        xi.effect.HUNDRED_FISTS,
        xi.effect.MANAFONT,
        xi.effect.CHAINSPELL,
        xi.effect.PERFECT_DODGE,
        xi.effect.INVINCIBLE,
        xi.effect.BLOOD_WEAPON,
        xi.effect.SOUL_VOICE,
        xi.effect.MEIKYO_SHISUI,
        xi.effect.ASTRAL_FLOW,
    }

    for _, effect in pairs(statusEffects) do
        if mob:hasStatusEffect(effect) then
            mob:delStatusEffect(effect)
        end
    end

    mob:setAutoAttackEnabled(true)
    mob:setMobAbilityEnabled(true)
    mob:clearActionQueue()
end

xi.dynamis.onSpawnApoc = function(mob)
    local zone = mob:getZone()

    xi.dynamis.setMegaBossStats(mob)
    mob:setMod(xi.mod.GRAVITYRES, 100)
    mob:setMod(xi.mod.BINDRES, 50)
    mob:setMod(xi.mod.STUNRES, 80)
    mob:setMod(xi.mod.REFRESH, 500)
    mob:setMod(xi.mod.SILENCERES, 100)
    mob:setMod(xi.mod.BLINDRES, 100)
    mob:setMod(xi.mod.PARALYZERES, 50)
    mob:setMod(xi.mod.SLOWRES, 50)
    mob:setMod(xi.mod.SLEEPRES, 100)
    mob:setMod(xi.mod.LULLABYRES, 100)
    mob:setMod(xi.mod.MACC, 200)
    mob:setMod(xi.mod.MATT, 50)
    mob:setMod(xi.mod.FASTCAST, 5)
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setMobMod(xi.mobMod.ROAM_DISTANCE, 1000) -- See you in Narnia!
    mob:setMobMod(xi.mobMod.ROAM_COOL, 1)
    mob:setBehavior(bit.bor(mob:getBehavior(), xi.behavior.NO_TURN))

    -- Dynamic ids cannot be trusted between spawns; track through the zone.
    zone:setLocalVar('Apocalyptic_Beast', mob:getID())
    mob:setLocalVar('Apoc_Beast', 1)

    -- Fresh two-hour list per spawn; entries are removed as used.
    xi.dynamis.apoc2hrlist =
    {
        { id = xi.mobSkill.MIGHTY_STRIKES_1, name = 'MIGHTY_STRIKES', target = 'self' },
        { id = xi.mobSkill.HUNDRED_FISTS_1,  name = 'HUNDRED_FISTS',  target = 'self' },
        { id = xi.mobSkill.BENEDICTION_1,    name = 'BENEDICTION',    target = 'self' },
        { id = xi.mobSkill.MANAFONT_1,       name = 'MANAFONT',       target = 'self' },
        { id = xi.mobSkill.CHAINSPELL_1,     name = 'CHAINSPELL',     target = 'self' },
        { id = xi.mobSkill.PERFECT_DODGE_1,  name = 'PERFECT_DODGE',  target = 'self' },
        { id = xi.mobSkill.INVINCIBLE_1,     name = 'INVINCIBLE',     target = 'self' },
        { id = xi.mobSkill.BLOOD_WEAPON_1,   name = 'BLOOD_WEAPON',   target = 'self' },
        { id = xi.mobSkill.CHARM,            name = 'CHARM',          target = 'target' },
        { id = xi.mobSkill.SOUL_VOICE_1,     name = 'SOUL_VOICE',     target = 'self' },
        { id = xi.mobSkill.EES_GOBLIN,       name = 'EAGLE_EYE_SHOT', target = 'target' },
        { id = xi.mobSkill.MEIKYO_SHISUI_1,  name = 'MEIKYO_SHISUI',  target = 'self' },
        { id = xi.mobSkill.MIJIN_GAKURE_1,   name = 'MIJIN_GAKURE',   target = 'self' },
        { id = xi.mobSkill.CALL_WYVERN_1,    name = 'CALL_WYVERN',    target = 'self' },
        { id = xi.mobSkill.ASTRAL_FLOW_1,    name = 'ASTRAL_FLOW',    target = 'self' },
    }

    -- Two-hour lockouts: zone deathVar set -> local var name set to 1.
    xi.dynamis.apocLockouts2hr =
    {
        { deathVar = 'bloodspiller_killed',  name = 'MIGHTY_STRIKES' },
        { deathVar = 'hamfist_killed',       name = 'HUNDRED_FISTS' },
        { deathVar = 'flesheater_killed',    name = 'BENEDICTION' },
        { deathVar = 'flamecaller_killed',   name = 'MANAFONT' },
        { deathVar = 'gosspix_killed',       name = 'CHAINSPELL' },
        { deathVar = 'bodysnatcher_killed',  name = 'PERFECT_DODGE' },
        { deathVar = 'ironclad_killed',      name = 'INVINCIBLE' },
        { deathVar = 'shamblix_killed',      name = 'BLOOD_WEAPON' },
        { deathVar = 'woodnix_killed',       name = 'CHARM' },
        { deathVar = 'melomanic_killed',     name = 'SOUL_VOICE' },
        { deathVar = 'lyncean_killed',       name = 'EAGLE_EYE_SHOT' },
        { deathVar = 'levinblade_killed',    name = 'MEIKYO_SHISUI' },
        { deathVar = 'fleetfoot_killed',     name = 'MIJIN_GAKURE' },
        { deathVar = 'elvaansticker_killed', name = 'CALL_WYVERN' },
        { deathVar = 'bibliopage_killed',    name = 'ASTRAL_FLOW' },
    }

    -- TP move lockouts: killing a dragon removes its move from the pool.
    xi.dynamis.apocLockouts =
    {
        { deathVar = 'stihi_killed',       skillId = 642 }, -- Flame Breath
        { deathVar = 'vishap_killed',      skillId = 643 }, -- Poison Breath
        { deathVar = 'jurik_killed',       skillId = 644 }, -- Wind Breath
        { deathVar = 'barong_killed',      skillId = 645 }, -- Body Slam
        { deathVar = 'tarasca_killed',     skillId = 646 }, -- Heavy Stomp
        { deathVar = 'alklha_killed',      skillId = 647 }, -- Chaos Blade
        { deathVar = 'basilic_killed',     skillId = 648 }, -- Petro Eyes
        { deathVar = 'aitvaras_killed',    skillId = 649 }, -- Voidsong
        { deathVar = 'koschei_killed',     skillId = 650 }, -- Thornsong
        { deathVar = 'stollenwurm_killed', skillId = 651 }, -- Lodesong
    }

    mob:addListener('WEAPONSKILL_STATE_EXIT', 'APOC_WEAPONSKILL_STATE_EXIT', function(mobArg, target, skill)
        if mobArg:hasStatusEffect(xi.effect.HYSTERIA) then
            mobArg:delStatusEffectSilent(xi.effect.HYSTERIA)
        end
    end)

    for _, lockout in pairs(xi.dynamis.apocLockouts2hr) do
        mob:setLocalVar(lockout.name, 0)
    end
end

xi.dynamis.onSpawnNoAuto = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setAutoAttackEnabled(false)
    mob:addMod(xi.mod.REGAIN, 1250)
    mob:setRoamFlags(xi.roamFlag.NONE)

    if mob:getFamily() == xi.dynamis.mobFamily.DRAGON then
        mob:setBehavior(bit.bor(mob:getBehavior(), xi.behavior.NO_TURN))
    end
end

xi.dynamis.onEngagedApoc = function(mob, target)
    mob:setLocalVar('next2hrTime', GetSystemTime() + math.random(45, 75))
end

xi.dynamis.onFightApoc = function(mob, target)
    if mob:getLocalVar('ResetTP') ~= 0 then
        mob:setTP(0)
        mob:setLocalVar('ResetTP', 0)
    end

    for _, lockout in pairs(xi.dynamis.apocLockouts2hr) do
        if mob:getZone():getLocalVar(lockout.deathVar) == 1 then
            mob:setLocalVar(lockout.name, 1)
        end
    end

    if
        mob:getLocalVar('next2hrTime') <= GetSystemTime() and
        #xi.dynamis.apoc2hrlist > 0
    then
        local choice   = math.random(1, #xi.dynamis.apoc2hrlist)
        local special  = xi.dynamis.apoc2hrlist[choice]
        local target2  = mob

        if mob:getLocalVar(special.name) == 1 then -- Locked out; fizzle.
            mob:addStatusEffect(xi.effect.HYSTERIA, { power = 1, tick = 3, duration = 5, origin = mob })
        end

        if special.target == 'target' then
            target2 = target
        end

        apocRemoveAdditionalEffects(mob)
        mob:useMobAbility(special.id, target2)
        table.remove(xi.dynamis.apoc2hrlist, choice)

        mob:setLocalVar('next2hrTime', GetSystemTime() + math.random(45, 75))
    end

    if
        (mob:hasStatusEffect(xi.effect.MANAFONT) or
        mob:hasStatusEffect(xi.effect.CHAINSPELL) or
        mob:hasStatusEffect(xi.effect.SOUL_VOICE)) and
        mob:getLocalVar('nextCast') <= GetSystemTime()
    then
        mob:setLocalVar('nextCast', GetSystemTime() + 4)
        mob:setAutoAttackEnabled(false)
        mob:setMobAbilityEnabled(false)
        local spell = nil

        if mob:getCurrentAction() ~= xi.action.MAGIC_CASTING then
            if mob:hasStatusEffect(xi.effect.MANAFONT) then
                if mob:hasStatusEffect(xi.effect.CHAINSPELL) then
                    mob:delStatusEffectSilent(xi.effect.CHAINSPELL)
                end

                if mob:hasStatusEffect(xi.effect.SOUL_VOICE) then
                    mob:delStatusEffect(xi.effect.SOUL_VOICE)
                end

                local manafontSpells =
                {
                    xi.magic.spell.FIRAGA_III,
                    xi.magic.spell.BLIZZAGA_III,
                    xi.magic.spell.AEROGA_III,
                    xi.magic.spell.STONEGA_III,
                    xi.magic.spell.THUNDAGA_III,
                    xi.magic.spell.WATERGA_III,
                }
                spell = manafontSpells[math.random(1, #manafontSpells)]
            elseif mob:hasStatusEffect(xi.effect.CHAINSPELL) then
                local chainspellSpells =
                {
                    xi.magic.spell.BLINDGA,
                    xi.magic.spell.PARALYGA,
                    xi.magic.spell.BINDGA,
                    xi.magic.spell.BREAKGA,
                    xi.magic.spell.SLEEPGA_II,
                    xi.magic.spell.DEATH,
                }
                spell = chainspellSpells[math.random(1, #chainspellSpells)]
            elseif mob:hasStatusEffect(xi.effect.SOUL_VOICE) then
                local buffSongs =
                {
                    { xi.magic.spell.VALOR_MINUET_IV, mob },
                    { xi.magic.spell.VICTORY_MARCH },
                }
                local debuffSongs =
                {
                    { xi.magic.spell.HORDE_LULLABY,  target },
                    { xi.magic.spell.FOE_REQUIEM_IV, target },
                    { xi.magic.spell.CARNAGE_ELEGY,  target },
                    { xi.magic.spell.FOE_LULLABY,    target },
                }

                local song
                if math.random(1, 4) == 1 then
                    song = buffSongs[math.random(1, #buffSongs)]
                else
                    song = debuffSongs[math.random(1, #debuffSongs)]
                end

                spell  = song[1]
                target = song[2]
            end

            if spell then
                mob:castSpell(spell, target)
            end
        end
    end

    if
        mob:getTP() >= 1000 and
        #xi.dynamis.apocLockouts > 0
    then
        local choice  = math.random(1, #xi.dynamis.apocLockouts)
        local lockout = xi.dynamis.apocLockouts[choice]

        if mob:getZone():getLocalVar(lockout.deathVar) == 0 then
            mob:setLocalVar('ResetTP', 1)
            mob:useMobAbility(lockout.skillId)
        else
            table.remove(xi.dynamis.apocLockouts, choice)
        end
    end
end

-- The ten dragons flee once the mega boss falls.
xi.dynamis.onFightDragon = function(mob, target)
    if mob:getZone():getLocalVar('MegaBoss_Killed') == 1 then
        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onRoamDragon = function(mob)
    if mob:getZone():getLocalVar('MegaBoss_Killed') == 1 then
        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
        DespawnMob(mob:getID())
    end
end
