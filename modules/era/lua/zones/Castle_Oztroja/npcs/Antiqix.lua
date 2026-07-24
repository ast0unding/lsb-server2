-----------------------------------
-- Era Dynamis - Castle Oztroja hourglass & currency vendor (Antiqix)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
require('modules/era/lua/globals/dynamis/currency_vendor')
-----------------------------------
local m = Module:new('era_dynamis_vendor_antiqix')

local vendor =
{
    baseEvent = 50,
    currency =
    {
        single      = xi.item.TUKUKU_WHITESHELL,
        hundred     = xi.item.LUNGO_NANGO_JADESHELL,
        tenThousand = xi.item.RIMILALA_STRIPESHELL,
    },
    shop = -- Prices in Lungo-Nango Jadeshells
    {
        { price = 7,  item = xi.item.PIECE_OF_ANGEL_SKIN },
        { price = 8,  item = xi.item.COLOSSAL_SKULL },
        { price = 9,  item = xi.item.LANCEWOOD_LOG },
        { price = 23, item = xi.item.CHRONOS_TOOTH },
        { price = 24, item = xi.item.CHUNK_OF_RELIC_STEEL },
        { price = 25, item = xi.item.PIECE_OF_LANCEWOOD_LUMBER },
        { price = 28, item = xi.item.DAMASCUS_INGOT },
    },
}

m:addOverride('xi.zones.Castle_Oztroja.npcs.Antiqix.onTrade', function(player, npc, trade)
    xi.dynamis.currencyVendor.onTrade(player, npc, trade, vendor)
end)

m:addOverride('xi.zones.Castle_Oztroja.npcs.Antiqix.onTrigger', function(player, npc)
    xi.dynamis.currencyVendor.onTrigger(player, npc, vendor)
end)

m:addOverride('xi.zones.Castle_Oztroja.npcs.Antiqix.onEventUpdate', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventUpdate(player, csid, option, vendor)
end)

m:addOverride('xi.zones.Castle_Oztroja.npcs.Antiqix.onEventFinish', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventFinish(player, csid, option, vendor)
end)

return m
