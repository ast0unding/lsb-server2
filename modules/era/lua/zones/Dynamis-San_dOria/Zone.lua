-----------------------------------
-- Era Dynamis - Dynamis-San_dOria zone hooks
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_zone_san_doria')

m:addOverride('xi.zones.Dynamis-San_dOria.Zone.onInitialize', function(zone)
    xi.dynamis.zoneOnZoneInitializeEra(zone)
end)

m:addOverride('xi.zones.Dynamis-San_dOria.Zone.onZoneIn', function(player, prevZone)
    return xi.dynamis.zoneOnZoneInEra(player, prevZone)
end)

m:addOverride('xi.zones.Dynamis-San_dOria.Zone.onZoneOut', function(player)
    xi.dynamis.zoneOnZoneOut(player)
end)

m:addOverride('xi.zones.Dynamis-San_dOria.Zone.onZoneTick', function(zone)
    xi.dynamis.handleDynamis(zone)
end)

return m
