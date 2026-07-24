-----------------------------------
-- Era Dynamis - Buburimu_Peninsula entry NPC (Hieroglyphics)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_entry_buburimu_peninsula')

m:addOverride('xi.zones.Buburimu_Peninsula.npcs.Hieroglyphics.onTrade', function(player, npc, trade)
    xi.dynamis.entryNpcOnTrade(player, npc, trade)
end)

m:addOverride('xi.zones.Buburimu_Peninsula.npcs.Hieroglyphics.onEventUpdate', function(player, csid, option)
    xi.dynamis.entryNpcOnEventUpdate(player, csid, option)
end)

m:addOverride('xi.zones.Buburimu_Peninsula.npcs.Hieroglyphics.onEventFinish', function(player, csid, option)
    xi.dynamis.entryNpcOnEventFinish(player, csid, option)
end)

return m
