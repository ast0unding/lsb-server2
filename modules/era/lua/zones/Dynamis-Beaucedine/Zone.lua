-----------------------------------
-- Era Dynamis - Dynamis-Beaucedine zone hooks
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_zone_beaucedine')

m:addOverride('xi.zones.Dynamis-Beaucedine.Zone.onInitialize', function(zone)
    xi.dynamis.zoneOnZoneInitializeEra(zone)
end)

m:addOverride('xi.zones.Dynamis-Beaucedine.Zone.onZoneIn', function(player, prevZone)
    return xi.dynamis.zoneOnZoneInEra(player, prevZone)
end)

m:addOverride('xi.zones.Dynamis-Beaucedine.Zone.onZoneOut', function(player)
    xi.dynamis.zoneOnZoneOut(player)
end)

m:addOverride('xi.zones.Dynamis-Beaucedine.Zone.onZoneTick', function(zone)
    xi.dynamis.handleDynamis(zone)
end)

return m
