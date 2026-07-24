-----------------------------------
-- Era Dynamis - Beaucedine_Glacier entry NPC (Trail_Markings)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_entry_beaucedine_glacier')

m:addOverride('xi.zones.Beaucedine_Glacier.npcs.Trail_Markings.onTrade', function(player, npc, trade)
    xi.dynamis.entryNpcOnTrade(player, npc, trade)
end)

m:addOverride('xi.zones.Beaucedine_Glacier.npcs.Trail_Markings.onEventUpdate', function(player, csid, option)
    xi.dynamis.entryNpcOnEventUpdate(player, csid, option)
end)

m:addOverride('xi.zones.Beaucedine_Glacier.npcs.Trail_Markings.onEventFinish', function(player, csid, option)
    xi.dynamis.entryNpcOnEventFinish(player, csid, option)
end)

return m
