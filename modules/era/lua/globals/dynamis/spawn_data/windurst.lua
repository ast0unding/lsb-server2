-----------------------------------
-- Era Dynamis - Dynamis-Windurst spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/win.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/win.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_WINDURST

local mobs = {}
for i = 1, 156 do
    mobs[i] = { id = i }
end

mobs.maxWaves = 9

xi.dynamis.mobList[zoneID] = mobs


----------------------------------------------------------------------------------------------------
--                                  Setup of Parent Spawning                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--               Mob Info               --
-- Note: Primarily used for mobs that   --
-- are NMs or parent mobs.              --
------------------------------------------

mobs[1].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (001-Y/A)
mobs[2].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (002-Y/A)
mobs[3].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (003-Y/A)
mobs[4].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (004-Y/A)
mobs[5].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (005-Y/A)
mobs[6].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (006-Y/M)(HP)
mobs[7].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (007-Y/A)
mobs[8].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (008-Y/M)(MP)(20)
mobs[9].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (009-Y/A)
mobs[10].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (010-Y/A)
mobs[11].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (011-Y/A)
mobs[12].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (012-Y/M)(HP)
mobs[13].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (013-Y/A)
mobs[14].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (014-Y/A)
mobs[15].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (015-Y/A)
mobs[16].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (016-Y/A)
mobs[17].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (017-Y/M)(MP)
mobs[18].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (018-Y/A)(20)
mobs[19].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (019-Y/M)(HP)
mobs[20].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (020-Y/A)
mobs[21].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (021-Y/A)
mobs[22].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (022-Y/A)
mobs[23].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (023-Y/A)
mobs[24].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (024-Y/M)(HP)
mobs[25].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (025-Y/M)(MP)
mobs[26].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (026-Y/A)
mobs[27].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (027-Y/A)
mobs[28].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (028-Y/A)
mobs[29].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (029-Y/M)(HP)
mobs[30].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (030-Y/M)(MP)
mobs[31].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (031-Y/A)(10)
mobs[32].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (032-Y/A)
mobs[33].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (033-Y/M)(MP)
mobs[34].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (034-Y/A)
mobs[35].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (035-Y/M)(HP)
mobs[36].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (036-Y/A)
mobs[37].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (037-Y/A)
mobs[38].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (038-Y/A)
mobs[39].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (039-Y/A)
mobs[40].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (040-Y/M)(MP)
mobs[41].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (041-Y/A)(20)
mobs[42].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (042-Y/M)(HP)
mobs[43].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (043-Y/A)
mobs[44].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (044-Y/A)
mobs[45].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (045-Y/M)(MP)
mobs[46].info = { mobType = 'Statue', name = 'Avatar Idol' } -- (046-Y/A).Idol
mobs[47].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (047-Y/M)
mobs[48].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (048-Y/M)
mobs[49].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (049-Y/A)
mobs[50].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (050-Y/A)
mobs[51].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (051-Y/M)(HP)
mobs[52].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (052-Y/A)
mobs[53].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (053-Y/A)
mobs[54].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (054-Y/A)
mobs[55].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (055-Y/A)
mobs[56].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (056-Y/M)(HP)
mobs[57].info = { mobType = 'Statue', name = 'Manifest Icon', deathVar = '57_killed' } -- (057-Y/M)(MP)
mobs[58].info = { mobType = 'Statue', name = 'Avatar Icon', deathVar = '58_killed' } -- (058-Y/A)(10)
mobs[59].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (059-Y/A)
mobs[60].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (060-Y/M)(MP)
mobs[61].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (061-Y/A)
mobs[62].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (062-Y/A)
mobs[63].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (063-Y/A)
mobs[64].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (064-Y/A)
mobs[65].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (065-Y/A)
mobs[66].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (066-Y/M)(20)
mobs[67].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (067-Y/A)
mobs[68].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (068-Y/A)
mobs[69].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (069-Y/A)
mobs[70].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (070-Y/A)
mobs[71].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (071-Y/A)
mobs[72].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (072-Y/M)(MP)
mobs[73].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (073-Y/A)
mobs[74].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (074-Y/M)(HP)
mobs[75].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (075-Y/A)
mobs[76].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (076-Y/A)
mobs[77].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (077-Y/M)(MP)
mobs[78].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (078-Y/A)
mobs[79].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (079-Y/A)
mobs[80].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (080-Y/M)(MP)
mobs[81].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (081-Y/A)
mobs[82].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (082-Y/A)
mobs[83].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (083-Y/M)(HP)
mobs[84].info = { mobType = 'Statue', name = 'Avatar Idol' } -- (084-Y/A).Idol
mobs[85].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (085-Y/A)
mobs[86].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (086-Y/M)(MP)
mobs[87].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (087-Y/A)
mobs[88].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (088-Y/M)(HP)
mobs[89].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (089-Y/A)
mobs[90].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (090-Y/A)
mobs[91].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (091-Y/A)
mobs[92].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (092-Y/A)
mobs[93].info = { mobType = 'Statue', name = 'Avatar Idol' } -- (093-Y/A).Idol
mobs[94].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (094-Y/M)(HP)
mobs[95].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (095-Y/M)(HP)
mobs[96].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (096-Y/M)(MP)
mobs[97].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (097-Y/A)
mobs[98].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (098-Y/A)
mobs[99].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (099-Y/A)
mobs[100].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (100-Y/M)(HP)
mobs[101].info = { mobType = 'Statue', name = 'Avatar Icon', deathVar = '101_killed' } -- (101-Y/M)(20)
mobs[102].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (102-Y/A)
mobs[103].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (103-Y/A)
mobs[104].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (104-Y/A)
mobs[105].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (105-Y/A)
mobs[106].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (106-Y/A)
mobs[107].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (107-Y/A)
mobs[108].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (108-Y/A)
mobs[109].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (109-Y/A)
mobs[110].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (110-Y/M)(HP)
mobs[111].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (111-Y/M)(MP)
mobs[112].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (112-Y/A)
mobs[113].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (113-Y/A)
mobs[114].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (114-Y/M)
mobs[115].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (115-Y/M)
mobs[116].info = { mobType = 'Statue', name = 'Avatar Idol' } -- (116-Y/A).Idol
mobs[117].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (117-Y/M)(HP)
mobs[118].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (118-Y/M)(MP)
mobs[119].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (119-Y/M)
mobs[120].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (120-Y/M)
mobs[122].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (122-Y/M)
mobs[123].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (123-Y/M)
mobs[124].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (124-Y/M)
mobs[125].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (125-Y/M)
mobs[126].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (126-Y/M)(HP)
mobs[127].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (127-Y/M)(MP)
mobs[128].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (128-Y/A)
mobs[129].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (129-Y/A)
mobs[130].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (130-Y/A)
mobs[131].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (131-Y/M)(MP)
mobs[132].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (132-Y/A)
mobs[133].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (133-Y/M)(HP)
mobs[134].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (134-Y/A)
mobs[135].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (135-Y/A)
mobs[136].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (136-Y/M)(HP)
mobs[137].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (137-Y/M)(MP)
mobs[138].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (138-Y/M)(HP)
mobs[139].info = { mobType = 'Statue', name = 'Manifest Icon' } -- (139-Y/M)(MP)
mobs[140].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (140-Y/M)
mobs[141].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (141-Y/M)
mobs[142].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (142-Y/M)
mobs[143].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (143-Y/M)
mobs[144].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (144-Y/M)
mobs[145].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (145-Y/M)
mobs[146].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (146-Y/A)
mobs[147].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (147-Y/M)
mobs[148].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (148-Y/A)
mobs[149].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (149-Y/M)
mobs[150].info = { mobType = 'Statue', name = 'Avatar Icon' } -- (150-Y/M)

