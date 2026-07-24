-----------------------------------
-- Era Dynamis - Dynamis-Tavnazia first time extension ??? (qm0)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_te_qm0_tavnazia')

m:addOverride('xi.zones.Dynamis-Tavnazia.npcs.qm0.onTrigger', function(player, npc)
    xi.dynamis.timeExtensionOnTrigger(player, npc)
end)

return m
