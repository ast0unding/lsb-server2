-----------------------------------
-- Era Dynamis - Valkurm_Dunes entry NPC (Hieroglyphics)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_entry_valkurm_dunes')

m:addOverride('xi.zones.Valkurm_Dunes.npcs.Hieroglyphics.onTrade', function(player, npc, trade)
    xi.dynamis.entryNpcOnTrade(player, npc, trade)
end)

m:addOverride('xi.zones.Valkurm_Dunes.npcs.Hieroglyphics.onEventUpdate', function(player, csid, option)
    xi.dynamis.entryNpcOnEventUpdate(player, csid, option)
end)

m:addOverride('xi.zones.Valkurm_Dunes.npcs.Hieroglyphics.onEventFinish', function(player, csid, option)
    xi.dynamis.entryNpcOnEventFinish(player, csid, option)
end)

return m
