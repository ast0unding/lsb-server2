-----------------------------------
-- Era Dynamis (pre-ToAU, level 75 cap)
-- Replaces the base Dynamis system with era entry, wave-based spawning
-- and re-entry lockouts.
-----------------------------------
require('scripts/globals/dynamis')
require('scripts/globals/missions')
require('scripts/globals/npc_util')
require('modules/module_utils')
-----------------------------------
require('modules/era/lua/globals/dynamis/settings')
require('modules/era/lua/globals/dynamis/text_ids')
require('modules/era/lua/globals/dynamis/zone_data')
-----------------------------------
local moduleName = 'era_dynamis'

local m = Module:new(moduleName)

local settings = xi.dynamis.settings

xi.dynamis.hourglassCheck =
{
    NEW_REGISTRANT      = 1,
    PREVIOUS_REGISTRANT = 2,
    INVALID             = 3,
}

-- Zone-name lookup shared by the GM commands (modules/era/lua/commands).
xi.dynamis.zoneByName =
{
    BASTOK     = xi.zone.DYNAMIS_BASTOK,
    WINDURST   = xi.zone.DYNAMIS_WINDURST,
    SAN_DORIA  = xi.zone.DYNAMIS_SAN_DORIA,
    JEUNO      = xi.zone.DYNAMIS_JEUNO,
    BEAUCEDINE = xi.zone.DYNAMIS_BEAUCEDINE,
    XARCABARD  = xi.zone.DYNAMIS_XARCABARD,
    VALKURM    = xi.zone.DYNAMIS_VALKURM,
    QUFIM      = xi.zone.DYNAMIS_QUFIM,
    BUBURIMU   = xi.zone.DYNAMIS_BUBURIMU,
    TAVNAZIA   = xi.zone.DYNAMIS_TAVNAZIA,
}

-- Expiry warnings, sent when time remaining first drops below each threshold.
-- Re-armed by time extensions that push the remaining time back above it.
local timeWarnings =
{
    { threshold = 660, varName = 'Given10MinuteWarning' },
    { threshold = 240, varName = 'Given3MinuteWarning'  },
    { threshold = 120, varName = 'Given1MinuteWarning'  },
}

local dreamlandZones =
{
    [xi.zone.DYNAMIS_VALKURM]  = true,
    [xi.zone.DYNAMIS_BUBURIMU] = true,
    [xi.zone.DYNAMIS_QUFIM]    = true,
    [xi.zone.DYNAMIS_TAVNAZIA] = true,
}

-- Effects that survive the status wipe on dreamland entry.
local sjPreservedEffects =
{
    [xi.effect.RERAISE]        = true,
    [xi.effect.SIGNET]         = true,
    [xi.effect.SANCTION]       = true,
    [xi.effect.SIGIL]          = true,
    [xi.effect.SJ_RESTRICTION] = true,
    [xi.effect.FOOD]           = true,
    [xi.effect.BATTLEFIELD]    = true,
}

-- Throttles instance snapshots across all dynamis zones.
local lastSnapshot = 0

-----------------------------------
-- Local Helpers
-----------------------------------

local function isGM(player)
    return player:getGMLevel() > 0
end

-- Builds the shared '[DYNA]<name>_<zoneID>' variable names used across
-- server, zone and char variables.
local function zoneVarName(zoneID, name)
    return string.format('[DYNA]%s_%s', name, zoneID)
end

local function getDynamisTavWinParam(player)
    local zmComplete  = player:getCurrentMission(xi.mission.log_id.ZILART) >= xi.mission.id.zilart.AWAKENING
    local copComplete = player:getCurrentMission(xi.mission.log_id.COP) >= xi.mission.id.cop.DAWN
    local anComplete  = player:hasCompletedQuest(xi.quest.log_id.JEUNO, xi.quest.id.jeuno.APOCALYPSE_NIGH)

    if anComplete then
        -- AN requires ZM and CoP
        return 3
    elseif zmComplete then
        if copComplete then
            return 2
        end

        return 1
    end

    return 0
end

local function checkEntryReqs(player, zoneID)
    local info = xi.dynamis.entryInfoEra[zoneID]

    if
        isGM(player) or
        player:getCharVar(info.enteredVar) ~= 0
    then
        return true
    end

    if
        player:getMainLvl() < xi.settings.main.DYNA_LEVEL_MIN or
        (
            info.requiresCop and
            xi.settings.main.FREE_COP_DYNAMIS ~= 1 and
            not player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.DARKNESS_NAMED)
        )
    then
        return false
    end

    for _, ki in ipairs(info.reqs) do
        if not player:hasKeyItem(ki) then
            return false
        end
    end

    return true
end

local function snapshotKeys(zoneID)
    local keys =
    {
        zoneVarName(zoneID, 'Token'),
        zoneVarName(zoneID, 'InstanceID'),
        zoneVarName(zoneID, 'CurrentWave'),
    }

    for _, tier in ipairs(timeWarnings) do
        table.insert(keys, zoneVarName(zoneID, tier.varName))
    end

    return keys
end

