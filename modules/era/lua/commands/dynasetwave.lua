-----------------------------------
-- func: dynasetwave
-- desc: Despawns the current mobs and spawns the given wave for a dynamis zone.
-----------------------------------
require('modules/module_utils')
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 'si' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!dynasetwave <zoneName> <wave>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName, wave)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    wave = tonumber(wave)
    if not wave or wave < 1 then
        usage(player, 'Invalid wave number provided.')
        return
    end

    local waveEntry = xi.dynamis.mobList[zoneID][wave]
    if not waveEntry or not waveEntry.wave then
        usage(player, string.format('%s has no wave %d.', zoneName, wave))
        return
    end

    local zone = GetZone(zoneID)
    player:printToPlayer(string.format('[dynasetwave] Despawning current mobs in %s...', zone:getName()))
    xi.dynamis.despawnAll(zone)
    xi.dynamis.spawnWave(zone, zoneID, wave)
    player:printToPlayer(string.format('[dynasetwave] Spawned wave %d in %s.', wave, zone:getName()))
end

xi.module.registerCommand('dynasetwave', commandObj)
