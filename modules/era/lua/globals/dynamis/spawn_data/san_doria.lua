-----------------------------------
-- Era Dynamis - Dynamis-San d'Oria spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/san.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/san.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_SAN_DORIA

local mobs = {}
for i = 1, 155 do
    mobs[i] = { id = i }
end

mobs.maxWaves = 6

xi.dynamis.mobList[zoneID] = mobs


----------------------------------------------------------------------------------------------------
--                                  Setup of Parent Spawning                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--               Mob Info               --
-- Note: Primarily used for mobs that   --
-- are NMs or parent mobs.              --
------------------------------------------

mobs[1].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (001-O/S)
mobs[2].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (002-O/S)
mobs[3].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (003-O/S)
mobs[4].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (004-O/S)
mobs[5].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (005-O/S)
mobs[6].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (006-O/W)(MP)
mobs[7].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (007-O/S)(15)
mobs[8].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (008-O/S)
mobs[9].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (009-O/S)(15)
mobs[10].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (010-O/W)(MP)
mobs[11].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (011-O/S)
mobs[12].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (012-O/W)(HP)
mobs[13].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (013-O/S)
mobs[14].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (014-O/W)(MP)
mobs[15].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (015-O/W)(HP)
mobs[16].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (016-O/S)
mobs[17].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (017-O/S)
mobs[18].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (018-O/S)
mobs[19].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (019-O/S)
mobs[20].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (020-O/S)
mobs[21].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (021-O/S)
mobs[22].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (022-O/S)
mobs[23].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (023-O/S)
mobs[24].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (024-O/S)
mobs[25].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (025-O/S)
mobs[26].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (026-O/S)(25)
mobs[27].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (027-O/S)
mobs[28].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (028-O/S)
mobs[29].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (029-O/S)
mobs[30].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (030-O/S)
mobs[31].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (031-O/S)
mobs[32].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (032-O/W)(MP)
mobs[33].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (033-O/S)
mobs[34].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (034-O/W)(HP)
mobs[35].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (035-O/W)(MP)
mobs[36].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (036-O/S)
mobs[37].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (037-O/S)
mobs[38].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (038-O/W)(MP)
mobs[39].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (039-O/S)
mobs[40].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (040-O/S)
mobs[41].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (041-O/S)(30)
mobs[42].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (042-O/S)
mobs[43].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (043-O/S)
mobs[44].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (044-O/W)(HP)
mobs[45].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (045-O/S)
mobs[46].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (046-O/S)
mobs[47].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (047-O/W)(MP)
mobs[48].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (048-O/S)
mobs[49].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (049-O/S)
mobs[50].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (050-O/S)
mobs[51].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (051-O/S)
mobs[52].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (052-O/W)(HP)
mobs[53].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (053-O/S)
mobs[54].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (054-O/S)
mobs[55].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (055-O/S)
mobs[56].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (056-O/S)
mobs[57].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (057-O/S)
mobs[58].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (058-O/S)
mobs[59].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (059-O/W)(HP)
mobs[60].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (060-O/W)(MP)
mobs[61].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (061-O/S)
mobs[62].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (062-O/W)(MP)
mobs[63].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (063-O/S)
mobs[64].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (064-O/S)(25)
mobs[65].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (065-O/S)
mobs[66].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (066-O/S)
mobs[67].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (067-O/S)
mobs[68].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (068-O/S)
mobs[69].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (069-O/S)
mobs[70].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (070-O/W)(MP)
mobs[71].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (071-O/S)
mobs[72].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (072-O/W)(HP)
mobs[73].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (073-O/S)
mobs[74].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (074-O/W)(10)
mobs[75].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (075-O/S)
mobs[76].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (076-O/W)(MP)
mobs[77].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (077-O/S)
mobs[78].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (078-O/W)(HP)
mobs[79].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (079-O/W)(MP)
mobs[80].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (080-O/S)
mobs[81].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (081-O/W)(HP)
mobs[82].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (082-O/S)
mobs[83].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (083-O/W)(HP)
mobs[84].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (084-O/W)(MP)
mobs[85].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (085-O/W)(HP)
mobs[86].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (086-O/W)(MP)
mobs[87].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (087-O/S)
mobs[88].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (088-O/S)
mobs[89].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (089-O/S)
mobs[90].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (090-O/S)
mobs[91].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (091-O/W)(HP)
mobs[92].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (092-O/W)(MP)
mobs[93].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (093-O/S)
mobs[94].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (094-O/S)
mobs[95].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (095-O/S)
mobs[96].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (096-O/S)
mobs[97].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (097-O/W)(HP)
mobs[98].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (098-O/S)
mobs[99].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (099-O/S)
mobs[100].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (100-O/S)
mobs[101].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (101-O/S)
mobs[102].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (102-O/S)
mobs[103].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (103-O/W)(HP)
mobs[104].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (104-O/W)(HP)
mobs[105].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (105-O/S)
mobs[106].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (106-O/S)
mobs[107].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (107-O/W)(HP)
mobs[108].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (108-O/W)(MP)
mobs[110].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (110-O/W)(MP)
mobs[111].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (111-O/W)(MP)
mobs[112].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (112-O/S)
mobs[113].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (113-O/W)(HP)
mobs[114].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (114-O/S)
mobs[115].info = { mobType = 'Statue', name = 'Warchief Tombstone' } -- (115-O/W)(HP)
mobs[116].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (116-O/S)
mobs[117].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (117-O/S)
mobs[118].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (118-O/S)
mobs[119].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (119-O/S)
mobs[120].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (120-O/S)
mobs[121].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (121-O/S)
mobs[122].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (122-O/S)
mobs[123].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (123-O/S)
mobs[124].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (124-O/S)
mobs[125].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (125-O/S)
mobs[126].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (126-O/S)
mobs[127].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (127-O/S)
mobs[128].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (128-O/S)
mobs[129].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (129-O/S)
mobs[130].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (130-O/S)
mobs[131].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (131-O/S)
mobs[132].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (132-O/S)
mobs[133].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (133-O/S)
mobs[134].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (134-O/S)
mobs[135].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (135-O/S)
mobs[136].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (136-O/S)
mobs[137].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (137-O/S)
mobs[138].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (138-O/S)
mobs[139].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (139-O/S)
mobs[140].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (140-O/S)
mobs[141].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (141-O/S)
mobs[142].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (142-O/S)
mobs[143].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (143-O/S)
mobs[144].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (144-O/S)
mobs[145].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (145-O/S)
mobs[146].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (146-O/S)
mobs[147].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (147-O/S)
mobs[148].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (148-O/S)
mobs[149].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (149-O/S)
mobs[150].info = { mobType = 'Statue', name = 'Serjeant Tombstone' } -- (150-O/S)

