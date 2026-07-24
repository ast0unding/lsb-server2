-----------------------------------
-- Era Dynamis - zone data
--
-- entryInfoEra: data for the entry NPC in each starting zone.
-- dynaInfoEra : data for each dynamis zone, plus a back-reference from
--               each starting zone to its dynamis zone.
--
-- NPC entity IDs below are taken from sql/npc_list.sql.
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

--[[
entryInfoEra fields:
    csBit           = bit in the Dynamis_Status player variable recording a win; also passed to the entry events
    csRegisterGlass = event: register a new instance (Timeless Hourglass trade)
    csSand          = event: Cornelia gives the Vial of Shrouded Sand (city zones)
    csFirst         = event: first-visit scene (dreamland zones)
    csWin           = event: post-win scene
    csDyna          = event: enter dynamis (Perpetual Hourglass trade)
    maxCapacity     = registrant cap for the instance
    enabled         = zone can be entered
    requiresCop     = entry requires CoP mission Darkness Named (skipped by FREE_COP_DYNAMIS)
    winVar          = char var set on beating the zone
    enteredVar      = char var marking a previous entry
    hasSeenWinCSVar = char var marking the win cutscene as viewed
    winKI           = key item granted for the win
    enterPos        = entry position { x, y, z, rot, zone }
    reqs            = key items required to enter
--]]