local function snapshotInstance(zone)
    local zoneID = zone:getID()

    -- TODO: Mob list snapshotting (SaveDynamisSnapshot) is disabled until
    -- proven stable; only zone variables are persisted for !restoredyna.

    for _, key in ipairs(snapshotKeys(zoneID)) do
        SetServerVariable(string.format('[SNAPSHOT]%s', key), zone:getLocalVar(key))
    end

    local zoneTimepoint = GetServerVariable(zoneVarName(zoneID, 'Timepoint'))
    SetServerVariable(string.format('[SNAPSHOT]%s', zoneVarName(zoneID, 'Timepoint')), zoneTimepoint)
    SetServerVariable(string.format('[SNAPSHOT]%s', zoneVarName(zoneID, 'TimeRemaining')), xi.dynamis.getDynaTimeRemaining(zoneTimepoint))
end

local function restoreInstance(zone)
    local zoneID = zone:getID()

    for _, key in ipairs(snapshotKeys(zoneID)) do
        local value = GetServerVariable(string.format('[SNAPSHOT]%s', key))
        SetServerVariable(key, value)
        zone:setLocalVar(key, value)
    end

    xi.dynamis.despawnAll(zone)

    local instanceID = GetServerVariable(zoneVarName(zoneID, 'InstanceID'))
    local waveNumber = GetServerVariable(zoneVarName(zoneID, 'CurrentWave'))

    if instanceID > 0 then
        local mobIndicies = LoadDynamisSnapshot(instanceID)
        xi.dynamis.spawnWaveIndicies(zone, math.max(waveNumber, 1), mobIndicies)
    end
end

local function stripEffectsForDreamland(player)
    if player:getGMLevel() >= 2 then
        return
    end

    for _, effect in pairs(player:getStatusEffects()) do
        local effectID = effect:getType()
        if not sjPreservedEffects[effectID] then
            player:delStatusEffectSilent(effectID)
        end
    end
end

-- Sets a cooldown on the entry zone, then tears the instance down.
local function startCleanup(zone)
    local entryZone   = xi.dynamis.dynaIDLookup[zone:getID()].entryZone
    local cooldownVar = zoneVarName(entryZone, 'ZoneCooldown')

    if GetServerVariable(cooldownVar) == 0 then
        SetServerVariable(cooldownVar, GetSystemTime() + settings.CLEANUP_COOLDOWN)
    end

    xi.dynamis.cleanupDynamis(zone)
end

local function extendDynamisTime(zone, minutes)
    local zoneID           = zone:getID()
    local zoneDynamisToken = zone:getLocalVar(zoneVarName(zoneID, 'Token'))
    local expirationTime   = GetServerVariable(zoneVarName(zoneID, 'Timepoint')) + 60 * minutes

    SetServerVariable(zoneVarName(zoneID, 'Timepoint'), expirationTime)

    for _, player in pairs(zone:getPlayers()) do
        player:messageSpecial(zones[zoneID].text.DYNAMIS_TIME_EXTEND, minutes)
        xi.dynamis.updatePlayerHourglass(player, zoneDynamisToken)
    end

    -- Re-arm any expiry warnings the extension pushed back above their threshold.
    local timeRemaining = xi.dynamis.getDynaTimeRemaining(expirationTime)
    for _, tier in ipairs(timeWarnings) do
        if timeRemaining > tier.threshold then
            zone:setLocalVar(zoneVarName(zoneID, tier.varName), 0)
        end
    end
end

local function startRegistrationEvent(player, zoneID, csid, entered)
    local info = xi.dynamis.entryInfoEra[zoneID]

    -- The cutscene quotes the re-entry wait, so derive it from the same
    -- setting that enforces it.
    local reentryDays = math.ceil(xi.settings.main.BETWEEN_2DYNA_WAIT_TIME / 24)

    player:startEvent(
        csid,
        info.csBit,
        entered == 1 and 0 or 1,
        settings.RESERVATION_CANCEL_MINUTES,
        reentryDays,
        info.maxCapacity,
        xi.ki.VIAL_OF_SHROUDED_SAND,
        xi.item.TIMELESS_HOURGLASS,
        xi.item.PERPETUAL_HOURGLASS)
end

local function messageLockout(player, zoneID)
    local minutesSince = math.ceil((GetSystemTime() - player:getCharVar('DynaReservationStart')) / 60)
    player:messageSpecial(zones[zoneID].text.YOU_CANNOT_ENTER_DYNAMIS, minutesSince, xi.dynamis.entryInfoEra[zoneID].csBit)
end

local function directEntryMenu(player, zoneID)
    local info          = xi.dynamis.entryInfoEra[zoneID]
    local dynaZoneID    = xi.dynamis.dynaInfoEra[zoneID].dynaZone
    local zoneTimepoint = GetServerVariable(zoneVarName(dynaZoneID, 'Timepoint'))
    local dynamisToken  = GetServerVariable(zoneVarName(dynaZoneID, 'Token'))
    local runActive     = xi.dynamis.getDynaTimeRemaining(zoneTimepoint) > 0
    local registered    = runActive and xi.dynamis.isPlayerRegistered(player, dynamisToken)

    if
        isGM(player) or
        registered or
        not xi.dynamis.isPlayerLockedOut(player)
    then
        startRegistrationEvent(player, zoneID, info.csDyna, player:getCharVar(info.enteredVar))
    else
        messageLockout(player, zoneID)
    end
