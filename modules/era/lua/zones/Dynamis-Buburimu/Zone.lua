-----------------------------------
-- Era Dynamis - Dynamis-Buburimu zone hooks
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_zone_buburimu')

m:addOverride('xi.zones.Dynamis-Buburimu.Zone.onInitialize', function(zone)
    xi.dynamis.zoneOnZoneInitializeEra(zone)
end)

m:addOverride('xi.zones.Dynamis-Buburimu.Zone.onZoneIn', function(player, prevZone)
    return xi.dynamis.zoneOnZoneInEra(player, prevZone)
end)

m:addOverride('xi.zones.Dynamis-Buburimu.Zone.onZoneOut', function(player)
    xi.dynamis.zoneOnZoneOut(player)
end)

m:addOverride('xi.zones.Dynamis-Buburimu.Zone.onZoneTick', function(zone)
    xi.dynamis.handleDynamis(zone)
end)

return m