xi.dynamis.entryInfoEra =
{
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        csBit           = 1,
        csRegisterGlass = 184,
        csSand          = 686,
        csWin           = 698,
        csDyna          = 685,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaSandoria_Win',
        enteredVar      = 'DynaSandoria_entered',
        hasSeenWinCSVar = 'DynaSandoria_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_COMMAND_SCEPTER,
        enterPos        = { 161.838, -2.000, 161.673, 93, xi.zone.DYNAMIS_SAN_DORIA },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.BASTOK_MINES] =
    {
        csBit           = 2,
        csRegisterGlass = 200,
        csSand          = 203,
        csWin           = 215,
        csDyna          = 201,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaBastok_Win',
        enteredVar      = 'DynaBastok_entered',
        hasSeenWinCSVar = 'DynaBastok_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_EYEGLASS,
        enterPos        = { 116.482, 0.994, -72.121, 128, xi.zone.DYNAMIS_BASTOK },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.WINDURST_WALLS] =
    {
        csBit           = 3,
        csRegisterGlass = 451,
        csSand          = 455,
        csWin           = 465,
        csDyna          = 452,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaWindurst_Win',
        enteredVar      = 'DynaWindurst_entered',
        hasSeenWinCSVar = 'DynaWindurst_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_LANTERN,
        enterPos        = { -221.988, 1.000, -120.184, 0, xi.zone.DYNAMIS_WINDURST },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.RULUDE_GARDENS] =
    {
        csBit           = 4,
        csRegisterGlass = 10011,
        csSand          = 10016,
        csWin           = 10026,
        csDyna          = 10012,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaJeuno_Win',
        enteredVar      = 'DynaJeuno_entered',
        hasSeenWinCSVar = 'DynaJeuno_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_TACTICAL_MAP,
        enterPos        = { 48.930, 10.002, -71.032, 195, xi.zone.DYNAMIS_JEUNO },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.BEAUCEDINE_GLACIER] =
    {
        csBit           = 5,
        csRegisterGlass = 118,
        csWin           = 134,
        csDyna          = 119,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaBeaucedine_Win',
        enteredVar      = 'DynaBeaucedine_entered',
        hasSeenWinCSVar = 'DynaBeaucedine_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_INSIGNIA,
        enterPos        = { -284.751, -39.923, -422.948, 235, xi.zone.DYNAMIS_BEAUCEDINE },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
            xi.ki.HYDRA_CORPS_COMMAND_SCEPTER,
            xi.ki.HYDRA_CORPS_EYEGLASS,
            xi.ki.HYDRA_CORPS_LANTERN,
            xi.ki.HYDRA_CORPS_TACTICAL_MAP,
        },
    },
    [xi.zone.XARCABARD] =
    {
        csBit           = 6,
        csRegisterGlass = 15,
        csWin           = 32,
        csDyna          = 16,
        maxCapacity     = 64,
        enabled         = true,
        winVar          = 'DynaXarcabard_Win',
        enteredVar      = 'DynaXarcabard_entered',
        hasSeenWinCSVar = 'DynaXarcabard_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_BATTLE_STANDARD,
        enterPos        = { 569.312, -0.098, -270.158, 90, xi.zone.DYNAMIS_XARCABARD },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
            xi.ki.HYDRA_CORPS_INSIGNIA,
        },
    },
    [xi.zone.VALKURM_DUNES] =
    {
        csBit             = 7,
        csRegisterGlass   = 15,
        csFirst           = 33,
        csWin             = 39,
        csDyna            = 58,
        maxCapacity       = 36,
        enabled           = true,
        requiresCop       = true,
        hasSeenFirstCSVar = 'DynamisCop_First',
        winVar            = 'DynaValkurm_Win',
        enteredVar        = 'DynaValkurm_entered',
        hasSeenWinCSVar   = 'DynaValkurm_HasSeenWinCS',
        winKI             = xi.ki.DYNAMIS_VALKURM_SLIVER,
        enterPos          = { 100, -8, 131, 47, xi.zone.DYNAMIS_VALKURM },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.BUBURIMU_PENINSULA] =
    {
        csBit             = 8,
        csRegisterGlass   = 21,
        csFirst           = 40,
        csWin             = 46,
        csDyna            = 22,
        maxCapacity       = 36,
        enabled           = true,
        requiresCop       = true,
        hasSeenFirstCSVar = 'DynamisCop_First',
        winVar            = 'DynaBuburimu_Win',
        enteredVar        = 'DynaBuburimu_entered',
        hasSeenWinCSVar   = 'DynaBuburimu_HasSeenWinCS',
        winKI             = xi.ki.DYNAMIS_BUBURIMU_SLIVER,
        enterPos          = { 155, -1, -169, 170, xi.zone.DYNAMIS_BUBURIMU },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.QUFIM_ISLAND] =
    {
        csBit             = 9,
        csRegisterGlass   = 2,
        csFirst           = 22,
        csWin             = 28,
        csDyna            = 3,
        maxCapacity       = 36,
        enabled           = true,
        requiresCop       = true,
        hasSeenFirstCSVar = 'DynamisCop_First',
        winVar            = 'DynaQufim_Win',
        enteredVar        = 'DynaQufim_entered',
        hasSeenWinCSVar   = 'DynaQufim_HasSeenWinCS',
        winKI             = xi.ki.DYNAMIS_QUFIM_SLIVER,
        enterPos          = { -19, -17, 104, 253, xi.zone.DYNAMIS_QUFIM },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
        },
    },
    [xi.zone.TAVNAZIAN_SAFEHOLD] =
    {
        csBit             = 10,
        csRegisterGlass   = 587,
        csFirst           = 614,
        csWin             = 615,
        csDyna            = 588,
        maxCapacity       = 18,
        enabled           = true,
        requiresCop       = true,
        hasSeenFirstCSVar = 'DynaTavnazia_First',
        winVar            = 'DynaTavnazia_Win',
        enteredVar        = 'DynaTavnazia_entered',
        hasSeenWinCSVar   = 'DynaTavnazia_HasSeenWinCS',
        winKI             = xi.ki.DYNAMIS_TAVNAZIA_SLIVER,
        enterPos          = { 0.1, -7, -21, 190, xi.zone.DYNAMIS_TAVNAZIA },
        reqs =
        {
            xi.ki.VIAL_OF_SHROUDED_SAND,
            xi.ki.DYNAMIS_VALKURM_SLIVER,
            xi.ki.DYNAMIS_QUFIM_SLIVER,
            xi.ki.DYNAMIS_BUBURIMU_SLIVER,
        },
    },
}

