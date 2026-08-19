-----------------------------------
-- func: resetdynaplayer
-- desc: Clears a player's dynamis re-entry lockout. Defaults to the cursor target.
-----------------------------------
require('modules/module_utils')
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops = { permission = 1, parameters = 's' }

commandObj.onTrigger = function(player, playerName)
    local targ
    if not playerName or playerName == '' then
        targ = player:getCursorTarget()
    else
        targ = GetPlayerByName(playerName)
    end

    if not targ or not targ:isPC() then
        player:printToPlayer(string.format("Could not find a player named '%s'.", tostring(playerName)))
        player:printToPlayer('!resetdynaplayer (playerName)')
        return
    end

    targ:setCharVar('DynaReservationStart', 0)
    player:printToPlayer(string.format("[resetdynaplayer] Cleared the re-entry lockout for '%s'.", targ:getName()))
end

xi.module.registerCommand('resetdynaplayer', commandObj)
