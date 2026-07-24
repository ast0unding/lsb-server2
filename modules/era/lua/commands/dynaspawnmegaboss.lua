-----------------------------------
-- func: dynaspawnmegaboss
-- desc: Spawns the megaboss for the given dynamis zone.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

-- Megaboss spawn index per zone. Tavnazia has no single megaboss (Diabolos
-- awakens from the Umbral Diabolos in wave 1), so it is not spawnable here.
local bossIndex =
{
    [xi.zone.DYNAMIS_BASTOK]     = 110,
    [xi.zone.DYNAMIS_WINDURST]   = 121,
    [xi.zone.DYNAMIS_SAN_DORIA]  = 109,
    [xi.zone.DYNAMIS_JEUNO]      = 113,
    [xi.zone.DYNAMIS_BEAUCEDINE] = 163,
    [xi.zone.DYNAMIS_XARCABARD]  = 179,
    [xi.zone.DYNAMIS_VALKURM]    = 24,
    [xi.zone.DYNAMIS_QUFIM]      = 64,
    [xi.zone.DYNAMIS_BUBURIMU]   = 61,
}

local function usage(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!dynaspawnmegaboss <zoneName>')
    player:printToPlayer('Zones: bastok, windurst, san_doria, jeuno, beaucedine, xarcabard, valkurm, qufim, buburimu')
end

commandObj.onTrigger = function(player, zoneName)
    local zoneID = xi.dynamis.zoneByName[string.upper(zoneName or '')]
    if not zoneID then
        usage(player, 'Invalid zone name provided.')
        return
    end

    local mobIndex = bossIndex[zoneID]
    if not mobIndex then
        usage(player, 'That zone has no single spawnable megaboss.')
        return
    end

    xi.dynamis.nmDynamicSpawn(mobIndex, nil, true, zoneID)
    player:printToPlayer(string.format('[dynaspawnmegaboss] Spawned megaboss index %d.', mobIndex))
end

return commandObj