--[[
dynaInfoEra fields (dynamis zone entries):
    winVar/enteredVar/hasSeenWinCSVar = char vars, mirroring entryInfoEra
    winKI                = key item granted for the win
    winTitle             = title granted for the win (Tavnazia also has qmTitle/csTitle)
    winQM                = NPC entity for the win ??? ('qm0'/'qm1'/'qm2' in npc_list)
    entryPos             = position on entering the zone
    ejectPos             = position players are ejected to
    sjRestrictionNPC     = NPC entity for the subjob-unlock ??? (dreamland zones)
    sjRestrictionLocation = possible spawn points for that ???; when absent the
                            NPC keeps its npc_list position (Valkurm)
    timeExtensions       = time extension ??? NPC entities (Tavnazia)
    specifiedChildren    = spawn table uses specific children spawns
    updatedRoam          = spawn table uses LimitBreak statue roaming paths

Starting-zone entries only carry:
    dynaZone             = the matching dynamis zone
    dynaZoneMessageParam = zone parameter for the ANOTHER_GROUP message
--]]

xi.dynamis.dynaInfoEra =
{
    [xi.zone.DYNAMIS_SAN_DORIA] =
    {
        winVar            = 'DynaSandoria_Win',
        enteredVar        = 'DynaSandoria_entered',
        hasSeenWinCSVar   = 'DynaSandoria_HasSeenWinCS',
        winKI             = xi.ki.HYDRA_CORPS_COMMAND_SCEPTER,
        winTitle          = xi.title.DYNAMIS_SAN_DORIA_INTERLOPER,
        winQM             = 17535224, -- qm0
        entryPos          = { 161.838, -2.000, 161.673, 93, xi.zone.DYNAMIS_SAN_DORIA },
        ejectPos          = { 161.000, -2.000, 161.000, 94, xi.zone.SOUTHERN_SAN_DORIA },
        specifiedChildren = true,
        updatedRoam       = true,
    },
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        dynaZone             = xi.zone.DYNAMIS_SAN_DORIA,
        dynaZoneMessageParam = 1,
    },
    [xi.zone.DYNAMIS_BASTOK] =
    {
        winVar          = 'DynaBastok_Win',
        enteredVar      = 'DynaBastok_entered',
        hasSeenWinCSVar = 'DynaBastok_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_EYEGLASS,
        winTitle        = xi.title.DYNAMIS_BASTOK_INTERLOPER,
        winQM           = 17539323, -- qm0
        entryPos        = { 116.482, 0.994, -72.121, 128, xi.zone.DYNAMIS_BASTOK },
        ejectPos        = { 112.000, 0.994, -72.000, 127, xi.zone.BASTOK_MINES },
    },
    [xi.zone.BASTOK_MINES] =
    {
        dynaZone             = xi.zone.DYNAMIS_BASTOK,
        dynaZoneMessageParam = 2,
    },
    [xi.zone.DYNAMIS_WINDURST] =
    {
        winVar          = 'DynaWindurst_Win',
        enteredVar      = 'DynaWindurst_entered',
        hasSeenWinCSVar = 'DynaWindurst_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_LANTERN,
        winTitle        = xi.title.DYNAMIS_WINDURST_INTERLOPER,
        winQM           = 17543480, -- qm0
        entryPos        = { -221.988, 1.000, -120.184, 0, xi.zone.DYNAMIS_WINDURST },
        ejectPos        = { -217.000, 1.000, -119.000, 94, xi.zone.WINDURST_WALLS },
    },
    [xi.zone.WINDURST_WALLS] =
    {
        dynaZone             = xi.zone.DYNAMIS_WINDURST,
        dynaZoneMessageParam = 3,
    },
    [xi.zone.DYNAMIS_JEUNO] =
    {
        winVar          = 'DynaJeuno_Win',
        enteredVar      = 'DynaJeuno_entered',
        hasSeenWinCSVar = 'DynaJeuno_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_TACTICAL_MAP,
        winTitle        = xi.title.DYNAMIS_JEUNO_INTERLOPER,
        winQM           = 17547510, -- qm0
        entryPos        = { 48.930, 10.002, -71.032, 195, xi.zone.DYNAMIS_JEUNO },
        ejectPos        = { 48.930, 10.002, -71.032, 195, xi.zone.RULUDE_GARDENS },
        updatedRoam     = true,
    },
    [xi.zone.RULUDE_GARDENS] =
    {
        dynaZone             = xi.zone.DYNAMIS_JEUNO,
        dynaZoneMessageParam = 4,
    },
    [xi.zone.DYNAMIS_BEAUCEDINE] =
    {
        winVar          = 'DynaBeaucedine_Win',
        enteredVar      = 'DynaBeaucedine_entered',
        hasSeenWinCSVar = 'DynaBeaucedine_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_INSIGNIA,
        winTitle        = xi.title.DYNAMIS_BEAUCEDINE_INTERLOPER,
        winQM           = 17326801, -- qm0
        entryPos        = { -284.751, -39.923, -422.948, 235, xi.zone.DYNAMIS_BEAUCEDINE },
        ejectPos        = { -284.751, -39.923, -422.948, 235, xi.zone.BEAUCEDINE_GLACIER },
    },
    [xi.zone.BEAUCEDINE_GLACIER] =
    {
        dynaZone             = xi.zone.DYNAMIS_BEAUCEDINE,
        dynaZoneMessageParam = 5,
    },
    [xi.zone.DYNAMIS_XARCABARD] =
    {
        winVar          = 'DynaXarcabard_Win',
        enteredVar      = 'DynaXarcabard_entered',
        hasSeenWinCSVar = 'DynaXarcabard_HasSeenWinCS',
        winKI           = xi.ki.HYDRA_CORPS_BATTLE_STANDARD,
        winTitle        = xi.title.DYNAMIS_XARCABARD_INTERLOPER,
        winQM           = 17330781, -- qm0
        entryPos        = { 569.312, -0.098, -270.158, 90, xi.zone.DYNAMIS_XARCABARD },
        ejectPos        = { 569.312, -0.098, -270.158, 90, xi.zone.XARCABARD },
    },
    [xi.zone.XARCABARD] =
    {
        dynaZone             = xi.zone.DYNAMIS_XARCABARD,
        dynaZoneMessageParam = 6,
    },
    [xi.zone.DYNAMIS_VALKURM] =
    {
        winVar           = 'DynaValkurm_Win',
        enteredVar       = 'DynaValkurm_entered',
        hasSeenWinCSVar  = 'DynaValkurm_HasSeenWinCS',
        winKI            = xi.ki.DYNAMIS_VALKURM_SLIVER,
        winTitle         = xi.title.DYNAMIS_VALKURM_INTERLOPER,
        winQM            = 16937587, -- qm1
        sjRestrictionNPC = 16937586, -- qm0
        entryPos         = { 100, -8, 131, 47, xi.zone.DYNAMIS_VALKURM },
        ejectPos         = { 119, -9, 131, 52, xi.zone.VALKURM_DUNES },
    },
    [xi.zone.VALKURM_DUNES] =
    {
        dynaZone             = xi.zone.DYNAMIS_VALKURM,
        dynaZoneMessageParam = 7,
    },
    [xi.zone.DYNAMIS_BUBURIMU] =
    {
        winVar           = 'DynaBuburimu_Win',
        enteredVar       = 'DynaBuburimu_entered',
        hasSeenWinCSVar  = 'DynaBuburimu_HasSeenWinCS',
        winKI            = xi.ki.DYNAMIS_BUBURIMU_SLIVER,
        winTitle         = xi.title.DYNAMIS_BUBURIMU_INTERLOPER,
        winQM            = 16941678, -- qm1
        sjRestrictionNPC = 16941677, -- qm0
        entryPos         = { 155, -1, -169, 170, xi.zone.DYNAMIS_BUBURIMU },
        ejectPos         = { 154, -1, -170, 190, xi.zone.BUBURIMU_PENINSULA },
        sjRestrictionLocation =
        {
            { x = -214.161, y = 15.360, z = -269.202, rot =  54 },
            { x =  620.425, y =  7.306, z = -266.427, rot =  71 },
            { x =  427.460, y = -0.308, z =  189.224, rot =  50 },
            { x =  320.489, y = -0.642, z =  366.648, rot = 101 },
        },
    },
    [xi.zone.BUBURIMU_PENINSULA] =
    {
        dynaZone             = xi.zone.DYNAMIS_BUBURIMU,
        dynaZoneMessageParam = 8,
    },
    [xi.zone.DYNAMIS_QUFIM] =
    {
        winVar           = 'DynaQufim_Win',
        enteredVar       = 'DynaQufim_entered',
        hasSeenWinCSVar  = 'DynaQufim_HasSeenWinCS',
        winKI            = xi.ki.DYNAMIS_QUFIM_SLIVER,
        winTitle         = xi.title.DYNAMIS_QUFIM_INTERLOPER,
        winQM            = 16945640, -- qm1
        sjRestrictionNPC = 16945639, -- qm0
        entryPos         = { -19, -17, 104, 253, xi.zone.DYNAMIS_QUFIM },
        ejectPos         = { 18, -19, 162, 240, xi.zone.QUFIM_ISLAND },
        sjRestrictionLocation =
        {
            { x = -264.498, y = -19.255, z =  401.465, rot =  54 },
            { x = -264.655, y = -19.268, z =  240.580, rot =  71 },
            { x =  -77.771, y = -19.068, z =  258.666, rot =  50 },
            { x = -137.127, y = -19.976, z =  228.789, rot = 101 },
            { x =  -61.647, y = -19.868, z =  152.935, rot =  35 },
            { x =   27.973, y = -20.270, z =  191.907, rot = 195 },
            { x =  107.445, y = -20.368, z =  149.587, rot =  64 },
            { x =   99.884, y = -19.557, z =   51.518, rot =  27 },
            { x =  -29.895, y = -21.095, z =  -57.154, rot = 209 },
            { x =   88.474, y = -20.621, z =  -49.333, rot =   4 },
            { x = -192.540, y = -20.477, z =  -11.055, rot = 151 },
            { x = -340.976, y = -20.421, z =   31.154, rot =  66 },
        },
    },
    [xi.zone.QUFIM_ISLAND] =
    {
        dynaZone             = xi.zone.DYNAMIS_QUFIM,
        dynaZoneMessageParam = 9,
    },
    [xi.zone.DYNAMIS_TAVNAZIA] =
    {
        winVar          = 'DynaTavnazia_Win',
        enteredVar      = 'DynaTavnazia_entered',
        hasSeenWinCSVar = 'DynaTavnazia_HasSeenWinCS',
        winKI           = xi.ki.DYNAMIS_TAVNAZIA_SLIVER,
        qmTitle         = xi.title.DYNAMIS_TAVNAZIA_INTERLOPER,
        winTitle        = xi.title.NIGHTMARE_AWAKENER,
        csTitle         = xi.title.CONFRONTER_OF_NIGHTMARES,
        winQM           = 16949399, -- qm2
        entryPos        = { 0.1, -7, -21, 190, xi.zone.DYNAMIS_TAVNAZIA },
        ejectPos        = { 0, -7, -23, 195, xi.zone.TAVNAZIAN_SAFEHOLD },
        timeExtensions  = { 16949397, 16949398 }, -- qm0, qm1
    },
    [xi.zone.TAVNAZIAN_SAFEHOLD] =
    {
        dynaZone             = xi.zone.DYNAMIS_TAVNAZIA,
        dynaZoneMessageParam = 10,
    },
}
