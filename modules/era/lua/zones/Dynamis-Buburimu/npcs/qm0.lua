-----------------------------------
-- Era Dynamis - Dynamis-Buburimu subjob unlock ??? (qm0)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_sj_qm_buburimu')

m:addOverride('xi.zones.Dynamis-Buburimu.npcs.qm0.onTrigger', function(player, npc)
    xi.dynamis.sjQMOnTrigger(npc)
end)

return m