-- NM's and Megaboss
mobs[109].info = { mobType = 'NM', name = "Overlord's Tombstone", deathVar = 'MegaBoss_Killed' } -- ( 109 ) Overlord's Tombstone
mobs[151].info = { mobType = 'NM', name = 'Wyrmgnasher Bjakdek', family = 'Orc', job = 'DRG', deathVar = 'Wyrmgnasher_Bjakdek_Killed' } -- DRG NM
mobs[152].info = { mobType = 'NM', name = 'Reapertongue Gadgquok', family = 'Orc', job = 'SMN', deathVar = 'Reapertongue_Gadgquok_Killed' } -- SMN NM
mobs[153].info = { mobType = 'NM', name = 'Voidstreaker Butchnotch', family = 'Orc', job = 'NIN', deathVar = 'Voidstreaker_Butchnotch_Killed' } -- NIN NM
mobs[154].info = { mobType = 'NM', name = 'Battlechoir Gitchfotch', family = 'Orc', job = 'BRD' } -- BRD NM
mobs[155].info = { mobType = 'NM', name = 'Soulsender Fugbrag', family = 'Orc', job = 'BRD' } -- BRD NM

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    { }, -- Do not touch this is wave 1
    { 'Voidstreaker_Butchnotch_Killed' },
    { 'MegaBoss_Killed' },
    { 'Wyrmgnasher_Bjakdek_Killed', 'Reapertongue_Gadgquok_Killed' },
    { 'Wyrmgnasher_Bjakdek_Killed' },
    { 'Reapertongue_Gadgquok_Killed' }
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

-- Wave 1 Spawns on loading the zone

mobs[1].wave =
{
    1  ,    -- (001-O/S)  Serjeant Tombstone
    2  ,    -- (002-O/S)  Serjeant Tombstone
    3  ,    -- (003-O/S)  Serjeant Tombstone
    4  ,    -- (004-O/S)  Serjeant Tombstone
    5  ,    -- (005-O/S)  Serjeant Tombstone
    6  ,    -- (006-O/W)  Serjeant Tombstone
    7  ,    -- (007-O/S)  Serjeant Tombstone
    8  ,    -- (008-O/S)  Serjeant Tombstone
    9  ,    -- (009-O/S)  Serjeant Tombstone
    10 ,    -- (010-O/W)  Serjeant Tombstone
    11 ,    -- (011-O/S)  Serjeant Tombstone
    12 ,    -- (012-O/W)  Serjeant Tombstone
    13 ,    -- (013-O/S)  Serjeant Tombstone
    14 ,    -- (014-O/W)  Serjeant Tombstone
    15 ,    -- (015-O/W)  Serjeant Tombstone
    16 ,    -- (016-O/S)  Serjeant Tombstone
    17 ,    -- (017-O/S)  Serjeant Tombstone
    18 ,    -- (018-O/S)  Serjeant Tombstone
    20 ,    -- (020-O/S)  Serjeant Tombstone
    22 ,    -- (022-O/S)  Serjeant Tombstone
    23 ,    -- (023-O/S)  Serjeant Tombstone
    24 ,    -- (024-O/S)  Serjeant Tombstone
    25 ,    -- (025-O/S)  Serjeant Tombstone
    26 ,    -- (026-O/S)  Serjeant Tombstone
    27 ,    -- (027-O/S)  Serjeant Tombstone
    28 ,    -- (028-O/S)  Serjeant Tombstone
    29 ,    -- (029-O/S)  Serjeant Tombstone
    30 ,    -- (030-O/S)  Serjeant Tombstone
    31 ,    -- (031-O/S)  Serjeant Tombstone
    32 ,    -- (032-O/W)  Serjeant Tombstone
    33 ,    -- (033-O/S)  Serjeant Tombstone
    34 ,    -- (034-O/W)  Serjeant Tombstone
    35 ,    -- (035-O/W)  Serjeant Tombstone
    37 ,    -- (037-O/S)  Serjeant Tombstone
    38 ,    -- (038-O/W)  Serjeant Tombstone
    39 ,    -- (039-O/S)  Serjeant Tombstone
    40 ,    -- (040-O/S)  Serjeant Tombstone
    41 ,    -- (041-O/S)  Serjeant Tombstone
    42 ,    -- (042-O/S)  Serjeant Tombstone
    43 ,    -- (043-O/S)  Serjeant Tombstone
    44 ,    -- (044-O/W)  Serjeant Tombstone
    45 ,    -- (045-O/S)  Serjeant Tombstone
    46 ,    -- (046-O/S)  Serjeant Tombstone
    47 ,    -- (047-O/W)  Serjeant Tombstone
    48 ,    -- (048-O/S)  Serjeant Tombstone
    49 ,    -- (049-O/S)  Serjeant Tombstone
    50 ,    -- (050-O/S)  Serjeant Tombstone
    51 ,    -- (051-O/S)  Serjeant Tombstone
    52 ,    -- (052-O/W)  Serjeant Tombstone
    53 ,    -- (053-O/S)  Serjeant Tombstone
    54 ,    -- (054-O/S)  Serjeant Tombstone
    55 ,    -- (055-O/S)  Serjeant Tombstone
    56 ,    -- (056-O/S)  Serjeant Tombstone
    57 ,    -- (057-O/S)  Serjeant Tombstone
    58 ,    -- (058-O/S)  Serjeant Tombstone
    59 ,    -- (059-O/W)  Serjeant Tombstone
    60 ,    -- (060-O/W)  Serjeant Tombstone
    62 ,    -- (062-O/W)  Serjeant Tombstone
    63 ,    -- (063-O/S)  Serjeant Tombstone
    64 ,    -- (064-O/S)  Serjeant Tombstone
    65 ,    -- (065-O/S)  Serjeant Tombstone
    66 ,    -- (066-O/S)  Serjeant Tombstone
    67 ,    -- (067-O/S)  Serjeant Tombstone
    68 ,    -- (068-O/S)  Serjeant Tombstone
    69 ,    -- (069-O/S)  Serjeant Tombstone
    70 ,    -- (070-O/W)  Serjeant Tombstone
    71 ,    -- (071-O/S)  Serjeant Tombstone
    72 ,    -- (072-O/W)  Serjeant Tombstone
    73 ,    -- (073-O/S)  Serjeant Tombstone
    74 ,    -- (074-O/W)  Serjeant Tombstone
    75 ,    -- (075-O/S)  Serjeant Tombstone
    76 ,    -- (076-O/W)  Serjeant Tombstone
    77 ,    -- (077-O/S)  Serjeant Tombstone
    78 ,    -- (078-O/W)  Serjeant Tombstone
    79 ,    -- (079-O/W)  Serjeant Tombstone
    80 ,    -- (080-O/S)  Serjeant Tombstone
    81 ,    -- (081-O/W)  Serjeant Tombstone
    82 ,    -- (082-O/S)  Serjeant Tombstone
    83 ,    -- (083-O/W)  Serjeant Tombstone
    84 ,    -- (084-O/W)  Serjeant Tombstone
    85 ,    -- (085-O/W)  Serjeant Tombstone
    86 ,    -- (086-O/W)  Serjeant Tombstone
    87 ,    -- (087-O/S)  Serjeant Tombstone
    88 ,    -- (088-O/S)  Serjeant Tombstone
    89 ,    -- (089-O/S)  Serjeant Tombstone
    90 ,    -- (090-O/S)  Serjeant Tombstone
    91 ,    -- (091-O/W)  Serjeant Tombstone
    92 ,    -- (092-O/W)  Serjeant Tombstone
    93 ,    -- (093-O/S)  Serjeant Tombstone
    96 ,    -- (096-O/S)  Serjeant Tombstone
    97 ,    -- (097-O/W)  Serjeant Tombstone
    98 ,    -- (098-O/S)  Serjeant Tombstone
    99 ,    -- (099-O/S)  Serjeant Tombstone
    102,    -- (102-O/S)  Serjeant Tombstone
    103,    -- (103-O/W)  Serjeant Tombstone
    104,    -- (104-O/W)  Serjeant Tombstone
    105,    -- (105-O/S)  Serjeant Tombstone
    106,    -- (106-O/S)  Serjeant Tombstone
    107,    -- (107-O/W)  Serjeant Tombstone
    108     -- (108-O/W)  Serjeant Tombstone
}