-- NM's and Megaboss
mobs[121].info = { mobType = 'NM', name = 'Tzee Xicu Manifest', deathVar = 'MegaBoss_Killed' } -- 121-Replica NM (Tzee Xicu Idol)
mobs[151].info = { mobType = 'NM', name = 'Maa Febi the Steadfast', family = 'Yagudo', job = 'PLD' } -- Maa Febi the Steadfast
mobs[152].info = { mobType = 'NM', name = 'Muu Febi the Steadfast', family = 'Yagudo', job = 'PLD' } -- Muu Febi the Steadfast
mobs[153].info = { mobType = 'NM', name = 'Haa Pevi the Stentorian', family = 'Yagudo', job = 'SMN', deathVar = 'Haa_killed' } -- Haa Pevi the Stentorian
mobs[154].info = { mobType = 'NM', name = 'Loo Hepe the Eyepiercer', family = 'Yagudo', job = 'RDM', deathVar = 'Loo_killed' } -- Loo Hepe the Eyepiercer
mobs[155].info = { mobType = 'NM', name = 'Wuu Qoho the Razorclaw', family = 'Yagudo', job = 'MNK', deathVar = 'Wuu_killed' } -- Wuu Qoho the Razorclaw
mobs[156].info = { mobType = 'NM', name = 'Xoo Kaza the Solemn', family = 'Yagudo', job = 'BLM', deathVar = 'Xoo_killed' } -- Xoo Kaza the Solemn

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    {'MegaBoss_Killed'}, -- Spawns statues when boss dies
    {'Wuu_killed'}, -- Wuu Qoho the Razorclaw spawns 2 Statues at Heavens Tower
    {'Xoo_killed'}, -- Xoo Kaza the Solemn NM spawns 2 Statues at Heavens Tower
    {'Haa_killed'}, -- Haa Pevi the Stentorian NM spawns 2 Statues at Heavens Tower
    {'Wuu_killed', 'Xoo_killed', 'Haa_killed'}, -- Spawn main Heavens Tower statues + the RDM NM on 3 NM deaths
    {'101_killed'}, -- pops 102/103 under bridge when defeated
    {'57_killed' }, -- pops 54/55 under bridge when defeated
    {'Loo_killed'} -- Pops zone boss
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

-- Spawns on zone entry
mobs[1].wave =
{
    1  ,    -- (001-Y/A)  Avatar Icon
    2  ,    -- (002-Y/A)  Avatar Icon
    3  ,    -- (003-Y/A)  Avatar Icon
    4  ,    -- (004-Y/A)  Avatar Icon
    5  ,    -- (005-Y/A)  Avatar Icon
    6  ,    -- (006-Y/M)  Manifest Icon
    7  ,    -- (007-Y/A)  Avatar Icon
    8  ,    -- (008-Y/M)  Manifest Icon
    9  ,    -- (009-Y/A)  Avatar Icon
    10 ,    -- (010-Y/A)  Avatar Icon
    11 ,    -- (011-Y/A)  Avatar Icon
    12 ,    -- (012-Y/M)  Manifest Icon
    13 ,    -- (013-Y/A)  Avatar Icon
    14 ,    -- (014-Y/A)  Avatar Icon
    15 ,    -- (015-Y/A)  Avatar Icon
    16 ,    -- (016-Y/A)  Avatar Icon
    17 ,    -- (017-Y/M)  Manifest Icon
    18 ,    -- (018-Y/A)  Avatar Icon
    19 ,    -- (019-Y/M)  Manifest Icon
    20 ,    -- (020-Y/A)  Avatar Icon
    21 ,    -- (021-Y/A)  Avatar Icon
    24 ,    -- (024-Y/M)  Manifest Icon
    26 ,    -- (026-Y/A)  Avatar Icon
    27 ,    -- (027-Y/A)  Avatar Icon
    28 ,    -- (028-Y/A)  Avatar Icon
    29 ,    -- (029-Y/M)  Manifest Icon
    30 ,    -- (030-Y/M)  Manifest Icon
    31 ,    -- (031-Y/A)  Avatar Icon
    32 ,    -- (032-Y/A)  Avatar Icon
    34 ,    -- (034-Y/A)  Avatar Icon
    35 ,    -- (035-Y/M)  Manifest Icon
    38 ,    -- (038-Y/A)  Avatar Icon
    39 ,    -- (039-Y/A)  Avatar Icon
    40 ,    -- (040-Y/M)  Manifest Icon
    41 ,    -- (041-Y/A)  Avatar Icon
    43 ,    -- (043-Y/A)  Avatar Icon
    44 ,    -- (044-Y/A)  Avatar Icon
    45 ,    -- (045-Y/M)  Manifest Icon
    46 ,    -- (046-Y/A)  Avatar Idol
    51 ,    -- (051-Y/M)  Manifest Icon
    52 ,    -- (052-Y/A)  Avatar Icon
    53 ,    -- (053-Y/A)  Avatar Icon
    56 ,    -- (056-Y/M)  Manifest Icon
    57 ,    -- (057-Y/M)  Manifest Icon
    58 ,    -- (058-Y/A)  Avatar Icon
    62 ,    -- (062-Y/A)  Avatar Icon
    63 ,    -- (063-Y/A)  Avatar Icon
    64 ,    -- (064-Y/A)  Avatar Icon
    65 ,    -- (065-Y/A)  Avatar Icon
    66 ,    -- (066-Y/M)  Avatar Icon
    69 ,    -- (069-Y/A)  Avatar Icon
    72 ,    -- (072-Y/M)  Manifest Icon
    73 ,    -- (073-Y/A)  Avatar Icon
    74 ,    -- (074-Y/M)  Manifest Icon
    77 ,    -- (077-Y/M)  Manifest Icon
    80 ,    -- (080-Y/M)  Manifest Icon
    84 ,    -- (084-Y/A)  Avatar Idol
    88 ,    -- (088-Y/M)  Manifest Icon
    89 ,    -- (089-Y/A)  Avatar Icon
    91 ,    -- (091-Y/A)  Avatar Icon
    93 ,    -- (093-Y/A)  Avatar Idol
    94 ,    -- (094-Y/M)  Manifest Icon
    95 ,    -- (095-Y/M)  Manifest Icon
    96 ,    -- (096-Y/M)  Manifest Icon
    97 ,    -- (097-Y/A)  Avatar Icon
    101,    -- (101-Y/M)  Avatar Icon
    104,    -- (104-Y/A)  Avatar Icon
    105,    -- (105-Y/A)  Avatar Icon
    106,    -- (106-Y/A)  Avatar Icon
    107     -- (107-Y/A)  Avatar Icon
}

