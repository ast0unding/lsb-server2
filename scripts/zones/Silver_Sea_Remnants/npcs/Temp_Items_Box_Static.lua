-----------------------------------
-- Instance: Silver Sea Remnants
-- NPC: Temp Items Box (static)
-- Fixed-position chests, unlike the boxes dropped by mobs
-- Floor 1 (W Path)
-- Floor 2 (NW/SE paths)
-- Floor 4 (E Path small rooms)
-----------------------------------
local ID = zones[xi.zone.SILVER_SEA_REMNANTS]
-----------------------------------
---@type TNpcEntity
local entity = {}

local firstFloorItems =
{
    [1] = { itemID = xi.item.HI_POTION,               minAmount = 1, maxAmount = 2 },
    [2] = { itemID = xi.item.MEGALIXIR,               amount = 1 },
    [3] = { itemID = xi.item.DUSTY_POTION,            minAmount = 1, maxAmount = 2 },
    [4] = { itemID = xi.item.DUSTY_ETHER,             minAmount = 1, maxAmount = 2 },
    [5] = { itemID = xi.item.DUSTY_ELIXIR,            minAmount = 1, maxAmount = 2 },
    [6] = { itemID = xi.item.DUSTY_SCROLL_OF_RERAISE, amount = 1 },
    [7] = { itemID = xi.item.FLASK_OF_STRANGE_MILK,   minAmount = 1, maxAmount = 2 },
    [8] = { itemID = xi.item.BOTTLE_OF_STRANGE_JUICE, minAmount = 1, maxAmount = 2 },
    [9] = { itemID = xi.item.BOTTLE_OF_VICARS_DRINK,  amount = 1 },
}

local function fourthFloorTrigger(player, npc)
    if npc:getLocalVar('itemsPicked') == 0 then
        local pool = xi.salvage.tempBoxItems
        local item = pool[math.random(#pool)]

        npc:setLocalVar('itemID_1', item.itemID)
        npc:setLocalVar('itemAmount_1', 1)
        npc:entityAnimationPacket(xi.animationString.OPEN_CRATE_GLOW)
        npc:setAnimationSub(13)
        npc:setLocalVar('itemsPicked', 1)
    end

    player:startEvent(2,
    {
        [0] = npc:getLocalVar('itemID_1') + (npc:getLocalVar('itemAmount_1') * 65536),
    })
end

local function fourthFloorFinish(player, csid, option, npc)
    if csid ~= 2 then
        return
    end

    local item = npc:getLocalVar('itemID_1')

    if
        option == 1 and
        item > 0 and
        npc:getLocalVar('itemAmount_1') > 0
    then
        if not player:hasItem(item, xi.inventoryLocation.TEMPITEMS) then
            player:addTempItem(item)
            player:messageSpecial(ID.text.TEMP_ITEM, item)
            npc:setLocalVar('itemAmount_1', npc:getLocalVar('itemAmount_1') - 1)
        else
            player:messageSpecial(ID.text.HAVE_TEMP_ITEM)
        end
    end

    -- Empty crates vanish and respawn with a fresh item
    if npc:getLocalVar('itemAmount_1') == 0 then
        npc:queue(4000, function(npcArg)
            npcArg:entityAnimationPacket(xi.animationString.STATUS_DISAPPEAR)
            npcArg:resetLocalVars()
        end)

        npc:queue(6000, function(npcArg)
            npcArg:setStatus(xi.status.DISAPPEAR)
            npcArg:setAnimationSub(8)
        end)

        npc:queue(15000, function(npcArg)
            npcArg:setStatus(xi.status.NORMAL)
        end)
    end
end

entity.onTrigger = function(player, npc)
    local instance = player:getInstance()

    if not instance then
        return
    end

    local stage = instance:getStage()

    if stage == 1 then
        xi.salvage.tempBoxTrigger(player, npc, firstFloorItems)
    elseif stage == 4 then
        fourthFloorTrigger(player, npc)
    else
        xi.salvage.tempBoxTrigger(player, npc)
    end
end

entity.onEventFinish = function(player, csid, option, npc)
    local instance = player:getInstance()

    if not instance then
        return
    end

    if instance:getStage() == 4 then
        fourthFloorFinish(player, csid, option, npc)
    else
        xi.salvage.tempBoxFinish(player, csid, option, npc)
    end
end

return entity