-- Wave 2 spawns when Voidstreaker Butchnotch (NIN) is defeated
mobs[2].wave =
{
    145,    -- (145-O/S)  Serjeant Tombstone
    146,    -- (146-O/S)  Serjeant Tombstone
    147,    -- (147-O/S)  Serjeant Tombstone
    149     -- (149-O/S)  Serjeant Tombstone
}

-- Wave 3 spawns when Overlord's Tombstone (Mega Boss) is defeated
mobs[3].wave =
{
    116,    -- (116-O/S)  Serjeant Tombstone
    117,    -- (117-O/S)  Serjeant Tombstone
    118,    -- (118-O/S)  Serjeant Tombstone
    119,    -- (119-O/S)  Serjeant Tombstone
    120,    -- (120-O/S)  Serjeant Tombstone
    121,    -- (121-O/S)  Serjeant Tombstone
    122,    -- (122-O/S)  Serjeant Tombstone
    123,    -- (123-O/S)  Serjeant Tombstone
    124,    -- (124-O/S)  Serjeant Tombstone
    125,    -- (125-O/S)  Serjeant Tombstone
    126,    -- (126-O/S)  Serjeant Tombstone
    127,    -- (127-O/S)  Serjeant Tombstone
    128,    -- (128-O/S)  Serjeant Tombstone
    129,    -- (129-O/S)  Serjeant Tombstone
    130,    -- (130-O/S)  Serjeant Tombstone
    131,    -- (131-O/S)  Serjeant Tombstone
    132,    -- (132-O/S)  Serjeant Tombstone
    133,    -- (133-O/S)  Serjeant Tombstone
    134,    -- (134-O/S)  Serjeant Tombstone
    135,    -- (135-O/S)  Serjeant Tombstone
    136,    -- (136-O/S)  Serjeant Tombstone
    137,    -- (137-O/S)  Serjeant Tombstone
    138,    -- (138-O/S)  Serjeant Tombstone
    139,    -- (139-O/S)  Serjeant Tombstone
    140,    -- (140-O/S)  Serjeant Tombstone
}

-- Kill of Wyrmgnasher Bjakdek and Reapertongue Gadgquok to spawn Overlords Tombstone
mobs[4].wave =
{
    109     -- 109-Replica NM (Overlord's Tombstone)
}

-- Two statues spawn near entrance when Wyrmgnasher Bjakdek is killed
mobs[5].wave =
{
    143,    -- (143-O/S)  Serjeant Tombstone
    144     -- (144-O/S)  Serjeant Tombstone
}

-- Two statues spawn near entrance when Reapertongue Gadgquok is killed
mobs[6].wave =
{
    141,    -- (141-O/S)  Serjeant Tombstone
    142     -- (142-O/S)  Serjeant Tombstone
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.WAR] = 2 } -- 2 WAR
mobs[2].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[3].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[4].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[5].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[6].mobchildren = { [xi.job.MNK] = 3 } -- 3 MNK
mobs[8].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD, 1 DRK
mobs[9].mobchildren = { [xi.job.WAR] = 2 } -- 2 WAR
mobs[10].mobchildren = { [xi.job.RDM] = 2 } -- 2 RDM
mobs[11].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[12].mobchildren = { [xi.job.WHM] = 2 } -- 2 WHM
mobs[13].mobchildren = { [xi.job.THF] = 2 } -- 2 THF
mobs[14].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[15].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[17].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 2 } -- 1 MNK, 2 BLM
mobs[19].mobchildren = { [xi.job.BLM] = 2, [xi.job.BST] = 1 } -- 2 BLM, 1 BST
mobs[21].mobchildren = { [xi.job.PLD] = 1, [xi.job.RNG] = 2 } -- 1 PLD, 2 RNG
mobs[22].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[23].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } -- 1 WHM, 1 BLM
mobs[24].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[28].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF, 1 BRD
mobs[29].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF, 1 BRD
mobs[29].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[30].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF, 1 BRD
mobs[30].mobchildren = { [xi.job.WHM] = 2 } -- 2 WHM
mobs[32].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[36].mobchildren = { [xi.job.THF] = 2, [xi.job.BRD] = 1 } -- 2 THF, 1 BRD
mobs[37].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[38].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[39].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[40].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[41].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[42].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[43].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[44].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[45].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[46].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[47].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[48].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[49].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1 } -- 1 WAR, 1 MNK
mobs[50].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[51].mobchildren = { [xi.job.WAR] = 2, [xi.job.PLD] = 1 } -- 2 WAR, 1 PLD
mobs[52].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[53].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1 } -- 1 WAR, 1 MNK
mobs[54].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[55].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[56].mobchildren = { [xi.job.THF] = 2 } -- 2 THF
mobs[57].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[58].mobchildren = { [xi.job.PLD] = 2 } -- 2 PLD
mobs[61].mobchildren = { [xi.job.MNK] = 2, [xi.job.BRD] = 1 } -- 2 MNK, 1 BRD
mobs[66].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[67].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[68].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[69].mobchildren = { [xi.job.RDM] = 2 } -- 2 RDM
mobs[70].mobchildren = { [xi.job.MNK] = 2 } -- 2 MNK
mobs[71].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[73].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[74].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 SAM, 1 NIN
mobs[75].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[76].mobchildren = { [xi.job.WHM] = 2, [xi.job.RNG] = 3 } -- 2 WHM, 3 RNG
mobs[77].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[78].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[79].mobchildren = { [xi.job.WHM] = 2 } -- 2 WHM
mobs[80].mobchildren = { [xi.job.RDM] = 2 } -- 2 RDM
mobs[81].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[82].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[83].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[85].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[87].mobchildren = { [xi.job.BLM] = 2, [xi.job.RDM] = 2 } -- 2 BLM, 2 RDM
mobs[88].mobchildren = { [xi.job.PLD] = 2 } -- 2 PLD
mobs[89].mobchildren = { [xi.job.RNG] = 3 } -- 3 RNG
mobs[90].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[91].mobchildren = { [xi.job.WAR] = 2, [xi.job.RDM] = 1 } -- 2 WAR, 1 RDM
mobs[92].mobchildren = { [xi.job.BRD] = 2 } -- 2 BRD
mobs[94].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[95].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[96].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[97].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[98].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[100].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[101].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[102].mobchildren = { [xi.job.WAR] = 2, [xi.job.DRG] = 2 } -- 2 WAR, 2 DRG
mobs[104].mobchildren = { [xi.job.PLD] = 2 } -- 2 PLD
mobs[105].mobchildren = { [xi.job.RDM] = 2, [xi.job.DRK] = 2 } -- 2 RDM, 2 DRK
mobs[106].mobchildren = { [xi.job.WAR] = 2, [xi.job.PLD] = 2 } -- 2 WAR, 2 PLD
mobs[107].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[108].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[109].mobchildren = { [xi.job.WAR] = 2 } -- 2 WAR
mobs[110].mobchildren = { [xi.job.SMN] = 3 } -- 3 SMN
mobs[111].mobchildren = { [xi.job.DRG] = 3 } -- 3 DRG
mobs[116].mobchildren = { [xi.job.BLM] = 2, [xi.job.DRK] = 3 } -- 2 BLM, 3 DRK
mobs[117].mobchildren = { [xi.job.BST] = 3 } -- 3 BST
mobs[118].mobchildren = { [xi.job.RDM] = 2, [xi.job.BRD] = 2, [xi.job.SAM] = 2 } -- 2 RDM, 2 BRD, 2 SAM
mobs[119].mobchildren = { [xi.job.THF] = 2, [xi.job.PLD] = 3 } -- 2 THF, 3 PLD
mobs[120].mobchildren = { [xi.job.DRG] = 3 } -- 3 DRG
mobs[121].mobchildren = { [xi.job.WAR] = 2, [xi.job.WHM] = 2 } -- 2 WAR, 2 WHM
mobs[122].mobchildren = { [xi.job.MNK] = 3, [xi.job.WHM] = 2 } -- 3 MNK, 2 WHM
mobs[123].mobchildren = { [xi.job.BRD] = 2, [xi.job.SMN] = 2 } -- 2 BRD, 2 SMN
mobs[124].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[125].mobchildren = { [xi.job.DRG] = 3 } -- 3 DRG
mobs[126].mobchildren = { [xi.job.NIN] = 4 } -- 4 NIN
mobs[127].mobchildren = { [xi.job.SAM] = 3 } -- 3 SAM
mobs[128].mobchildren = { [xi.job.RNG] = 3 } -- 3 RNG
mobs[129].mobchildren = { [xi.job.BRD] = 3 } -- 3 BRD
mobs[130].mobchildren = { [xi.job.THF] = 3, [xi.job.BRD] = 2 } -- 3 THF, 2 BRD
mobs[131].mobchildren = { [xi.job.BLM] = 2, [xi.job.RDM] = 2, [xi.job.SAM] = 2 } -- 2 BLM, 2 RDM, 2 SAM
mobs[132].mobchildren = { [xi.job.THF] = 3 } -- 3 THF
mobs[133].mobchildren = { [xi.job.BST] = 3 } -- 3 BST
mobs[134].mobchildren = { [xi.job.DRK] = 3 } -- 3 DRK
mobs[135].mobchildren = { [xi.job.PLD] = 3 } -- 3 PLD
mobs[136].mobchildren = { [xi.job.RDM] = 3 } -- 3 RDM
mobs[137].mobchildren = { [xi.job.WHM] = 3 } -- 3 WHM
mobs[138].mobchildren = { [xi.job.MNK] = 3 } -- 3 MNK
mobs[139].mobchildren = { [xi.job.WAR] = 3 } -- 3 WAR
mobs[140].mobchildren = { [xi.job.BLM] = 3 } -- 3 BLM
mobs[141].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[142].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[143].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[144].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[145].mobchildren = { [xi.job.DRK] = 3 } -- 3 DRK
mobs[146].mobchildren = { [xi.job.PLD] = 3 } -- 3 PLD
mobs[147].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[149].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