-- Spawns statues when boss dies
mobs[2].wave =
{
    126,    -- (126-Y/M)  Manifest Icon
    127,    -- (127-Y/M)  Manifest Icon
    128,    -- (128-Y/A)  Avatar Icon
    129,    -- (129-Y/A)  Avatar Icon
    130,    -- (130-Y/A)  Avatar Icon
    131,    -- (131-Y/M)  Manifest Icon
    132,    -- (132-Y/A)  Avatar Icon
    133,    -- (133-Y/M)  Manifest Icon
    134,    -- (134-Y/A)  Avatar Icon
    135,    -- (135-Y/A)  Avatar Icon
    136,    -- (136-Y/M)  Manifest Icon
    137,    -- (137-Y/M)  Manifest Icon
    138,    -- (138-Y/M)  Manifest Icon
    139,    -- (139-Y/M)  Manifest Icon
    140,    -- (140-Y/M)  Avatar Icon
    141,    -- (141-Y/M)  Avatar Icon
    142,    -- (142-Y/M)  Avatar Icon
    143,    -- (143-Y/M)  Avatar Icon
    144,    -- (144-Y/M)  Avatar Icon
    145,    -- (145-Y/M)  Avatar Icon
    146,    -- (146-Y/A)  Avatar Icon
    147,    -- (147-Y/M)  Avatar Icon
    148,    -- (148-Y/A)  Avatar Icon
    149,    -- (149-Y/M)  Avatar Icon
    150     -- (150-Y/M)  Avatar Icon
}

-- Wuu Qoho the Razorclaw spawns 2 Statues at Heavens Tower
mobs[3].wave =
{
    108,    -- (108-Y/A)  Avatar Icon
    109     -- (109-Y/A)  Avatar Icon
}

-- Xoo Kaza the Solemn NM spawns 2 Statues at Heavens Tower
mobs[4].wave =
{
    110,    -- (110-Y/M)  Manifest Icon
    111	    -- (111-Y/M)  Manifest Icon
}

-- Haa Pevi the Stentorian NM spawns 2 Statues at Heavens Tower
mobs[5].wave =
{
    113,    -- (113-Y/A) Avatar Icon
    112	    -- (112-Y/A) Avatar Icon
}

-- Spawn main Heavens Tower statues + the RDM NM on 3 NM deaths
mobs[6].wave =
{
    114,    -- (114-Y/M)  Avatar Icon
    115,    -- (115-Y/M)  Avatar Icon
    116     -- (116-Y/A)  Manifest Idol
}

mobs[7].wave =
{
    103,    -- (103-Y/A)  Avatar Icon
    102	    -- (102-Y/A)  Avatar Icon
}

mobs[8].wave =
{
    55,     -- (055-Y/A)  Avatar Icon
    54	    -- (054-Y/A)  Avatar Icon
}