end

-----------------------------------
-- onZoneTick Dynamis Functions
-----------------------------------

xi.dynamis.handleDynamis = function(zone)
    local zoneID            = zone:getID()
    local zoneDynamisToken  = zone:getLocalVar(zoneVarName(zoneID, 'Token'))
    local zoneTimepoint     = GetServerVariable(zoneVarName(zoneID, 'Timepoint'))
    local zoneTimeRemaining = xi.dynamis.getDynaTimeRemaining(zoneTimepoint)
    local cleanupScript     = GetServerVariable(zoneVarName(zoneID, 'CleanupScript'))
    local playersInZone     = zone:getPlayers()

    for _, player in pairs(playersInZone) do
        if player:getLocalVar('Requires_Initial_Update') == 0 then
            xi.dynamis.updatePlayerHourglass(player, zoneDynamisToken)

            if
                settings.SJ_RESTRICTION and
                dreamlandZones[zoneID] and
                zone:getLocalVar('SJUnlock') ~= 1
            then
                stripEffectsForDreamland(player)
                player:addStatusEffect(xi.effect.SJ_RESTRICTION, { duration = settings.SJ_RESTRICTION_DURATION, origin = player })
            end

            player:setLocalVar('Requires_Initial_Update', 1)
        end

        if
            not isGM(player) and -- GMs can stay in zone until expiry.
            player:getLocalVar('[DYNA]NextHourglassCheck') < GetSystemTime()
        then
            if xi.dynamis.verifyHoldsValidHourglass(player, zoneDynamisToken, zoneTimepoint) then
                player:setLocalVar('[DYNA]NextHourglassCheck', GetSystemTime() + settings.HOURGLASS_CHECK_INTERVAL)
            end
        end
    end

    -- Wave 1 spawns on the first tick with a player actually in the zone;
    -- spawning into an empty zone leaves the entities unsynced to clients.
    if
        #playersInZone > 0 and
        zone:getLocalVar(zoneVarName(zoneID, 'Token')) ~= 0 and
        zone:getLocalVar('Wave_1_Spawned') ~= 1
    then
        xi.dynamis.spawnWave(zone, zoneID, 1)
    end

    -- Spawn any wave whose defeat requirements are now met.
    local zoneMobList = xi.dynamis.mobList and xi.dynamis.mobList[zoneID]
    if zoneMobList then
        for waveNumber, requirements in pairs(zoneMobList.waveDefeatRequirements) do
            if
                waveNumber ~= 1 and
                zone:getLocalVar(string.format('Wave_%i_Spawned', waveNumber)) ~= 1
            then
                local requirementsMet = true
                for _, varName in pairs(requirements) do
                    if zone:getLocalVar(varName) == 0 then
                        requirementsMet = false
                        break
                    end
                end

                if requirementsMet then
                    xi.dynamis.spawnWave(zone, zoneID, waveNumber)
                end
            end
        end
    end

    if zoneTimeRemaining <= 0 then
        xi.dynamis.ejectAllPlayers(zone)

        if cleanupScript == 0 then
            startCleanup(zone)
        end
    end

    for _, tier in ipairs(timeWarnings) do
        if
            zone:getLocalVar(zoneVarName(zoneID, tier.varName)) == 0 and
            zoneTimeRemaining < tier.threshold
        then
            xi.dynamis.dynamisTimeWarning(zone, zoneTimepoint)
            zone:setLocalVar(zoneVarName(zoneID, tier.varName), 1)
        end
    end

    if
        GetSystemTime() - lastSnapshot > settings.SNAPSHOT_INTERVAL and
        #playersInZone > 0 and
        #zone:getMobs() > 0
    then
        snapshotInstance(zone)
        lastSnapshot = GetSystemTime()
    end
end

-----------------------------------
-- Dynamis Start Functions
-----------------------------------

-- Instance-scoped ??? NPCs (win, time extension, subjob unlock) start
-- hidden; run scripts reveal them once they are earned. npc_list spawns
-- them visible, so this runs at zone init and at every run start.
xi.dynamis.hideInstanceQMs = function(zoneID)
    local info = xi.dynamis.dynaInfoEra[zoneID]
    local qms  = { info.winQM }

    for _, npcID in ipairs(info.timeExtensions or {}) do
        table.insert(qms, npcID)
    end

    if info.sjRestrictionNPC then
        table.insert(qms, info.sjRestrictionNPC)
    end

    for _, npcID in ipairs(qms) do
        local npc = GetNPCByID(npcID)
        if npc then
            npc:setStatus(xi.status.DISAPPEAR)
        end
    end
end

