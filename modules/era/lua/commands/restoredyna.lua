-----------------------------------
-- func: restoredyna
-- desc: Restores the last recorded instance for the given dynamis zone.
-----------------------------------
require('modules/module_utils')
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!restoredyna <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local zone       = GetZone(zoneID)
    local instanceID = GetServerVariable(string.format('[SNAPSHOT][DYNA]InstanceID_%d', zoneID))

    xi.dynamis.restoreDynamis(zone)
    ResetDynamisInstance(instanceID)
    player:printToPlayer(string.format('[restoredyna] Restored the last instance for %s.', zoneName))
end

xi.module.registerCommand('restoredyna', commandObj)