mobs[9].wave =
{
    121     -- ( 121 ) Tzee Xicu Idol
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD 1 DRK
mobs[2].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } -- 1 WHM 1 BLM
mobs[3].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1 } -- 1 RDM 1 BRD
mobs[4].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[6].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 SAM 1 NIN
mobs[7].mobchildren = { [xi.job.MNK] = 2 } -- 2 MNK
mobs[8].mobchildren = { [xi.job.WAR] = 1, [xi.job.DRG] = 2 } -- 1 WAR 2 DRG
mobs[9].mobchildren = { [xi.job.THF] = 2, [xi.job.NIN] = 2 } -- 2 THF 2 NIN
mobs[11].mobchildren = { [xi.job.WAR] = 2, [xi.job.BST] = 2 } -- 2 WAR 2 BST
mobs[12].mobchildren = { [xi.job.PLD] = 2 } -- 2 PLD
mobs[13].mobchildren = { [xi.job.WHM] = 2 } -- 2 WHM
mobs[14].mobchildren = { [xi.job.DRK] = 1, [xi.job.SAM] = 1 } -- 1 DRK 1 SAM
mobs[15].mobchildren = { [xi.job.DRK] = 1, [xi.job.SAM] = 1 } -- 1 DRK 1 SAM
mobs[16].mobchildren = { [xi.job.BLM] = 1, [xi.job.SMN] = 2 } -- 1 BLM 2 SMN
mobs[17].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 RDM 1 THF
mobs[18].mobchildren = { [xi.job.WAR] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 SAM
mobs[19].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[20].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 MNK 1 THF 1 BRD
mobs[21].mobchildren = { [xi.job.WHM] = 1, [xi.job.PLD] = 1 } -- 1 WHM 1 PLD
mobs[22].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[23].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[24].mobchildren = { [xi.job.THF] = 2, [xi.job.BRD] = 1 } -- 2 THF 1 BRD
mobs[25].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 2 } -- 1 BST 2 DRG
mobs[26].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[27].mobchildren = { [xi.job.WAR] = 2, [xi.job.RNG] = 2 } -- 2 WAR 2 RNG
mobs[28].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 DRK 1 BRD 1 RNG
mobs[29].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 MNK 1 THF 1 SAM
mobs[30].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 RDM 1 PLD 1 DRK 1 NIN
mobs[31].mobchildren = { [xi.job.THF] = 2, [xi.job.SMN] = 1 } -- 2 THF 1 SMN
mobs[32].mobchildren = { [xi.job.DRG] = 3 } -- 3 DRG
mobs[33].mobchildren = { [xi.job.RDM] = 2, [xi.job.BST] = 1 } -- 2 RDM 1 BST
mobs[34].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[36].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[37].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[38].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[39].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[41].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 WHM 1 SAM
mobs[42].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[43].mobchildren = { [xi.job.WHM] = 1, [xi.job.SMN] = 1 } -- 1 WHM 1 SMN
mobs[44].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[45].mobchildren = { [xi.job.MNK] = 2, [xi.job.PLD] = 2 } -- 2 MNK 2 PLD
mobs[47].mobchildren = { [xi.job.WAR] = 1, [xi.job.DRG] = 1 } -- 1 WAR 1 DRG
mobs[48].mobchildren = { [xi.job.WAR] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 SAM
mobs[53].mobchildren = { [xi.job.RDM] = 2, [xi.job.THF] = 1 } -- 2 RDM 1 THF
mobs[54].mobchildren = { [xi.job.WHM] = 1, [xi.job.BRD] = 1 } -- 1 WHM 1 BRD
mobs[55].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[56].mobchildren = { [xi.job.BLM] = 2, [xi.job.PLD] = 1, [xi.job.NIN] = 1 } -- 2 BLM 1 PLD 1 NIN
mobs[57].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[60].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[63].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[65].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.THF] = 1 } -- 1 WAR 1 MNK 1 WHM 1 BLM 1 THF
mobs[66].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 DRK 1 BRD 1 SMN
mobs[67].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[68].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[69].mobchildren = { [xi.job.WAR] = 2 } -- 2 WAR
mobs[72].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.BST] = 1 } -- 1 WAR 1 MNK 1 BST
mobs[73].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[74].mobchildren = { [xi.job.THF] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 THF 1 SAM 1 DRG
mobs[75].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[77].mobchildren = { [xi.job.RDM] = 2, [xi.job.BRD] = 1 } -- 2 RDM 1 BRD
mobs[78].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1 } -- 1 BLM 1 PLD
mobs[79].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1 } -- 1 WHM 1 DRK
mobs[80].mobchildren = { [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.BRD] = 1 } -- 1 THF 1 PLD 1 BRD
mobs[81].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[82].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[83].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[84].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[85].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[86].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[87].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1 } -- 1 WHM 1 RDM
mobs[90].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[92].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[93].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[94].mobchildren = { [xi.job.WHM] = 1, [xi.job.SMN] = 2 } -- 1 WHM 2 SMN
mobs[95].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[97].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[98].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[99].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[100].mobchildren = { [xi.job.PLD] = 1, [xi.job.BRD] = 1 } -- 1 PLD 1 BRD
mobs[101].mobchildren = { [xi.job.MNK] = 1, [xi.job.RNG] = 2 } -- 1 MNK 2 RNG
mobs[102].mobchildren = { [xi.job.WAR] = 1, [xi.job.NIN] = 1 } -- 1 WAR 1 NIN
mobs[103].mobchildren = { [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 NIN 1 DRG
mobs[104].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[105].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[106].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[107].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[108].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[111].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[112].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[114].mobchildren = { [xi.job.THF] = 2 } -- 2 THF
mobs[115].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[116].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 DRK 1 BRD
mobs[117].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 BLM 1 RDM
mobs[118].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 BLM 1 RDM
mobs[119].mobchildren = { [xi.job.BST] = 1, [xi.job.RNG] = 1, [xi.job.SAM] = 1 } -- 1 BST 1 RNG 1 SAM
mobs[120].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.NIN] = 1 } -- 1 MNK 1 BLM 1 NIN
mobs[121].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[122].mobchildren = { [xi.job.BLM] = 1, [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 BLM 1 BST 1 SAM
mobs[123].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.BLM] = 1 } -- 1 WAR 1 MNK 1 BLM
mobs[126].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 PLD 1 DRK 1 NIN
mobs[127].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.BST] = 1, [xi.job.RNG] = 1 } -- 1 RDM 1 THF 1 BST 1 RNG
mobs[128].mobchildren = { [xi.job.MNK] = 1, [xi.job.SMN] = 1 } -- 1 MNK 1 SMN
mobs[129].mobchildren = { [xi.job.MNK] = 1, [xi.job.NIN] = 1 } -- 1 MNK 1 NIN
mobs[130].mobchildren = { [xi.job.MNK] = 1, [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 MNK 1 BST 1 SAM
mobs[131].mobchildren = { [xi.job.WHM] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 WHM 1 BRD 1 RNG
mobs[132].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.SMN] = 1 } -- 1 BLM 1 RDM 1 SMN
mobs[133].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1, [xi.job.DRG] = 1 } -- 1 BLM 1 RDM 1 DRK 1 RNG 1 DRG
mobs[134].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 MNK 1 DRK 1 BRD
mobs[135].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRG] = 1 } -- 1 PLD 1 DRG
mobs[136].mobchildren = { [xi.job.WHM] = 1, [xi.job.THF] = 1 } -- 1 WHM 1 THF
mobs[137].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1, [xi.job.NIN] = 1 } -- 1 WAR 1 THF 1 NIN
mobs[138].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 BLM 1 SAM
mobs[139].mobchildren = { [xi.job.THF] = 1, [xi.job.RNG] = 1, [xi.job.DRG] = 1 } -- 1 THF 1 RNG 1 DRG
mobs[140].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 WAR 1 THF 1 BRD 1 NIN
mobs[141].mobchildren = { [xi.job.WHM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 PLD 1 SAM 1 NIN
mobs[142].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.DRG] = 1 } -- 1 RDM 1 DRK 1 BST 1 DRG
mobs[143].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 BST 1 BRD 1 NIN
mobs[144].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1, [xi.job.RNG] = 1, [xi.job.SAM] = 1, [xi.job.SMN] = 1 } -- 1 WAR 1 THF 1 RNG 1 SAM 1 SMN
mobs[145].mobchildren = { [xi.job.MNK] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 MNK 1 PLD 1 DRK 1 BRD
mobs[146].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 1, [xi.job.SMN] = 1 } -- 1 WHM 1 BST 1 SMN
mobs[147].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 WAR 1 BLM 1 SAM 1 DRG
mobs[148].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 RDM 1 PLD 1 DRK 1 BRD 1 NIN
mobs[149].mobchildren = { [xi.job.THF] = 1, [xi.job.BST] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 BST 1 SAM 1 DRG 1 SMN
mobs[150].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 MNK 1 BLM 1 PLD 1 RNG

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[21].nmchildren = { true, 22, 23 }
mobs[24].nmchildren = { false, 25 }
mobs[32].nmchildren = { true, 33 }
mobs[35].nmchildren = { true, 36, 37 }
mobs[41].nmchildren = { false, 42 }
mobs[46].nmchildren = { true, 47, 48, 49, 50, 155 }
mobs[58].nmchildren = { true, 59, 60, 61 }
mobs[97].nmchildren = { false, 98 }
mobs[98].nmchildren = { false, 99 }
mobs[99].nmchildren = { false, 100 }
mobs[93].nmchildren = { true, 153 }
mobs[89].nmchildren = { false, 90 }
mobs[91].nmchildren = { false, 92 }
mobs[66].nmchildren = { true, 67, 68 }
mobs[84].nmchildren = { true, 85, 86, 87, 156 }
mobs[80].nmchildren = { false, 81, 82, 83 }
mobs[69].nmchildren = { true, 70, 71 }
mobs[72].nmchildren = { false, 73 }
mobs[74].nmchildren = { false, 75, 76 }
mobs[77].nmchildren = { false, 78, 79 }
mobs[116].nmchildren = { true, 117, 118, 154 }
mobs[117].nmchildren = { false, 119, 120 }
mobs[121].nmchildren = { true, 122, 123, 124, 125, 151, 152 }

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = -187.6390, y = -1.0460, z = -118.9630, rot = 125 }
mobs[2].pos = { x = -161.1450, y = -1.2270, z = -122.1540, rot = 165 }
mobs[3].pos = { x = -158.5350, y = -1.1620, z = -118.3470, rot = 165 }
mobs[4].pos = { x = -144.6180, y = -1.9820, z = -139.3460, rot = 85 }
mobs[5].pos = { x = -136.7940, y = -2.8230, z = -138.8890, rot = 65 }
mobs[6].pos = { x = -126.1720, y = -2.5900, z = -142.0820, rot = 65 }
mobs[7].pos = { x = -108.6050, y = -2.5490, z = -134.6110, rot = 85 }
mobs[8].pos = { x = -79.6510, y = -2.5000, z = -118.3500, rot = 115 }
mobs[9].pos = { x = -52.5040, y = -2.5000, z = -111.1440, rot = 165 }
mobs[10].pos = { x = -38.0320, y = -2.5000, z = -85.5840, rot = 85 }
mobs[11].pos = { x = -23.9060, y = -2.5000, z = -61.2610, rot = 85 }
mobs[12].pos = { x = -3.2740, y = -4.0190, z = -64.2480, rot = 200 }
mobs[13].pos = { x = 0.3700, y = -5.9440, z = -37.4630, rot = 65 }
mobs[14].pos = { x = -0.4610, y = -6.6740, z = -31.3500, rot = 65 }
mobs[15].pos = { x = 3.8240, y = -6.9940, z = -31.3500, rot = 65 }
mobs[16].pos = { x = 21.2050, y = -2.8120, z = -50.7420, rot = 65 } -- AH W
mobs[17].pos = { x = 36.2750, y = -2.5000, z = -58.5870, rot = 65 } -- AH Front #2
mobs[18].pos = { x = 44.1250, y = -2.5000, z = -59.2440, rot = 65 } -- AH Front #3
mobs[19].pos = { x = 52.3230, y = -2.5000, z = -58.5870, rot = 65 } -- AH Front #4
mobs[20].pos = { x = 40.2070, y = -1.4530, z = -78.5100, rot = 185 } -- AH Front #1
mobs[21].pos = { x = 83.9630, y = -2.5000, z = -96.0330, rot = 175 }
mobs[22].pos = { x = 69.7750, y = -2.5000, z = -79.6690, rot = 35 }
mobs[23].pos = { x = 69.7830, y = -2.5000, z = -83.3910, rot = 35 }
mobs[24].pos = { x = 90.6520, y = -2.7270, z = -148.5510, rot = 185 }
mobs[25].pos = { x = 65.1600, y = -2.5000, z = -64.5180, rot = 65 }
mobs[26].pos = { x = 65.1850, y = -7.5000, z = -57.7680, rot = 195 }
mobs[27].pos = { x = 42.3780, y = -7.5000, z = -51.5840, rot = 195 }
mobs[28].pos = { x = 30.4510, y = -6.5720, z = -39.1080, rot = 65 }
mobs[29].pos = { x = -8.8010, y = -9.0330, z = -17.1020, rot = 195 }
mobs[30].pos = { x = 9.8950, y = -9.3130, z = -14.1380, rot = 195 }
mobs[31].pos = { x = 27.6520, y = -10.0000, z = 8.7390, rot = 105 }
mobs[32].pos = { x = 46.4220, y = -9.8350, z = 28.7520, rot = 5 }
mobs[33].pos = { x = 32.7640, y = -10.0000, z = 11.7530, rot = 105 }
mobs[34].pos = { x = 49.9300, y = -9.9420, z = 41.4500, rot = 80 }
mobs[35].pos = { x = 64.3340, y = -9.8740, z = 26.4540, rot = 155 }
mobs[36].pos = { x = 49.9450, y = -10.0000, z = 19.5380, rot = 105 }
mobs[37].pos = { x = 46.4860, y = -9.8570, z = 22.6790, rot = 105 }
mobs[38].pos = { x = 67.3210, y = -9.4810, z = 40.6990, rot = 105 }
mobs[39].pos = { x = 64.8030, y = -8.6150, z = 47.1090, rot = 105 }
mobs[40].pos = { x = 85.3360, y = -5.0040, z = 53.5030, rot = 135 }
mobs[41].pos = { x = 86.9740, y = -2.5000, z = 85.4540, rot = 135 }
mobs[42].pos = { x = 79.1120, y = -2.5000, z = 98.8060, rot = 35 }
mobs[43].pos = { x = 101.0480, y = -2.5000, z = 109.9660, rot = 135 }
mobs[44].pos = { x = 102.2600, y = -2.5600, z = 120.6800, rot = 135 }
mobs[45].pos = { x = 110.4630, y = -8.0000, z = 113.8240, rot = 135 }
mobs[46].pos = { x = 120.0410, y = -11.5000, z = 151.8490, rot = 135 }
mobs[47].pos = { x = 120.0410, y = -11.5000, z = 148.9190, rot = 135 }
mobs[48].pos = { x = 120.0410, y = -11.5000, z = 155.0170, rot = 135 }
mobs[49].pos = { x = 118.0040, y = -11.5000, z = 151.8490, rot = 135 }
mobs[50].pos = { x = 99.2460, y = -8.7840, z = 152.1720, rot = 135 }
mobs[51].pos = { x = 102.7100, y = -10.3860, z = 137.2610, rot = 250 }
mobs[52].pos = { x = 106.4730, y = -10.2700, z = 173.3110, rot = 155 }
mobs[53].pos = { x = 92.3220, y = -7.6080, z = 188.5560, rot = 95 }
mobs[54].pos = { x = 99.4660, y = -7.5000, z = 187.1880, rot = 95 }
mobs[55].pos = { x = 91.1050, y = -7.5000, z = 195.4590, rot = 95 }
mobs[56].pos = { x = 95.5170, y = -8.0260, z = 191.5360, rot = 95 }
mobs[57].pos = { x = 117.7290, y = -12.5000, z = 201.2860, rot = 95 }
mobs[58].pos = { x = -87.9220, y = -2.5000, z = 40.7380, rot = 30 }
mobs[59].pos = { x = -74.1190, y = -2.5000, z = 26.4790, rot = 155 }
mobs[60].pos = { x = -72.6090, y = -2.5000, z = 25.1070, rot = 155 }
mobs[61].pos = { x = -70.3490, y = -2.5000, z = 23.2160, rot = 155 }
mobs[62].pos = { x = -88.2250, y = -5.0000, z = 83.3770, rot = 65 }
mobs[63].pos = { x = -88.2250, y = -6.0710, z = 86.6740, rot = 65 }
mobs[64].pos = { x = -88.2250, y = -6.9440, z = 89.5270, rot = 65 }
mobs[65].pos = { x = -87.1440, y = -9.4640, z = 104.5590, rot = 65 } -- Island leading to HT
mobs[66].pos = { x = -70.6640, y = -5.3420, z = 121.3210, rot = 160 }
mobs[67].pos = { x = -70.7980, y = -5.0000, z = 125.0800, rot = 160 }
mobs[68].pos = { x = -72.9330, y = -5.3470, z = 122.2580, rot = 160 }
mobs[69].pos = { x = -99.3570, y = -5.5000, z = 130.7570, rot = 240 }
mobs[70].pos = { x = -97.4980, y = -5.5000, z = 127.1940, rot = 5 }
mobs[71].pos = { x = -100.1140, y = 5.2500, z = 134.8220, rot = 225 }
mobs[72].pos = { x = -98.0510, y = -5.2500, z = 124.3620, rot = 15 }
mobs[73].pos = { x = -85.8030, y = -5.8050, z = 121.7160, rot = 65 }
mobs[74].pos = { x = -102.7510, y = -5.2500, z = 136.6490, rot = 210 }
mobs[75].pos = { x = -98.6920, y = -5.3200, z = 148.5360, rot = 75 }
mobs[76].pos = { x = -95.6980, y = -5.4500, z = 148.5360, rot = 75 }
mobs[77].pos = { x = -104.6340, y = -10.5000, z = 128.7820, rot = 240 }
mobs[78].pos = { x = -111.5920, y = -10.0000, z = 132.7340, rot = 240 }
mobs[79].pos = { x = -107.4300, y = -10.0000, z = 121.4990, rot = 240 }
mobs[80].pos = { x = -182.0000, y = -2.4120, z = 148.0500, rot = 0 }
mobs[81].pos = { x = -153.0000, y = -2.5000, z = 148.0500, rot = 125 }
mobs[82].pos = { x = -150.0000, y = -2.5000, z = 148.0500, rot = 125 }
mobs[83].pos = { x = -147.0000, y = -2.5000, z = 148.0500, rot = 125 }
mobs[84].pos = { x = -97.1590, y = -18.0000, z = 194.1190, rot = 35 }
mobs[85].pos = { x = -93.8640, y = -13.0000, z = 190.1840, rot = 35 }
mobs[86].pos = { x = -88.0220, y = -12.4610, z = 202.4480, rot = 35 }
mobs[87].pos = { x = -101.3040, y = -17.5000, z = 198.9420, rot = 35 }
mobs[88].pos = { x = -115.1460, y = -17.5000, z = 201.8030, rot = 35 }
mobs[89].pos = { x = -56.7620, y = -12.5000, z = 228.7040, rot = 75 }
mobs[90].pos = { x = -38.6360, y = -12.5000, z = 242.7950, rot = 235 }
mobs[91].pos = { x = -53.4020, y = -12.5000, z = 233.3960, rot = 235 }
mobs[92].pos = { x = -60.2550, y = -12.5000, z = 212.9120, rot = 75 }
mobs[93].pos = { x = -25.8730, y = -13.0000, z = 259.2460, rot = 65 }
mobs[94].pos = { x = -29.9470, y = -17.5000, z = 270.2300, rot = 65 } -- HotH Roof #1
mobs[95].pos = { x = -21.9440, y = -17.5000, z = 270.2300, rot = 65 }
mobs[96].pos = { x = -18.3660, y = -17.5000, z = 279.3170, rot = 65 }
mobs[97].pos = { x = 14.3900, y = -7.6540, z = 257.3190, rot = 85 }
mobs[98].pos = { x = 11.8310, y = -7.3570, z = 264.3410, rot = 15 }
mobs[99].pos = { x = -3.5330, y = -9.8720, z = 273.6940, rot = 30 }
mobs[100].pos = { x = -3.8290, y = -10.0210, z = 282.6540, rot = 65 }
mobs[101].pos = { x = 7.6910, y = -2.5000, z = 279.7000, rot = 225 }
mobs[102].pos = { x = 22.1710, y = 0.2640, z = 241.1860, rot = 90 }
mobs[103].pos = { x = 26.7160, y = 0.7960, z = 237.5780, rot = 90 }
mobs[104].pos = { x = 47.8930, y = -7.5000, z = 223.3490, rot = 155 } -- Bridge to HotH #3
mobs[105].pos = { x = 44.8040, y = -7.5000, z = 219.5570, rot = 155 } -- Bridge to HotH #2
mobs[106].pos = { x = 51.5600, y = -7.5000, z = 220.1410, rot = 155 } -- Bridge to HotH #1
mobs[107].pos = { x = 48.4720, y = -7.5000, z = 216.4920, rot = 155 } -- Bridge to HotH #4
mobs[108].pos = { x = -51.2320, y = -13.5000, z = 127.0800, rot = 115 } -- Bridge to HT #2
mobs[109].pos = { x = -49.6900, y = -13.5000, z = 124.4140, rot = 115 } -- Bridge to HT #1
mobs[110].pos = { x = -43.2320, y = -14.9310, z = 132.0800, rot = 115 } -- Bridge to HT #3
mobs[111].pos = { x = -41.6900, y = -14.9310, z = 129.4140, rot = 115 } -- Bridge to HT #4
mobs[112].pos = { x = -36.2320, y = -16.0000, z = 136.0800, rot = 115 } -- Bridge to HT #6
mobs[113].pos = { x = -34.6900, y = -16.0000, z = 133.4140, rot = 115 } -- Bridge to HT #5
mobs[114].pos = { x = -28.4830, y = -16.0000, z = 188.2620, rot = 35 }
mobs[115].pos = { x = 28.4830, y = -16.0000, z = 188.2620, rot = 95 }
mobs[116].pos = { x = -0.0700, y = -16.7500, z = 129.9800, rot = 65 }
mobs[117].pos = { x = -2.9080, y = -16.0000, z = 123.8610, rot = 65 }
mobs[118].pos = { x = 4.1490, y = -16.0000, z = 124.2500, rot = 65 }
mobs[119].pos = { x = -79.8000, y = -9.7040, z = 113.3600, rot = 105 }
mobs[120].pos = { x = -76.3920, y = -9.7760, z = 107.6960, rot = 105 }
mobs[121].pos = { x = 43.6181, y = -2.2996, z = -65.4926, rot = 64 }
mobs[122].pos = { x = 40.3150, y = -2.5000, z = -61.4420, rot = 65 }
mobs[123].pos = { x = 47.6500, y = -2.5000, z = -61.4420, rot = 65 }
mobs[124].pos = { x = 40.3150, y = -1.5500, z = -68.4420, rot = 65 }
mobs[125].pos = { x = 47.6500, y = -1.5500, z = -68.4420, rot = 65 }
mobs[126].pos = { x = 2.0926, y = -9.6610, z = 4.3648, rot = 52 }
mobs[127].pos = { x = -8.2887, y = -8.1750, z = 0.9049, rot = 61 }
mobs[128].pos = { x = 15.3171, y = -9.7436, z = -20.1585, rot = 199 }
mobs[129].pos = { x = -15.3458, y = -9.4624, z = -20.5847, rot = 200 }
mobs[130].pos = { x = -24.7360, y = -2.5000, z = -62.6215, rot = 84 }
mobs[131].pos = { x = -42.5879, y = -2.5000, z = -93.5101, rot = 82 }
mobs[132].pos = { x = -52.6701, y = -2.5000, z = -110.9600, rot = 114 }
mobs[133].pos = { x = -97.5736, y = -2.5000, z = -123.1625, rot = 116 }
mobs[134].pos = { x = -203.1892, y = 0.0000, z = -102.3044, rot = 139 }
mobs[135].pos = { x = -203.7979, y = -0.2568, z = -139.7601, rot = 127 }
mobs[136].pos = { x = -224.4653, y = -0.2500, z = -98.4432, rot = 3 }
mobs[137].pos = { x = -224.6530, y = -0.2500, z = -142.7501, rot = 2 }
mobs[138].pos = { x = 83.4762, y = -2.5000, z = 78.5478, rot = 81 }
mobs[139].pos = { x = 79.1087, y = -2.5000, z = 79.9801, rot = 78 }
mobs[140].pos = { x = 88.7325, y = -5.2644, z = 147.4140, rot = 141 }
mobs[141].pos = { x = 88.6722, y = -5.4650, z = 153.6191, rot = 129 }
mobs[142].pos = { x = 88.1672, y = -7.5000, z = 200.0317, rot = 68 }
mobs[143].pos = { x = -18.3020, y = -12.4241, z = 242.4440, rot = 165 }
mobs[144].pos = { x = -88.6582, y = -12.4611, z = 204.1679, rot = 34 }
mobs[145].pos = { x = -67.7383, y = -11.6475, z = 182.5894, rot = 198 }
mobs[146].pos = { x = -73.0340, y = -8.9370, z = 170.9037, rot = 218 }
mobs[147].pos = { x = -88.9700, y = -6.1359, z = 162.0545, rot = 244 }
mobs[148].pos = { x = -151.7798, y = -2.5000, z = 148.1190, rot = 1 }
mobs[149].pos = { x = -0.2031, y = -16.0000, z = 195.0251, rot = 63 }
mobs[150].pos = { x = 35.0899, y = -16.0000, z = 160.1173, rot = 65 }

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

