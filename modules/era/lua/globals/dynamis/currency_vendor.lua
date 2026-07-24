-----------------------------------
-- Era Dynamis - hourglass & currency vendor logic
--
-- Shared handlers for the three goblin vendors (Lootblox, Antiqix,
-- Haggleblix). Each NPC module passes a vendor table:
--   baseEvent = first event id of the NPC's event block
--   currency  = { single, hundred, tenThousand } item ids
--   shop      = { { price (in 'hundred' pieces), item }, ... }
--
-- Requires the Vial of Shrouded Sand. Sells the Timeless Hourglass
-- (TIMELESS_HOURGLASS_COST gil), converts currency up and down at
-- CURRENCY_EXCHANGE_RATE, sells dynamis maps and a small item shop
-- paid in hundred-tier currency.
-----------------------------------
require('scripts/globals/dynamis')
require('scripts/globals/npc_util')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.currencyVendor = {}

-- Event id offsets within each vendor's event block.
local eventOffset =
{
    NO_SAND        = 0, -- Brush-off dialog without the Vial of Shrouded Sand
    MENU           = 3, -- Main vendor menu
    BUY_HOURGLASS  = 4,
    TO_HUNDREDS    = 5, -- RATE singles -> 1 hundred
    TO_TEN_K       = 6, -- RATE hundreds -> 1 ten-thousand
    SHOP_ITEM      = 7,
    FROM_TEN_K     = 8, -- 1 ten-thousand -> RATE hundreds
}

local mapPrices =
{
    [xi.ki.MAP_OF_DYNAMIS_SAN_DORIA]  = 10000,
    [xi.ki.MAP_OF_DYNAMIS_BASTOK]     = 10000,
    [xi.ki.MAP_OF_DYNAMIS_WINDURST]   = 10000,
    [xi.ki.MAP_OF_DYNAMIS_JEUNO]      = 10000,
    [xi.ki.MAP_OF_DYNAMIS_BEAUCEDINE] = 15000,
    [xi.ki.MAP_OF_DYNAMIS_XARCABARD]  = 20000,
    [xi.ki.MAP_OF_DYNAMIS_VALKURM]    = 10000,
    [xi.ki.MAP_OF_DYNAMIS_BUBURIMU]   = 10000,
    [xi.ki.MAP_OF_DYNAMIS_QUFIM]      = 10000,
    [xi.ki.MAP_OF_DYNAMIS_TAVNAZIA]   = 20000,
}

-- The menu event takes the shop as interleaved price/item parameters.
local function shopEventParams(shop, firstEntry, lastEntry)
    local params = {}
    for i = firstEntry, lastEntry do
        table.insert(params, shop[i].price)
        table.insert(params, shop[i].item)
    end

    return unpack(params)
end

local STACK_SIZE = 99

-- Hands the player `total` of an item in stack-sized increments.
local function addItemStacked(player, item, total)
    local remaining = total
    while remaining > 0 do
        local quantity = math.min(remaining, STACK_SIZE)
        player:addItem(item, quantity)
        remaining = remaining - quantity
    end
end

xi.dynamis.currencyVendor.onTrade = function(player, npc, trade, vendor)
    if not player:hasKeyItem(xi.ki.VIAL_OF_SHROUDED_SAND) then
        return
    end

    local rate      = xi.settings.main.CURRENCY_EXCHANGE_RATE
    local count     = trade:getItemCount()
    local baseEvent = vendor.baseEvent
    local currency  = vendor.currency

    if
        trade:getGil() == xi.settings.main.TIMELESS_HOURGLASS_COST and
        count == 1 and
        not player:hasItem(xi.item.TIMELESS_HOURGLASS)
    then
        player:startEvent(baseEvent + eventOffset.BUY_HOURGLASS)
    elseif
        count == rate and
        trade:hasItemQty(currency.single, rate)
    then
        player:startEvent(baseEvent + eventOffset.TO_HUNDREDS, rate)
    elseif
        count == rate and
        trade:hasItemQty(currency.hundred, rate)
    then
        player:startEvent(baseEvent + eventOffset.TO_TEN_K, rate)
    elseif
        count == 1 and
        trade:hasItemQty(currency.tenThousand, 1)
    then
        player:startEvent(baseEvent + eventOffset.FROM_TEN_K, currency.tenThousand, currency.hundred, rate)
    else
        for _, entry in ipairs(vendor.shop) do
            if
                count == entry.price and
                trade:hasItemQty(currency.hundred, entry.price)
            then
                player:setLocalVar('hundoItemBought', entry.item)
                player:startEvent(baseEvent + eventOffset.SHOP_ITEM, currency.hundred, entry.price, entry.item)
                break
            end
        end
    end
