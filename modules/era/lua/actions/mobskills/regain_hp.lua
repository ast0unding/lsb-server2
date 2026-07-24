-----------------------------------
-- Era Dynamis - Recover HP (Dynamis statues)
--
-- After a blue-eyed statue uses its recover skill, it becomes killable
-- and dies.
-----------------------------------
require('modules/module_utils')
require('modules/era/lua/globals/dynamis/spawn_lookups')
-----------------------------------
local m = Module:new('era_dynamis_regain_hp')

m:addOverride('xi.actions.mobskills.regain_hp.onMobWeaponSkill', function(mob, target, skill, action)
    local result = super(mob, target, skill, action)

    if mob:getFamily() == xi.dynamis.mobFamily.STATUE then
        mob:setUntargetable(false)
        mob:setAutoAttackEnabled(true)
        mob:setUnkillable(false)
        mob:setHP(0)
    end

    return result
end)

return m