--Specific Statues
mobs[18].nmchildren = { false, 19 } -- Squire Square N, Spawns another statue
mobs[20].nmchildren = { false, 21 } -- Squire Square E, Spawns another statue
mobs[99].nmchildren = { true, 100, 101 } -- Courtyard/WD Alley connector +2 stats
mobs[147].nmchildren = { false, 148 } -- West Tent spawns one middle statue
mobs[149].nmchildren = { false, 150 } -- East Tent spawns one middle statue

-- NMs
mobs[32].nmchildren = { true, 151 } -- Eastgate NM Wyrmgnasher Bjakdek (DRG)
mobs[151].nmchildren = { false, 36 } -- Spawns when NM Wyrmgnasher Bjakdek (DRG) is aggrod
mobs[70].nmchildren = { true, 152 } -- Westgate NM Reapertongue Gadguok (SMN)
mobs[152].nmchildren = { false, 61 } -- Spawns when NM Reapertongue Gadguok (SMN) is aggrod
mobs[93].nmchildren = { true, 153, 94, 95 } -- Manor NM Voidstreaker Butchnotch (NIN) as well as N/S manor pop statues
mobs[109].nmchildren = { true, 154, 155, 110, 111, 112, 113, 114, 115 } -- Megaboss spawns twin BRD NMs Battlechoir Gitchfotch and Soulsender Fugbrag and a bunch of statues

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = 136.6880, y = -2.0000, z = 105.3910, rot = 90 } -- Residential Area
mobs[2].pos = { x = 119.9130, y = 0.1000, z = 95.3740, rot = 190 } -- Lion Square Fount. N
mobs[3].pos = { x = 126.6820, y = 0.1000, z = 88.1070, rot = 5 } -- Lion Square Fount. E
mobs[4].pos = { x = 112.4270, y = 0.1000, z = 87.9950, rot = 130 } -- Lion Square Fount. W
mobs[5].pos = { x = 119.8760, y = 0.1000, z = 81.2100, rot = 70 } -- Lion Square Fount. S
mobs[6].pos = { x = 99.1920, y = 1.0000, z = 105.0450, rot = 25 } -- Lion Tavern
mobs[7].pos = { x = 104.0628, y = 1.9165, z = 72.0631, rot = 226 } -- on stair, SW of Lion Squ
mobs[8].pos = { x = 94.1240, y = 4.0000, z = 67.9700, rot = 5 } -- Helbort's Blades N
mobs[9].pos = { x = 93.5510, y = 4.0000, z = 57.1810, rot = 255 } -- Helbort's Blades S
mobs[10].pos = { x = 101.4370, y = 4.0000, z = 49.9190, rot = 128 } -- Door Across Helbort's Bl
mobs[11].pos = { x = 94.5170, y = 4.0000, z = 38.0950, rot = 255 } -- Rosel's Armour
mobs[12].pos = { x = 101.3650, y = 4.0000, z = 31.9230, rot = 128 } -- Door Across Rosel's Armo
mobs[13].pos = { x = 98.0760, y = 4.0000, z = 43.7700, rot = 190 } -- Alleyway, Btw. Wep+Armor
mobs[14].pos = { x = 113.0370, y = 2.0000, z = 13.8110, rot = 255 } -- Sq.Alley SW2
mobs[15].pos = { x = 125.6640, y = 0.1000, z = 14.0710, rot = 255 } -- Sq.Alley SW
mobs[16].pos = { x = 143.5072, y = 0.0000, z = 27.3608, rot = 94 } -- Sq.Alley S
mobs[17].pos = { x = 153.4430, y = 0.1000, z = 41.9150, rot = 128 } -- Sq.Alley C
mobs[18].pos = { x = 144.4340, y = 0.1000, z = 50.9060, rot = 165 } -- Sq.Alley N
mobs[19].pos = { x = 148.9900, y = -6.8000, z = 56.9310, rot = 93 } -- Sq.Alley Under Staircase
mobs[20].pos = { x = 147.2770, y = 0.1000, z = 53.3520, rot = 165 } -- Sq.Alley Northern Bldg.
mobs[21].pos = { x = 155.7430, y = -6.8000, z = 41.7860, rot = 128 } -- Sq.Alley Eastern Bldg.
mobs[22].pos = { x = 81.9600, y = 2.0000, z = 10.0320, rot = 225 } -- Cavalry Way Stair W
mobs[23].pos = { x = 85.9100, y = 2.0000, z = 6.1500, rot = 225 } -- Cavalry Way Stair C
mobs[24].pos = { x = 89.8950, y = 2.0000, z = 1.9040, rot = 225 } -- Cavalry Way Stair E
mobs[25].pos = { x = 84.1600, y = -7.4000, z = -17.3950, rot = 155 } -- Eastgate Outside E
mobs[26].pos = { x = 78.8870, y = -7.4000, z = -22.8250, rot = 155 } -- Eastgate Outside C
mobs[27].pos = { x = 73.6090, y = -7.4000, z = -28.1740, rot = 155 } -- Eastgate Outside W
mobs[28].pos = { x = 92.3483, y = 2.0000, z = -20.5081, rot = 160 } -- Eastgate Arches E
mobs[29].pos = { x = 83.4080, y = 2.0000, z = -27.3790, rot = 155 } -- Eastgate Arches C
mobs[30].pos = { x = 75.6330, y = 2.0000, z = -35.3930, rot = 155 } -- Eastgate Arches W
mobs[31].pos = { x = 100.0918, y = 1.0000, z = -36.0744, rot = 154 } -- Eastgate E
mobs[32].pos = { x = 102.7360, y = 1.0000, z = -46.7290, rot = 155 } -- Eastgate C
mobs[33].pos = { x = 92.1923, y = 1.0000, z = -44.0674, rot = 166 } -- Eastgate W
mobs[34].pos = { x = 85.4025, y = 1.0000, z = -70.3379, rot = 188 } -- Eastgate Far Corner
mobs[35].pos = { x = 55.7694, y = -8.6001, z = -30.0464, rot = 192 } -- W of Eastgate Entrance
mobs[36].pos = { x = 66.7640, y = 2.0000, z = -2.5460, rot = 30 } -- W2 Btw. Street Vendors b
mobs[37].pos = { x = 40.0070, y = 2.0000, z = -29.9990, rot = 190 } -- Near AH: Choco Tunnel E
mobs[38].pos = { x = 28.0710, y = 2.0000, z = -17.9410, rot = 65 } -- Near AH: E Tent
mobs[39].pos = { x = 19.1380, y = 2.1000, z = -2.1470, rot = 65 } -- Victory Square SE
mobs[40].pos = { x = 25.9690, y = 2.1000, z = 14.1720, rot = 65 } -- Victory Square NE
mobs[41].pos = { x = -0.0860, y = 0.6270, z = 12.1600, rot = 65 } -- Victory Square Main Path
mobs[42].pos = { x = 3.9580, y = 1.6010, z = 6.3180, rot = 65 } -- Victory Square Main Path
mobs[43].pos = { x = -4.0980, y = 1.5950, z = 6.3540, rot = 65 } -- Victory Square Main Path
mobs[44].pos = { x = -0.0750, y = 2.0000, z = -3.7550, rot = 65 } -- Near AH: Between Tents
mobs[45].pos = { x = -25.9690, y = 2.1000, z = 14.1720, rot = 65 } -- Victory Square NW
mobs[46].pos = { x = -19.1380, y = 2.1000, z = -2.1470, rot = 65 } -- Victory Square SW
mobs[47].pos = { x = -28.0710, y = 2.0000, z = -17.9410, rot = 65 } -- Near AH: W Tent
mobs[48].pos = { x = -40.0070, y = 2.0000, z = -29.9990, rot = 190 } -- Near AH: Choco Tunnel W
mobs[49].pos = { x = -14.0340, y = 1.7000, z = -30.5510, rot = 190 } -- AH: W
mobs[50].pos = { x = -11.8550, y = -3.0000, z = -34.0750, rot = 190 } -- AH: Atop W
mobs[51].pos = { x = -0.0780, y = 1.7000, z = -25.9820, rot = 190 } -- AH: C
mobs[52].pos = { x = 0.0680, y = -3.0000, z = -32.3290, rot = 190 } -- AH: Atop C
mobs[53].pos = { x = 14.0340, y = 1.7000, z = -30.5510, rot = 190 } -- AH: E
mobs[54].pos = { x = 11.8550, y = -3.0000, z = -34.0750, rot = 190 } -- AH: Atop E
mobs[55].pos = { x = -10.3510, y = 2.0000, z = -76.6920, rot = 190 } -- Choco Stable W
mobs[56].pos = { x = -6.2000, y = 2.0000, z = -83.4410, rot = 190 } -- Choco Stable S
mobs[57].pos = { x = 3.0200, y = 2.0000, z = -76.7730, rot = 190 } -- Choco Stable E
mobs[58].pos = { x = 6.9160, y = 2.2000, z = -87.2290, rot = 155 } -- Choco Stable Gate
mobs[59].pos = { x = 18.1228, y = 2.2000, z = -96.3732, rot = 192 } -- Choco Stable Grass W
mobs[60].pos = { x = 23.1852, y = 2.2000, z = -96.2487, rot = 192 } -- Choco Stable Grass E
mobs[61].pos = { x = -66.7640, y = 2.0000, z = -2.5460, rot = 30 } -- Between Street Vendors b
mobs[62].pos = { x = -55.8101, y = -8.6000, z = -30.2507, rot = 192 } -- E of Westgate Entrance
mobs[63].pos = { x = -73.6090, y = -7.4000, z = -28.1740, rot = 155 } -- Westgate Outside E
mobs[64].pos = { x = -78.8870, y = -7.4000, z = -22.8250, rot = 155 } -- Westgate Outside C
mobs[65].pos = { x = -84.1600, y = -7.4000, z = -17.3950, rot = 155 } -- Westgate Outside W
mobs[66].pos = { x = -78.5584, y = 2.0000, z = -38.5455, rot = 224 } -- Westgate Arches E
mobs[67].pos = { x = -86.5756, y = 2.0000, z = -30.6161, rot = 224 } -- Westgate Arches C
mobs[68].pos = { x = -94.4234, y = 2.0000, z = -22.1406, rot = 224 } -- Westgate Arches W
mobs[69].pos = { x = -98.7650, y = 1.0000, z = -50.8680, rot = 224 } -- Westgate E
mobs[70].pos = { x = -102.7360, y = 1.0000, z = -46.7290, rot = 224 } -- Westgate C
mobs[71].pos = { x = -106.6610, y = 1.0000, z = -42.7040, rot = 224 } -- Westgate W
mobs[72].pos = { x = -127.4794, y = 1.0000, z = -29.5681, rot = 5 } -- Westgate Far Corner
mobs[73].pos = { x = -95.9000, y = -2.0000, z = 23.7010, rot = 25 } -- Stairs to W District E
mobs[74].pos = { x = -100.9000, y = -2.0000, z = 20.7010, rot = 25 } -- Stairs to W District C
mobs[75].pos = { x = -105.9000, y = -2.0000, z = 16.7010, rot = 25 } -- Stairs to W District W
mobs[76].pos = { x = -111.6000, y = -2.0000, z = 31.8570, rot = 25 } -- Raimbroy's Grocery
mobs[77].pos = { x = -114.0200, y = -2.0000, z = 13.1530, rot = 190 } -- Guarding Entr. to Atop W
mobs[78].pos = { x = -124.1140, y = -2.0000, z = 15.2370, rot = 190 } -- Between Raimbroy's and T
mobs[79].pos = { x = -144.0530, y = -2.0000, z = 14.4650, rot = 190 } -- Taumila's Sundries
mobs[80].pos = { x = -161.8810, y = -1.0000, z = 24.1250, rot = 60 } -- Entrance to Raimbroy's C
mobs[81].pos = { x = -177.7020, y = -1.0000, z = 28.3980, rot = 225 } -- LW Guild E
mobs[82].pos = { x = -175.0750, y = -1.5000, z = 36.8800, rot = 100 } -- Across LW Guild
mobs[83].pos = { x = -183.3670, y = -1.0000, z = 34.2080, rot = 225 } -- LW Guild W
mobs[84].pos = { x = -172.7534, y = -8.8000, z = 15.4853, rot = 190 } -- LW Guild Catwalks S
mobs[85].pos = { x = -195.4990, y = -8.8000, z = 38.7130, rot = 225 } -- LW Guild C
mobs[86].pos = { x = -196.5302, y = -8.8000, z = 39.1053, rot = 251 } -- LW Guild Catwalks N
mobs[87].pos = { x = -193.8750, y = -1.0000, z = 54.9370, rot = 65 } -- Pikeman's Way S
mobs[88].pos = { x = -193.8750, y = -2.0000, z = 68.1960, rot = 65 } -- Pikeman's Way C
mobs[89].pos = { x = -188.9460, y = -8.8000, z = 87.0530, rot = 105 } -- Pikeman's Way Catwalks
mobs[90].pos = { x = -201.7740, y = -2.0000, z = 88.7460, rot = 30 } -- Pikeman's Way N
mobs[91].pos = { x = -213.1530, y = -2.0000, z = 98.0150, rot = 0 } -- Path to Manor
mobs[92].pos = { x = -223.9660, y = -2.0000, z = 98.0150, rot = 0 } -- Stairs to Manor
mobs[93].pos = { x = -267.1330, y = -4.0000, z = 98.2280, rot = 255 } -- Manor
mobs[94].pos = { x = -256.3110, y = -3.6000, z = 112.4750, rot = 125 } -- Manor Pop N
mobs[95].pos = { x = -256.2380, y = -3.6000, z = 82.2320, rot = 125 } -- Manor Pop S
mobs[96].pos = { x = -163.9560, y = -2.0000, z = 54.8660, rot = 190 } -- Courtyard SW
mobs[97].pos = { x = -159.0580, y = -2.0000, z = 65.6850, rot = 65 } -- Courtyard N
mobs[98].pos = { x = -152.4040, y = -2.0000, z = 54.8660, rot = 190 } -- Courtyard SE
mobs[99].pos = { x = -131.8040, y = -4.0000, z = 68.6270, rot = 190 } -- Courtyard to WD Alley Co
mobs[100].pos = { x = -131.8040, y = -4.0000, z = 69.6270, rot = 190 } -- Back of Watchdog Alley #
mobs[101].pos = { x = -131.8040, y = -4.0000, z = 70.6270, rot = 190 } -- Back of Watchdog Alley #
mobs[102].pos = { x = -139.7820, y = -6.0000, z = 90.3290, rot = 255 } -- Watchdog Alley Catwalk E
mobs[103].pos = { x = -125.7547, y = -6.0000, z = 89.0013, rot = 10 } -- Watchdog Alley NW
mobs[104].pos = { x = -137.1220, y = -10.8000, z = 64.7460, rot = 30 } -- Courtyard Catwalk
mobs[105].pos = { x = -105.6110, y = -6.0000, z = 85.2240, rot = 30 } -- Watchdog Alley N
mobs[106].pos = { x = -93.8400, y = -6.0000, z = 72.1560, rot = 65 } -- Watchdog Alley C
mobs[107].pos = { x = -89.9380, y = -4.0000, z = 51.3060, rot = 65 } -- Watchdog Alley S
mobs[108].pos = { x = -93.5820, y = -4.0000, z = 42.9060, rot = 95 } -- Watchdog Alley Stairs
mobs[109].pos = { x = 0.0735, y = -2.0000, z = 44.0171, rot = 64 } -- W2 Megaboss
mobs[110].pos = { x = -3.0410, y = -1.1900, z = 35.0010, rot = 65 } -- W2 Megaboss Pop Near W
mobs[111].pos = { x = 15.9500, y = 0.1000, z = 36.0700, rot = 65 } -- W2 Megaboss Pop Near E
mobs[112].pos = { x = -24.8356, y = 0.0000, z = 36.8744, rot = 44 } -- W2 Megaboss Pop Far W
mobs[113].pos = { x = -17.5909, y = 0.0000, z = 37.1444, rot = 53 } -- W2 Megaboss Pop's Pop Fa
mobs[114].pos = { x = 23.2271, y = 0.0000, z = 35.1004, rot = 77 } -- W2 Megaboss Pop Far E
mobs[115].pos = { x = 15.7737, y = 0.0000, z = 34.9563, rot = 77 } -- W2 Megaboss Pop's Pop Fa
mobs[116].pos = { x = -38.0800, y = 0.1000, z = 28.0450, rot = 255 } -- W3 Victory Square NW
mobs[117].pos = { x = -38.0800, y = 0.1000, z = 16.0840, rot = 255 } -- W3 Victory Square SW
mobs[118].pos = { x = 38.0800, y = 0.1000, z = 28.0450, rot = 128 } -- W3 Victory Square NE
mobs[119].pos = { x = 38.0800, y = 0.1000, z = 16.0840, rot = 128 } -- W3 Victory Square SE
mobs[120].pos = { x = 0.0610, y = -3.0000, z = -31.9350, rot = 190 } -- W3 Atop AH
mobs[121].pos = { x = -156.1470, y = -2.0000, z = 58.2140, rot = 190 } -- W3 Courtyard E
mobs[122].pos = { x = -163.9620, y = -2.0000, z = 58.2140, rot = 190 } -- W3 Courtyard W
mobs[123].pos = { x = -196.8890, y = -8.8010, z = 91.4190, rot = 100 } -- W3 Pikeman's Way Catwalk
mobs[124].pos = { x = -198.4250, y = -1.0000, z = 40.9480, rot = 225 } -- W3 LW Guild N
mobs[125].pos = { x = -171.2190, y = -1.0000, z = 11.5290, rot = 225 } -- W3 LW Guild S
mobs[126].pos = { x = -105.4290, y = 2.0000, z = -7.1090, rot = 28 } -- W3 Westgate Corner N
mobs[127].pos = { x = -124.8380, y = 1.0000, z = -27.5480, rot = 28 } -- W3 Westgate Corner W
mobs[128].pos = { x = -83.1180, y = 1.0000, z = -68.8730, rot = 160 } -- W3 Westgate Corner S
mobs[129].pos = { x = -63.3510, y = 2.0000, z = -48.8600, rot = 160 } -- W3 Westgate Corner E
mobs[130].pos = { x = 29.0130, y = 2.2000, z = -90.2410, rot = 128 } -- W3 Chocobo Stables Grass
mobs[131].pos = { x = 29.0130, y = 2.2000, z = -95.2790, rot = 128 } -- W3 Chocobo Stables Grass
mobs[132].pos = { x = 63.3510, y = 2.0000, z = -48.8600, rot = 225 } -- W3 Eastegate Corner W
mobs[133].pos = { x = 83.1180, y = 1.0000, z = -68.8730, rot = 225 } -- W3 Eastegate Corner S
mobs[134].pos = { x = 124.8380, y = 1.0000, z = -27.5480, rot = 100 } -- W3 Eastegate Corner E
mobs[135].pos = { x = 105.4290, y = 2.0000, z = -7.1090, rot = 100 } -- W3 Eastegate Corner N
mobs[136].pos = { x = 76.7430, y = 2.0000, z = 2.8380, rot = 30 } -- W3 Beside Street Vendor
mobs[137].pos = { x = 103.9930, y = 4.0000, z = 25.9630, rot = 128 } -- W3 Cavalry Way 3-way Int
mobs[138].pos = { x = 103.9930, y = 4.0000, z = 40.8560, rot = 128 } -- W3 Across Rosel's Armour
mobs[139].pos = { x = 91.7260, y = 3.8000, z = 48.0050, rot = 0 } -- W3 Between Rosel's/Helbo
mobs[140].pos = { x = 132.8130, y = 0.1000, z = 9.6760, rot = 190 } -- W3 Cavalry Way Ramp Entr
mobs[141].pos = { x = 130.7420, y = -1.0000, z = 105.4120, rot = 100 } -- W4 Lion Square Stairs W
mobs[142].pos = { x = 137.3980, y = -1.0000, z = 98.6190, rot = 100 } -- W4 Lion Square Stairs S
mobs[143].pos = { x = 112.4270, y = 0.1000, z = 87.9950, rot = 130 } -- W4 Lion Square Fountain
mobs[144].pos = { x = 119.8760, y = 0.1000, z = 81.2100, rot = 70 } -- W4 Lion Square Fountain
mobs[145].pos = { x = -208.5180, y = -2.0000, z = 95.5130, rot = 30 } -- W2 Pikeman's Way N
mobs[146].pos = { x = -200.0560, y = -2.0000, z = 86.2240, rot = 30 } -- W2 Pikeman's Way C
mobs[147].pos = { x = -17.9860, y = 2.0000, z = -11.7700, rot = 65 } -- W2 Victory Square Tent W
mobs[148].pos = { x = -5.0312, y = 2.0000, z = -11.8298, rot = 51 } -- W2 Victory Square Pop Bt
mobs[149].pos = { x = 17.9860, y = 2.0000, z = -11.7700, rot = 65 } -- W2 Victory Square Tent E
mobs[150].pos = { x = 5.0829, y = 2.0000, z = -11.8420, rot = 75 } -- W2 Victory Square Pop Bt

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