end

xi.dynamis.currencyVendor.onTrigger = function(player, npc, vendor)
    local rate     = xi.settings.main.CURRENCY_EXCHANGE_RATE
    local cost     = xi.settings.main.TIMELESS_HOURGLASS_COST
    local currency = vendor.currency

    if player:hasKeyItem(xi.ki.VIAL_OF_SHROUDED_SAND) then
        player:startEvent(
            vendor.baseEvent + eventOffset.MENU,
            currency.single,
            rate,
            currency.hundred,
            rate,
            currency.tenThousand,
            cost,
            xi.item.TIMELESS_HOURGLASS,
            cost)
    else
        player:startEvent(vendor.baseEvent + eventOffset.NO_SAND)
    end
end

xi.dynamis.currencyVendor.onEventUpdate = function(player, csid, option, vendor)
    if csid ~= vendor.baseEvent + eventOffset.MENU then
        return
    end

    local rate     = xi.settings.main.CURRENCY_EXCHANGE_RATE
    local currency = vendor.currency

    if option == 1 then
        player:release()
    elseif option == 2 then -- Shop page 1
        player:updateEvent(shopEventParams(vendor.shop, 1, 4))
    elseif option == 3 then -- Shop page 2
        player:updateEvent(shopEventParams(vendor.shop, 5, 7))
    elseif option == 10 then -- Offer to trade a ten-thousand piece down
        player:updateEvent(currency.tenThousand, currency.hundred, rate)
    elseif option == 11 then -- Map menu (param1 = map bitmask, param2 = gil)
        player:updateEvent(xi.dynamis.getDynamisMapList(player), player:getGil())
    elseif mapPrices[option] ~= nil then
        local price = mapPrices[option]
        if price > player:getGil() then
            player:messageSpecial(zones[player:getZoneID()].text.NOT_ENOUGH_GIL)
        else
            player:delGil(price)
            player:addKeyItem(option)
            player:messageSpecial(zones[player:getZoneID()].text.KEYITEM_OBTAINED, option)
        end

        player:updateEvent(xi.dynamis.getDynamisMapList(player), player:getGil())
    end
end

xi.dynamis.currencyVendor.onEventFinish = function(player, csid, option, vendor)
    local ID        = zones[player:getZoneID()]
    local rate      = xi.settings.main.CURRENCY_EXCHANGE_RATE
    local baseEvent = vendor.baseEvent
    local currency  = vendor.currency

    if csid == baseEvent + eventOffset.BUY_HOURGLASS then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, xi.item.TIMELESS_HOURGLASS)
        else
            player:tradeComplete()
            player:addItem(xi.item.TIMELESS_HOURGLASS)
            player:messageSpecial(ID.text.ITEM_OBTAINED, xi.item.TIMELESS_HOURGLASS)
        end
    elseif csid == baseEvent + eventOffset.TO_HUNDREDS then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, currency.hundred)
        else
            player:tradeComplete()
            player:addItem(currency.hundred)
            player:messageSpecial(ID.text.ITEM_OBTAINED, currency.hundred)
        end
    elseif csid == baseEvent + eventOffset.TO_TEN_K then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, currency.tenThousand)
        else
            player:tradeComplete()
            player:addItem(currency.tenThousand)
            player:messageSpecial(ID.text.ITEM_OBTAINED, currency.tenThousand)
        end
    elseif csid == baseEvent + eventOffset.FROM_TEN_K then
        local slotsRequired = math.ceil(rate / STACK_SIZE)
        if player:getFreeSlotsCount() < slotsRequired then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, currency.hundred)
        else
            player:tradeComplete()
            addItemStacked(player, currency.hundred, rate)
            player:messageSpecial(ID.text.ITEMS_OBTAINED, currency.hundred, rate)
        end
    elseif csid == baseEvent + eventOffset.SHOP_ITEM then
        local item = player:getLocalVar('hundoItemBought')
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, item)
        else
            player:tradeComplete()
            player:addItem(item)
            player:messageSpecial(ID.text.ITEM_OBTAINED, item)
        end

        player:setLocalVar('hundoItemBought', 0)
    end
end
