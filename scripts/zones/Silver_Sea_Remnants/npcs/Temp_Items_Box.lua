-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: Temp Items Box
-- Temp item boxes dropped by mobs; the static floor chests are
-- Temp_Items_Box_Static
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    xi.salvage.tempBoxTrigger(player, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.salvage.tempBoxFinish(player, csid, option, npc)
end

return entity
