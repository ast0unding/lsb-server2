-----------------------------------
-- func: getdynavar
-- desc: Retrieves the current value of a dynamis instance variable.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 'ss' }

-- Readable variable name -> value getter.
local varGetters =
{
    registered_players = function(zoneID)
        return GetServerVariable(string.format('[DYNA]RegisteredPlayers_%d', zoneID))
    end,
    token = function(zoneID)
        return GetServerVariable(string.format('[DYNA]Token_%d', zoneID))
    end,
    timepoint = function(zoneID)
        return xi.dynamis.getDynaTimeRemaining(GetServerVariable(string.format('[DYNA]Timepoint_%d', zoneID)))
    end,
    ['10minwarning'] = function(zoneID)
        return GetServerVariable(string.format('[DYNA]Given10MinuteWarning_%d', zoneID))
    end,
    ['3minwarning'] = function(zoneID)
        return GetServerVariable(string.format('[DYNA]Given3MinuteWarning_%d', zoneID))
    end,
    ['1minwarning'] = function(zoneID)
        return GetServerVariable(string.format('[DYNA]Given1MinuteWarning_%d', zoneID))
    end,
    registrant = function(zoneID)
        return GetServerVariable(string.format('[DYNA]OriginalRegistrant_%d', zoneID))
    end,
    wave = function(zoneID)
        return GetServerVariable(string.format('[DYNA]CurrentWave_%d', zoneID))
    end,
}

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!getdynavar <zoneName> <varName>')
    player:printToPlayer('Vars: registered_players, token, timepoint, registrant, wave, 10minwarning, 3minwarning, 1minwarning')
end

commandObj.onTrigger = function(player, zoneName, varName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local getter = varGetters[string.lower(varName or '')]
    if not getter then
        usage(player, string.format("'%s' is not a valid variable name.", tostring(varName)))
        return
    end

    player:printToPlayer(string.format('[getdynavar] %s: %s', string.lower(varName), tostring(getter(zoneID))))
end

return commandObj