--Wave 1 pathing
mobs[2].patrolPath = { { x = 121, y = 0, z = 96 }, { x = 127, y = 0, z = 102 } }
mobs[3].patrolPath = { { x = 128, y = 0, z = 89 }, { x = 134, y = 0, z = 95 } }
mobs[4].patrolPath = { { x = 112, y = 0, z = 87 }, { x = 106, y = 0, z = 82 } }
mobs[5].patrolPath = { { x = 119, y = 0, z = 80 }, { x = 113, y = 0, z = 75 } }
mobs[8].patrolPath = { { x = 98, y = 4, z = 68 }, { x = 98, y = 4, z = 62 } }
mobs[13].patrolPath = { { x = 98, y = 4, z = 16 }, { x = 98, y = 4, z = 56 } }
mobs[14].patrolPath = { { x = 104, y = 4, z = 14 }, { x = 116, y = 2, z = 14 } }
mobs[15].patrolPath = { { x = 118, y = 2, z = 14 }, { x = 133, y = 0, z = 14 } }
mobs[16].patrolPath = { { x = 146, y = 0, z = 30 }, { x = 135, y = 0, z = 18 } }
mobs[17].patrolPath = { { x = 148, y = 0, z = 49 }, { x = 148, y = 0, z = 33 } }
mobs[18].patrolPath = { { x = 130, y = 0, z = 68 }, { x = 152, y = 0, z = 45 } }
mobs[23].patrolPath = { { x = 93, y = 4, z = 14 }, { x = 81, y = 2, z = 2 } }
mobs[25].patrolPath = { { x = 76, y = 2, z = -4 }, { x = 88, y = 2, z = -16 } }
mobs[26].patrolPath = { { x = 68, y = 2, z = -12 }, { x = 80, y = 2, z = -24 } }
mobs[27].patrolPath = { { x = 60, y = 2, z = -20 }, { x = 72, y = 2, z = -32 } }
mobs[28].patrolPath = { { x = 91, y = 2, z = -19 }, { x = 98, y = 2, z = -26 } }
mobs[29].patrolPath = { { x = 89, y = 2, z = -33 }, { x = 83, y = 2, z = -27 } }
mobs[30].patrolPath = { { x = 75, y = 2, z = -35 }, { x = 81, y = 2, z = -41 } }
mobs[37].patrolPath = { { x = 40, y = 2, z = -17 }, { x = 40, y = 2, z = -37 } }
mobs[38].patrolPath = { { x = 34, y = 2, z = -18 }, { x = 14, y = 2, z = -18 } }
mobs[39].patrolPath = { { x = 20, y = 2, z = 5 }, { x = 20, y = 2, z = -13 } }
mobs[40].patrolPath = { { x = 20, y = 0, z = 24 }, { x = 20, y = 2, z = 8 } }
mobs[41].patrolPath = { { x = 0, y = 0, z = 26 }, { x = 0, y = 2, z = 3 } }
mobs[42].patrolPath = { { x = 5, y = 0, z = 19 }, { x = 5, y = 2, z = -9 } } -- Victory Square Main Path E
mobs[43].patrolPath = { { x = -5, y = 0, z = 19 }, { x = -5, y = 2, z = -9 } } -- Victory Square Main Path W
mobs[44].patrolPath = { { x = 0, y = 2, z = -21 }, { x = 0, y = 2, z = -4 } }
mobs[45].patrolPath = { { x = -24, y = 2, z = 15 }, { x = -24, y = 2, z = 0 } }
mobs[46].patrolPath = { { x = -20, y = 2, z = 5 }, { x = -20, y = 2, z = -13 } }
mobs[47].patrolPath = { { x = -34, y = 2, z = -18 }, { x = -14, y = 2, z = -18 } }
mobs[48].patrolPath = { { x = -40, y = 2, z = -17 }, { x = -40, y = 2, z = -38 } }
mobs[55].patrolPath = { { x = 2, y = 2, z = -74 }, { x = -12, y = 2, z = -74 } }
mobs[56].patrolPath = { { x = -8, y = 2, z = -80 }, { x = -23, y = 2, z = -80 } }
mobs[57].patrolPath = { { x = 5, y = 2, z = -74 }, { x = 18, y = 2, z = -74 } }
mobs[63].patrolPath = { { x = -72, y = 2, z = -32 }, { x = -60, y = 2, z = -20 } }
mobs[64].patrolPath = { { x = -80, y = 2, z = -24 }, { x = -68, y = 2, z = -12 } }
mobs[65].patrolPath = { { x = -88, y = 2, z = -16 }, { x = -76, y = 2, z = -4 } }
mobs[66].patrolPath = { { x = -75, y = 2, z = -35 }, { x = -83, y = 2, z = -43 } }
mobs[67].patrolPath = { { x = -83, y = 2, z = -27 }, { x = -91, y = 2, z = -35 } }
mobs[68].patrolPath = { { x = -91, y = 2, z = -19 }, { x = -99, y = 2, z = -27 } }
mobs[74].patrolPath = { { x = -96, y = -2, z = 16 }, { x = -84, y = 2, z = 4 } }
mobs[77].patrolPath = { { x = -118, y = -2, z = 12 }, { x = -99, y = -2, z = 27 } }
mobs[78].patrolPath = { { x = -118, y = -2, z = 18 }, { x = -136, y = -2, z = 18 } }
mobs[79].patrolPath = { { x = -140, y = -2, z = 18 }, { x = -163, y = -1, z = 18 } }
mobs[87].patrolPath = { { x = -190, y = -1, z = 43 }, { x = -193, y = -1, z = 55 } }
mobs[88].patrolPath = { { x = -194, y = -2, z = 61 }, { x = -194, y = -2, z = 78 } }
mobs[90].patrolPath = { { x = -194, y = -2, z = 80 }, { x = -212, y = -2, z = 98 } }
mobs[91].patrolPath = { { x = -231, y = -2, z = 98 }, { x = -213, y = -2, z = 98 } }
mobs[92].patrolPath = { { x = -240, y = -4, z = 98 }, { x = -260, y = -4, z = 98 } }
mobs[96].patrolPath = { { x = -169, y = -2, z = 60 }, { x = -156, y = -2, z = 60 } }
mobs[98].patrolPath = { { x = -144, y = -2, z = 60 }, { x = -154, y = -2, z = 60 } }
mobs[99].patrolPath = { { x = -132, y = -4, z = 72 }, { x = -132, y = -4, z = 63 } }
mobs[103].patrolPath = { { x = -106, y = -6, z = 88 }, { x = -128, y = -6, z = 88 } }
mobs[105].patrolPath = { { x = -94, y = -6, z = 74 }, { x = -104, y = -6, z = 84 } }
mobs[106].patrolPath = { { x = -90, y = -6, z = 57 }, { x = -93, y = -6, z = 71 } }
mobs[107].patrolPath = { { x = -90, y = -4, z = 46 }, { x = -90, y = -4, z = 56 } }
mobs[108].patrolPath = { { x = -101, y = 2, z = 34 }, { x = -91, y = 4, z = 44 } }