xi.dynamis.onNewDynamis = function(player)
    local zoneID = xi.dynamis.dynaInfoEra[player:getZoneID()].dynaZone
    local zone   = GetZone(zoneID)
    local info   = xi.dynamis.dynaInfoEra[zoneID]

    -- Wave 1 spawns from handleDynamis once a player is in the zone; spawning
    -- into the still-empty zone here would leave the entities unsynced.
    xi.dynamis.hideInstanceQMs(zoneID)

    if settings.SJ_RESTRICTION and info.sjRestrictionLocation then
        local location = info.sjRestrictionLocation[math.random(1, #info.sjRestrictionLocation)]
        local sjNPC    = GetNPCByID(info.sjRestrictionNPC)

        sjNPC:setPos(location.x, location.y, location.z, location.rot)
        sjNPC:setStatus(xi.status.NORMAL)
    end

    if zoneID == xi.zone.DYNAMIS_TAVNAZIA then
        xi.dynamis.dynamisTavnaziaOnNewDynamis(player, zone)
    end
end

-----------------------------------
-- Dynamis Zone Functions
-----------------------------------

xi.dynamis.addMinutesToDynamis = function(zone, minutes)
    extendDynamisTime(zone, minutes)
end

xi.dynamis.addTimeToDynamis = function(zone, mobIndex)
    if mobIndex == nil then -- Dynamis - Tavnazia's fixed time extensions
        extendDynamisTime(zone, settings.TAVNAZIA_TIME_EXTENSION)
        return
    end

    local zoneID = zone:getID()
    for _, extensionIndex in pairs(xi.dynamis.mobList[zoneID].timeExtensionList) do
        if extensionIndex == mobIndex then
            extendDynamisTime(zone, xi.dynamis.mobList[zoneID][mobIndex].timeExtension)
            return
        end
    end
end

xi.dynamis.ejectAllPlayers = function(zone)
    for _, player in pairs(zone:getPlayers()) do
        xi.dynamis.ejectPlayer(player)
    end
end

xi.dynamis.getDynaTimeRemaining = function(zoneTimepoint)
    return math.max(zoneTimepoint - GetSystemTime(), 0)
end

xi.dynamis.cleanupDynamis = function(zone)
    local zoneID = zone:getID()

    for _, varName in ipairs({ 'RegisteredPlayers', 'Token', 'Timepoint', 'OriginalRegistrant' }) do
        SetServerVariable(zoneVarName(zoneID, varName), 0)
    end

    for _, tier in ipairs(timeWarnings) do
        SetServerVariable(zoneVarName(zoneID, tier.varName), 0)
    end

    SetServerVariable(zoneVarName(zoneID, 'CleanupScript'), 1)
    zone:resetLocalVars()
    xi.dynamis.ejectAllPlayers(zone) -- Precautionary; the zone should already be empty.
    xi.dynamis.despawnAll(zone)
end

xi.dynamis.restoreDynamis = function(zone)
    restoreInstance(zone)
end

xi.dynamis.despawnAll = function(zone)
    -- NPCs (Somnial Threshold, qms) are deliberately left alone: they are
    -- zone fixtures, not part of the instance.
    for _, mob in pairs(zone:getMobs()) do
        DisallowRespawn(mob:getID(), true) -- Mobs are spawned by the module, not the DB; stop engine respawns.
        mob:setUnkillable(false)
        DespawnMob(mob:getID())
    end
end

xi.dynamis.dynamisTimeWarning = function(zone, zoneTimepoint)
    local zoneID        = zone:getID()
    local timeRemaining = math.floor(xi.dynamis.getDynaTimeRemaining(zoneTimepoint) / 60)

    for _, player in pairs(zone:getPlayers()) do
        if timeRemaining <= 2 then
            player:messageSpecial(zones[zoneID].text.DYNAMIS_TIME_UPDATE_1, timeRemaining, 1)
        else
            player:messageSpecial(zones[zoneID].text.DYNAMIS_TIME_UPDATE_2, timeRemaining, 1)
        end
    end
end

-----------------------------------
-- Dynamis Player Functions
-----------------------------------

xi.dynamis.registerDynamis = function(player)
    local entryZoneID = player:getZoneID()
    local dynaZoneID  = xi.dynamis.dynaInfoEra[entryZoneID].dynaZone
    local zone        = GetZone(dynaZoneID)
    local instanceID  = RegisterDynamisInstance(entryZoneID, player:getID())

    local startMinutes = settings.START_MINUTES
    if entryZoneID == xi.zone.TAVNAZIAN_SAFEHOLD then
        startMinutes = settings.TAVNAZIA_START_MINUTES
    end

    local expirationTime = GetSystemTime() + 60 * startMinutes
    local dynamisToken   = dynaZoneID + expirationTime -- Unique per instance; also embedded in each hourglass.

    SetServerVariable(zoneVarName(dynaZoneID, 'Token'), dynamisToken)
    SetServerVariable(zoneVarName(dynaZoneID, 'Timepoint'), expirationTime)
    SetServerVariable(zoneVarName(dynaZoneID, 'RegTimepoint'), GetSystemTime())
    SetServerVariable(zoneVarName(dynaZoneID, 'OriginalRegistrant'), player:getID())
    SetServerVariable(zoneVarName(dynaZoneID, 'InstanceID'), instanceID)
    SetServerVariable(zoneVarName(dynaZoneID, 'CleanupScript'), 0)

    xi.dynamis.onNewDynamis(player)

    zone:setLocalVar(zoneVarName(dynaZoneID, 'Token'), dynamisToken)
    zone:setLocalVar(zoneVarName(dynaZoneID, 'InstanceID'), instanceID)
    zone:setLocalVar(zoneVarName(dynaZoneID, 'CurrentWave'), 1)
end

xi.dynamis.registerPlayer = function(player)
    local dynaZoneID   = xi.dynamis.dynaInfoEra[player:getZoneID()].dynaZone
    local instanceID   = GetServerVariable(zoneVarName(dynaZoneID, 'InstanceID'))
    local dynamisToken = GetServerVariable(zoneVarName(dynaZoneID, 'Token'))
    local registerKey  = math.random(1, 100)

    -- The registration value is offset by the instance token, so a player
    -- automatically counts as a new registrant once the token changes.
    player:setCharVar(zoneVarName(dynaZoneID, 'PlayerRegisterKey'), registerKey)
    player:setCharVar(zoneVarName(dynaZoneID, 'PlayerRegistered'), dynamisToken + registerKey)
    player:setCharVar(zoneVarName(dynaZoneID, 'PlayerZoneToken'), dynamisToken)
    player:setCharVar(zoneVarName(dynaZoneID, 'PlayerRegisterTime'), GetServerVariable(zoneVarName(dynaZoneID, 'RegTimepoint')))
    player:setCharVar('DynaReservationStart', GetSystemTime())

    AddDynamisParticipant(instanceID, player:getID())
end

-- NOTE: DYNA_MIDNIGHT_RESET is not supported by the era module; the wait
-- is always a rolling BETWEEN_2DYNA_WAIT_TIME hours from registration.
xi.dynamis.isPlayerLockedOut = function(player)
    local reservationStart = player:getCharVar('DynaReservationStart')
    return GetSystemTime() - reservationStart < xi.settings.main.BETWEEN_2DYNA_WAIT_TIME * 3600
end

xi.dynamis.isPlayerRegistered = function(player, dynamisToken)
    local dynaZoneID = xi.dynamis.dynaInfoEra[player:getZoneID()].dynaZone
    local registerID = player:getCharVar(zoneVarName(dynaZoneID, 'PlayerRegistered'))

    return registerID - dynamisToken == player:getCharVar(zoneVarName(dynaZoneID, 'PlayerRegisterKey'))
end

xi.dynamis.ejectPlayer = function(player, forceEject)
    if
        player:getCurrentRegion() ~= xi.region.DYNAMIS or
        player:getLocalVar('Received_Eject_Warning') == 1
    then
        return
    end

    local zoneID = player:getZoneID()

    player:delStatusEffectSilent(xi.effect.BATTLEFIELD)
    player:setLocalVar('Received_Eject_Warning', 1)

    if forceEject then
        player:timer(2000, function(playerArg)
            playerArg:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.NO_LONGER_HAVE_CLEARANCE, 0, 0)
            playerArg:setCharVar(zoneVarName(zoneID, 'EjectPlayer'), -1)
            playerArg:disengage()
            playerArg:timer(4000, function(innerArg)
                innerArg:startCutscene(100) -- Shared eject event in every dynamis zone.
            end)
        end)
    else
        player:timer(2000, function(playerArg)
            playerArg:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.NO_LONGER_HAVE_CLEARANCE, 0, 30)
        end)

        player:timer(30000, function(playerArg)
            playerArg:setCharVar(zoneVarName(zoneID, 'EjectPlayer'), -1)
            playerArg:disengage()
            playerArg:timer(2000, function(innerArg)
                innerArg:startCutscene(100) -- Shared eject event in every dynamis zone.
            end)
        end)
    end
