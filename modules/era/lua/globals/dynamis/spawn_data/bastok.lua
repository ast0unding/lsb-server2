-----------------------------------
-- Era Dynamis - Dynamis-Bastok spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/bas.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/bas.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_BASTOK

local mobs = {}
for i = 1, 156 do
    mobs[i] = { id = i }
end

mobs.maxWaves = 3

xi.dynamis.mobList[zoneID] = mobs


----------------------------------------------------------------------------------------------------
--                                  Setup of Parent Spawning                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--               Mob Info               --
-- Note: Primarily used for mobs that   --
-- are NMs or parent mobs.              --
------------------------------------------

mobs[1].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (001-Q)
mobs[2].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (002-Q)
mobs[3].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (003-Q)
mobs[4].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (004-Q)
mobs[5].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (005-Q)
mobs[6].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (006-Q)
mobs[7].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (007-Q)
mobs[8].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (008-Q)
mobs[9].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (009-Q)
mobs[10].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (010-Q)
mobs[11].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (011-Q)
mobs[12].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (012-Q)
mobs[13].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (013-Q)
mobs[14].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (014-Q)
mobs[15].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (015-Q)
mobs[16].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (016-Q)
mobs[17].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (017-Q)
mobs[18].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (018-Q)
mobs[19].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (019-Q)
mobs[20].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (020-Q)
mobs[21].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (021-Q)
mobs[22].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (022-Q)
mobs[23].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (023-Q)
mobs[24].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (024-Q)
mobs[25].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (025-Q)
mobs[26].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (026-Q)
mobs[27].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (027-Q)
mobs[28].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (028-Q)
mobs[29].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (029-Q)
mobs[30].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (030-Q)
mobs[31].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (031-Q)
mobs[32].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (032-Q)
mobs[33].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (033-Q)
mobs[34].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (034-Q)
mobs[35].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (035-Q)
mobs[36].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (036-Q)
mobs[37].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (037-Q)
mobs[38].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (038-Q)
mobs[39].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (039-Q)
mobs[40].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (040-Q)
mobs[41].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (041-Q)
mobs[42].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (042-Q)
mobs[43].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (043-Q)
mobs[44].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (044-Q)
mobs[45].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (045-Q)
mobs[46].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (046-Q)
mobs[47].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (047-Q)
mobs[48].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (048-Q)
mobs[49].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (049-Q)
mobs[50].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (050-Q)
mobs[51].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (051-Q)
mobs[52].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (052-Q)
mobs[53].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (053-Q)
mobs[54].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (054-Q)
mobs[55].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (055-Q)
mobs[56].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (056-Q)
mobs[57].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (057-Q)
mobs[58].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (058-Q)
mobs[59].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (059-Q)
mobs[60].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (060-Q)
mobs[61].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (061-Q)
mobs[62].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (062-Q)
mobs[63].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (063-Q)
mobs[64].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (064-Q)
mobs[65].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (065-Q)
mobs[66].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (066-Q)
mobs[67].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (067-Q)
mobs[68].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (068-Q)
mobs[69].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (069-Q)
mobs[70].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (070-Q)
mobs[71].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (071-Q)
mobs[72].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (072-Q)
mobs[73].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (073-Q)
mobs[74].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (074-Q)
mobs[75].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (075-Q)
mobs[76].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (076-Q)
mobs[77].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (077-Q)
mobs[78].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (078-Q)
mobs[79].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (079-Q)
mobs[80].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (080-Q)(MP)
mobs[81].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (081-Q)
mobs[82].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (082-Q)(HP)
mobs[83].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (083-Q)
mobs[84].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (084-Q)
mobs[85].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (085-Q)(HP)
mobs[86].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (086-Q)
mobs[87].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (087-Q)
mobs[88].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (088-Q)
mobs[89].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (089-Q)
mobs[90].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (090-Q)
mobs[91].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (091-Q)
mobs[92].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (092-Q)(HP)
mobs[93].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (093-Q)
mobs[94].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (094-Q)(HP)
mobs[95].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (095-Q)
mobs[96].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (096-Q)
mobs[97].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (097-Q)
mobs[98].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (098-Q)
mobs[99].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (099-Q)
mobs[100].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (100-Q)
mobs[101].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (101-Q)
mobs[102].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (102-Q)
mobs[103].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (103-Q)
mobs[104].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (104-Q)
mobs[105].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (105-Q)
mobs[106].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (106-Q)
mobs[107].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (107-Q)
mobs[108].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (108-Q)
mobs[109].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (109-Q)
mobs[111].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (111-Q)
mobs[112].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (112-Q)(HP)
mobs[113].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (113-Q)
mobs[114].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (114-Q)(MP)
mobs[115].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (115-Q)
mobs[116].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (116-Q)(HP)
mobs[117].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (117-Q)
mobs[118].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (118-Q)
mobs[119].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (119-Q)(HP)
mobs[120].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (120-Q)(HP)
mobs[121].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (121-Q)(MP)
mobs[122].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (122-Q)(HP)
mobs[123].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (123-Q)
mobs[124].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (124-Q)(HP)
mobs[125].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (125-Q)(MP)
mobs[126].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (126-Q)
mobs[127].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (127-Q)(MP)
mobs[128].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (128-Q)
mobs[129].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (129-Q)(MP)
mobs[130].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (130-Q)
mobs[131].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (131-Q)
mobs[132].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (132-Q)(HP)
mobs[133].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (133-Q)(HP)
mobs[134].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (134-Q)
mobs[135].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (135-Q)
mobs[136].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (136-Q)(MP)
mobs[137].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (137-Q)(MP)
mobs[138].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (138-Q)(HP)
mobs[139].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (139-Q)(HP)
mobs[140].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (140-Q)
mobs[141].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (141-Q)
mobs[142].info = { mobType = 'Statue', name = 'Adamantking Effigy' } -- (142-Q)

