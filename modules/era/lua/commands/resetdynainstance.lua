-----------------------------------
-- func: resetdynainstance
-- desc: Ejects players and tears down the given dynamis instance.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!resetdynainstance <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local zone       = GetZone(zoneID)
    local instanceID = GetServerVariable(string.format('[DYNA]InstanceID_%d', zoneID))

    if #zone:getPlayers() > 0 then
        xi.dynamis.ejectAllPlayers(zone)
    end

    xi.dynamis.cleanupDynamis(zone)
    ResetDynamisInstance(instanceID)
    player:printToPlayer(string.format('[resetdynainstance] Reset instance %d for %s.', instanceID, zoneName))
end

return commandObj
