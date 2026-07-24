-----------------------------------
-- Era Dynamis - Dynamis-Qufim subjob unlock ??? (qm0)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_sj_qm_qufim')

m:addOverride('xi.zones.Dynamis-Qufim.npcs.qm0.onTrigger', function(player, npc)
    xi.dynamis.sjQMOnTrigger(npc)
end)

return m
