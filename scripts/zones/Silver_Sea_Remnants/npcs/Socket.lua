-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: Socket
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.SOCKET_TRIGGER)
end

entity.onTrade = function(player, npc, trade)
    local instance = npc:getInstance()
    if not instance then
        return
    end

    local count = trade:getItemCount()
    local incusCell     = xi.item.INCUS_CELL
    local spissatusCell = xi.item.SPISSATUS_CELL

    for i = incusCell, spissatusCell do
        if count <= 5 and trade:hasItemQty(i, count) then
            if ID.mob[2] and ID.mob[2][2] and ID.mob[2][2].gakke then
                local mob = GetMobByID(ID.mob[2][2].gakke, instance)
                if mob then
                    player:tradeComplete()
                    SpawnMob(ID.mob[2][2].gakke, instance):updateClaim(player)
                    mob:setLocalVar('Cell', i)
                    mob:setLocalVar('Qnt', count)
                    npc:setStatus(xi.status.DISAPPEAR)
                    return
                end
            end
        end
    end
end

return entity