-- NM's and Megaboss Quadav
mobs[110].info = { mobType = 'NM', name = "Gu'Dha Effigy", deathVar = 'MegaBoss_Killed' } -- ( 110 ) Replica NM (Gu'Dha Effigy)(30)

mobs[143].info = { mobType = 'NM', name = "Aa'Nyu Dismantler", family = 'Quadav', job = 'DRK' } -- Aa'Nyu Dismantler
mobs[144].info = { mobType = 'NM', name = "Be'Ebo Tortoisedriver", family = 'Quadav', job = 'BST' } -- Be'Ebo Tortoisedriver
mobs[145].info = { mobType = 'NM', name = "Gi'Pha Manameister", family = 'Quadav', job = 'BLM', deathVar = 'GiPha_killed' } -- Gi'Pha Manameister
mobs[146].info = { mobType = 'NM', name = "Gu'Nhi Noondozer", family = 'Quadav', job = 'SMN' } -- Gu'Nhi Noondozer
mobs[147].info = { mobType = 'NM', name = "Ze'Vho Fallsplitter", family = 'Quadav', job = 'DRK', deathVar = 'ZeVho_killed' } -- Ze'Vho Fallsplitter
mobs[148].info = { mobType = 'NM', name = "Ko'Dho Cannonball", family = 'Quadav', job = 'MNK', deathVar = 'KoDho_killed' } -- Ko'Dho Cannonball

mobs[149].info = { mobType = 'NM', name = 'Effigy Shield PLD', family = 'Quadav', job = 'PLD' } -- Effigy Shield
mobs[150].info = { mobType = 'NM', name = 'Effigy Shield NIN', family = 'Quadav', job = 'NIN' } -- Effigy Shield
mobs[151].info = { mobType = 'NM', name = 'Effigy Shield BRD', family = 'Quadav', job = 'BRD' } -- Effigy Shield
mobs[152].info = { mobType = 'NM', name = 'Effigy Shield DRK', family = 'Quadav', job = 'DRK' } -- Effigy Shield
mobs[153].info = { mobType = 'NM', name = 'Effigy Shield SAM', family = 'Quadav', job = 'SAM' } -- Effigy Shield

mobs[154].info = { mobType = 'Beastmen', name = 'Vanguard Vindicator', family = 'Quadav', job = 'WAR' } -- 10min TE
mobs[155].info = { mobType = 'Beastmen', name = 'Vanguard Constable', family = 'Quadav', job = 'WHM' } -- 10min TE
mobs[156].info = { mobType = 'Beastmen', name = 'Vanguard Militant', family = 'Quadav', job = 'MNK' } -- 10min TE

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    {'KoDho_killed', 'GiPha_killed', 'ZeVho_killed'}, -- 3 NMs to spawn Boss
    {'MegaBoss_Killed'} -- Spawns wave after boss dies
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    1  , -- (001-Q) Adamantking Effigy
    2  , -- (002-Q) Adamantking Effigy
    3  , -- (003-Q) Adamantking Effigy
    4  , -- (004-Q) Adamantking Effigy
    5  , -- (005-Q) Adamantking Effigy
    6  , -- (006-Q) Adamantking Effigy
    7  , -- (007-Q) Adamantking Effigy
    8  , -- (008-Q) Adamantking Effigy
    9  , -- (009-Q) Adamantking Effigy
    10 , -- (010-Q) Adamantking Effigy
    11 , -- (011-Q) Adamantking Effigy
    12 , -- (012-Q) Adamantking Effigy
    13 , -- (013-Q) Adamantking Effigy
    14 , -- (014-Q) Adamantking Effigy
    15 , -- (015-Q) Adamantking Effigy
    16 , -- (016-Q) Adamantking Effigy
    17 , -- (017-Q) Adamantking Effigy
    18 , -- (018-Q) Adamantking Effigy
    19 , -- (019-Q) Adamantking Effigy
    20 , -- (020-Q) Adamantking Effigy
    21 , -- (021-Q) Adamantking Effigy
    22 , -- (022-Q) Adamantking Effigy
    23 , -- (023-Q) Adamantking Effigy
    24 , -- (024-Q) Adamantking Effigy
    25 , -- (025-Q) Adamantking Effigy
    27 , -- (027-Q) Adamantking Effigy
    28 , -- (028-Q) Adamantking Effigy
    32 , -- (032-Q) Adamantking Effigy
    33 , -- (033-Q) Adamantking Effigy
    34 , -- (034-Q) Adamantking Effigy
    35 , -- (035-Q) Adamantking Effigy
    36 , -- (036-Q) Adamantking Effigy
    37 , -- (037-Q) Adamantking Effigy
    38 , -- (038-Q) Adamantking Effigy
    39 , -- (039-Q) Adamantking Effigy
    40 , -- (040-Q) Adamantking Effigy
    41 , -- (041-Q) Adamantking Effigy
    42 , -- (042-Q) Adamantking Effigy
    43 , -- (043-Q) Adamantking Effigy
    44 , -- (044-Q) Adamantking Effigy
    45 , -- (045-Q) Adamantking Effigy
    46 , -- (046-Q) Adamantking Effigy
    47 , -- (047-Q) Adamantking Effigy
    48 , -- (048-Q) Adamantking Effigy
    49 , -- (049-Q) Adamantking Effigy
    50 , -- (050-Q) Adamantking Effigy
    51 , -- (051-Q) Adamantking Effigy
    52 , -- (052-Q) Adamantking Effigy
    53 , -- (053-Q) Adamantking Effigy
    55 , -- (055-Q) Adamantking Effigy
    56 , -- (056-Q) Adamantking Effigy
    57 , -- (057-Q) Adamantking Effigy
    58 , -- (058-Q) Adamantking Effigy
    59 , -- (059-Q) Adamantking Effigy
    60 , -- (060-Q) Adamantking Effigy
    61 , -- (061-Q) Adamantking Effigy
    62 , -- (062-Q) Adamantking Effigy
    63 , -- (063-Q) Adamantking Effigy
    64 , -- (064-Q) Adamantking Effigy
    65 , -- (065-Q) Adamantking Effigy
    66 , -- (066-Q) Adamantking Effigy
    67 , -- (067-Q) Adamantking Effigy
    68 , -- (068-Q) Adamantking Effigy
    69 , -- (069-Q) Adamantking Effigy
    70 , -- (070-Q) Adamantking Effigy
    71 , -- (071-Q) Adamantking Effigy
    72 , -- (072-Q) Adamantking Effigy
    73 , -- (073-Q) Adamantking Effigy
    74 , -- (074-Q) Adamantking Effigy
    75 , -- (075-Q) Adamantking Effigy
    76 , -- (076-Q) Adamantking Effigy
    77 , -- (077-Q) Adamantking Effigy
    78 , -- (078-Q) Adamantking Effigy
    79 , -- (079-Q) Adamantking Effigy
    80 , -- (080-Q) Adamantking Effigy
    81 , -- (081-Q) Adamantking Effigy
    82 , -- (082-Q) Adamantking Effigy
    83 , -- (083-Q) Adamantking Effigy
    84 , -- (084-Q) Adamantking Effigy
    85 , -- (085-Q) Adamantking Effigy
    86 , -- (086-Q) Adamantking Effigy
    87 , -- (087-Q) Adamantking Effigy
    88 , -- (088-Q) Adamantking Effigy
    90 , -- (090-Q) Adamantking Effigy
    91 , -- (091-Q) Adamantking Effigy
    93 , -- (093-Q) Adamantking Effigy
    94 , -- (094-Q) Adamantking Effigy
    95 , -- (095-Q) Adamantking Effigy
    96 , -- (096-Q) Adamantking Effigy
    97 , -- (097-Q) Adamantking Effigy
    98 , -- (098-Q) Adamantking Effigy
    99 , -- (099-Q) Adamantking Effigy
    100, -- (100-Q) Adamantking Effigy
    101, -- (101-Q) Adamantking Effigy
    102, -- (102-Q) Adamantking Effigy
    103, -- (103-Q) Adamantking Effigy
    104, -- (104-Q) Adamantking Effigy
    105, -- (105-Q) Adamantking Effigy
    106, -- (106-Q) Adamantking Effigy
    107, -- (107-Q) Adamantking Effigy
    108, -- (108-Q) Adamantking Effigy
    109  -- (109-Q) Adamantking Effigy
}

