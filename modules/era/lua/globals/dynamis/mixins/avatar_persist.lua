-----------------------------------
-- Era Dynamis - avatar persist mixin
--
-- Dynamis SMN pets keep the skill list matching their (randomized)
-- avatar model once they engage.
-----------------------------------
require('scripts/globals/mixins')
-----------------------------------
g_mixins = g_mixins or {}
g_mixins.families = g_mixins.families or {}

local avatarModel =
{
    CARBUNCLE = 791,
    FENRIR    = 792,
    IFRIT     = 793,
    TITAN     = 794,
    LEVIATHAN = 795,
    GARUDA    = 796,
    SHIVA     = 797,
    RAMUH     = 798,
}

-- mob_skill_lists id to match each model.
local skillLists =
{
    [avatarModel.CARBUNCLE] = 34,
    [avatarModel.FENRIR]    = 36,
    [avatarModel.IFRIT]     = 38,
    [avatarModel.TITAN]     = 45,
    [avatarModel.LEVIATHAN] = 40,
    [avatarModel.GARUDA]    = 37,
    [avatarModel.SHIVA]     = 44,
    [avatarModel.RAMUH]     = 43,
}

g_mixins.families.avatar_persist = function(avatarMob)
    avatarMob:addListener('ENGAGE', 'AVATAR_ENGAGE', function(mob, target)
        local skillList = skillLists[mob:getModelId()]
        if skillList ~= nil then
            mob:setMobMod(xi.mobMod.SKILL_LIST, skillList)
        end
    end)
end

return g_mixins.families.avatar_persist
