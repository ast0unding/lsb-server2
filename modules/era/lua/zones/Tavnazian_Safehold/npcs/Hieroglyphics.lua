-----------------------------------
-- Era Dynamis - Tavnazian_Safehold entry NPC (Hieroglyphics)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_entry_tavnazian_safehold')

m:addOverride('xi.zones.Tavnazian_Safehold.npcs.Hieroglyphics.onTrade', function(player, npc, trade)
    xi.dynamis.entryNpcOnTrade(player, npc, trade)
end)

m:addOverride('xi.zones.Tavnazian_Safehold.npcs.Hieroglyphics.onEventUpdate', function(player, csid, option)
    xi.dynamis.entryNpcOnEventUpdate(player, csid, option)
end)

m:addOverride('xi.zones.Tavnazian_Safehold.npcs.Hieroglyphics.onEventFinish', function(player, csid, option)
    xi.dynamis.entryNpcOnEventFinish(player, csid, option)
end)

return m