mobs[2].wave =
{
    110  -- (110-Q) Gu'Dha Effigy
}

mobs[3].wave =
{
    112, -- (112-Q) Adamantking Effigy
    113, -- (113-Q) Adamantking Effigy
    114, -- (114-Q) Adamantking Effigy
    115, -- (115-Q) Adamantking Effigy
    116, -- (116-Q) Adamantking Effigy
    117, -- (117-Q) Adamantking Effigy
    118, -- (118-Q) Adamantking Effigy
    119, -- (119-Q) Adamantking Effigy
    120, -- (120-Q) Adamantking Effigy
    121, -- (121-Q) Adamantking Effigy
    122, -- (122-Q) Adamantking Effigy
    123, -- (123-Q) Adamantking Effigy
    124, -- (124-Q) Adamantking Effigy
    125, -- (125-Q) Adamantking Effigy
    126, -- (126-Q) Adamantking Effigy
    127, -- (127-Q) Adamantking Effigy
    128, -- (128-Q) Adamantking Effigy
    129, -- (129-Q) Adamantking Effigy
    130, -- (130-Q) Adamantking Effigy
    131, -- (131-Q) Adamantking Effigy
    132, -- (132-Q) Adamantking Effigy
    133, -- (133-Q) Adamantking Effigy
    134, -- (134-Q) Adamantking Effigy
    135, -- (135-Q) Adamantking Effigy
    136, -- (136-Q) Adamantking Effigy
    137, -- (137-Q) Adamantking Effigy
    138, -- (138-Q) Adamantking Effigy
    139, -- (139-Q) Adamantking Effigy
    140, -- (140-Q) Adamantking Effigy
    141, -- (141-Q) Adamantking Effigy
    142  -- (142-Q) Adamantking Effigy
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.BLM] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 NIN
mobs[2].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 BRD  1 SAM
mobs[3].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1 } -- 1 WAR  1 RDM
mobs[4].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[5].mobchildren = { [xi.job.BRD] = 1, [xi.job.DRG] = 1 } -- 1 BRD  1 DRG
mobs[6].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[7].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[8].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[9].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 BRD  1 SAM
mobs[10].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 BRD  1 SAM
mobs[11].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.NIN] = 1 } -- 1 WAR  1 BLM  1 NIN
mobs[12].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 BRD  1 SAM  1 DRG
mobs[13].mobchildren = { [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM  1 NIN
mobs[14].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRK] = 1 } -- 1 BLM  1 DRK
mobs[16].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[18].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[20].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 DRK  1 NIN
mobs[21].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 DRG
mobs[22].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 DRK  1 BRD
mobs[23].mobchildren = { [xi.job.BLM] = 1, [xi.job.SAM] = 1 } -- 1 BLM  1 SAM
mobs[24].mobchildren = { [xi.job.MNK] = 1, [xi.job.RNG] = 1 } -- 1 MNK  1 RNG
mobs[25].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1 } -- 1 WAR  1 WHM
mobs[27].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 RDM  1 THF
mobs[29].mobchildren = { [xi.job.PLD] = 1, [xi.job.NIN] = 1 } -- 1 PLD  1 NIN
mobs[30].mobchildren = { [xi.job.WAR] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 SAM
mobs[31].mobchildren = { [xi.job.BLM] = 1, [xi.job.BRD] = 1 } -- 1 BLM  1 BRD
mobs[32].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 WHM  1 DRK  1 NIN
mobs[33].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[34].mobchildren = { [xi.job.WHM] = 1, [xi.job.SAM] = 1 } -- 1 WHM  1 SAM
mobs[35].mobchildren = { [xi.job.MNK] = 1, [xi.job.PLD] = 1, [xi.job.BRD] = 1 } -- 1 MNK  1 PLD  1 BRD
mobs[36].mobchildren = { [xi.job.MNK] = 1, [xi.job.RDM] = 1, [xi.job.PLD] = 1 } -- 1 MNK  1 RDM  1 PLD
mobs[37].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.NIN] = 1 } -- 1 RDM  1 PLD  1 NIN
mobs[40].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[42].mobchildren = { [xi.job.BST] = 2 } -- 2 BST
mobs[43].mobchildren = { [xi.job.BLM] = 1, [xi.job.SAM] = 1 } -- 1 BLM  1 SAM
mobs[45].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.RDM] = 1 } -- 1 WAR  1 MNK  1 RDM
mobs[46].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 RDM  1 SAM
mobs[47].mobchildren = { [xi.job.MNK] = 1, [xi.job.RDM] = 1, [xi.job.DRK] = 1 } -- 1 MNK  1 RDM  1 DRK
mobs[48].mobchildren = { [xi.job.BLM] = 1, [xi.job.THF] = 1, [xi.job.PLD] = 1 } -- 1 BLM  1 THF  1 PLD
mobs[49].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[50].mobchildren = { [xi.job.WAR] = 1, [xi.job.BRD] = 1 } -- 1 WAR  1 BRD
mobs[51].mobchildren = { [xi.job.RDM] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 NIN  1 DRG
mobs[52].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 DRK  1 BRD  1 SAM
mobs[53].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[55].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[56].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[57].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[58].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1 } -- 1 WAR  1 MNK  1 WHM
mobs[59].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[60].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.DRK] = 1 } -- 1 MNK  1 WHM  1 DRK
mobs[61].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.PLD] = 1 } -- 1 MNK  1 WHM  1 PLD
mobs[62].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[63].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.DRG] = 1 } -- 1 MNK  1 WHM  1 DRG
mobs[64].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.SMN] = 1 } -- 1 DRK  1 BST  1 SMN
mobs[65].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 MNK  1 DRK  1 BRD
mobs[66].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 RDM  1 THF
mobs[68].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 BLM  1 PLD  1 SAM
mobs[69].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[70].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[71].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[72].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1 } -- 1 THF  1 DRG
mobs[73].mobchildren = { [xi.job.DRK] = 1, [xi.job.SAM] = 1 } -- 1 DRK  1 SAM
mobs[75].mobchildren = { [xi.job.PLD] = 1, [xi.job.NIN] = 1 } -- 1 PLD  1 NIN
mobs[76].mobchildren = { [xi.job.WAR] = 1, [xi.job.BRD] = 1 } -- 1 WAR  1 BRD
mobs[77].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRG] = 1 } -- 1 BLM  1 DRG
mobs[78].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.PLD] = 1 } -- 1 MNK  1 BLM  1 PLD
mobs[79].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.DRK] = 1 } -- 1 MNK  1 BLM  1 DRK
mobs[82].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[83].mobchildren = { [xi.job.PLD] = 1, [xi.job.NIN] = 1 } -- 1 PLD  1 NIN
mobs[86].mobchildren = { [xi.job.WAR] = 1, [xi.job.NIN] = 1 } -- 1 WAR  1 NIN
mobs[87].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 DRK  1 BRD  1 SAM
mobs[88].mobchildren = { [xi.job.MNK] = 2, [xi.job.DRK] = 1 } -- 2 MNK  1 DRK
mobs[89].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 2 } -- 1 WAR  1 MNK  1 WHM  1 BLM  2 RNG
mobs[90].mobchildren = { [xi.job.WHM] = 1, [xi.job.PLD] = 1 } -- 1 WHM  1 PLD
mobs[91].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[93].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.DRG] = 1 } -- 1 MNK  1 THF  1 DRG
mobs[95].mobchildren = { [xi.job.THF] = 1, [xi.job.PLD] = 1 } -- 1 THF  1 PLD
mobs[96].mobchildren = { [xi.job.RDM] = 1, [xi.job.NIN] = 1 } -- 1 RDM  1 NIN
mobs[97].mobchildren = { [xi.job.BLM] = 1, [xi.job.THF] = 1 } -- 1 BLM  1 THF
mobs[98].mobchildren = { [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 BRD  1 NIN
mobs[99].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 DRK  1 BRD
mobs[100].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1 } -- 1 RDM  1 PLD
mobs[101].mobchildren = { [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 SAM  1 DRG
mobs[102].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[105].mobchildren = { [xi.job.RDM] = 1, [xi.job.SAM] = 1 } -- 1 RDM  1 SAM
mobs[106].mobchildren = { [xi.job.BLM] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 NIN
mobs[107].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRG] = 1 } -- 1 MNK  1 DRG
mobs[108].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 DRG
mobs[109].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1 } -- 1 BLM  1 PLD
mobs[112].mobchildren = { [xi.job.WAR] = 3 } -- 3 WAR
mobs[113].mobchildren = { [xi.job.BLM] = 3 } -- 3 BLM
mobs[114].mobchildren = { [xi.job.MNK] = 3 } -- 3 MNK
mobs[115].mobchildren = { [xi.job.DRK] = 3 } -- 3 DRK
mobs[116].mobchildren = { [xi.job.RNG] = 3 } -- 3 RNG
mobs[117].mobchildren = { [xi.job.DRG] = 3 } -- 3 DRG
mobs[118].mobchildren = { [xi.job.THF] = 4 } -- 4 THF
mobs[119].mobchildren = { [xi.job.WHM] = 4 } -- 4 WHM
mobs[120].mobchildren = { [xi.job.PLD] = 4 } -- 4 PLD
mobs[121].mobchildren = { [xi.job.SMN] = 3 } -- 3 SMN
mobs[122].mobchildren = { [xi.job.SAM] = 4 } -- 4 SAM
mobs[123].mobchildren = { [xi.job.BRD] = 4 } -- 4 BRD
mobs[124].mobchildren = { [xi.job.NIN] = 3 } -- 3 NIN
mobs[125].mobchildren = { [xi.job.RDM] = 3 } -- 3 RDM
mobs[126].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 WAR  1 THF  1 BRD
mobs[127].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 BLM  1 PLD  1 DRK
mobs[128].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.RNG] = 1 } -- 1 MNK  1 WHM  1 RNG
mobs[129].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[130].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRG] = 1 } -- 1 MNK  1 DRG
mobs[131].mobchildren = { [xi.job.RNG] = 1, [xi.job.DRG] = 1 } -- 1 RNG  1 DRG
mobs[132].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 RNG  1 SAM  1 NIN
mobs[133].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 RDM  1 THF  1 BRD
mobs[134].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD  1 DRK
mobs[135].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD  1 DRK
mobs[136].mobchildren = { [xi.job.WHM] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 WHM  1 SAM  1 DRG
mobs[137].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.DRG] = 1 } -- 1 WAR  1 BLM  1 DRG
mobs[138].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF  1 BRD
mobs[139].mobchildren = { [xi.job.RNG] = 1, [xi.job.NIN] = 1 } -- 1 RNG  1 NIN
mobs[140].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 MNK  1 SAM
mobs[141].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 WHM  1 BLM  1 RDM
mobs[142].mobchildren = { [xi.job.BST] = 3 } -- 3 BST

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[25].nmchildren = { true, 26 }
mobs[28].nmchildren = { true, 29, 30, 31 }
mobs[42].nmchildren = { true, 144 } -- Be'Ebo Tortoisedriver (BST)
mobs[53].nmchildren = { true, 54, 145 } -- Gi'Pha Manameister (BLM)
mobs[55].nmchildren = { true, 146 } -- Gu'Nhi Noondozer (SMN)
mobs[62].nmchildren = { true, 143 } -- Aa'Nyu Dismantler (DRK)
mobs[69].nmchildren = { true, 148 } -- Ke'Dhe Cannonball (MNK)
mobs[88].nmchildren = { true, 89 }
mobs[89].nmchildren = { true, 154, 155, 156 } -- Vanguard Vindicator/Constable/Militant (3x 10min TEs)
mobs[91].nmchildren = { true, 92, 147 } -- Ze'Vho Fallsplitter (DRK)
mobs[110].nmchildren = { true, 111, 149, 150, 151, 152, 153 } -- Boss spawns 5 NMs (Effigy Shields) and 1 statue

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = 80.0000, y = 0.1000, z = -72.0000, rot = 255 } -- W1 Mog C
mobs[2].pos = { x = 63.0000, y = 0.1000, z = -68.0000, rot = 255 } -- W1 Mog N
mobs[3].pos = { x = 63.0000, y = 0.1000, z = -79.0000, rot = 255 } -- W1 Mog S
mobs[4].pos = { x = 42.0000, y = 0.1000, z = -54.0000, rot = 60 } -- W1 AH E.Alley S
mobs[5].pos = { x = 38.0000, y = 0.1000, z = -41.0000, rot = 60 } -- W1 AH E.Alley C
mobs[6].pos = { x = 40.0000, y = 0.1000, z = -90.0000, rot = 195 } -- W1 Choc C
mobs[7].pos = { x = 47.0000, y = 0.1000, z = -90.0000, rot = 195 } -- W1 Choc E
mobs[8].pos = { x = 30.0000, y = 0.1000, z = -92.0000, rot = 195 } -- W1 Choc W
mobs[9].pos = { x = 19.0000, y = 0.1000, z = -72.0000, rot = 50 } -- W1 AH EE
mobs[10].pos = { x = 16.0000, y = 0.1000, z = -92.0000, rot = 188 } -- W1 AH E
mobs[11].pos = { x = 9.0000, y = 0.1000, z = -74.0000, rot = 60 } -- W1 W of Choc
mobs[12].pos = { x = 0.1000, y = 0.1000, z = -74.0000, rot = 60 } -- W1 AH C
mobs[13].pos = { x = -9.0000, y = 0.1000, z = -73.0000, rot = 67 } -- W1 AH W
mobs[14].pos = { x = -19.0000, y = 0.1000, z = -71.0000, rot = 79 } -- W1 AH WW
mobs[15].pos = { x = 16.3665, y = -3.0000, z = -54.6565, rot = 175 } -- W1 AHtop EE
mobs[16].pos = { x = 16.7420, y = -3.0000, z = -50.0910, rot = 45 } -- W1 AHtop E
mobs[17].pos = { x = -0.0019, y = -3.0000, z = -57.3668, rot = 191 } -- W1 AHtop C
mobs[18].pos = { x = -8.2200, y = -3.0000, z = -51.7460, rot = 72 } -- W1 AHtop W
mobs[19].pos = { x = -16.4125, y = -3.0000, z = -54.3911, rot = 207 } -- W1 AHtop WW
mobs[20].pos = { x = -33.5220, y = 0.1000, z = -80.0360, rot = 0 } -- W1 SW of AH
mobs[21].pos = { x = -26.6340, y = -1.0010, z = -108.4400, rot = 189 } -- W1 S.Gate NW
mobs[22].pos = { x = -16.2940, y = -1.0010, z = -115.3930, rot = 189 } -- W1 S.Gate C
mobs[23].pos = { x = -26.6340, y = -1.0010, z = -115.3930, rot = 189 } -- W1 S.Gate W
mobs[24].pos = { x = -5.8270, y = -1.0010, z = -122.2760, rot = 189 } -- W1 S.Gate SE
mobs[25].pos = { x = -16.2940, y = -1.0010, z = -122.2760, rot = 189 } -- W1 S.Gate S
mobs[26].pos = { x = -23.9244, y = -1.0008, z = -121.6056, rot = 227 } -- W1 spawned by 330
mobs[27].pos = { x = -26.6340, y = -1.0010, z = -122.2760, rot = 189 } -- W1 S.Gate SW
mobs[28].pos = { x = -37.6270, y = 0.1000, z = -56.7670, rot = 61 } -- W1 W of AH (S)
mobs[29].pos = { x = -35.4041, y = 0.0000, z = -58.2174, rot = 60 } -- W1 spawned by 313
mobs[30].pos = { x = -38.9458, y = 0.0000, z = -58.3568, rot = 60 } -- W1 spawned by 313
mobs[31].pos = { x = -37.0648, y = 0.0000, z = -53.8018, rot = 64 } -- W1 spawned by 313
mobs[32].pos = { x = -37.6270, y = 0.1000, z = -37.3260, rot = 61 } -- W1 W of AH (C)
mobs[33].pos = { x = -26.4260, y = 0.1000, z = -25.1600, rot = 130 } -- W1 W of AH (NE)
mobs[34].pos = { x = -44.8000, y = 0.1000, z = -20.0420, rot = 63 } -- W1 W of AH (NW)
mobs[35].pos = { x = -1.2620, y = 0.1000, z = -24.8630, rot = 0 } -- W1 AH N.Alley C
mobs[36].pos = { x = -4.7990, y = 0.1000, z = -19.6340, rot = 64 } -- W1 AH N.Alley Catwalk
mobs[37].pos = { x = 30.2150, y = 0.1000, z = -25.6920, rot = 64 } -- W1 AH E.Alley N
mobs[38].pos = { x = -41.0685, y = 0.0000, z = -2.1238, rot = 255 } -- W1 W of Boytz (S)
mobs[39].pos = { x = -43.9610, y = 0.1000, z = -2.5680, rot = 129 } -- W1 W of Boytz (C)
mobs[40].pos = { x = -43.9610, y = 0.1000, z = 4.7880, rot = 129 } -- W1 W of Boytz (N)
mobs[41].pos = { x = -57.7503, y = 0.0000, z = 41.0368, rot = 192 } -- W1 Corner Shed E
mobs[42].pos = { x = -64.7290, y = 0.1000, z = 38.3250, rot = 64 } -- W1 Corner Sheds W
mobs[43].pos = { x = -15.6860, y = 7.0000, z = 31.9010, rot = 128 } -- W1 O.St. Entr N
mobs[44].pos = { x = -15.6860, y = 7.0000, z = 28.2850, rot = 128 } -- W1 O.St. Entr S
mobs[45].pos = { x = 2.3720, y = 7.0000, z = 12.6130, rot = 189 } -- W1 O.St. NW
mobs[46].pos = { x = 2.2420, y = 7.0000, z = -7.8800, rot = 194 } -- W1 O.St. SW
mobs[47].pos = { x = 21.4750, y = 7.0000, z = 0.7430, rot = 128 } -- W1 O.St. NE
mobs[48].pos = { x = 21.4750, y = 7.0000, z = -4.0660, rot = 128 } -- W1 O.St. SE
mobs[49].pos = { x = 31.2000, y = 7.0000, z = 8.1670, rot = 64 } -- W1 O.St. CW S.Well Base
mobs[50].pos = { x = 31.4770, y = 0.1000, z = 24.3760, rot = 64 } -- W1 O.St. CW S.Well#2
mobs[51].pos = { x = 72.6660, y = 7.0000, z = 2.4520, rot = 64 } -- W1 Alch NW
mobs[52].pos = { x = 82.1850, y = 7.0000, z = 2.8380, rot = 64 } -- W1 Alch NE
mobs[53].pos = { x = 90.6870, y = 7.0000, z = -4.3180, rot = 128 } -- W1 Alch E
mobs[54].pos = { x = 90.0454, y = 7.0000, z = -5.9869, rot = 133 } -- W1 spawned by 222
mobs[55].pos = { x = 71.4140, y = 7.0000, z = -34.4890, rot = 189 } -- W1 Gal.Dist. S
mobs[56].pos = { x = 78.4140, y = 7.0000, z = -34.4890, rot = 189 } -- W1 Gal.Dist. E
mobs[57].pos = { x = 64.4140, y = 7.0000, z = -34.4890, rot = 189 } -- W1 Gal.Dist. W
mobs[58].pos = { x = -73.7200, y = 0.1000, z = 5.0670, rot = 251 } -- W1 Under Bridge NE
mobs[59].pos = { x = -73.7200, y = 0.1000, z = -0.0670, rot = 251 } -- W1 Under Bridge E
mobs[60].pos = { x = -73.7200, y = 0.1000, z = -5.0670, rot = 251 } -- W1 Under Bridge SE
mobs[61].pos = { x = -88.0950, y = 0.1000, z = 5.0670, rot = 251 } -- W1 Under Bridge NW
mobs[62].pos = { x = -88.0950, y = 0.1000, z = -0.0670, rot = 251 } -- W1 Under Bridge W
mobs[63].pos = { x = -88.0950, y = 0.1000, z = -5.0670, rot = 251 } -- W1 Under Bridge SW
mobs[64].pos = { x = -109.6730, y = 0.1000, z = -11.0810, rot = 226 } -- W1 Chokepoint/Zeruhn Sect
mobs[65].pos = { x = -96.7580, y = 8.0000, z = 41.3720, rot = 128 } -- W1 Markets S
mobs[66].pos = { x = -102.4470, y = 8.0000, z = 51.0570, rot = 64 } -- W1 Markets C
mobs[67].pos = { x = -111.2602, y = 12.0000, z = 65.9353, rot = 64 } -- W1 Markets W
mobs[68].pos = { x = -98.2070, y = 12.0000, z = 67.7380, rot = 64 } -- W1 Markets E
mobs[69].pos = { x = -103.9010, y = 12.0000, z = 75.3540, rot = 64 } -- W1 Markets N
mobs[70].pos = { x = -107.8130, y = 0.1000, z = -35.0670, rot = 189 } -- W1 Depot Ramp Base
mobs[71].pos = { x = -101.6930, y = -8.0000, z = -59.7830, rot = 128 } -- W1 Depot Ramp Top
mobs[72].pos = { x = -51.1570, y = -8.0000, z = -54.7510, rot = 128 } -- W1 Depot Balc N
mobs[73].pos = { x = -51.1570, y = -8.0000, z = -62.6710, rot = 128 } -- W1 Depot Balc C
mobs[74].pos = { x = -58.0759, y = -8.0000, z = -79.5513, rot = 194 } -- W1 Depot Balc S
mobs[75].pos = { x = -126.8770, y = -0.5030, z = -1.4820, rot = 64 } -- W1 Zer N.Ramp (NW)
mobs[76].pos = { x = -131.5740, y = -0.5030, z = -1.4820, rot = 64 } -- W1 Zer N.Ramp (SW)
mobs[77].pos = { x = -135.3400, y = 0.1000, z = -28.9850, rot = 236 } -- W1 Zer S.Clearing (NW)
mobs[78].pos = { x = -127.1160, y = 0.1000, z = -36.2390, rot = 189 } -- W1 Zer S.Clearing (N)
mobs[79].pos = { x = -119.2210, y = 0.1000, z = -37.0950, rot = 189 } -- W1 Zer S.Clearing (NE)
mobs[80].pos = { x = -123.7850, y = -3.4933, z = -74.1327, rot = 189 } -- W1 Zer S.Clearing (S)
mobs[81].pos = { x = -122.9294, y = 0.0000, z = -78.9028, rot = 165 } -- W1 Zer S.Clearing (SE)
mobs[82].pos = { x = -137.0120, y = -11.9170, z = 28.5440, rot = 251 } -- W1 Zer N.Ramp (top)
mobs[83].pos = { x = -146.9680, y = 0.1000, z = 2.7700, rot = 64 } -- W1 Zer W.Clearing (NE)
mobs[84].pos = { x = -155.1991, y = 0.0000, z = 2.2134, rot = 28 } -- W1 Zer W.Clearing (N)
mobs[85].pos = { x = -164.7690, y = -3.4933, z = -2.0815, rot = 2 } -- W1 Zer W.Clearing (NW)
mobs[86].pos = { x = -158.7900, y = 0.1000, z = -16.9500, rot = 236 } -- W1 Zer W.Clearing (W)
mobs[87].pos = { x = -153.0240, y = 0.1000, z = -31.1280, rot = 189 } -- W1 Zer W.Clearing (S)
mobs[88].pos = { x = -153.4530, y = 0.1000, z = -41.7070, rot = 189 } -- W1 Zer W.Ramp Base
mobs[89].pos = { x = -64.7290, y = 0.1000, z = 38.3250, rot = 64 } -- W1 spawned by 13
mobs[90].pos = { x = -182.2640, y = -8.5270, z = -27.2260, rot = 189 } -- W1 Zer W.Ramp (S)
mobs[91].pos = { x = -186.9840, y = -8.5270, z = -21.7460, rot = 251 } -- W1 Zer W.Ramp (W)
mobs[92].pos = { x = -177.2654, y = -8.3147, z = -13.5608, rot = 17 } -- W1 spawned by 1
mobs[93].pos = { x = -186.9840, y = -8.6170, z = -15.0140, rot = 251 } -- W1 Zer W.Ramp (N)
mobs[94].pos = { x = -29.5942, y = 0.0000, z = 23.0013, rot = 0 } -- W1 N of Boytz, Catwalk
mobs[95].pos = { x = -13.8890, y = 0.1000, z = 29.5550, rot = 128 } -- W1 O.St. Entr Bridge
mobs[96].pos = { x = -0.8500, y = 0.1000, z = 37.7380, rot = 128 } -- W1 O.St. Entr Catwalk
mobs[97].pos = { x = 8.7370, y = 0.1000, z = 24.5640, rot = 64 } -- W1 O.St. CW Enc.#1
mobs[98].pos = { x = 2.1530, y = 0.1000, z = 9.7220, rot = 189 } -- W1 O.St. CW Bridge
mobs[99].pos = { x = 9.0090, y = 0.1000, z = -0.9580, rot = 189 } -- W1 O.St. CW W Enc.#1
mobs[100].pos = { x = 9.0090, y = 0.1000, z = -15.2610, rot = 189 } -- W1 O.St. CW W Enc.#2
mobs[101].pos = { x = 16.5760, y = 0.1000, z = 7.9920, rot = 128 } -- W1 O.St. CW Enc.#2
mobs[102].pos = { x = 37.0860, y = 0.1000, z = 7.9920, rot = 128 } -- W1 O.St. CW Enc.#3
mobs[103].pos = { x = 37.0316, y = 0.0000, z = 20.2594, rot = 147 } -- W1 O.St. CW S.Well#1
mobs[104].pos = { x = 60.1261, y = 0.0000, z = 8.1024, rot = 129 } -- W1 O.St. CW Enc.#4
mobs[105].pos = { x = 60.1160, y = 0.1000, z = -1.5100, rot = 189 } -- W1 O.St. CW E Enc.#1
mobs[106].pos = { x = 53.2580, y = 0.1000, z = -13.1160, rot = 251 } -- W1 O.St. CW E Enc.#2
mobs[107].pos = { x = 61.2730, y = 0.1000, z = -20.2930, rot = 191 } -- W1 O.St. CW E Enc.#3
mobs[108].pos = { x = 70.1440, y = 0.1000, z = 10.0930, rot = 64 } -- W1 O.St. CW Enc.#5
mobs[109].pos = { x = 86.0280, y = 0.1000, z = 10.0930, rot = 64 } -- W1 O.St. CW Enc.#6
mobs[110].pos = { x = -16.1024, y = -1.0008, z = -124.9145, rot = 192 } -- W2 Final Boss South Gate
mobs[111].pos = { x = -31.7986, y = -1.0008, z = -122.3744, rot = 218 } -- W2 W of Final Boss
mobs[112].pos = { x = -20.0432, y = -3.0000, z = -58.9616, rot = 56 } -- W3 AH WW
mobs[113].pos = { x = -12.3780, y = -3.0000, z = -61.4330, rot = 89 } -- W3 AH W
mobs[114].pos = { x = 0.1313, y = -3.0000, z = -62.5700, rot = 66 } -- W3 AH C
mobs[115].pos = { x = 10.7283, y = -3.0000, z = -61.6430, rot = 30 } -- W3 AH E
mobs[116].pos = { x = 19.1724, y = -3.0000, z = -59.4239, rot = 67 } -- W3 AH EE
mobs[117].pos = { x = 18.1155, y = 0.0000, z = -99.2747, rot = 144 } -- W3 W of Choco (N)
mobs[118].pos = { x = 16.5028, y = 0.0000, z = -110.3989, rot = 198 } -- W3 W of Choco (C)
mobs[119].pos = { x = 16.5175, y = 0.0000, z = -121.5445, rot = 190 } -- W3 W of Choco (S)
mobs[120].pos = { x = 9.4977, y = 0.0000, z = -121.5922, rot = 201 } -- W3 far W of Choco
mobs[121].pos = { x = 31.6634, y = 0.0000, z = -64.0405, rot = 86 } -- W3 Alley W
mobs[122].pos = { x = 39.7658, y = 0.0000, z = -59.6651, rot = 64 } -- W3 Alley E
mobs[123].pos = { x = 54.8432, y = 0.0000, z = -67.1650, rot = 93 } -- W3 Outside Mog NW
mobs[124].pos = { x = 64.4780, y = 0.0000, z = -66.9347, rot = 103 } -- W3 Outside Mog N
mobs[125].pos = { x = 76.5238, y = 0.0000, z = -67.1802, rot = 92 } -- W3 Outside Mog NE
mobs[126].pos = { x = 62.2124, y = 0.0000, z = -85.9488, rot = 159 } -- W3 Outside Mog SW
mobs[127].pos = { x = 67.9729, y = 0.0000, z = -85.3997, rot = 171 } -- W3 Outside Mog S
mobs[128].pos = { x = 77.0071, y = 0.0000, z = -79.6646, rot = 140 } -- W3 Outside Mog SE
mobs[129].pos = { x = 90.1017, y = 0.6234, z = -71.7804, rot = 128 } -- W3 Mog Clockwise #1
mobs[130].pos = { x = 90.4399, y = 0.9944, z = -57.0740, rot = 66 } -- W3 Mog Clockwise #2
mobs[131].pos = { x = 90.7621, y = 0.9944, z = -87.7146, rot = 190 } -- W3 Mog Clockwise #12
mobs[132].pos = { x = 102.6341, y = 0.9944, z = -56.2798, rot = 114 } -- W3 Mog Clockwise #3
mobs[133].pos = { x = 102.8179, y = 0.9944, z = -88.3096, rot = 146 } -- W3 Mog Clockwise #11
mobs[134].pos = { x = 110.9067, y = 0.9944, z = -56.7192, rot = 121 } -- W3 Mog Clockwise #4
mobs[135].pos = { x = 110.8669, y = 0.9944, z = -88.1171, rot = 135 } -- W3 Mog Clockwise #10
mobs[136].pos = { x = 101.4331, y = 0.9944, z = -65.9948, rot = 185 } -- W3 Mog N
mobs[137].pos = { x = 101.6548, y = 0.9944, z = -78.9599, rot = 69 } -- W3 Mog S
mobs[138].pos = { x = 119.3663, y = 0.9944, z = -54.6408, rot = 89 } -- W3 Mog Clockwise #5
mobs[139].pos = { x = 118.7241, y = 0.9944, z = -88.4772, rot = 161 } -- W3 Mog Clockwise #9
mobs[140].pos = { x = 117.2807, y = 0.9944, z = -65.8843, rot = 128 } -- W3 Mog Clockwise #6
mobs[141].pos = { x = 117.2807, y = 0.9944, z = -77.7863, rot = 128 } -- W3 Mog Clockwise #8
mobs[142].pos = { x = 117.2442, y = 0.9944, z = -71.5537, rot = 128 } -- W3 Mog Clockwise #7

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------