--Wave 2 pathing
mobs[141].patrolPath = { { x = 132, y = -1, z = 103 }, { x = 128, y = -1, z = 107 } }
mobs[142].patrolPath = { { x = 135, y = -1, z = 100 }, { x = 139, y = -1, z = 96 } }
mobs[143].patrolPath = { { x = 110, y = 0, z = 80 }, { x = 104, y = 0, z = 87 } }
mobs[144].patrolPath = { { x = 118, y = 0, z = 71 }, { x = 112, y = 0, z = 78 } }
mobs[145].patrolPath = { { x = -212, y = -2, z = 96 }, { x = -229, y = -2, z = 98 } }
mobs[146].patrolPath = { { x = -200, y = -2, z = 87 }, { x = -193, y = -2, z = 69 } }

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[6].eyes = xi.dynamis.eye.GREEN
mobs[10].eyes = xi.dynamis.eye.GREEN
mobs[12].eyes = xi.dynamis.eye.BLUE
mobs[14].eyes = xi.dynamis.eye.GREEN
mobs[15].eyes = xi.dynamis.eye.BLUE
mobs[32].eyes = xi.dynamis.eye.GREEN
mobs[34].eyes = xi.dynamis.eye.BLUE
mobs[35].eyes = xi.dynamis.eye.GREEN
mobs[38].eyes = xi.dynamis.eye.GREEN
mobs[44].eyes = xi.dynamis.eye.BLUE
mobs[47].eyes = xi.dynamis.eye.GREEN
mobs[52].eyes = xi.dynamis.eye.BLUE
mobs[59].eyes = xi.dynamis.eye.BLUE
mobs[60].eyes = xi.dynamis.eye.GREEN
mobs[62].eyes = xi.dynamis.eye.GREEN
mobs[70].eyes = xi.dynamis.eye.GREEN
mobs[72].eyes = xi.dynamis.eye.BLUE
mobs[73].eyes = xi.dynamis.eye.BLUE
mobs[76].eyes = xi.dynamis.eye.GREEN
mobs[78].eyes = xi.dynamis.eye.BLUE
mobs[79].eyes = xi.dynamis.eye.GREEN
mobs[81].eyes = xi.dynamis.eye.BLUE
mobs[83].eyes = xi.dynamis.eye.BLUE
mobs[84].eyes = xi.dynamis.eye.GREEN
mobs[85].eyes = xi.dynamis.eye.BLUE
mobs[86].eyes = xi.dynamis.eye.GREEN
mobs[91].eyes = xi.dynamis.eye.BLUE
mobs[92].eyes = xi.dynamis.eye.GREEN
mobs[97].eyes = xi.dynamis.eye.BLUE
mobs[103].eyes = xi.dynamis.eye.BLUE
mobs[104].eyes = xi.dynamis.eye.BLUE
mobs[107].eyes = xi.dynamis.eye.BLUE
mobs[108].eyes = xi.dynamis.eye.GREEN
mobs[110].eyes = xi.dynamis.eye.GREEN
mobs[111].eyes = xi.dynamis.eye.GREEN
mobs[113].eyes = xi.dynamis.eye.BLUE
mobs[115].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 7, 9, 26, 41, 64, 74, 153 }
mobs[7].timeExtension = 15 -- Serjeant Tombstone
mobs[9].timeExtension = 15 -- Serjeant Tombstone
mobs[26].timeExtension = 25 -- Serjeant Tombstone
mobs[41].timeExtension = 30 -- Serjeant Tombstone
mobs[64].timeExtension = 25 -- Serjeant Tombstone
mobs[74].timeExtension = 10 -- Warchief Tombstone
mobs[153].timeExtension = 30 -- Voidstreaker Butchnotch