end

xi.dynamis.verifyHoldsValidHourglass = function(player, zoneDynamisToken, zoneTimepoint)
    if settings.HOURGLASS_ENTRY then
        if player:validateHourglass(zoneDynamisToken) then
            return true
        end
    elseif
        zoneDynamisToken ~= 0 and
        player:getCharVar(zoneVarName(player:getZoneID(), 'PlayerZoneToken')) == zoneDynamisToken
    then
        -- Hourglass-free entry validates by the registration token instead.
        return true
    end

    local zoneID = player:getZoneID()
    if isGM(player) then
        player:setCharVar(zoneVarName(zoneID, 'EjectPlayer'), zoneTimepoint) -- GMs bypass the hourglass requirement.
    elseif player:getCharVar(zoneVarName(zoneID, 'PlayerZoneToken')) ~= zoneDynamisToken then
        xi.dynamis.ejectPlayer(player, true)
    else
        xi.dynamis.ejectPlayer(player)
    end

    return false
end

xi.dynamis.verifyTradeHourglass = function(player)
    local dynaZoneID   = xi.dynamis.dynaInfoEra[player:getZoneID()].dynaZone
    local dynamisToken = GetServerVariable(zoneVarName(dynaZoneID, 'Token'))

    if not player:validateHourglass(dynamisToken) then
        return xi.dynamis.hourglassCheck.INVALID
    end

    if xi.dynamis.isPlayerRegistered(player, dynamisToken) then
        return xi.dynamis.hourglassCheck.PREVIOUS_REGISTRANT
    end

    return xi.dynamis.hourglassCheck.NEW_REGISTRANT