mobs[6].patrolPath = { { x = 40, y = 0, z = -85 }, { x = 40, y = 1, z = -96 } } -- W1 Choc C
mobs[35].patrolPath = { { x = 3, y = 0, z = -25 }, { x = -12, y = 0, z = -25 } } -- W1 AH N.Alley C
mobs[11].patrolPath = { { x = 7, y = 0, z = -100 }, { x = 5, y = 0, z = -79 } } -- W1 W of Choc
mobs[21].patrolPath = { { x = -24, y = 0, z = -100 }, { x = -24, y = 0, z = -79 } } -- W1 W of Choc
mobs[14].patrolPath = { { x = -20, y = 0, z = -79 }, { x = -16, y = -3, z = -64 } } -- W1 AH WW
mobs[12].patrolPath = { { x = 0, y = 0, z = -79 }, { x = 0, y = -3, z = -64 } } -- W1 AH C
mobs[9].patrolPath = { { x = 20, y = 0, z = -79 }, { x = 16, y = -3, z = -64 } } -- W1 AH EE
mobs[34].patrolPath = { { x = -44, y = 0, z = -29 }, { x = -42, y = 0, z = -9 } } -- W1 W of AH (NW)
mobs[25].patrolPath = { { x = -10, y = -1, z = -114 }, { x = -25, y = -1, z = -114 } } -- W1 S.Gate S
mobs[32].patrolPath = { { x = -32, y = 0, z = -38 }, { x = -45, y = 0, z = -38 } } -- W1 W of AH (C)
mobs[58].patrolPath = { { x = -78, y = 0, z = 4 }, { x = -70, y = 0, z = 9 } } -- W1 Under Bridge NE
mobs[60].patrolPath = { { x = -78, y = 0, z = -4 }, { x = -70, y = 0, z = -9 } } -- W1 Under Bridge SE
mobs[59].patrolPath = { { x = -70, y = 0, z = 0 }, { x = -78, y = 0, z = 0 } } -- W1 Under Bridge E
mobs[61].patrolPath = { { x = -94, y = 0, z = 9 }, { x = -87, y = 0, z = 4 } } -- W1 Under Bridge NW
mobs[63].patrolPath = { { x = -94, y = 0, z = -9 }, { x = -87, y = 0, z = -4 } } -- W1 Under Bridge SW
mobs[62].patrolPath = { { x = -94, y = 0, z = 0 }, { x = -86, y = 0, z = 0 } } -- W1 Under Bridge W
mobs[75].patrolPath = { { x = -128, y = -1.6, z = 4 }, { x = -128, y = 0, z = -6 } } -- W1 Zer N.Ramp (SW)
mobs[76].patrolPath = { { x = -132, y = 0, z = -6 }, { x = -132, y = -1.6, z = 4 } } -- W1 Zer N.Ramp (NW)
mobs[70].patrolPath = { { x = -108, y = -8, z = -60 }, { x = -108, y = -0, z = -35 }, { x = -108, y = 0, z = -14 } } -- W1 Depot Ramp Base
mobs[71].patrolPath = { { x = -102, y = -8, z = -60 }, { x = -60, y = 0, z = -60 } } -- W1 Depot Ramp Top
mobs[47].patrolPath = { { x = 31, y = 7, z = -2 }, { x = 4, y = 7, z = -2 } } -- W1 O.St. NE
mobs[49].patrolPath = { { x = 31, y = 7, z = 5 }, { x = 31, y = 3, z = 16 } } -- W1 O.St. CW S.Well Base
mobs[50].patrolPath = { { x = 31, y = 0, z = 24 }, { x = 31, y = 2, z = 18 } } -- W1 O.St. CW S.Well#2
mobs[104].patrolPath = { { x = 74, y = 0, z = 8 }, { x = 60, y = 0, z = 8 } } -- W1 O.St. CW Enc.#4
mobs[102].patrolPath = { { x = 36, y = 0, z = 8 }, { x = 21, y = 0, z = 8 } } -- W1 O.St. CW Enc.#3

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[7].eyes = xi.dynamis.eye.BLUE
mobs[8].eyes = xi.dynamis.eye.BLUE
mobs[25].eyes = xi.dynamis.eye.BLUE
mobs[26].eyes = xi.dynamis.eye.GREEN
mobs[31].eyes = xi.dynamis.eye.GREEN
mobs[38].eyes = xi.dynamis.eye.GREEN
mobs[39].eyes = xi.dynamis.eye.BLUE
mobs[42].eyes = xi.dynamis.eye.BLUE
mobs[81].eyes = xi.dynamis.eye.GREEN
mobs[82].eyes = xi.dynamis.eye.BLUE
mobs[85].eyes = xi.dynamis.eye.BLUE
mobs[92].eyes = xi.dynamis.eye.BLUE
mobs[104].eyes = xi.dynamis.eye.GREEN
mobs[112].eyes = xi.dynamis.eye.BLUE
mobs[114].eyes = xi.dynamis.eye.GREEN
mobs[116].eyes = xi.dynamis.eye.BLUE
mobs[119].eyes = xi.dynamis.eye.BLUE
mobs[120].eyes = xi.dynamis.eye.BLUE
mobs[121].eyes = xi.dynamis.eye.GREEN
mobs[122].eyes = xi.dynamis.eye.BLUE
mobs[124].eyes = xi.dynamis.eye.BLUE
mobs[125].eyes = xi.dynamis.eye.GREEN
mobs[127].eyes = xi.dynamis.eye.GREEN
mobs[129].eyes = xi.dynamis.eye.GREEN
mobs[132].eyes = xi.dynamis.eye.BLUE
mobs[133].eyes = xi.dynamis.eye.BLUE
mobs[136].eyes = xi.dynamis.eye.GREEN
mobs[137].eyes = xi.dynamis.eye.GREEN
mobs[138].eyes = xi.dynamis.eye.BLUE
mobs[139].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 1, 19, 41, 110, 146, 154, 155, 156 }
mobs[1].timeExtension = 20 -- Adamantking Effigy
mobs[19].timeExtension = 20 -- Adamantking Effigy
mobs[41].timeExtension = 20 -- Adamantking Effigy
mobs[110].timeExtension = 30 -- Gu'Dha Effigy
mobs[146].timeExtension = 30 -- Gu'Nhi Noondozer
mobs[154].timeExtension = 10 -- Vanguard Vindicator
mobs[155].timeExtension = 10 -- Vanguard Constable
mobs[156].timeExtension = 10 -- Vanguard Militant
