-----------------------------------
-- Era Dynamis - Dynamis-Tavnazia shared 'qm' entities
--
-- npc_list names several Tavnazia entities plain 'qm', including the
-- second time extension ??? and the win ???. There is no base qm.lua
-- script, so the override path is created here and the handler routes
-- by entity id.
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_qm_tavnazia')

xi.module.ensureTable('xi.zones.Dynamis-Tavnazia.npcs.qm')

m:addOverride('xi.zones.Dynamis-Tavnazia.npcs.qm.onTrigger', function(player, npc)
    local info = xi.dynamis.dynaInfoEra[xi.zone.DYNAMIS_TAVNAZIA]

    if npc:getID() == info.timeExtensions[2] then
        xi.dynamis.timeExtensionOnTrigger(player, npc)
    elseif npc:getID() == info.winQM then
        xi.dynamis.qmOnTrigger(player, npc)
    end
end)

return m
