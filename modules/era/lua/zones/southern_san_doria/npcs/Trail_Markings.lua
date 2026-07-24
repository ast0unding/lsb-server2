-----------------------------------
-- Era Dynamis - Southern_San_dOria entry NPC (Trail_Markings)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_entry_southern_san_doria')

m:addOverride('xi.zones.Southern_San_dOria.npcs.Trail_Markings.onTrade', function(player, npc, trade)
    xi.dynamis.entryNpcOnTrade(player, npc, trade)
end)

m:addOverride('xi.zones.Southern_San_dOria.npcs.Trail_Markings.onEventUpdate', function(player, csid, option)
    xi.dynamis.entryNpcOnEventUpdate(player, csid, option)
end)

m:addOverride('xi.zones.Southern_San_dOria.npcs.Trail_Markings.onEventFinish', function(player, csid, option)
    xi.dynamis.entryNpcOnEventFinish(player, csid, option)
end)

return m
