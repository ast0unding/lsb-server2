-----------------------------------
-- func: adddynatime
-- desc: Adds an amount of time to the given active dynamis instance.
-----------------------------------
require('modules/module_utils')
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 'si' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!adddynatime <zoneName> <minutes>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName, minutes)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    minutes = tonumber(minutes)
    if not minutes or minutes < 1 then
        usage(player, 'Please provide a valid number of minutes.')
        return
    end

    local expire = GetServerVariable(string.format('[DYNA]Timepoint_%d', zoneID))
    if expire == 0 or GetSystemTime() > expire then
        usage(player, string.format('No dynamis is in progress for %s.', zoneName))
        return
    end

    xi.dynamis.addMinutesToDynamis(GetZone(zoneID), minutes)
    player:printToPlayer(string.format('[adddynatime] Added %d minutes to %s.', minutes, zoneName))
end

xi.module.registerCommand('adddynatime', commandObj)