end

xi.dynamis.updatePlayerHourglass = function(player, zoneDynamisToken)
    if not settings.HOURGLASS_ENTRY then
        return
    end

    local zoneTimepoint = GetServerVariable(zoneVarName(player:getZoneID(), 'Timepoint'))

    player:updateHourglass(zoneDynamisToken, zoneTimepoint)
end

-----------------------------------
-- Dynamis NPC Functions
-----------------------------------

xi.dynamis.entryNpcOnTrade = function(player, npc, trade)
    if not settings.HOURGLASS_ENTRY then
        return
    end

    local zoneID = npc:getZoneID()
    local info   = xi.dynamis.entryInfoEra[zoneID]

    if not info.enabled or not checkEntryReqs(player, zoneID) then
        return
    end

    local dynaZoneID           = xi.dynamis.dynaInfoEra[zoneID].dynaZone
    local zoneTimepoint        = GetServerVariable(zoneVarName(dynaZoneID, 'Timepoint'))
    local dynamisTimeRemaining = xi.dynamis.getDynaTimeRemaining(zoneTimepoint)
    local entered              = player:getCharVar(info.enteredVar)

    if npcUtil.tradeHasExactly(trade, { xi.item.TIMELESS_HOURGLASS }) then
        -- Trade a Timeless Hourglass to open a new instance.
        if dynamisTimeRemaining > 0 then
            player:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.ANOTHER_GROUP, info.csBit)
        elseif isGM(player) then -- GMs bypass lockout and zone cooldown.
            startRegistrationEvent(player, zoneID, info.csRegisterGlass, entered)
        elseif xi.dynamis.isPlayerLockedOut(player) then
            messageLockout(player, zoneID)
        elseif GetServerVariable(zoneVarName(zoneID, 'ZoneCooldown')) > GetSystemTime() then
            player:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.ANOTHER_GROUP, info.csBit)
        else
            SetServerVariable(zoneVarName(zoneID, 'ZoneCooldown'), 0)
            startRegistrationEvent(player, zoneID, info.csRegisterGlass, entered)
        end
    elseif npcUtil.tradeHasExactly(trade, { xi.item.PERPETUAL_HOURGLASS }) then
        -- Trade a Perpetual Hourglass to enter the open instance.
        if isGM(player) then
            xi.dynamis.registerPlayer(player)
            startRegistrationEvent(player, zoneID, info.csDyna, entered)
            return
        end

        local glassStatus = xi.dynamis.verifyTradeHourglass(player)
        if glassStatus == xi.dynamis.hourglassCheck.PREVIOUS_REGISTRANT then
            startRegistrationEvent(player, zoneID, info.csDyna, entered)
            player:setCharVar(zoneVarName(dynaZoneID, 'InflictWeakness'), 1)
        elseif xi.dynamis.isPlayerLockedOut(player) then
            messageLockout(player, zoneID)
        elseif glassStatus == xi.dynamis.hourglassCheck.NEW_REGISTRANT then
            local registeredPlayers = GetServerVariable(zoneVarName(dynaZoneID, 'RegisteredPlayers'))
            if registeredPlayers <= info.maxCapacity then
                xi.dynamis.registerPlayer(player)
                startRegistrationEvent(player, zoneID, info.csDyna, entered)
                player:setCharVar(zoneVarName(dynaZoneID, 'InflictWeakness'), 0)
                SetServerVariable(zoneVarName(dynaZoneID, 'RegisteredPlayers'), registeredPlayers + 1)
            else
                player:printToPlayer(string.format('The Dynamis instance has reached its maximum capacity of %i registrants.', info.maxCapacity), xi.msg.channel.SYSTEM_3)
            end
        elseif dynamisTimeRemaining > 0 then
            player:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.ANOTHER_GROUP, info.csBit)
        else
            player:printToPlayer('The Perpetual Hourglass\'s time has run out.', xi.msg.channel.SYSTEM_3)
        end
    end
end

m:addOverride('xi.dynamis.entryNpcOnTrigger', function(player, npc)
    local zoneID = player:getZoneID()
    local info   = xi.dynamis.entryInfoEra[zoneID]

    if not info.enabled then
        player:messageSpecial(zones[zoneID].text.DYNA_NPC_DEFAULT_MESSAGE)
        return
    end

    if
        info.csSand ~= nil and
        player:getCharVar('Dynamis_Status') == 1 and
        not player:hasKeyItem(xi.ki.VIAL_OF_SHROUDED_SAND)
    then
        player:startEvent(info.csSand) -- Cornelia hands out the Vial of Shrouded Sand.
    elseif
        info.csFirst ~= nil and
        checkEntryReqs(player, zoneID) and
        player:getCharVar(info.hasSeenFirstCSVar) == 0
    then
        player:startEvent(info.csFirst)
    elseif
        info.csWin ~= nil and
        player:hasKeyItem(info.winKI) and
        player:getCharVar(info.hasSeenWinCSVar) == 0
    then
        if zoneID == xi.zone.DYNAMIS_TAVNAZIA then
            player:startEvent(info.csWin, 0, getDynamisTavWinParam(player))
        else
            player:startEvent(info.csWin)
        end
    elseif
        not settings.HOURGLASS_ENTRY and
        checkEntryReqs(player, zoneID)
    then
        directEntryMenu(player, zoneID)
    else
        player:messageSpecial(zones[zoneID].text.DYNA_NPC_DEFAULT_MESSAGE)
    end
end)

