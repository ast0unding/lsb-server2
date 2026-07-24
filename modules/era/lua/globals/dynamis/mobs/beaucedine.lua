-----------------------------------
-- Era Dynamis - Dynamis-Beaucedine mobs (Angra Mainyu, hydra NMs)
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

-- Positions Angra Mainyu teleports between.
local angraTeleports =
{
    { x = 279.4038, y = 20,      z = 535.4518 },
    { x = 312.6868, y = 20.5267, z = 511.9843 },
    { x = 322.2653, y = 20,      z = 481.8030 },
    { x = 295.9948, y = 20.7949, z = 483.1078 },
    { x = 269.6127, y = 19.5547, z = 505.3206 },
    { x = 240.9685, y = 20,      z = 521.5283 },
    { x = 239.8057, y = 20.1687, z = 487.3961 },
    { x = 258.6785, y = 20.1525, z = 460.4170 },
}

local function getAngraChildIndexes(mob)
    local mobIndex   = mob:getLocalVar(string.format('MobIndex_%s', mob:getID()))
    local nmchildren = xi.dynamis.mobList[mob:getZoneID()][mobIndex].nmchildren

    return { nmchildren[2], nmchildren[3], nmchildren[4], nmchildren[5] }
end

local function getAngraChild(mob, childIndex)
    local childID = mob:getLocalVar(string.format('ChildID_%s', childIndex))
    if childID == 0 then
        return nil
    end

    return GetMobByID(childID)
end

xi.dynamis.onSpawnAngra = function(mob)
    xi.dynamis.setMegaBossStats(mob)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 25)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.mix.jobSpecial.config(mob, {
        between = 300,
        specials =
        {
            { id = xi.mobSkill.CHAINSPELL_1, hpp = 25 },
        },
    })
end

xi.dynamis.onEngagedAngra = function(mob, target)
    mob:setLocalVar('teleTime', GetSystemTime())
end

xi.dynamis.onFightAngra = function(mob, target)
    local children = getAngraChildIndexes(mob)

    if GetSystemTime() - mob:getLocalVar('teleTime') > 30 then
        local teleport = angraTeleports[math.random(1, #angraTeleports)]
        xi.dynamis.teleport(mob, 1000)
        mob:setPos(teleport.x, teleport.y, teleport.z, 0)

        for _, childIndex in pairs(children) do
            local child = getAngraChild(mob, childIndex)
            if
                child and
                child:isAlive() and
                child:getHPP() <= 99
            then
                child:disengage()
                child:resetEnmity(target)
                child:updateEnmity(mob:getTarget())
            end
        end

        mob:setLocalVar('teleTime', GetSystemTime())
    end

    for _, childIndex in pairs(children) do
        local child = getAngraChild(mob, childIndex)
        if
            child and
            child:isAlive() and
            child:getCurrentAction() == xi.action.ROAMING
        then
            child:updateEnmity(target)
        end
    end
end

xi.dynamis.onMagicPrepAngra = function(mob, target, spellId)
    if mob:getHPP() <= 25 then
        return xi.magic.spell.DEATH
    end

    -- Can cast Blindga, Death, Graviga, Silencega and Sleepga II.
    local roll = math.random()
    if roll < 0.2 then
        return xi.magic.spell.BLINDGA
    elseif roll < 0.4 then
        return xi.magic.spell.DEATH
    elseif roll < 0.6 then
        return xi.magic.spell.GRAVIGA
    elseif roll < 0.8 then
        return xi.magic.spell.SLEEPGA_II
    else
        return xi.magic.spell.SILENCEGA
    end
end

xi.dynamis.onRoamAngra = function(mob)
    local currentPos = mob:getPos()
    local spawnPos   = mob:getSpawnPos()

    if currentPos.x ~= spawnPos.x and currentPos.z ~= spawnPos.z then
        mob:pathTo(spawnPos.x, spawnPos.y, spawnPos.z)
    end

    for _, childIndex in pairs(getAngraChildIndexes(mob)) do
        local child = getAngraChild(mob, childIndex)
        if
            child and
            child:isAlive() and
            child:getCurrentAction() == xi.action.ROAMING
        then
            local childCurrentPos = child:getPos()
            local childSpawnPos   = child:getSpawnPos()
            if
                childCurrentPos.x ~= childSpawnPos.x and
                childCurrentPos.z ~= childSpawnPos.z
            then
                child:pathTo(childSpawnPos.x, childSpawnPos.y, childSpawnPos.z)
            end
        end
    end
end

-----------------------------------
-- Hydra NMs
-----------------------------------

xi.dynamis.onSpawnDagour = function(mob)
    xi.dynamis.setNMStats(mob)
    xi.mix.jobSpecial.config(mob, {
        between = 60,
        specials =
        {
            { id = xi.mobSkill.ASTRAL_FLOW_1, hpp = 95, cooldown = 90 },
        },
    })
end

xi.dynamis.onEngagedDagour = function(mob, target)
    xi.dynamis.spawnDynamicPet(target, mob, xi.job.BST)
    xi.dynamis.spawnDynamicPet(target, mob, xi.job.DRG)
end

xi.dynamis.onWeaponskillPrepDagour = function(mob)
    if math.random(0, 100) <= 20 then
        return xi.mobSkill.CHARM
    else
        return 0
    end
end

xi.dynamis.onSpawnGouble = function(mob)
    xi.dynamis.setNMStats(mob)
    xi.mix.jobSpecial.config(mob, {
        between = 60,
        specials =
        {
            { id = xi.mobSkill.MIGHTY_STRIKES_1, hpp = 95, cooldown = 181 },
            { id = xi.mobSkill.INVINCIBLE_1,     hpp = 95, cooldown = 181 },
            { id = xi.mobSkill.CHAINSPELL_1,     hpp = 95, cooldown = 181 },
        },
    })
end

xi.dynamis.onSpawnMildaun = function(mob)
    xi.dynamis.setNMStats(mob)
    xi.mix.jobSpecial.config(mob, {
        between = 45,
        specials =
        {
            { id = xi.mobSkill.HUNDRED_FISTS_1, hpp = 95, cooldown = 136 },
            { id = xi.mobSkill.PERFECT_DODGE_1, hpp = 95, cooldown = 136 },
            { id = xi.mobSkill.MIJIN_GAKURE_1,  hpp = 30, cooldown = 136 },
        },
    })
end

xi.dynamis.onSpawnQuieb = function(mob)
    xi.dynamis.setNMStats(mob)
    xi.mix.jobSpecial.config(mob, {
        between = 60,
        specials =
        {
            { id = xi.mobSkill.BENEDICTION_1, hpp = 95, cooldown = 181 },
            { id = xi.mobSkill.MANAFONT_1,    hpp = 95, cooldown = 181 },
            { id = xi.mobSkill.SOUL_VOICE_1,  hpp = 95, cooldown = 181 },
        },
    })
end

xi.dynamis.onSpawnVelosar = function(mob)
    xi.dynamis.setNMStats(mob)
    xi.mix.jobSpecial.config(mob, {
        between = 30,
        specials =
        {
            { id = xi.mobSkill.BLOOD_WEAPON_1,  hpp = 95, cooldown = 91 },
            { id = xi.mobSkill.MEIKYO_SHISUI_1, hpp = 95, cooldown = 91 },
            { id = xi.mobSkill.EES_SHADE,       hpp = 95, cooldown = 91 },
        },
    })
end
