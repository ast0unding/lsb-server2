-----------------------------------
-- Era Dynamis - Dynamis-Qufim mobs (Antaeus)
--
-- Antaeus starts near-invulnerable; killing his court (Scolopendra,
-- Stringes and the elementals) strips his defenses one by one.
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

xi.dynamis.onSpawnAntaeus = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setMegaBossStats(mob)

    -- Mods removed as their linked court mob dies.
    xi.dynamis.buffsAntaeus =
    {
        { mods = { xi.mod.REGEN },       onValue = 1000, offValue = 0,  deathVar = 'scolopendra_killed' },
        { mods = { xi.mod.CRITHITRATE }, onValue = 100,  offValue = 10, deathVar = 'stringes_killed' },
        {
            mods     = { xi.mod.UDMGPHYS, xi.mod.UDMGRANGE, xi.mod.UDMGMAGIC, xi.mod.UDMGBREATH },
            onValue  = -99,
            offValue = 0,
            deathVar = 'stringes_killed',
        },
        { mods = { xi.mod.FIRERES },    onValue = 1000, offValue = 0, deathVar = 'fire_killed' },
        { mods = { xi.mod.ICERES },     onValue = 1000, offValue = 0, deathVar = 'ice_killed' },
        { mods = { xi.mod.WINDRES },    onValue = 1000, offValue = 0, deathVar = 'air_killed' },
        { mods = { xi.mod.EARTHRES },   onValue = 1000, offValue = 0, deathVar = 'earth_killed' },
        { mods = { xi.mod.THUNDERRES }, onValue = 1000, offValue = 0, deathVar = 'thunder_killed' },
        { mods = { xi.mod.WATERRES },   onValue = 1000, offValue = 0, deathVar = 'water_killed' },
        { mods = { xi.mod.LIGHTRES },   onValue = 1000, offValue = 0, deathVar = 'light_killed' },
        { mods = { xi.mod.DARKRES },    onValue = 1000, offValue = 0, deathVar = 'dark_killed' },
    }

    for _, buff in pairs(xi.dynamis.buffsAntaeus) do
        for _, mod in ipairs(buff.mods) do
            mob:setMod(mod, buff.onValue)
        end
    end

    -- Non-removable mods.
    -- Antaeus should not stand back, avoiding most ranged attacks via
    -- melee range. (https://ffxiclopedia.fandom.com/wiki/Antaeus)
    mob:addMobMod(xi.mobMod.NO_STANDBACK, 1)
    -- Sleep and Lullaby resistance are unverified but added in case.
    mob:addMod(xi.mod.SLEEPRES, 99)
    mob:addMod(xi.mod.LULLABYRES, 99)
    -- Standard dynamis boss resistances and regain.
    mob:addMod(xi.mod.GRAVITYRES, 40)
    mob:addMod(xi.mod.BINDRES, 40)
    mob:addMod(xi.mod.REGAIN, 50)

    xi.dynamis.addParentListeners(mob)
end

xi.dynamis.onEngagedAntaeus = function(mob, target)
end

xi.dynamis.onFightAntaeus = function(mob, target)
    local zone  = mob:getZone()
    local buffs = xi.dynamis.buffsAntaeus

    for i = #buffs, 1, -1 do
        if zone:getLocalVar(buffs[i].deathVar) == 1 then
            for _, mod in ipairs(buffs[i].mods) do
                mob:setMod(mod, buffs[i].offValue)
            end

            table.remove(buffs, i)
        end
    end
end
