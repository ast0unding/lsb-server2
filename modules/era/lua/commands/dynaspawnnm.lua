-----------------------------------
-- func: dynaspawnnm
-- desc: Spawns a dynamis NM by index.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 'si' }

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!dynaspawnnm <zoneName> <monsterIndex>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu, tavnazia')
end

commandObj.onTrigger = function(player, zoneName, mobIndex)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    mobIndex = tonumber(mobIndex)
    if not mobIndex then
        usage(player, 'Invalid monster index provided.')
        return
    end

    xi.dynamis.nmDynamicSpawn(mobIndex, nil, true, zoneID)
    player:printToPlayer(string.format('[dynaspawnnm] Spawned NM index %d.', mobIndex))
end

return commandObj