xi.dynamis.entryNpcOnEventUpdate = function(player, csid, option)
    local zoneID = player:getZoneID()
    local info   = xi.dynamis.entryInfoEra[zoneID]

    if not info.enabled or csid ~= info.csRegisterGlass then
        return
    end

    if option == 0 then -- Completed the registration cutscene.
        xi.dynamis.registerDynamis(player)
        player:timer(5000, function(playerArg)
            playerArg:tradeComplete()

            local dynaZoneID   = xi.dynamis.dynaInfoEra[zoneID].dynaZone
            local dynamisToken = GetZone(dynaZoneID):getLocalVar(zoneVarName(dynaZoneID, 'Token'))

            playerArg:createHourglass(dynaZoneID, dynamisToken)
            playerArg:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.INFORMATION_RECORDED, xi.item.PERPETUAL_HOURGLASS)
            playerArg:messageSpecial(zones[zoneID].text.ITEM_OBTAINED, xi.item.PERPETUAL_HOURGLASS)
            playerArg:release(1)
        end)
    else
        player:release(1)
        player:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.UNABLE_TO_CONNECT)
    end
end

m:addOverride('xi.dynamis.entryNpcOnEventFinish', function(player, csid, option)
    local zoneID = player:getZoneID()
    local info   = xi.dynamis.entryInfoEra[zoneID]

    if not info.enabled then
        return
    end

    if csid == info.csDyna then -- Enter dynamis
        if option == 0 and info.enterPos ~= nil then
            if not settings.HOURGLASS_ENTRY then
                local dynaZoneID    = xi.dynamis.dynaInfoEra[zoneID].dynaZone
                local dynaZone      = GetZone(dynaZoneID)
                local zoneTimepoint = GetServerVariable(zoneVarName(dynaZoneID, 'Timepoint'))
                local regTimepoint  = GetServerVariable(zoneVarName(dynaZoneID, 'RegTimepoint'))

                -- A recorded instance whose zone has been empty past the
                -- zoning grace is stale (crash or map restart mid-run):
                -- tear it down and start fresh.
                local stale = #dynaZone:getPlayers() == 0 and
                    GetSystemTime() - regTimepoint > settings.STALE_ENTRY_GRACE

                if xi.dynamis.getDynaTimeRemaining(zoneTimepoint) <= 0 or stale then
                    xi.dynamis.cleanupDynamis(dynaZone)
                    xi.dynamis.registerDynamis(player)
                end

                local dynamisToken = GetServerVariable(zoneVarName(dynaZoneID, 'Token'))
                if not xi.dynamis.isPlayerRegistered(player, dynamisToken) then
                    local registeredPlayers = GetServerVariable(zoneVarName(dynaZoneID, 'RegisteredPlayers'))
                    if registeredPlayers > info.maxCapacity then
                        player:printToPlayer(string.format('The Dynamis instance has reached its maximum capacity of %i registrants.', info.maxCapacity), xi.msg.channel.SYSTEM_3)
                        return
                    end

                    xi.dynamis.registerPlayer(player)
                    SetServerVariable(zoneVarName(dynaZoneID, 'RegisteredPlayers'), registeredPlayers + 1)
                end
            end

            player:messageSpecial(xi.dynamis.dynaIDLookup[zoneID].text.CONNECTING_WITH_THE_SERVER)
            player:setCharVar(info.enteredVar, 1) -- Mark the player as having entered at least once.
            player:timer(5000, function(playerArg)
                playerArg:setPos(unpack(info.enterPos))
            end)
        end
    elseif csid == info.csSand then
        npcUtil.giveKeyItem(player, xi.ki.VIAL_OF_SHROUDED_SAND)
    elseif csid == info.csFirst then
        player:setCharVar(info.hasSeenFirstCSVar, 1)
    elseif csid == info.csWin then
        player:setCharVar(info.hasSeenWinCSVar, 1)
        if zoneID == xi.zone.DYNAMIS_TAVNAZIA then
            player:addTitle(xi.dynamis.dynaInfoEra[zoneID].csTitle)
        end
    end
end)

xi.dynamis.sjQMOnTrigger = function(npc)
    local zone = npc:getZone()

    for _, player in pairs(zone:getPlayers()) do
        if player:hasStatusEffect(xi.effect.SJ_RESTRICTION) then
            player:delStatusEffect(xi.effect.SJ_RESTRICTION)
        end
    end

    zone:setLocalVar('SJUnlock', 1)
