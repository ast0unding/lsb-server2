-----------------------------------
-- Era Dynamis - client text IDs
--
-- These dialog lines are not named in the zones' IDs.lua files, but they
-- sit at fixed offsets from lines that are. Everything below is derived
-- from those anchors so it survives client ID shifts as long as the
-- IDs.lua files stay current.
-----------------------------------
require('scripts/zones/Bastok_Mines/IDs')
require('scripts/zones/Beaucedine_Glacier/IDs')
require('scripts/zones/Buburimu_Peninsula/IDs')
require('scripts/zones/Qufim_Island/IDs')
require('scripts/zones/RuLude_Gardens/IDs')
require('scripts/zones/Southern_San_dOria/IDs')
require('scripts/zones/Tavnazian_Safehold/IDs')
require('scripts/zones/Valkurm_Dunes/IDs')
require('scripts/zones/Windurst_Walls/IDs')
require('scripts/zones/Xarcabard/IDs')
require('scripts/zones/Dynamis-Bastok/IDs')
require('scripts/zones/Dynamis-Beaucedine/IDs')
require('scripts/zones/Dynamis-Buburimu/IDs')
require('scripts/zones/Dynamis-Jeuno/IDs')
require('scripts/zones/Dynamis-Qufim/IDs')
require('scripts/zones/Dynamis-San_dOria/IDs')
require('scripts/zones/Dynamis-Tavnazia/IDs')
require('scripts/zones/Dynamis-Valkurm/IDs')
require('scripts/zones/Dynamis-Windurst/IDs')
require('scripts/zones/Dynamis-Xarcabard/IDs')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

-- Starting-zone lines, anchored on YOU_CANNOT_ENTER_DYNAMIS:
--   INFORMATION_RECORDED       (-4) : The time and destination for your foray into Dynamis has been recorded on your <item>.
--   ANOTHER_GROUP              (-5) : Another group of player characters is currently occupying Dynamis - <zone>.
--   UNABLE_TO_CONNECT          (-7) : Unable to connect.
--   CONNECTING_WITH_THE_SERVER (-8) : Connecting with server. Please wait.
local function entryZoneText(zoneID)
    local anchor = zones[zoneID].text.YOU_CANNOT_ENTER_DYNAMIS

    return
    {
        INFORMATION_RECORDED       = anchor - 4,
        ANOTHER_GROUP              = anchor - 5,
        UNABLE_TO_CONNECT          = anchor - 7,
        CONNECTING_WITH_THE_SERVER = anchor - 8,
    }
end

-- Dynamis-zone eject line, sitting two entries before the given anchor:
--   NO_LONGER_HAVE_CLEARANCE : You no longer have clearance to remain in this area. You will be removed in <number> [second/seconds].
-- The anchor is CONQUEST_BASE in the city/glacier zones and
-- DYNAMIS_TIME_BEGIN in the dreamland zones.
local function dynaZoneText(zoneID, anchorName)
    return
    {
        NO_LONGER_HAVE_CLEARANCE = zones[zoneID].text[anchorName] - 2,
    }
end

xi.dynamis.dynaIDLookup =
{
    -- Starting zones
    [xi.zone.BASTOK_MINES]       = { text = entryZoneText(xi.zone.BASTOK_MINES)       },
    [xi.zone.BEAUCEDINE_GLACIER] = { text = entryZoneText(xi.zone.BEAUCEDINE_GLACIER) },
    [xi.zone.BUBURIMU_PENINSULA] = { text = entryZoneText(xi.zone.BUBURIMU_PENINSULA) },
    [xi.zone.QUFIM_ISLAND]       = { text = entryZoneText(xi.zone.QUFIM_ISLAND)       },
    [xi.zone.RULUDE_GARDENS]     = { text = entryZoneText(xi.zone.RULUDE_GARDENS)     },
    [xi.zone.SOUTHERN_SAN_DORIA] = { text = entryZoneText(xi.zone.SOUTHERN_SAN_DORIA) },
    [xi.zone.TAVNAZIAN_SAFEHOLD] = { text = entryZoneText(xi.zone.TAVNAZIAN_SAFEHOLD) },
    [xi.zone.VALKURM_DUNES]      = { text = entryZoneText(xi.zone.VALKURM_DUNES)      },
    [xi.zone.WINDURST_WALLS]     = { text = entryZoneText(xi.zone.WINDURST_WALLS)     },
    [xi.zone.XARCABARD]          = { text = entryZoneText(xi.zone.XARCABARD)          },

    -- Dynamis zones
    -- Bastok and Windurst anchor their eject line on CONQUEST_BASE to match
    -- their DAT layout.
    [xi.zone.DYNAMIS_BASTOK] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_BASTOK, 'CONQUEST_BASE'),
        entryZone = xi.zone.BASTOK_MINES,
    },
    [xi.zone.DYNAMIS_BEAUCEDINE] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_BEAUCEDINE, 'CONQUEST_BASE'),
        entryZone = xi.zone.BEAUCEDINE_GLACIER,
    },
    [xi.zone.DYNAMIS_BUBURIMU] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_BUBURIMU, 'DYNAMIS_TIME_BEGIN'),
        entryZone = xi.zone.BUBURIMU_PENINSULA,
    },
    [xi.zone.DYNAMIS_JEUNO] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_JEUNO, 'CONQUEST_BASE'),
        entryZone = xi.zone.RULUDE_GARDENS,
    },
    [xi.zone.DYNAMIS_QUFIM] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_QUFIM, 'DYNAMIS_TIME_BEGIN'),
        entryZone = xi.zone.QUFIM_ISLAND,
    },
    [xi.zone.DYNAMIS_SAN_DORIA] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_SAN_DORIA, 'CONQUEST_BASE'),
        entryZone = xi.zone.SOUTHERN_SAN_DORIA,
    },
    [xi.zone.DYNAMIS_TAVNAZIA] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_TAVNAZIA, 'DYNAMIS_TIME_BEGIN'),
        entryZone = xi.zone.TAVNAZIAN_SAFEHOLD,
    },
    [xi.zone.DYNAMIS_VALKURM] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_VALKURM, 'DYNAMIS_TIME_BEGIN'),
        entryZone = xi.zone.VALKURM_DUNES,
    },
    [xi.zone.DYNAMIS_WINDURST] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_WINDURST, 'CONQUEST_BASE'),
        entryZone = xi.zone.WINDURST_WALLS,
    },
    [xi.zone.DYNAMIS_XARCABARD] =
    {
        text      = dynaZoneText(xi.zone.DYNAMIS_XARCABARD, 'CONQUEST_BASE'),
        entryZone = xi.zone.XARCABARD,
    },
}
