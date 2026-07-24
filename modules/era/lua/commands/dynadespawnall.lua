-----------------------------------
-- func: dynadespawnall
-- desc: Despawns all mobs in the given dynamis instance.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!dynadespawnall <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local zone = GetZone(zoneID)
    xi.dynamis.despawnAll(zone)
    player:printToPlayer(string.format('[dynadespawnall] Despawned all mobs in %s.', zone:getName()))
end

return commandObj
