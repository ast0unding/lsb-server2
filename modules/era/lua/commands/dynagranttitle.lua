-----------------------------------
-- func: dynagranttitle
-- desc: Grants the zone's win title to everyone in the given dynamis instance.
-----------------------------------
require('modules/module_utils')
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!dynagranttitle <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local zone    = GetZone(zoneID)
    local title   = xi.dynamis.dynaInfoEra[zoneID].winTitle
    local players = zone:getPlayers()
    local count   = 0
    for _, member in pairs(players) do
        member:addTitle(title)
        count = count + 1
    end

    player:printToPlayer(string.format('[dynagranttitle] Granted title to %d player(s) in %s.', count, zone:getName()))
end

xi.module.registerCommand('dynagranttitle', commandObj)
