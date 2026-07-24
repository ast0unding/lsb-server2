-----------------------------------
-- func: getdynainstance
-- desc: Reports the active instance id for the given dynamis zone.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!getdynainstance <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local instanceID = GetServerVariable(string.format('[DYNA]InstanceID_%d', zoneID))
    if instanceID == 0 then
        player:printToPlayer(string.format('[getdynainstance] %s has no active instance.', zoneName))
    else
        player:printToPlayer(string.format('[getdynainstance] %s instance id: %d.', zoneName, instanceID))
    end
end

return commandObj
