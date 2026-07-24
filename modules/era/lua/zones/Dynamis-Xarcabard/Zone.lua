-----------------------------------
-- Era Dynamis - Dynamis-Xarcabard zone hooks
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_zone_xarcabard')

m:addOverride('xi.zones.Dynamis-Xarcabard.Zone.onInitialize', function(zone)
    xi.dynamis.zoneOnZoneInitializeEra(zone)
end)

m:addOverride('xi.zones.Dynamis-Xarcabard.Zone.onZoneIn', function(player, prevZone)
    return xi.dynamis.zoneOnZoneInEra(player, prevZone)
end)

m:addOverride('xi.zones.Dynamis-Xarcabard.Zone.onZoneOut', function(player)
    xi.dynamis.zoneOnZoneOut(player)
end)

m:addOverride('xi.zones.Dynamis-Xarcabard.Zone.onZoneTick', function(zone)
    xi.dynamis.handleDynamis(zone)
end)

return m