mobs[8].patrolPath = { { x = -96, y = -2, z = -123 }, { x = -60, y = -2, z = -113 } } -- Entrance Bridge W
mobs[10].patrolPath = { { x = -48, y = -2, z = -104 }, { x = -29, y = -2, z = -70 } } -- Entrance Bridge E
mobs[13].patrolPath = { { x = 0, y = -9, z = -20 }, { x = -0, y = -4, z = -51 } } -- AH W Ramp
mobs[17].patrolPath = { { x = 38, y = -2, z = -60 }, { x = 38, y = -2, z = -67 } } -- AH #1
mobs[18].patrolPath = { { x = 46, y = -1, z = -70 }, { x = 46, y = -2, z = -59 } } -- AH #2
mobs[19].patrolPath = { { x = 54, y = -2, z = -60 }, { x = 54, y = -2, z = -67 } } -- AH #3
mobs[52].patrolPath = { { x = 99, y = -8, z = 179 }, { x = 102, y = -8, z = 176 }, { x = 108, y = -11, z = 171 } } -- E House Ramp
mobs[73].patrolPath = { { x = -84, y = -9, z = 111 }, { x = -85, y = -6, z = 121 } } -- Island to HT
mobs[62].patrolPath = { { x = -88, y = -2, z = 48 }, { x = -88, y = -5, z = 82 } } -- SW Bridge #1
mobs[63].patrolPath = { { x = -88, y = -2, z = 48 }, { x = -88, y = -5, z = 82 } } -- SW Bridge #2
mobs[64].patrolPath = { { x = -88, y = -2, z = 48 }, { x = -88, y = -5, z = 82 } } -- SW Bridge #3
mobs[89].patrolPath = { { x = -57, y = -13, z = 226 }, { x = -61, y = -13, z = 209 } } -- NW Bridge S
mobs[91].patrolPath = { { x = -52, y = -13, z = 234 }, { x = -36, y = -13, z = 244 } } -- NW Bridge N
mobs[107].patrolPath = { { x = 48, y = -8, z = 213 }, { x = 48, y = -8, z = 216 } } -- Bridge to HotH #4
mobs[106].patrolPath = { { x = 54, y = -8, z = 220 }, { x = 51, y = -8, z = 220 } } -- Bridge to HotH #1
mobs[104].patrolPath = { { x = 48, y = -8, z = 226 }, { x = 48, y = -8, z = 223 } } -- Bridge to HotH #3
mobs[105].patrolPath = { { x = 42, y = -8, z = 219 }, { x = 45, y = -8, z = 219 } } -- Bridge to HotH #2

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[6].eyes = xi.dynamis.eye.BLUE
mobs[8].eyes = xi.dynamis.eye.GREEN
mobs[12].eyes = xi.dynamis.eye.BLUE
mobs[17].eyes = xi.dynamis.eye.GREEN
mobs[19].eyes = xi.dynamis.eye.BLUE
mobs[24].eyes = xi.dynamis.eye.BLUE
mobs[25].eyes = xi.dynamis.eye.GREEN
mobs[29].eyes = xi.dynamis.eye.BLUE
mobs[30].eyes = xi.dynamis.eye.GREEN
mobs[32].eyes = xi.dynamis.eye.GREEN
mobs[35].eyes = xi.dynamis.eye.BLUE
mobs[40].eyes = xi.dynamis.eye.GREEN
mobs[42].eyes = xi.dynamis.eye.BLUE
mobs[45].eyes = xi.dynamis.eye.GREEN
mobs[51].eyes = xi.dynamis.eye.BLUE
mobs[56].eyes = xi.dynamis.eye.BLUE
mobs[57].eyes = xi.dynamis.eye.GREEN
mobs[60].eyes = xi.dynamis.eye.GREEN
mobs[72].eyes = xi.dynamis.eye.GREEN
mobs[74].eyes = xi.dynamis.eye.BLUE
mobs[77].eyes = xi.dynamis.eye.GREEN
mobs[80].eyes = xi.dynamis.eye.GREEN
mobs[83].eyes = xi.dynamis.eye.BLUE
mobs[88].eyes = xi.dynamis.eye.BLUE
mobs[94].eyes = xi.dynamis.eye.BLUE
mobs[95].eyes = xi.dynamis.eye.BLUE
mobs[100].eyes = xi.dynamis.eye.BLUE
mobs[110].eyes = xi.dynamis.eye.BLUE
mobs[111].eyes = xi.dynamis.eye.GREEN
mobs[117].eyes = xi.dynamis.eye.BLUE
mobs[118].eyes = xi.dynamis.eye.GREEN
mobs[126].eyes = xi.dynamis.eye.BLUE
mobs[127].eyes = xi.dynamis.eye.GREEN
mobs[131].eyes = xi.dynamis.eye.GREEN
mobs[133].eyes = xi.dynamis.eye.BLUE
mobs[136].eyes = xi.dynamis.eye.BLUE
mobs[137].eyes = xi.dynamis.eye.GREEN
mobs[138].eyes = xi.dynamis.eye.BLUE
mobs[139].eyes = xi.dynamis.eye.GREEN

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 8, 18, 31, 41, 58, 66, 101, 121 }
mobs[8].timeExtension = 20 --Avatar Icon
mobs[18].timeExtension = 20 --Avatar Icon
mobs[31].timeExtension = 10 --Avatar Icon
mobs[41].timeExtension = 20 --Avatar Icon
mobs[58].timeExtension = 20 --Avatar Icon
mobs[66].timeExtension = 20 --Avatar Icon
mobs[101].timeExtension = 10 --Avatar Icon
mobs[121].timeExtension = 30 --Tzee_Xicu_Idol
