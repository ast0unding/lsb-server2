-----------------------------------
-- Era Dynamis - Beadeaux hourglass & currency vendor (Haggleblix)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
require('modules/era/lua/globals/dynamis/currency_vendor')
-----------------------------------
local m = Module:new('era_dynamis_vendor_haggleblix')

local vendor =
{
    baseEvent = 130,
    currency =
    {
        single      = xi.item.ONE_BYNE_BILL,
        hundred     = xi.item.ONE_HUNDRED_BYNE_BILL,
        tenThousand = xi.item.TEN_THOUSAND_BYNE_BILL,
    },
    shop = -- Prices in One Hundred Byne Bills
    {
        { price = 7,  item = xi.item.LOCK_OF_SIRENS_HAIR },
        { price = 8,  item = xi.item.VIAL_OF_SLIME_JUICE },
        { price = 9,  item = xi.item.CHUNK_OF_WOOTZ_ORE },
        { price = 12, item = xi.item.BOTTLE_OF_CANTARELLA },
        { price = 20, item = xi.item.FLASK_OF_MARKSMANS_OIL },
        { price = 25, item = xi.item.WOOTZ_INGOT },
        { price = 33, item = xi.item.KOH_I_NOOR },
    },
}

m:addOverride('xi.zones.Beadeaux.npcs.Haggleblix.onTrade', function(player, npc, trade)
    xi.dynamis.currencyVendor.onTrade(player, npc, trade, vendor)
end)

m:addOverride('xi.zones.Beadeaux.npcs.Haggleblix.onTrigger', function(player, npc)
    xi.dynamis.currencyVendor.onTrigger(player, npc, vendor)
end)

m:addOverride('xi.zones.Beadeaux.npcs.Haggleblix.onEventUpdate', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventUpdate(player, csid, option, vendor)
end)

m:addOverride('xi.zones.Beadeaux.npcs.Haggleblix.onEventFinish', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventFinish(player, csid, option, vendor)
end)

return m
