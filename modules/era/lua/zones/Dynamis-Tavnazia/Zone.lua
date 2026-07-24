-----------------------------------
-- Era Dynamis - Dynamis-Tavnazia zone hooks
-----------------------------------
require('scripts/globals/dynamis')
require('modules/module_utils')
-----------------------------------
local m = Module:new('era_dynamis_zone_tavnazia')

m:addOverride('xi.zones.Dynamis-Tavnazia.Zone.onInitialize', function(zone)
    xi.dynamis.zoneOnZoneInitializeEra(zone)
end)

m:addOverride('xi.zones.Dynamis-Tavnazia.Zone.onZoneIn', function(player, prevZone)
    return xi.dynamis.zoneOnZoneInEra(player, prevZone)
end)

m:addOverride('xi.zones.Dynamis-Tavnazia.Zone.onZoneOut', function(player)
    xi.dynamis.zoneOnZoneOut(player)
end)

m:addOverride('xi.zones.Dynamis-Tavnazia.Zone.onZoneTick', function(zone)
    xi.dynamis.handleDynamis(zone)
end)

m:addOverride('xi.zones.Dynamis-Tavnazia.Zone.onTriggerAreaEnter', function(player, triggerArea)
    xi.dynamis.onTriggerAreaEnter(player, triggerArea)
end)

return m
