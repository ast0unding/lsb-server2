-----------------------------------
-- Era Dynamis - Davoi hourglass & currency vendor (Lootblox)
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
require('modules/era/lua/globals/dynamis/currency_vendor')
-----------------------------------
local m = Module:new('era_dynamis_vendor_lootblox')

local vendor =
{
    baseEvent = 130,
    currency =
    {
        single      = xi.item.ORDELLE_BRONZEPIECE,
        hundred     = xi.item.MONTIONT_SILVERPIECE,
        tenThousand = xi.item.RANPERRE_GOLDPIECE,
    },
    shop = -- Prices in Montiont Silverpieces
    {
        { price = 5,  item = xi.item.TWINCOON },
        { price = 6,  item = xi.item.PILE_OF_RELIC_IRON },
        { price = 7,  item = xi.item.JAR_OF_GOBLIN_GREASE },
        { price = 8,  item = xi.item.GRIFFON_HIDE },
        { price = 23, item = xi.item.SQUARE_OF_GRIFFON_LEATHER },
        { price = 25, item = xi.item.BEHEMOTH_HORN },
        { price = 28, item = xi.item.MAMMOTH_TUSK },
    },
}

m:addOverride('xi.zones.Davoi.npcs.Lootblox.onTrade', function(player, npc, trade)
    xi.dynamis.currencyVendor.onTrade(player, npc, trade, vendor)
end)

m:addOverride('xi.zones.Davoi.npcs.Lootblox.onTrigger', function(player, npc)
    xi.dynamis.currencyVendor.onTrigger(player, npc, vendor)
end)

m:addOverride('xi.zones.Davoi.npcs.Lootblox.onEventUpdate', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventUpdate(player, csid, option, vendor)
end)

m:addOverride('xi.zones.Davoi.npcs.Lootblox.onEventFinish', function(player, csid, option)
    xi.dynamis.currencyVendor.onEventFinish(player, csid, option, vendor)
end)

return m