end

xi.dynamis.timeExtensionOnTrigger = function(player, npc)
    local zone = player:getZone()
    local info = xi.dynamis.dynaInfoEra[zone:getID()]

    xi.dynamis.addTimeToDynamis(zone, nil)

    for _, member in pairs(zone:getPlayers()) do
        for musicSlot = 0, 3 do -- Background and combat music
            member:changeMusic(musicSlot, settings.TAVNAZIA_TE_MUSIC)
        end
    end

    if npc:getID() == info.timeExtensions[1] then
        zone:setLocalVar('qmOne', 1)
    elseif npc:getID() == info.timeExtensions[2] then
        zone:setLocalVar('qmTwo', 1)
    end

    npc:setStatus(xi.status.DISAPPEAR)
end

m:addOverride('xi.dynamis.qmOnTrigger', function(player, npc)
    local zoneID = npc:getZoneID()
    local info   = xi.dynamis.dynaInfoEra[zoneID]

    if not player:hasKeyItem(info.winKI) then
        npcUtil.giveKeyItem(player, info.winKI)
    end

    if zoneID == xi.zone.DYNAMIS_TAVNAZIA then
        player:addTitle(info.qmTitle)
    end
end)

-----------------------------------
-- Dynamis Player/Zone Functions
-----------------------------------

xi.dynamis.zoneOnZoneInitializeEra = function(zone)
    xi.dynamis.hideInstanceQMs(zone:getID())

    if zone:getID() == xi.zone.DYNAMIS_TAVNAZIA then
        xi.dynamis.dynamisTavnaziaOnZoneInitializeEra(zone)
    end
end

xi.dynamis.onTriggerAreaEnter = function(player, triggerArea)
    if player:getZoneID() == xi.zone.DYNAMIS_TAVNAZIA then
        xi.dynamis.dynamisTavnaziaOnTriggerAreaEnter(player, triggerArea)
    end
end

xi.dynamis.zoneOnZoneInEra = function(player, prevZone)
    local zoneID        = player:getZoneID()
    local zoneTimepoint = GetServerVariable(zoneVarName(zoneID, 'Timepoint'))
    local info          = xi.dynamis.dynaInfoEra[zoneID]

    if
        player:getXPos() == 0 and
        player:getYPos() == 0 and
        player:getZPos() == 0
    then
        player:setPos(info.entryPos[1], info.entryPos[2], info.entryPos[3], info.entryPos[4])
    end

    player:timer(5000, function(playerArg)
        local timeRemaining = xi.dynamis.getDynaTimeRemaining(zoneTimepoint)
        playerArg:addStatusEffect(xi.effect.BATTLEFIELD, { power = 1, silent = true, origin = playerArg })
        playerArg:messageSpecial(zones[zoneID].text.DYNAMIS_TIME_UPDATE_2, math.floor(timeRemaining / 60), 1)
        printf('[Dynamis] %s has entered %s', playerArg:getName(), playerArg:getZoneName())
    end)

    return -1
end

xi.dynamis.zoneOnZoneOut = function(player)
    if player:hasStatusEffect(xi.effect.BATTLEFIELD) then
        player:delStatusEffectSilent(xi.effect.BATTLEFIELD)
    end

    -- The run ends the moment the zone empties
    -- Re-entering later starts a fresh instance with
    -- every statue respawned. Checked against server variables (not zone
    -- locals) so it also works after a map restart.
    local zone      = player:getZone()
    local zoneID    = zone:getID()
    local remaining = 0

    for _, other in pairs(zone:getPlayers()) do
        if other:getID() ~= player:getID() then
            remaining = remaining + 1
        end
    end

    if
        remaining == 0 and
        GetServerVariable(zoneVarName(zoneID, 'Token')) ~= 0 and
        GetServerVariable(zoneVarName(zoneID, 'CleanupScript')) == 0
    then
        startCleanup(zone)
    end
end

-----------------------------------
-- Somnial Threshold (voluntary exit)
-----------------------------------

-- Menu bitmask: 1 = Leave Dynamis, 4 = Nothing
m:addOverride('xi.dynamis.somnialThresholdOnTrigger', function(player, npc)
    player:startEvent(101, 0, 0, 5)
end)

m:addOverride('xi.dynamis.somnialThresholdOnEventFinish', function(player, csid, option, npc)
    if csid == 101 and option == 1 then
        local info = xi.dynamis.dynaInfoEra[player:getZoneID()]
        player:setPos(unpack(info.ejectPos))
    end
end)

-----------------------------------
-- Handlers this module intentionally leaves empty
-----------------------------------

m:addOverride('xi.dynamis.timeExtensionOnDeath', function(mob, player, optParams)
end)

m:addOverride('xi.dynamis.refillStatueOnSpawn', function(mob)
end)

m:addOverride('xi.dynamis.refillStatueOnDeath', function(mob, player, optParams)
end)

m:addOverride('xi.dynamis.qmOnTrade', function(player, npc, trade)
end) -- Era Dynamis does not have QM pops.

return m
