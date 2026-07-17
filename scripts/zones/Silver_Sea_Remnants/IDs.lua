-----------------------------------
-- Area: Silver_Sea_Remnants
-----------------------------------
zones = zones or {}

zones[xi.zone.SILVER_SEA_REMNANTS] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED       = 6387, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE    = 6391, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                 = 6395, -- Obtained: <item>.
        GIL_OBTAINED                  = 6396, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6398, -- Obtained key item: <keyitem>.
        KEYITEM_LOST                  = 6399, -- Lost key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7006, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7007, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7008, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7028, -- Your party is unable to participate because certain members' levels are restricted.
        TEMP_ITEM                     = 7066, -- Obtained temporary item: <item>!
        CELL_OFFSET                   = 7232, -- Main Weapon/Sub-Weapon restriction removed.
        HAVE_TEMP_ITEM                = 7254, -- You already have that temporary item.
        SALVAGE_START                 = 7255, -- You feel an incredible pressure bearing down on you. This area appears to be blanketed in some sort of intense psionic field...
        TIME_TO_COMPLETE              = 7427, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED                = 7428, -- The mission has failed. Leaving area.
        TIME_REMAINING_MINUTES        = 7432, -- Time remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS        = 7433, -- Time remaining: <number> [second/seconds] (Earth time).
        PARTY_FALLEN                  = 7435, -- All party members have fallen in battle. Mission failure in <number> [minute/minutes].
        DOOR_IS_SEALED                = 7446, -- The door is sealed...
        DOOR_IS_SEALED_MYSTERIOUS     = 7448, -- The door is sealed by some mysterious force...
        SOCKET_TRIGGER                = 7450, -- You hear a ragged sighing from beneath the floor...
        SLOT_TRIGGER                  = 7451, -- You hear a scuttering sound from beneath the floor...
    },
    mob =
    {
        [1] = -- 1st Floor
        {
            [1] = -- E Path
            {
                mobs_start = 17088513,
                mobs_end   = 17088533,
            },
            [2] = -- W Path
            {
                mobs_start = 17088534,
                mobs_end   = 17088556,
                hammerblow = GetFirstID('Hammerblow_Majanun'),
            },
            [3] = -- Central Room
            {
                mobs_start = 17088558,
                mobs_end   = 17088573,
            },
        },
        [2] = -- 2nd Floor
        {
            [1] = -- SW Path
            {
                mobs_start = 17088574,
                mobs_end   = 17088593,
            },
            [2] = -- NW Path
            {
                deadpan = GetFirstID('Deadpan_Devilet'),
                dekka   = GetFirstID('Dekka'),
                gakke   = GetFirstID('Gakke'),
            },
            [3] = -- SE Path
            {
                mobs_start = 17088597,
                mobs_end   = 17088616,
                powderkeg  = GetFirstID('Powderkeg_Yanadahn'),
            },
            [4] = -- NE Path
            {
                mobs_start = 17088618,
                mobs_end   = 17088637,
            },
        },
        [3] = -- 3rd Floor
        {
            [1] = -- S Big Room
            {
                mobs_start = 17088654,
                mobs_end   = 17088657,
                rampart1   = 17088638,
                rampart2   = 17088642,
                rampart3   = 17088646,
                rampart4   = 17088650,
            },
            [2] = -- N Big Room
            {
                mobs_start = 17088658,
                mobs_end   = 17088666,
                gyroN      = GetFirstID('Gyroscopic_Gear'),
                don        = GetFirstID('Don_Poroggo'),
                deviletRoamArea =
                {
                    xMin = -371,
                    xMax = -313,
                    zMin = -330,
                    zMax = -270,
                },
                pillar =
                {
                    xMin = -348,
                    xMax = -332,
                    zMin = -308,
                    zMax = -292,
                },
                gearPoints =
                {
                    { x = -366.5, y = 0.05, z = -326.5 }, -- 1
                    { x = -366.5, y = 0.05, z = -300.0 }, -- 2
                    { x = -366.5, y = 0.05, z = -273.5 }, -- 3
                    { x = -340.0, y = 0.05, z = -273.5 }, -- 4
                    { x = -313.5, y = 0.05, z = -273.5 }, -- 5
                    { x = -313.5, y = 0.05, z = -300.0 }, -- 6
                    { x = -313.5, y = 0.05, z = -326.5 }, -- 7
                    { x = -340.0, y = 0.05, z = -326.5 }, -- 8
                    { x = -340.0, y = 0.05, z = -306.5 }, -- 9
                    { x = -346.5, y = 0.05, z = -306.5 }, -- 10
                    { x = -346.5, y = 0.05, z = -300.0 }, -- 11
                    { x = -346.5, y = 0.05, z = -293.5 }, -- 12
                    { x = -340.0, y = 0.05, z = -293.5 }, -- 13
                    { x = -333.5, y = 0.05, z = -293.5 }, -- 14
                    { x = -333.5, y = 0.05, z = -300.0 }, -- 15
                    { x = -333.5, y = 0.05, z = -306.5 }, -- 16
                },
            },
            [3] = -- E Big Room
            {
                mobs_start = 17088685,
                mobs_end   = 17088692,
                rampart1   = 17088669,
                rampart2   = 17088673,
                rampart3   = 17088677,
                rampart4   = 17088681,
                gyroE      = GetFirstID('Gyroscopic_Gears'),
            },
            [4] = -- W Big Room
            {
                mobs_start = 17088709,
                mobs_end   = 17088716,
                rampart1   = 17088693,
                rampart2   = 17088697,
                rampart3   = 17088701,
                rampart4   = 17088705,
            },
        },
        [4] = -- 4th Floor
        {
            [1] = -- West Path
            {
                mobs_start = 17088718,
                mobs_end   = 17088726,
                rampart1   = 17088727,
                rampart2   = 17088731,
                rampart3   = 17088735,
                rampart4   = 17088739,
            },
            [2] =
            {
                mobs_start = 17088743,
                mobs_end   = 17088750,
            },
            [3] = -- E Path
            {
                mobs_start = 17088751,
                mobs_end   = 17088767,
                rampart1   = 17088768,
                rampart2   = 17088772,
                rampart3   = 17088776,
                rampart4   = 17088780,
                citramp    = 17088784,
                chelo      = GetFirstID('Citadel_Chelonian'),
                gearPath   =
                {
                    { x = -300, y =  0, z = 210 },
                    { x = -309, y =  0, z = 219 },
                    { x = -299, y =  0, z = 228 },
                    { x = -291, y =  0, z = 219 },
                    { x = -259, y =  0, z = 220 },
                    { x = -259, y =  0, z = 188 },
                    { x = -269, y =  0, z = 180 },
                    { x = -251, y =  0, z = 179 },
                    { x = -259, y =  0, z = 188 },
                    { x = -259, y =  0, z = 220 },
                    { x = -291, y =  0, z = 219 },
                    { x = -300, y =  0, z = 210 },
                    { x = -300, y = -4, z = 149 },
                    { x = -309, y = -4, z = 140 },
                    { x = -299, y = -4, z = 131 },
                    { x = -290, y = -4, z = 140 },
                    { x = -259, y = -4, z = 139 },
                    { x = -259, y = -4, z = 20 },
                    { x = -220, y = -4, z = 20 },
                    { x = -220, y = -4, z = -20 },
                    { x = -291, y =  0, z = -20 },
                    { x = -300, y =  0, z = -29 },
                    { x = -308, y =  0, z = -20 },
                    { x = -299, y =  0, z = -11 },
                    { x = -291, y =  0, z = -20 },
                    { x = -220, y = -4, z = -20 },
                    { x = -220, y = -4, z = 20 },
                    { x = -259, y = -4, z = 20 },
                    { x = -259, y = -4, z = 139 },
                    { x = -290, y = -4, z = 140 },
                    { x = -300, y = -4, z = 149 },
                },
            },
        },
        [5] = -- 5th Floor
        {
            [1] = -- Boss Room
            {
                chariot = GetFirstID('Long-Armed_Chariot'),
            },
        },
    },
    npc =
    {
        [0] = -- Chests
        {
            TEMP_ITEMS_BOX =
            {
                17088810, 17088811, 17088812, 17088813, 17088814,
                17088815, 17088816, 17088817, 17088818,
            },
            STATIC_ITEMS_BOX =
            {
                17088787, 17088788, 17088789, 17088790,
                17088791, 17088792, 17088793, 17088794,
                17088795, 17088796, 17088797, 17088798,
                17088799, 17088800, 17088801, 17088802,
            },
            -- Static boxes relocate here on the floor 2 transition (first 8)
            secondFloorBoxPoints =
            {
                { x = 407.5, y = 3, z = 312.5, rot = 32 },  -- SE Path
                { x = 432.5, y = 3, z = 312.5, rot = 96 },
                { x = 432.5, y = 3, z = 287.5, rot = 160 },
                { x = 407.5, y = 3, z = 287.5, rot = 224 },
                { x = 247.5, y = 0, z = 527.5, rot = 224 }, -- NW Path
                { x = 272.5, y = 0, z = 527.5, rot = 160 },
                { x = 247.5, y = 0, z = 552.5, rot = 20 },
                { x = 272.5, y = 0, z = 552.5, rot = 96 },
            },
            -- And here on the floor 4 E Path transition (all 16)
            fourthFloorBoxPoints =
            {
                { x = -291, y =  0, z =  229, rot = 96 },
                { x = -291, y =  0, z =  211, rot = 160 },
                { x = -309, y =  0, z =  229, rot = 32 },
                { x = -309, y =  0, z =  211, rot = 224 },
                { x = -309, y = -4, z =  149, rot = 32 },
                { x = -309, y = -4, z =  131, rot = 224 },
                { x = -291, y = -4, z =  131, rot = 160 },
                { x = -291, y = -4, z =  149, rot = 96 },
                { x = -229, y = -4, z =   29, rot = 32 },
                { x = -210, y = -4, z =   29, rot = 96 },
                { x = -210, y = -4, z =   11, rot = 160 },
                { x = -229, y = -4, z =   11, rot = 224 },
                { x = -291, y =  0, z =  -29, rot = 160 },
                { x = -309, y =  0, z =  -29, rot = 224 },
                { x = -309, y =  0, z =  -11, rot = 32 },
                { x = -291, y =  0, z =  -11, rot = 96 },
            },
        },
        [1] = -- 1st Floor
        {
            [2] =
            {
                ARMOURY_CRATE = 17088823,
                DOOR1         = GetFirstID('_240'), -- Starting Door
                DOOR2         = GetFirstID('_241'), -- W Door
                DOOR3         = GetFirstID('_242'), -- E Door
            },
        },
        [2] = -- 2nd Floor
        {
            [1] =
            {
                SOCKET = 17089352,
            },
            [3] =
            {
                DOOR1 = GetFirstID('_24k'), -- SE Door
                DOOR2 = GetFirstID('_24f'), -- NW Door
            },
        },
        [3] = -- 3rd Floor
        {
            [1] =
            {
                SLOT  = 17089353,
                DOOR1 = GetFirstID('_24m'), -- W Door
                DOOR2 = GetFirstID('_24p'), -- E Door
                DOOR3 = GetFirstID('_24q'), -- SE Door
                DOOR4 = GetFirstID('_24l'), -- SW Door
                DOOR5 = GetFirstID('_24s'), -- N Door
                DOOR6 = GetFirstID('_24r'), -- S Door
                DOOR7 = GetFirstID('_24o'), -- NE Door
                DOOR8 = GetFirstID('_24n'), -- NW Door
            },
        },
        [4] = -- 4th Floor
        {
            [1] =
            {
                DOOR1 = GetFirstID('_24t'), -- W Door
                DOOR2 = GetFirstID('_24u'), -- E Door
            },
        },
    },
    drops =
    {
        [1] = -- Floor 1 E Path
        {
            [0] = -- COR
            {
                { xi.item.OPACUS_CELL, xi.item.OPACUS_CELL, xi.item.OPACUS_CELL, xi.item.RADIATUS_CELL, xi.item.RADIATUS_CELL },
                { xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.PILEUS_CELL, xi.item.PILEUS_CELL },
            },
            [1] = -- MNK
            {
                { xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.PANNUS_CELL, xi.item.PANNUS_CELL },
                { xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.STRATUS_CELL, xi.item.STRATUS_CELL },
            },
            [2] = -- RDM
            {
                { xi.item.UNDULATUS_CELL, xi.item.UNDULATUS_CELL, xi.item.UNDULATUS_CELL, xi.item.CIRROCUMULUS_CELL, xi.item.CIRROCUMULUS_CELL },
                { xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.SPISSATUS_CELL, xi.item.SPISSATUS_CELL },
            },
            [3] = -- RNG
            {
                { xi.item.DUPLICATUS_CELL, xi.item.DUPLICATUS_CELL, xi.item.DUPLICATUS_CELL, xi.item.CASTELLANUS_CELL, xi.item.CASTELLANUS_CELL },
                { xi.item.CONGESTUS_CELL, xi.item.CONGESTUS_CELL, xi.item.CONGESTUS_CELL, xi.item.VIRGA_CELL, xi.item.VIRGA_CELL },
            },
        },
        [2] = -- Floor 1 W Path
        {
            [1] = -- RDM
            {
                { xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.SPISSATUS_CELL },
                { xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.STRATUS_CELL },
            },
            [2] = -- MNK
            {
                { xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.RADIATUS_CELL },
                { xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.CONGESTUS_CELL },
            },
            [3] = -- COR
            {
                { xi.item.OPACUS_CELL, xi.item.OPACUS_CELL, xi.item.OPACUS_CELL, xi.item.PANNUS_CELL },
            },
            [4] = -- RNG
            {
                { xi.item.DUPLICATUS_CELL, xi.item.DUPLICATUS_CELL, xi.item.DUPLICATUS_CELL, xi.item.UNDULATUS_CELL },
            },
            [5] = -- RDM
            {
                { xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.HUMILUS_CELL, xi.item.SPISSATUS_CELL },
                { xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.CUMULUS_CELL, xi.item.STRATUS_CELL },
            },
            [6] = -- MNK
            {
                { xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.INCUS_CELL, xi.item.RADIATUS_CELL },
                { xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.PRAECIPITATIO_CELL, xi.item.CONGESTUS_CELL },
            },
        },
        [3] = -- General Cell Pools
        {
            CELLS = -- All cells (1F both paths, 2F NE/SW/SE, 3F, 4F)
            {
                xi.item.INCUS_CELL,
                xi.item.CASTELLANUS_CELL,
                xi.item.CUMULUS_CELL,
                xi.item.RADIATUS_CELL,
                xi.item.STRATUS_CELL,
                xi.item.CIRROCUMULUS_CELL,
                xi.item.UNDULATUS_CELL,
                xi.item.VIRGA_CELL,
                xi.item.DUPLICATUS_CELL,
                xi.item.OPACUS_CELL,
                xi.item.PRAECIPITATIO_CELL,
                xi.item.PANNUS_CELL,
                xi.item.FRACTUS_CELL,
                xi.item.CONGESTUS_CELL,
                xi.item.NIMBUS_CELL,
                xi.item.VELUM_CELL,
                xi.item.PILEUS_CELL,
                xi.item.MEDIOCRIS_CELL,
                xi.item.HUMILUS_CELL,
                xi.item.SPISSATUS_CELL,
            },
            DEADCELLS =
            {
                xi.item.HUMILUS_CELL,
                xi.item.DUPLICATUS_CELL,
                xi.item.OPACUS_CELL,
                xi.item.INCUS_CELL
            },
        },
    },
}

return zones[xi.zone.SILVER_SEA_REMNANTS]
