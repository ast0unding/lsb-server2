-----------------------------------
-- Era Dynamis - Dynamis-Jeuno spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/jeu.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/jeu.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_JEUNO

local mobs = {}
for i = 1, 183 do
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

mobs[1].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (001-G/R)
mobs[2].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (002-G/R)(30)
mobs[3].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (003-G/R)
mobs[4].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (004-G/R)(30)
mobs[5].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (005-G/R)(HP)
mobs[6].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (006-G/R)
mobs[7].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (007-G/R)
mobs[8].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (008-G/R)
mobs[9].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (009-G/R)(MP)
mobs[10].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (010-G/R)
mobs[11].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (011-G/R)(HP)
mobs[12].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (012-G/R)(MP)
mobs[13].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (013-G/R)
mobs[14].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (014-G/R)
mobs[15].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (015-G/R)
mobs[16].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (016-G/R)(HP)
mobs[17].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (017-G/R)(MP)
mobs[18].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (018-G/R)
mobs[19].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (019-G/R)
mobs[20].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (020-G/R)
mobs[21].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (021-G/R)
mobs[22].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (022-G/R)
mobs[23].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (023-G/R)(HP)
mobs[24].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (024-G/R)(MP)
mobs[25].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (025-G/R)(MP)
mobs[26].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (026-G/R)(HP)
mobs[27].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (027-G/R)
mobs[28].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (028-G/R)
mobs[29].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (029-G/R)(30)
mobs[30].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (030-G/R)(MP)
mobs[31].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (031-G/R)(HP)
mobs[32].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (032-G/R)
mobs[33].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (033-G/R)
mobs[34].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (034-G/R)
mobs[35].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (035-G/R)
mobs[36].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (036-G/R)
mobs[37].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (037-G/R)
mobs[38].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (038-G/R)
mobs[39].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (039-G/R)(MP)
mobs[40].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (040-G/R)(HP)
mobs[41].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (041-G/R)
mobs[42].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (042-G/R)
mobs[43].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (043-G/R)
mobs[44].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '44_killed' } -- (044-G/S)(MP)
mobs[45].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (045-G/R)(30)
mobs[46].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (046-G/R)
mobs[47].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (047-G/R)
mobs[48].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (048-G/R)
mobs[49].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (049-G/R)
mobs[50].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (050-G/R)
mobs[51].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (051-G/R)
mobs[52].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (052-G/R)
mobs[53].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (053-G/R)
mobs[54].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (054-G/R)
mobs[55].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (055-G/R)
mobs[56].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (056-G/R)(MP)
mobs[57].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (057-G/R)(HP)
mobs[58].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (058-G/R)
mobs[59].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (059-G/R)
mobs[60].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (060-G/R)
mobs[61].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (061-G/R)
mobs[62].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (062-G/R)(MP)
mobs[63].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (063-G/R)(HP)
mobs[64].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '64_killed' } -- (064-G/S)(MP)
mobs[65].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (065-G/R)(HP)
mobs[66].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (066-G/R)
mobs[67].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (067-G/R)(MP)
mobs[68].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (068-G/R)(HP)
mobs[69].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (069-G/R)
mobs[70].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (070-G/R)
mobs[71].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (071-G/R)
mobs[72].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (072-G/R)
mobs[73].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '73_killed' } -- (073-G/R)
mobs[74].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (074-G/R)
mobs[75].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (075-G/R)
mobs[76].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (076-G/R)(MP)
mobs[77].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (077-G/R)(HP)
mobs[78].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (078-G/R)(MP)
mobs[79].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (079-G/R)(HP)
mobs[80].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (080-G/R)(HP)
mobs[81].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (081-G/R)(MP)
mobs[82].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (082-G/R)(MP)
mobs[83].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (083-G/R)(HP)
mobs[84].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (084-G/R)(HP)
mobs[85].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (085-G/R)(MP)
mobs[86].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (086-G/R)
mobs[87].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (087-G/R)
mobs[88].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (088-G/R)
mobs[89].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (089-G/R)
mobs[90].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (090-G/R)
mobs[91].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (091-G/R)
mobs[92].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (092-G/R)
mobs[93].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (093-G/R)(HP)
mobs[94].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (094-G/R)(MP)
mobs[95].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (095-G/R)(MP)
mobs[96].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (096-G/R)
mobs[97].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (097-G/R)
mobs[98].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '98_killed' } -- (098-G/R)
mobs[99].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '99_killed' } -- (099-G/R)
mobs[100].info = { mobType = 'Statue', name = 'Goblin Replica', deathVar = '100_killed' } -- (100-G/R)
mobs[101].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (101-G/R)(MP)
mobs[102].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (102-G/R)(HP)
mobs[103].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (103-G/R)
mobs[104].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (104-G/R)
mobs[105].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (105-G/R)
mobs[106].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (106-G/R)
mobs[107].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (107-G/R)
mobs[108].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (108-G/R)
mobs[109].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (109-G/R)
mobs[110].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (110-G/R)
mobs[111].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (111-G/R)
mobs[112].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (112-G/R)
mobs[114].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (114-G/R)
mobs[115].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (115-G/R)
mobs[116].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (116-G/R)
mobs[117].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (117-G/R)
mobs[118].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (118-G/R)(MP)
mobs[119].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (119-G/R)(HP)
mobs[120].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (120-G/R)
mobs[121].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (121-G/R)
mobs[122].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (122-G/R)(MP)
mobs[123].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (123-G/R)(HP)
mobs[124].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (124-G/R)
mobs[125].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (125-G/R)
mobs[126].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (126-G/R)(HP)
mobs[127].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (127-G/R)(MP)
mobs[128].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (128-G/R)(HP)
mobs[129].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (129-G/R)(MP)
mobs[130].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (130-G/R)
mobs[131].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (131-G/R)
mobs[132].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (132-G/R)
mobs[133].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (133-G/R)
mobs[134].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (134-G/R)
mobs[135].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (135-G/R)
mobs[136].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (136-G/R)
mobs[137].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (137-G/R)
mobs[138].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (138-G/R)
mobs[139].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (139-G/R)
mobs[140].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (140-G/R)
mobs[141].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (141-G/R)
mobs[142].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (142-G/R)
mobs[143].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (143-G/R)
mobs[144].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (144-G/R)
mobs[145].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (145-G/R)
mobs[146].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (146-G/R)
mobs[147].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (147-G/R)
mobs[148].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (148-G/R)
mobs[149].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (149-G/R)
mobs[150].info = { mobType = 'Statue', name = 'Goblin Replica' } -- (150-G/R)(MP)

-- NM's and Megaboss
mobs[113].info = { mobType = 'NM', name = 'Goblin Golem', deathVar = 'MegaBoss_Killed' } -- 113-Replica NM (Goblin Golem)(30)
mobs[151].info = { mobType = 'NM', name = 'Gabblox Magpietongue', family = 'Goblin', job = 'RDM' } -- Gabblox Magpietongue
mobs[152].info = { mobType = 'NM', name = 'Tufflix Loglimbs', family = 'Goblin', job = 'PLD' } -- Tufflix Loglimbs
mobs[153].info = { mobType = 'NM', name = 'Cloktix Longnail', family = 'Goblin', job = 'DRK' } -- Cloktix Longnail
mobs[154].info = { mobType = 'NM', name = 'Smeltix Thickhide', family = 'Goblin', job = 'WAR' } -- Smeltix Thickhide
mobs[155].info = { mobType = 'NM', name = 'Jabkix Pigeonpecs', family = 'Goblin', job = 'MNK' } -- Jabkix Pigeonpecs
mobs[156].info = { mobType = 'NM', name = 'Wasabix Callusdigit', family = 'Goblin', job = 'SAM' } -- Wasabix Callusdigit
mobs[157].info = { mobType = 'NM', name = 'Hermitrix Toothrot', family = 'Goblin', job = 'BLM' } -- Hermitrix Toothrot
mobs[158].info = { mobType = 'NM', name = 'Wyrmwix Snakespecs', family = 'Goblin', job = 'DRG' } -- Wyrmwix Snakespecs
mobs[159].info = { mobType = 'NM', name = 'Morgmox Moldnoggin', family = 'Goblin', job = 'SMN' } -- Morgmox Moldnoggin
mobs[160].info = { mobType = 'NM', name = 'Sparkspox Sweatbrow', family = 'Goblin', job = 'WAR' } -- Sparkspox Sweatbrow
mobs[161].info = { mobType = 'NM', name = 'Elixmix Hooknose', family = 'Goblin', job = 'RDM' } -- Elixmix Hooknose
mobs[162].info = { mobType = 'NM', name = 'Bandrix Rockjaw', family = 'Goblin', job = 'THF' } -- Bandrix Rockjaw
mobs[163].info = { mobType = 'NM', name = 'Buffrix Eargone', family = 'Goblin', job = 'PLD' } -- Buffrix Eargone
mobs[164].info = { mobType = 'NM', name = 'Humnox Drumbelly', family = 'Goblin', job = 'BRD' } -- Humnox Drumbelly
mobs[165].info = { mobType = 'NM', name = 'Ticktox Beadyeyes', family = 'Goblin', job = 'DRK' } -- Ticktox Beadyeyes
mobs[166].info = { mobType = 'NM', name = 'Lurklox Dhalmelneck', family = 'Goblin', job = 'RNG' } -- Lurklox Dhalmelneck
mobs[167].info = { mobType = 'NM', name = 'Trailblix Goatmug', family = 'Goblin', job = 'BST' } -- Trailblix Goatmug
mobs[168].info = { mobType = 'NM', name = 'Kikklix Longlegs', family = 'Goblin', job = 'MNK' } -- Kikklix Longlegs
mobs[169].info = { mobType = 'NM', name = 'Karashix Swollenskull', family = 'Goblin', job = 'SAM' } -- Karashix Swollenskull
mobs[170].info = { mobType = 'NM', name = 'Mortilox Wartpaws', family = 'Goblin', job = 'SMN' } -- Mortilox Wartpaws
mobs[171].info = { mobType = 'NM', name = 'Rutrix Hamgams', family = 'Goblin', job = 'BST' } -- Rutrix Hamgams
mobs[172].info = { mobType = 'NM', name = 'Snypestix Eaglebeak', family = 'Goblin', job = 'NIN' } -- Snypestix Eaglebeak
mobs[173].info = { mobType = 'NM', name = 'Anvilix Sootwrists', family = 'Goblin', job = 'WAR' } -- Anvilix Sootwrists
mobs[174].info = { mobType = 'NM', name = 'Bootrix Jaggedelbow', family = 'Goblin', job = 'MNK' } -- Bootrix Jaggedelbow
mobs[175].info = { mobType = 'NM', name = 'Mobpix Mucousmouth', family = 'Goblin', job = 'THF' } -- Mobpix Mucousmouth
mobs[176].info = { mobType = 'NM', name = 'Distilix Stickytoes', family = 'Goblin', job = 'WHM' } -- Distilix Stickytoes
mobs[177].info = { mobType = 'NM', name = 'Eremix Snottynostril', family = 'Goblin', job = 'BLM' } -- Eremix Snottynostril
mobs[178].info = { mobType = 'NM', name = 'Jabbrox Grannyguise', family = 'Goblin', job = 'RDM' } -- Jabbrox Grannyguise
mobs[179].info = { mobType = 'NM', name = 'Scruffix Shaggychest', family = 'Goblin', job = 'PLD' } -- Scruffix Shaggychest
mobs[180].info = { mobType = 'NM', name = 'Tymexox Ninefingers', family = 'Goblin', job = 'DRK' } -- Tymexox Ninefingers
mobs[181].info = { mobType = 'NM', name = 'Blazox Boneybod', family = 'Goblin', job = 'BST' } -- Blazox Boneybod
mobs[182].info = { mobType = 'NM', name = 'Prowlox Barrelbelly', family = 'Goblin', job = 'RNG' } -- Prowlox Barrelbelly
mobs[183].info = { mobType = 'NM', name = 'Slystix Megapeepers', family = 'Goblin', job = 'RNG' } -- Slystix Megapeepers

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    { }, -- Do not touch this is wave 1
    { '73_killed' }, -- Spawns 98-100 when 73 is killed
    { '98_killed', '99_killed', '100_killed' }, -- Spawns 101-112 when 98,99 and 100 all are killed
    { '44_killed' }, -- Spawns 89-97 when 44 is killed
    { '64_killed' }, -- Spawns 78-89 and 113 (Megaboss) when 64 is killed
    { 'MegaBoss_Killed' } -- Spawns 121-150 when Megaboss killed
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    1,     -- (001-G/R)  Goblin Replica
    2,     -- (002-G/R)  Goblin Replica
    3,     -- (003-G/R)  Goblin Replica
    4,     -- (004-G/R)  Goblin Replica
    5,     -- (005-G/R)  Goblin Replica
    6,     -- (006-G/R)  Goblin Replica
    7,     -- (007-G/R)  Goblin Replica
    8,     -- (008-G/R)  Goblin Replica
    9,     -- (009-G/R)  Goblin Replica
    10,    -- (010-G/R)  Goblin Replica
    11,    -- (011-G/R)  Goblin Replica
    12,    -- (012-G/R)  Goblin Replica
    13,    -- (013-G/R)  Goblin Replica
    14,    -- (014-G/R)  Goblin Replica
    15,    -- (015-G/R)  Goblin Replica
    16,    -- (016-G/R)  Goblin Replica
    17,    -- (017-G/R)  Goblin Replica
    18,    -- (018-G/R)  Goblin Replica
    19,    -- (019-G/R)  Goblin Replica
    20,    -- (020-G/R)  Goblin Replica
    21,    -- (021-G/R)  Goblin Replica
    22,    -- (022-G/R)  Goblin Replica
    23,    -- (023-G/R)  Goblin Replica
    24,    -- (024-G/R)  Goblin Replica
    25,    -- (025-G/R)  Goblin Replica
    26,    -- (026-G/R)  Goblin Replica
    27,    -- (027-G/R)  Goblin Replica
    28,    -- (028-G/R)  Goblin Replica
    29,    -- (029-G/R)  Goblin Replica
    30,    -- (030-G/R)  Goblin Replica
    31,    -- (031-G/R)  Goblin Replica
    32,    -- (032-G/R)  Goblin Replica
    33,    -- (033-G/R)  Goblin Replica
    34,    -- (034-G/R)  Goblin Replica
    35,    -- (035-G/R)  Goblin Replica
    36,    -- (036-G/R)  Goblin Replica
    37,    -- (037-G/R)  Goblin Replica
    38,    -- (038-G/R)  Goblin Replica
    39,    -- (039-G/R)  Goblin Replica
    40,    -- (040-G/R)  Goblin Replica
    41,    -- (041-G/R)  Goblin Replica
    42,    -- (042-G/R)  Goblin Replica
    43,    -- (043-G/R)  Goblin Replica
    44,    -- (044-G/S)  Goblin Replica
    45,    -- (045-G/R)  Goblin Replica
    46,    -- (046-G/R)  Goblin Replica
    47,    -- (047-G/R)  Goblin Replica
    48,    -- (048-G/R)  Goblin Replica
    49,    -- (049-G/R)  Goblin Replica
    50,    -- (050-G/R)  Goblin Replica
    51,    -- (051-G/R)  Goblin Replica
    52,    -- (052-G/R)  Goblin Replica
    53,    -- (053-G/R)  Goblin Replica
    54,    -- (054-G/R)  Goblin Replica
    55,    -- (055-G/R)  Goblin Replica
    56,    -- (056-G/R)  Goblin Replica
    57,    -- (057-G/R)  Goblin Replica
    58,    -- (058-G/R)  Goblin Replica
    59,    -- (059-G/R)  Goblin Replica
    60,    -- (060-G/R)  Goblin Replica
    61,    -- (061-G/R)  Goblin Replica
    62,    -- (062-G/R)  Goblin Replica
    63,    -- (063-G/R)  Goblin Replica
    64,    -- (064-G/S)  Goblin Replica
    65,    -- (065-G/R)  Goblin Replica
    66,    -- (066-G/R)  Goblin Replica
    67,    -- (067-G/R)  Goblin Replica
    68,    -- (068-G/R)  Goblin Replica
    69,    -- (069-G/R)  Goblin Replica
    70,    -- (070-G/R)  Goblin Replica
    71,    -- (071-G/R)  Goblin Replica
    72,    -- (072-G/R)  Goblin Replica
    73,    -- (073-G/R)  Goblin Replica
    74,    -- (074-G/R)  Goblin Replica
    75,    -- (075-G/R)  Goblin Replica
    76,    -- (076-G/R)  Goblin Replica
    77     -- (077-G/R)  Goblin Replica
}

mobs[2].wave =
{
    99 ,    -- (099-G/R)  Goblin Replica
    98 ,    -- (098-G/R)  Goblin Replica
    100     -- (100-G/R)  Goblin Replica
}

mobs[3].wave =
{
    101,    -- (101-G/R)  Goblin Replica
    102,    -- (102-G/R)  Goblin Replica
    103,    -- (103-G/R)  Goblin Replica
    104,    -- (104-G/R)  Goblin Replica
    105,    -- (105-G/R)  Goblin Replica
    106,    -- (106-G/R)  Goblin Replica
    107,    -- (107-G/R)  Goblin Replica
    108,    -- (108-G/R)  Goblin Replica
    109,    -- (109-G/R)  Goblin Replica
    110,    -- (110-G/R)  Goblin Replica
    111,    -- (111-G/R)  Goblin Replica
    112     -- (112-G/R)  Goblin Replica
}

mobs[4].wave =
{
    89,    -- (089-G/R)  Goblin Replica
    90,    -- (090-G/R)  Goblin Replica
    91,    -- (091-G/R)  Goblin Replica
    92,    -- (092-G/R)  Goblin Replica
    93,    -- (093-G/R)  Goblin Replica
    94,    -- (094-G/R)  Goblin Replica
    95,    -- (095-G/R)  Goblin Replica
    96,    -- (096-G/R)  Goblin Replica
    97     -- (097-G/R)  Goblin Replica
}

mobs[5].wave =
{
    78,    -- (078-G/R)  Goblin Replica
    79,    -- (079-G/R)  Goblin Replica
    80,    -- (080-G/R)  Goblin Replica
    81,    -- (081-G/R)  Goblin Replica
    82,    -- (082-G/R)  Goblin Replica
    83,    -- (083-G/R)  Goblin Replica
    84,    -- (084-G/R)  Goblin Replica
    85,    -- (085-G/R)  Goblin Replica
    86,    -- (086-G/R)  Goblin Replica
    87,    -- (087-G/R)  Goblin Replica
    88,    -- (088-G/R)  Goblin Replica
    113,   -- (  113  )  Goblin Golem
    114,   -- (114-G/R)  Goblin Replica
    115,   -- (115-G/R)  Goblin Replica
    116,   -- (116-G/R)  Goblin Replica
    117,   -- (117-G/R)  Goblin Replica
    118,   -- (118-G/R)  Goblin Replica
    119,   -- (119-G/R)  Goblin Replica
    120    -- (120-G/R)  Goblin Replica
}

mobs[6].wave =
{
    121,    -- (121-G/R)  Goblin Replica
    122,    -- (122-G/R)  Goblin Replica
    123,    -- (123-G/R)  Goblin Replica
    124,    -- (124-G/R)  Goblin Replica
    125,    -- (125-G/R)  Goblin Replica
    126,    -- (126-G/R)  Goblin Replica
    127,    -- (127-G/R)  Goblin Replica
    128,    -- (128-G/R)  Goblin Replica
    129,    -- (129-G/R)  Goblin Replica
    130,    -- (130-G/R)  Goblin Replica
    131,    -- (131-G/R)  Goblin Replica
    132,    -- (132-G/R)  Goblin Replica
    133,    -- (133-G/R)  Goblin Replica
    134,    -- (134-G/R)  Goblin Replica
    135,    -- (135-G/R)  Goblin Replica
    136,    -- (136-G/R)  Goblin Replica
    137,    -- (137-G/R)  Goblin Replica
    138,    -- (138-G/R)  Goblin Replica
    139,    -- (139-G/R)  Goblin Replica
    140,    -- (140-G/R)  Goblin Replica
    141,    -- (141-G/R)  Goblin Replica
    142,    -- (142-G/R)  Goblin Replica
    143,    -- (143-G/R)  Goblin Replica
    144,    -- (144-G/R)  Goblin Replica
    145,    -- (145-G/R)  Goblin Replica
    146,    -- (146-G/R)  Goblin Replica
    147,    -- (147-G/R)  Goblin Replica
    148,    -- (148-G/R)  Goblin Replica
    149,    -- (149-G/R)  Goblin Replica
    150     -- (150-G/R)  Goblin Replica
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1 } -- 1 WAR 1 MNK 1 RDM
mobs[2].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1 } -- 1 RDM 1 BRD
mobs[3].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD 1 DRK
mobs[5].mobchildren = { [xi.job.THF] = 1, [xi.job.NIN] = 1 } -- 1 THF 1 NIN
mobs[8].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[9].mobchildren = { [xi.job.MNK] = 1, [xi.job.BST] = 1 } -- 1 MNK 1 BST
mobs[10].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.SMN] = 1 } -- 1 WAR 1 WHM 1 SMN
mobs[11].mobchildren = { [xi.job.RDM] = 1, [xi.job.SAM] = 1 } -- 1 RDM 1 SAM
mobs[13].mobchildren = { [xi.job.MNK] = 2 } -- 2 MNK
mobs[14].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[15].mobchildren = { [xi.job.RDM] = 1, [xi.job.BST] = 1 } -- 1 RDM 1 BST
mobs[16].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD 1 DRK
mobs[17].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[18].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 4 } -- 1 BLM 4 RNG
mobs[19].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1 } -- 1 THF 1 DRG
mobs[20].mobchildren = { [xi.job.WAR] = 1, [xi.job.BRD] = 1 } -- 1 WAR 1 BRD
mobs[21].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[23].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[24].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1 } -- 1 WAR 1 WHM
mobs[25].mobchildren = { [xi.job.THF] = 1, [xi.job.BST] = 1 } -- 1 THF 1 BST
mobs[26].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[27].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[28].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[29].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 MNK 1 WHM 1 BLM 1 RDM 1 THF
mobs[30].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[31].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[32].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[33].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[34].mobchildren = { [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 SAM 1 DRG
mobs[35].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR 1 THF
mobs[36].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[37].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[38].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1 } -- 1 PLD 1 DRK
mobs[39].mobchildren = { [xi.job.SMN] = 3 } -- 3 SMN
mobs[42].mobchildren = { [xi.job.MNK] = 1, [xi.job.RDM] = 1 } -- 1 MNK 1 RDM
mobs[43].mobchildren = { [xi.job.NIN] = 2 } -- 2 NIN
mobs[45].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1 } -- 1 WHM 1 RDM1 PLD 1 DRK 1 BRD
mobs[46].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[47].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[48].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[49].mobchildren = { [xi.job.RNG] = 2 } -- 2 RNG
mobs[50].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[51].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[52].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[53].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[54].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[55].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[58].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[59].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[60].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[61].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[62].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 1 } -- 1 BRD 1 SAM
mobs[63].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.THF] = 1 } -- 1 WAR 1 WHM1,THF
mobs[65].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[66].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } -- 1 WHM 1 BLM
mobs[67].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 1 } -- 1 MNK 1 BLM
mobs[68].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1 } -- 1 WAR 1 WHM
mobs[69].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[70].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[71].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[72].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[73].mobchildren = { [xi.job.RNG] = 1, [xi.job.SMN] = 1 } -- 1 RNG 1 SMN
mobs[74].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1 } -- 1 THF 1 DRG
mobs[75].mobchildren = { [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN
mobs[76].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 SAM 1 NIN
mobs[77].mobchildren = { [xi.job.DRK] = 1, [xi.job.RNG] = 1 } -- 1 DRK 1 RNG
mobs[78].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[79].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[80].mobchildren = { [xi.job.RNG] = 1 } -- 1 RNG
mobs[81].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[82].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[83].mobchildren = { [xi.job.WHM] = 1 } -- 1 WHM
mobs[84].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[85].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[86].mobchildren = { [xi.job.BLM] = 3, [xi.job.THF] = 1 } -- 3 BLM 1 THF
mobs[87].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 PLD 1 DRK 1 BRD 1 RNG
mobs[88].mobchildren = { [xi.job.SAM] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 SAM 1 DRG 1 SMN
mobs[89].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[91].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[92].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[93].mobchildren = { [xi.job.WAR] = 1 } -- 1 WAR
mobs[94].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[95].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[96].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[97].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[103].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF 1 BRD
mobs[104].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 THF 1 BRD
mobs[105].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRG] = 1 } -- 1 BLM 1 DRG
mobs[106].mobchildren = { [xi.job.RDM] = 1, [xi.job.SMN] = 1 } -- 1 RDM 1 SMN
mobs[107].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 1 } -- 1 WHM 1 BST
mobs[108].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[109].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[110].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[111].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1 } -- 1 RDM 1 PLD
mobs[112].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1 } -- 1 BLM 1 RNG
mobs[114].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1, [xi.job.SMN] = 1 } -- 1 BLM 1 RDM 1RNG 1, SMN
mobs[115].mobchildren = { [xi.job.WAR] = 1, [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 WAR 1 DRK 1BST 1, BRD
mobs[116].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 MNK 1 WHM 1BST 1, SAM
mobs[117].mobchildren = { [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 THF 1 PLD 1NIN 1, DRG
mobs[120].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 WAR 1 WHM 1BLM 1, RDM 1 THF
mobs[121].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.DRG] = 1 } -- 1 WAR 1 BLM 1DRG
mobs[122].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.SMN] = 1 } -- 1 MNK 1 THF 1SMN
mobs[123].mobchildren = { [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 BST 1 SAM
mobs[124].mobchildren = { [xi.job.PLD] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 PLD 1 BST 1 BRD 1 RNG
mobs[125].mobchildren = { [xi.job.RNG] = 2, [xi.job.NIN] = 3 } -- 2 RNG 3 NIN
mobs[126].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1 } -- 1 WHM 1 DRK
mobs[127].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRG] = 1 } -- 1 RDM 1 DRG
mobs[128].mobchildren = { [xi.job.RDM] = 1, [xi.job.SMN] = 1 } -- 1 RDM 1 SMN
mobs[129].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1 } -- 1 WHM 1 DRK
mobs[130].mobchildren = { [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 BST 1 SAM
mobs[131].mobchildren = { [xi.job.BLM] = 1, [xi.job.BST] = 1 } -- 1 BLM 1 BST
mobs[132].mobchildren = { [xi.job.MNK] = 1, [xi.job.BST] = 1 } -- 1 MNK 1 BST
mobs[133].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1, [xi.job.SMN] = 1 } -- 1 WAR 1 BLM 1 DRK 1 RNG 1 SMN
mobs[134].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 2, [xi.job.DRG] = 1 } -- 1 THF 1 BRD 2 SAM 1 DRG
mobs[135].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 WAR 1 MNK 1 WHM 1 BLM 1 RDM
mobs[136].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[137].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[138].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[139].mobchildren = { [xi.job.PLD] = 3, [xi.job.BRD] = 1 } -- 3 PLD 1 BRD
mobs[140].mobchildren = { [xi.job.WAR] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 SAM
mobs[141].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1 } -- 1 MNK 1 THF
mobs[142].mobchildren = { [xi.job.DRK] = 1, [xi.job.RNG] = 1, [xi.job.NIN] = 1 } -- 1 DRK 1 RNG 1 NIN
mobs[143].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1 } -- 1 RDM 1 BRD
mobs[144].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } -- 1 WHM 1 BLM
mobs[145].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 RDM 1 PLD 1 DRK 1 BRD 1 NIN
mobs[146].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 2, [xi.job.WHM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 2 MNK 1 WHM 1 RNG
mobs[147].mobchildren = { [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 DRG 1 SMN
mobs[148].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 BLM 1 BRD 1 NIN
mobs[149].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.SAM] = 1 } -- 1 WAR 1 MNK 1 THF 1 SAM
mobs[150].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 RDM 1 THF 1 PLD 1 BRD 1 NIN

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[3].nmchildren = { true, 158 } -- Wyrmwix Snakespecs
mobs[10].nmchildren = { true, 157 } -- Hermitrix Toothrot
mobs[18].nmchildren = { true, 159 } -- Morgmox Moldnoggin
mobs[23].nmchildren = { true, 164 } -- Humnox Drumbelly
mobs[26].nmchildren = { true, 163 } -- Buffrix Eargone
mobs[29].nmchildren = { true, 160 } -- Sparkspox Sweatbrow
mobs[40].nmchildren = { true, 161 } -- Elixmix Hooknose
mobs[43].nmchildren = { true, 167 } -- Trailblix Goatmug
mobs[45].nmchildren = { true, 162 } -- Bandrix Rockjaw
mobs[49].nmchildren = { true, 166 } -- Lurklox Dhalmelneck
mobs[62].nmchildren = { true, 165 } -- Ticktox Beadyeyes
mobs[73].nmchildren = { true, 151 } -- Gabblox Magpietongue
mobs[74].nmchildren = { true, 152 } -- Tufflix Loglimbs
mobs[75].nmchildren = { true, 153 } -- Cloktix Longnail
mobs[86].nmchildren = { true, 169 } -- Karashix Swollenskull
mobs[87].nmchildren = { true, 171 } -- Rutrix Hamgams
mobs[88].nmchildren = { true, 172 } -- Snypestix Eaglebeak
mobs[95].nmchildren = { true, 170 } -- Mortilox Wartpaws
mobs[105].nmchildren = { true, 155 } -- Jabkix Pigeonpecs
mobs[106].nmchildren = { true, 156 } -- Wasabix Callusdigit
mobs[107].nmchildren = { true, 154 } -- Smeltix Thickhide
mobs[120].nmchildren = { true, 168 } -- Kikklix Longlegs
mobs[124].nmchildren = { true, 180 } -- Tymexox Ninefingers
mobs[125].nmchildren = { true, 183 } -- Slystix Megapeepers
mobs[133].nmchildren = { true, 174 } -- Bootrix Jaggedelbow
mobs[134].nmchildren = { true, 173 } -- Anvilix Sootwrists
mobs[135].nmchildren = { true, 175 } -- Mobpix Mucousmouth
mobs[142].nmchildren = { true, 179 } -- Scruffix Shaggychest
mobs[145].nmchildren = { true, 181 } -- Blazox Boneybod
mobs[146].nmchildren = { true, 177 } -- Eremix Snottynostril
mobs[148].nmchildren = { true, 178 } -- Jabbrox Grannyguise
mobs[149].nmchildren = { true, 182 } -- Prowlox Barrelbelly
mobs[150].nmchildren = { true, 176 } -- Distilix Stickytoes

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = 42.0310, y = 9.0010, z = -52.0020, rot = 255 } -- (001-G/R) Goblin Replica
mobs[2].pos = { x = 35.9020, y = 9.0010, z = -52.0020, rot = 255 } -- (002-G/R) Goblin Replica
mobs[3].pos = { x = 50.8900, y = 0.0030, z = -18.8680, rot = 65 } -- (003-G/R) Goblin Replica
mobs[4].pos = { x = 42.000, y = 0.000, z = -20.973, rot = 128 } -- (004-G/R) Goblin Replica
mobs[5].pos = { x = 41.176, y = 0.000, z = -26.309, rot = 128 } -- (005-G/R) Goblin Replica
mobs[6].pos = { x = 33.9000, y = 0.0050, z = -17.8790, rot = 65 } -- (006-G/R) Goblin Replica
mobs[7].pos = { x = 32.0550, y = 0.0050, z = -19.8270, rot = 65 } -- (007-G/R) Goblin Replica
mobs[8].pos = { x = 29.9990, y = 0.0050, z = -17.8870, rot = 65 } -- (008-G/R) Goblin Replica
mobs[9].pos = { x = 31.9330, y = 0.0020, z = -1.9460, rot = 65 } -- (009-G/R) Goblin Replica
mobs[10].pos = { x = 23.9870, y = 0.0030, z = -35.9300, rot = 255 } -- (010-G/R) Goblin Replica
mobs[11].pos = { x = 34.867, y = -1.500, z = -56.991, rot = 128 } -- (011-G/R) Goblin Replica
mobs[12].pos = { x = 26.0980, y = -0.5280, z = -50.0300, rot = 255 } -- (012-G/R) Goblin Replica
mobs[13].pos = { x = 32.1320, y = 0.0020, z = -77.9040, rot = 195 } -- (013-G/R) Goblin Replica
mobs[14].pos = { x = 19.9020, y = 0.0020, z = -74.0030, rot = 255 } -- (014-G/R) Goblin Replica
mobs[15].pos = { x = 11.8640, y = 0.0030, z = -78.0920, rot = 195 } -- (015-G/R) Goblin Replica
mobs[16].pos = { x = 4.0770, y = 0.0020, z = -66.1350, rot = 65 } -- (016-G/R) Goblin Replica
mobs[17].pos = { x = 1.8290, y = 0.0050, z = -75.9640, rot = 255 } -- (017-G/R) Goblin Replica
mobs[18].pos = { x = 0.0430, y = 0.0020, z = -89.8920, rot = 195 } -- (018-G/R) Goblin Replica
mobs[19].pos = { x = -18.0400, y = 0.0050, z = -77.9660, rot = 195 } -- (019-G/R) Goblin Replica
mobs[20].pos = { x = -23.2980, y = 0.0050, z = -73.0380, rot = 255 } -- (020-G/R) Goblin Replica
mobs[21].pos = { x = -25.7640, y = 0.0040, z = -62.9860, rot = 125 } -- (021-G/R) Goblin Replica
mobs[22].pos = { x = -37.0030, y = 0.0050, z = -60.8580, rot = 25 } -- (022-G/R) Goblin Replica
mobs[23].pos = { x = -39.0840, y = 0.0050, z = -54.6770, rot = 65 } -- (023-G/R) Goblin Replica
mobs[24].pos = { x = -38.8960, y = 0.0050, z = -49.2370, rot = 195 } -- (024-G/R) Goblin Replica
mobs[25].pos = { x = -30.1860, y = 0.0020, z = -52.0670, rot = 255 } -- (025-G/R) Goblin Replica
mobs[26].pos = { x = -22.2250, y = 0.0030, z = -50.0510, rot = 125 } -- (026-G/R) Goblin Replica
mobs[27].pos = { x = -31.8830, y = 1.0000, z = -31.5270, rot = 195 } -- (027-G/R) Goblin Replica
mobs[28].pos = { x = -27.4380, y = 1.0000, z = -31.4660, rot = 195 } -- (028-G/R) Goblin Replica
mobs[29].pos = { x = -31.7800, y = 3.0000, z = -5.9570, rot = 125 } -- (029-G/R) Goblin Replica
mobs[30].pos = { x = -29.7500, y = 3.0000, z = -7.9730, rot = 125 } -- (030-G/R) Goblin Replica
mobs[31].pos = { x = -29.7500, y = 3.0000, z = -4.0640, rot = 125 } -- (031-G/R) Goblin Replica
mobs[32].pos = { x = -7.9770, y = 3.0000, z = -3.8700, rot = 65 } -- (032-G/R) Goblin Replica
mobs[33].pos = { x = -0.0110, y = 3.0000, z = -10.0990, rot = 195 } -- (033-G/R) Goblin Replica
mobs[34].pos = { x = 19.5190, y = 1.0000, z = -4.0040, rot = 125 } -- (034-G/R) Goblin Replica
mobs[35].pos = { x = -56.1950, y = 6.0000, z = -5.9910, rot = 255 } -- (035-G/R) Goblin Replica
mobs[36].pos = { x = -60.0940, y = 6.0000, z = 0.0160, rot = 255 } -- (036-G/R) Goblin Replica
mobs[37].pos = { x = -60.0940, y = 6.0000, z = -12.0160, rot = 255 } -- (037-G/R) Goblin Replica
mobs[38].pos = { x = -58.2650, y = 6.0000, z = 5.9700, rot = 255 } -- (038-G/R) Goblin Replica
mobs[39].pos = { x = -70.3420, y = 5.5910, z = -7.9880, rot = 255 } -- (039-G/R) Goblin Replica
mobs[40].pos = { x = -70.3420, y = 5.5910, z = -16.0370, rot = 255 } -- (040-G/R) Goblin Replica
mobs[41].pos = { x = -40.552, y = 8.000, z = -19.009, rot = 128 } -- (041-G/R) Goblin Replica
mobs[42].pos = { x = -57.9360, y = 12.0000, z = -24.2410, rot = 195 } -- (042-G/R) Goblin Replica
mobs[43].pos = { x = -56.0080, y = 12.0000, z = -34.1800, rot = 195 } -- (043-G/R) Goblin Replica
mobs[44].pos = { x = -65.974, y = 12.001, z = -33.006, rot = 0 } -- (044-G/S) Goblin Replica
mobs[45].pos = { x = 0.0030, y = 3.0000, z = 10.1230, rot = 65 } -- (045-G/R) Goblin Replica
mobs[46].pos = { x = -7.9810, y = 2.0000, z = 37.7910, rot = 195 } -- (046-G/R) Goblin Replica
mobs[47].pos = { x = 7.9810, y = 2.0000, z = 37.7910, rot = 195 } -- (047-G/R) Goblin Replica
mobs[48].pos = { x = -0.0470, y = 2.0000, z = 44.2220, rot = 65 } -- (048-G/R) Goblin Replica
mobs[49].pos = { x = 0.1080, y = -2.5000, z = 56.4840, rot = 65 } -- (049-G/R) Goblin Replica
mobs[50].pos = { x = -14.2590, y = 2.0000, z = 45.9170, rot = 255 } -- (050-G/R) Goblin Replica
mobs[51].pos = { x = -14.2590, y = 2.0000, z = 57.9530, rot = 255 } -- (051-G/R) Goblin Replica
mobs[52].pos = { x = -21.5860, y = 2.0000, z = 63.9640, rot = 255 } -- (052-G/R) Goblin Replica
mobs[53].pos = { x = 14.2590, y = 2.0000, z = 45.9170, rot = 125 } -- (053-G/R) Goblin Replica
mobs[54].pos = { x = 14.2590, y = 2.0000, z = 57.9530, rot = 125 } -- (054-G/R) Goblin Replica
mobs[55].pos = { x = 21.5860, y = 2.0000, z = 63.9640, rot = 125 } -- (055-G/R) Goblin Replica
mobs[56].pos = { x = -6.004, y = 2.000, z = 66.106, rot = 128 } -- (056-G/R) Goblin Replica
mobs[57].pos = { x = 5.938, y = 2.000, z = 65.998, rot = 255 } -- (057-G/R) Goblin Replica
mobs[58].pos = { x = 0.0590, y = 2.0000, z = 76.1380, rot = 65 } -- (058-G/R) Goblin Replica
mobs[59].pos = { x = -0.0070, y = 3.0000, z = 104.0650, rot = 65 } -- (059-G/R) Goblin Replica
mobs[60].pos = { x = -1.9930, y = 3.1000, z = 112.2050, rot = 65 } -- (060-G/R) Goblin Replica
mobs[61].pos = { x = 1.9930, y = 3.1000, z = 112.2050, rot = 65 } -- (061-G/R) Goblin Replica
mobs[62].pos = { x = -1.9930, y = 3.1000, z = 115.9980, rot = 65 } -- (062-G/R) Goblin Replica
mobs[63].pos = { x = 1.9930, y = 3.1000, z = 115.9980, rot = 65 } -- (063-G/R) Goblin Replica
mobs[64].pos = { x = -0.0370, y = 2.0000, z = 126.9240, rot = 65 } -- (064-G/S) Goblin Replica
mobs[65].pos = { x = -0.0460, y = -5.0000, z = 66.1810, rot = 65 } -- (065-G/R) Goblin Replica
mobs[66].pos = { x = -0.0360, y = -5.0000, z = 28.0830, rot = 65 } -- (066-G/R) Goblin Replica
mobs[67].pos = { x = -1.9990, y = 9.0000, z = -32.0740, rot = 195 } -- (067-G/R) Goblin Replica
mobs[68].pos = { x = 1.9990, y = 9.0000, z = -32.0740, rot = 195 } -- (068-G/R) Goblin Replica
mobs[69].pos = { x = 0.0240, y = 9.0000, z = -38.1290, rot = 195 } -- (069-G/R) Goblin Replica
mobs[70].pos = { x = -6.0380, y = 9.0000, z = -44.0880, rot = 125 } -- (070-G/R) Goblin Replica
mobs[71].pos = { x = 0.0790, y = 9.0000, z = -49.9340, rot = 65 } -- (071-G/R) Goblin Replica
mobs[72].pos = { x = 5.9060, y = 9.0000, z = -43.9210, rot = 255 } -- (072-G/R) Goblin Replica
mobs[73].pos = { x = 18.0370, y = 9.0000, z = -35.9560, rot = 125 } -- (073-G/R) Goblin Replica
mobs[74].pos = { x = -18.2300, y = 9.0000, z = -49.9960, rot = 255 } -- (074-G/R) Goblin Replica
mobs[75].pos = { x = 4.0240, y = 9.0000, z = -61.9760, rot = 195 } -- (075-G/R) Goblin Replica
mobs[76].pos = { x = 20.2470, y = 9.0000, z = -50.0720, rot = 125 } -- (076-G/R) Goblin Replica
mobs[77].pos = { x = 20.2470, y = 9.0000, z = -53.9650, rot = 125 } -- (077-G/R) Goblin Replica
mobs[78].pos = { x = -5.9770, y = 2.0000, z = 74.1890, rot = 65 } -- (078-G/R) Goblin Replica
mobs[79].pos = { x = 5.9770, y = 2.0000, z = 74.1890, rot = 65 } -- (079-G/R) Goblin Replica
mobs[80].pos = { x = -14.1890, y = 2.0000, z = 59.9550, rot = 255 } -- (080-G/R) Goblin Replica
mobs[81].pos = { x = 14.1890, y = 2.0000, z = 59.9550, rot = 125 } -- (081-G/R) Goblin Replica
mobs[82].pos = { x = -14.2060, y = 2.0000, z = 43.9290, rot = 255 } -- (082-G/R) Goblin Replica
mobs[83].pos = { x = 14.2060, y = 2.0000, z = 43.9290, rot = 125 } -- (083-G/R) Goblin Replica
mobs[84].pos = { x = -3.9700, y = 2.0000, z = 37.8030, rot = 195 } -- (084-G/R) Goblin Replica
mobs[85].pos = { x = 3.9700, y = 2.0000, z = 37.8030, rot = 195 } -- (085-G/R) Goblin Replica
mobs[86].pos = { x = -0.0010, y = 2.0000, z = 36.0150, rot = 195 } -- (086-G/R) Goblin Replica
mobs[87].pos = { x = 0.0010, y = 3.0000, z = 16.2200, rot = 195 } -- (087-G/R) Goblin Replica
mobs[88].pos = { x = 0.0010, y = 3.0000, z = 1.6790, rot = 195 } -- (088-G/R) Goblin Replica
mobs[89].pos = { x = -39.2570, y = 3.0000, z = -2.0810, rot = 255 } -- (089-G/R) Goblin Replica
mobs[90].pos = { x = -39.2570, y = 3.0000, z = -6.0520, rot = 255 } -- (090-G/R) Goblin Replica
mobs[91].pos = { x = -39.2570, y = 3.0000, z = -10.0860, rot = 255 } -- (091-G/R) Goblin Replica
mobs[92].pos = { x = -54.1110, y = 6.0000, z = -6.0520, rot = 255 } -- (092-G/R) Goblin Replica
mobs[93].pos = { x = -59.9500, y = 6.0000, z = 6.1450, rot = 65 } -- (093-G/R) Goblin Replica
mobs[94].pos = { x = -64.0200, y = 6.0000, z = 6.1450, rot = 65 } -- (094-G/R) Goblin Replica
mobs[95].pos = { x = -70.3420, y = 5.5910, z = -7.9880, rot = 255 } -- (095-G/R) Goblin Replica
mobs[96].pos = { x = -57.9690, y = 6.0000, z = -16.2590, rot = 195 } -- (096-G/R) Goblin Replica
mobs[97].pos = { x = -40.8180, y = 8.0000, z = -18.9490, rot = 125 } -- (097-G/R) Goblin Replica
mobs[98].pos = { x = 48.1250, y = 8.2500, z = -46.5540, rot = 195 } -- (098-G/R) Goblin Replica
mobs[99].pos = { x = 49.9750, y = 9.0010, z = -48.5540, rot = 195 } -- (099-G/R) Goblin Replica
mobs[100].pos = { x = 51.5870, y = 8.2500, z = -46.5540, rot = 195 } -- (100-G/R) Goblin Replica
mobs[101].pos = { x = -1.9990, y = 9.0000, z = -32.0740, rot = 195 } -- (101-G/R) Goblin Replica
mobs[102].pos = { x = 1.9990, y = 9.0000, z = -32.0740, rot = 195 } -- (102-G/R) Goblin Replica
mobs[103].pos = { x = -1.9990, y = 9.0000, z = -36.2220, rot = 195 } -- (103-G/R) Goblin Replica
mobs[104].pos = { x = 1.9990, y = 9.0000, z = -36.2220, rot = 195 } -- (104-G/R) Goblin Replica
mobs[105].pos = { x = -6.0380, y = 9.0000, z = -44.0880, rot = 125 } -- (105-G/R) Goblin Replica
mobs[106].pos = { x = 0.0790, y = 9.0000, z = -49.9340, rot = 65 } -- (106-G/R) Goblin Replica
mobs[107].pos = { x = 5.9060, y = 9.0000, z = -43.9210, rot = 255 } -- (107-G/R) Goblin Replica
mobs[108].pos = { x = 18.0370, y = 9.0000, z = -35.9560, rot = 125 } -- (108-G/R) Goblin Replica
mobs[109].pos = { x = -18.2300, y = 9.0000, z = -49.9960, rot = 255 } -- (109-G/R) Goblin Replica
mobs[110].pos = { x = 4.0240, y = 9.0000, z = -61.9760, rot = 195 } -- (110-G/R) Goblin Replica
mobs[111].pos = { x = 20.2470, y = 9.0000, z = -50.0720, rot = 125 } -- (111-G/R) Goblin Replica
mobs[112].pos = { x = 20.2470, y = 9.0000, z = -53.9650, rot = 125 } -- (112-G/R) Goblin Replica
mobs[113].pos = { x = -0.011, y = 0.000, z = -101.981, rot = 194 } -- (113    ) Megaboss
mobs[114].pos = { x = 4.0190, y = 0.0030, z = -74.1360, rot = 195 } -- (114-G/R) Goblin Replica
mobs[115].pos = { x = 2.3030, y = 0.0030, z = -75.9290, rot = 125 } -- (115-G/R) Goblin Replica
mobs[116].pos = { x = 5.6330, y = 0.0050, z = -76.0010, rot = 255 } -- (116-G/R) Goblin Replica
mobs[117].pos = { x = 3.9930, y = 0.0050, z = -77.6560, rot = 65 } -- (117-G/R) Goblin Replica
mobs[118].pos = { x = -1.0530, y = 0.0030, z = -84.1960, rot = 195 } -- (118-G/R) Goblin Replica
mobs[119].pos = { x = 1.9890, y = 0.0030, z = -84.0770, rot = 195 } -- (119-G/R) Goblin Replica
mobs[120].pos = { x = -1.0390, y = 0.0030, z = -88.1710, rot = 195 } -- (120-G/R) Goblin Replica
mobs[121].pos = { x = -30.0380, y = 0.0050, z = -63.8110, rot = 65 } -- (121-G/R) Goblin Replica
mobs[122].pos = { x = -39.0980, y = 0.0020, z = -51.8510, rot = 65 } -- (122-G/R) Goblin Replica
mobs[123].pos = { x = -27.9580, y = 0.0020, z = -51.8510, rot = 65 } -- (123-G/R) Goblin Replica
mobs[124].pos = { x = -30.0240, y = 0.0020, z = -35.7350, rot = 65 } -- (124-G/R) Goblin Replica
mobs[125].pos = { x = -30.0240, y = 3.0000, z = -19.9050, rot = 65 } -- (125-G/R) Goblin Replica
mobs[126].pos = { x = -33.0670, y = 3.0000, z = -4.9070, rot = 65 } -- (126-G/R) Goblin Replica
mobs[127].pos = { x = -27.0530, y = 3.0000, z = -4.9070, rot = 65 } -- (127-G/R) Goblin Replica
mobs[128].pos = { x = -33.0670, y = 3.0000, z = -8.8520, rot = 65 } -- (128-G/R) Goblin Replica
mobs[129].pos = { x = -27.0530, y = 3.0000, z = -8.8520, rot = 65 } -- (129-G/R) Goblin Replica
mobs[130].pos = { x = -13.7650, y = 3.0000, z = -6.0530, rot = 125 } -- (130-G/R) Goblin Replica
mobs[131].pos = { x = -9.6870, y = 3.0000, z = -6.0530, rot = 125 } -- (131-G/R) Goblin Replica
mobs[132].pos = { x = -5.7820, y = 3.0000, z = -6.0530, rot = 125 } -- (132-G/R) Goblin Replica
mobs[133].pos = { x = -0.0300, y = 3.0000, z = 10.1500, rot = 65 } -- (133-G/R) Goblin Replica
mobs[134].pos = { x = 7.2860, y = 3.0000, z = -4.9790, rot = 125 } -- (134-G/R) Goblin Replica
mobs[135].pos = { x = 21.0100, y = 0.0020, z = -3.7740, rot = 65 } -- (135-G/R) Goblin Replica
mobs[136].pos = { x = 28.0100, y = 0.0020, z = -5.8710, rot = 65 } -- (136-G/R) Goblin Replica
mobs[137].pos = { x = 32.0100, y = 0.0020, z = -5.8710, rot = 65 } -- (137-G/R) Goblin Replica
mobs[138].pos = { x = 36.0100, y = 0.0020, z = -5.8710, rot = 65 } -- (138-G/R) Goblin Replica
mobs[139].pos = { x = 44.2130, y = 0.0020, z = -18.0120, rot = 125 } -- (139-G/R) Goblin Replica
mobs[140].pos = { x = 29.0370, y = 0.0050, z = -31.8010, rot = 65 } -- (140-G/R) Goblin Replica
mobs[141].pos = { x = 32.9730, y = 0.0040, z = -31.8010, rot = 65 } -- (141-G/R) Goblin Replica
mobs[142].pos = { x = 4.4840, y = 9.0000, z = -76.8220, rot = 185 } -- (142-G/R) Goblin Replica
mobs[143].pos = { x = 34.1760, y = 0.0020, z = -41.9420, rot = 125 } -- (143-G/R) Goblin Replica
mobs[144].pos = { x = 34.1920, y = -1.5000, z = -57.9930, rot = 125 } -- (144-G/R) Goblin Replica
mobs[145].pos = { x = 49.6040, y = 5.2500, z = -38.5480, rot = 195 } -- (145-G/R) Goblin Replica
mobs[146].pos = { x = 48.9770, y = 9.0000, z = -54.2010, rot = 195 } -- (146-G/R) Goblin Replica
mobs[147].pos = { x = 4.0590, y = 9.0000, z = -54.1360, rot = 195 } -- (147-G/R) Goblin Replica
mobs[148].pos = { x = -8.2740, y = 9.0000, z = -34.0730, rot = 255 } -- (148-G/R) Goblin Replica
mobs[149].pos = { x = 7.9250, y = 9.0000, z = -33.8940, rot = 65 } -- (149-G/R) Goblin Replica
mobs[150].pos = { x = 0.0480, y = 3.5010, z = -12.4740, rot = 195 } -- (150-G/R) Goblin Replica

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

mobs[2].patrolPath = { { x = 38, y = 9, z = -52 }, { x = 22, y = 9, z = -52 } } -- Dyna Entrance
mobs[4].patrolPath = { { x = 42, y = 0, z = -20 }, { x = 28, y = 0, z = -20 } } -- Dyna Entrance Top of Stairs
mobs[7].patrolPath = { { x = 30, y = 0, z = -7 }, { x = 30, y = 0, z = -46 } } -- E Upper Level C
mobs[8].patrolPath = { { x = 27, y = 0, z = -7 }, { x = 27, y = 0, z = -46 } } -- E Upper Level W
mobs[6].patrolPath = { { x = 33, y = 0, z = -7 }, { x = 33, y = 0, z = -46 } } -- E Upper Level E
mobs[20].patrolPath = { { x = -9, y = 0, z = -71 }, { x = -31, y = 0, z = -71 } }
mobs[19].patrolPath = { { x = -9, y = 0, z = -77 }, { x = -31, y = 0, z = -77 } }
mobs[68].patrolPath = { { x = 2, y = 9, z = -27 }, { x = 2, y = 9, z = -35 } } -- Fountain Stairs E
mobs[67].patrolPath = { { x = -2, y = 9, z = -27 }, { x = -2, y = 9, z = -35 } } -- Fountain Stairs W
mobs[70].patrolPath = { { x = -7, y = 9, z = -49 }, { x = -7, y = 9, z = -35 } } -- Fountain W
mobs[71].patrolPath = { { x = 9, y = 9, z = -51 }, { x = -7, y = 9, z = -51 } } -- Fountain S
mobs[69].patrolPath = { { x = -5, y = 9, z = -37 }, { x = 5, y = 9, z = -37 } } -- Fountain N
mobs[72].patrolPath = { { x = 7, y = 9, z = -35 }, { x = 7, y = 9, z = -49 } } -- Fountain E
mobs[49].patrolPath = { { x = 0, y = -5, z = 61 }, { x = 0, y = 0, z = 51 }, { x = 0, y = 2, z = 44 } } -- Palace Stairs
mobs[17].patrolPath = { { x = 1, y = 0, z = -69 }, { x = 1, y = 0, z = -85 } } -- Near Mega Boss
mobs[21].patrolPath = { { x = -26, y = 0, z = -67 }, { x = -26, y = 0, z = -43 } } -- W Upper Level
mobs[22].patrolPath = { { x = -37, y = 0, z = -63 }, { x = -37, y = 0, z = -41 } } -- W Upper Level
mobs[27].patrolPath = { { x = -34, y = 0, z = -36 }, { x = -34, y = 3, z = -14 } } -- W Upper Level Stairs W
mobs[28].patrolPath = { { x = -26, y = 3, z = -14 }, { x = -26, y = 0, z = -38 } } -- W Upper Level Stairs E
mobs[31].patrolPath = { { x = -18, y = 3, z = -2 }, { x = -36, y = 3, z = -2 } } -- N Upper Level N
mobs[30].patrolPath = { { x = -18, y = 3, z = -10 }, { x = -36, y = 3, z = -10 } } -- N Upper Level S
mobs[32].patrolPath = { { x = 4, y = 3, z = -6 }, { x = -24, y = 3, z = -6 } } -- N Upper Level C
mobs[35].patrolPath = { { x = -56, y = 6, z = -6 }, { x = -68, y = 6, z = -6 } } -- AH C
mobs[36].patrolPath = { { x = -56, y = 6, z = -2 }, { x = -68, y = 6, z = 4 } } -- AH N
mobs[37].patrolPath = { { x = -56, y = 6, z = -10 }, { x = -68, y = 6, z = -14 } } -- AH S
mobs[41].patrolPath = { { x = -41, y = 8, z = -23 }, { x = -41, y = 8, z = -16 } } -- AH Stairs
mobs[42].patrolPath = { { x = -54, y = 12, z = -22 }, { x = -61, y = 12, z = -31 } } -- AH Lower Platform
mobs[45].patrolPath = { { x = 0, y = 3, z = -2 }, { x = 0, y = 3, z = 22 } } -- Palace Entrance
mobs[47].patrolPath = { { x = 12, y = 2, z = 40 }, { x = 12, y = 2, z = 68 } } -- Palace Interior E
mobs[46].patrolPath = { { x = -12, y = 2, z = 40 }, { x = -12, y = 2, z = 68 } } -- Palace Interior W
mobs[58].patrolPath = { { x = -12, y = 2, z = 72 }, { x = 12, y = 2, z = 72 } } -- Palace Rear
mobs[59].patrolPath = { { x = 0, y = 2, z = 96 }, { x = 0, y = 2, z = 76 } } -- Near Maat
mobs[14].patrolPath = { { x = 30, y = 0, z = -74 }, { x = 12, y = 0, z = -74 } } -- S Upper Level
mobs[79].patrolPath = { { x = 2, y = 2, z = 72 }, { x = 10, y = 2, z = 72 } } -- Palace Repop N #1
mobs[78].patrolPath = { { x = -2, y = 2, z = 72 }, { x = -12, y = 2, z = 72 } } -- Palace Repop N #2
mobs[81].patrolPath = { { x = 12, y = 2, z = 68 }, { x = 12, y = 2, z = 56 } } -- Palace Repop E #1
mobs[83].patrolPath = { { x = 12, y = 2, z = 54 }, { x = 12, y = 2, z = 42 } } -- Palace Repop E #2
mobs[80].patrolPath = { { x = -12, y = 2, z = 68 }, { x = -12, y = 2, z = 56 } } -- Palace Repop W #1
mobs[82].patrolPath = { { x = -12, y = 2, z = 54 }, { x = -12, y = 2, z = 42 } } -- Palace Repop W #2
mobs[85].patrolPath = { { x = 12, y = 2, z = 40 }, { x = 5, y = 2, z = 40 } } -- Palace Repop S #1
mobs[84].patrolPath = { { x = -12, y = 2, z = 40 }, { x = -5, y = 2, z = 40 } } -- Palace Repop S #2
mobs[14].patrolPath = { { x = 30, y = 0, z = -74 }, { x = 12, y = 0, z = -74 } } -- S Upper Level
mobs[87].patrolPath = { { x = 0, y = 3, z = 4 }, { x = 0, y = 3, z = 22 } } -- 2nd Wave Outside Palace
mobs[108].patrolPath = { { x = 18, y = 9, z = -36 }, { x = 11, y = 9, z = -36 } } -- 2nd Wave Fountain E Door
mobs[109].patrolPath = { { x = -20, y = 9, z = -50 }, { x = -11, y = 9, z = -50 } } -- 2nd Wave Fountain W Door
mobs[110].patrolPath = { { x = 4, y = 9, z = -64 }, { x = 4, y = 9, z = -55 } } -- 2nd Wave Fountain S Door
mobs[111].patrolPath = { { x = 17, y = 9, z = -51 }, { x = 29, y = 9, z = -51 } } -- 3rd Wave Dyna Entrance N
mobs[112].patrolPath = { { x = 21, y = 9, z = -54 }, { x = 42, y = 9, z = -54 } } -- 3rd Wave Dyna Entrance S
mobs[96].patrolPath = { { x = -56, y = 6, z = -15 }, { x = -65, y = 6, z = -15 } } -- AH Repop S
mobs[92].patrolPath = { { x = -56, y = 6, z = -12 }, { x = -56, y = 6, z = 0 } } -- AH Repop C
mobs[97].patrolPath = { { x = -41, y = 8, z = -23 }, { x = -41, y = 8, z = -16 } } -- AH Repop Stairs
mobs[124].patrolPath = { { x = -26, y = 0, z = -36 }, { x = -34, y = 0, z = -36 } } -- Upper Level W Repop N
mobs[122].patrolPath = { { x = -38, y = 0, z = -40 }, { x = -38, y = 0, z = -62 } } -- Upper Level W Repop W
mobs[123].patrolPath = { { x = -28, y = 0, z = -62 }, { x = -28, y = 0, z = -44 } } -- Upper Level W Repop E
mobs[121].patrolPath = { { x = -34, y = 0, z = -64 }, { x = -26, y = 0, z = -64 } } -- Upper Level W Repop S
mobs[116].patrolPath = { { x = 2, y = 0, z = -74 }, { x = 6, y = 0, z = -74 } } -- Near Mega Boss #1
mobs[117].patrolPath = { { x = 0, y = 0, z = -80 }, { x = 0, y = 0, z = -76 } } -- Near Mega Boss #2
mobs[115].patrolPath = { { x = -2, y = 0, z = -74 }, { x = -6, y = 0, z = -74 } } -- Near Mega Boss #3
mobs[114].patrolPath = { { x = 0, y = 0, z = -72 }, { x = 0, y = 0, z = -68 } } -- Near Mega Boss #4
mobs[126].patrolPath = { { x = -31, y = 3, z = -9 }, { x = -34, y = 3, z = -12 } } -- Repop Upper Level N #1
mobs[127].patrolPath = { { x = -27, y = 3, z = -9 }, { x = -24, y = 3, z = -12 } } -- Repop Upper Level N #2
mobs[129].patrolPath = { { x = -27, y = 3, z = -5 }, { x = -24, y = 3, z = -2 } } -- Repop Upper Level N #3
mobs[128].patrolPath = { { x = -31, y = 3, z = -5 }, { x = -34, y = 3, z = -2 } } -- Repop Upper Level N #4
mobs[132].patrolPath = { { x = -8, y = 3, z = -10 }, { x = -8, y = 3, z = -2 } } -- Repop Upper Level NC #1
mobs[131].patrolPath = { { x = -12, y = 3, z = -2 }, { x = -12, y = 3, z = -10 } } -- Repop Upper Level NC #2
mobs[130].patrolPath = { { x = -15, y = 3, z = -10 }, { x = -15, y = 3, z = -2 } } -- Repop Upper Level NC #3

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[5].eyes = xi.dynamis.eye.BLUE
mobs[9].eyes = xi.dynamis.eye.GREEN
mobs[11].eyes = xi.dynamis.eye.BLUE
mobs[12].eyes = xi.dynamis.eye.GREEN
mobs[16].eyes = xi.dynamis.eye.BLUE
mobs[17].eyes = xi.dynamis.eye.GREEN
mobs[23].eyes = xi.dynamis.eye.BLUE
mobs[24].eyes = xi.dynamis.eye.GREEN
mobs[25].eyes = xi.dynamis.eye.GREEN
mobs[26].eyes = xi.dynamis.eye.BLUE
mobs[30].eyes = xi.dynamis.eye.GREEN
mobs[31].eyes = xi.dynamis.eye.BLUE
mobs[39].eyes = xi.dynamis.eye.GREEN
mobs[40].eyes = xi.dynamis.eye.BLUE
mobs[44].eyes = xi.dynamis.eye.GREEN
mobs[56].eyes = xi.dynamis.eye.GREEN
mobs[57].eyes = xi.dynamis.eye.BLUE
mobs[62].eyes = xi.dynamis.eye.GREEN
mobs[63].eyes = xi.dynamis.eye.BLUE
mobs[64].eyes = xi.dynamis.eye.GREEN
mobs[65].eyes = xi.dynamis.eye.BLUE
mobs[67].eyes = xi.dynamis.eye.GREEN
mobs[68].eyes = xi.dynamis.eye.BLUE
mobs[76].eyes = xi.dynamis.eye.GREEN
mobs[77].eyes = xi.dynamis.eye.BLUE
mobs[78].eyes = xi.dynamis.eye.GREEN
mobs[80].eyes = xi.dynamis.eye.BLUE
mobs[81].eyes = xi.dynamis.eye.GREEN
mobs[82].eyes = xi.dynamis.eye.GREEN
mobs[83].eyes = xi.dynamis.eye.BLUE
mobs[84].eyes = xi.dynamis.eye.BLUE
mobs[85].eyes = xi.dynamis.eye.GREEN
mobs[93].eyes = xi.dynamis.eye.BLUE
mobs[94].eyes = xi.dynamis.eye.GREEN
mobs[101].eyes = xi.dynamis.eye.GREEN
mobs[102].eyes = xi.dynamis.eye.BLUE
mobs[118].eyes = xi.dynamis.eye.GREEN
mobs[119].eyes = xi.dynamis.eye.BLUE
mobs[122].eyes = xi.dynamis.eye.GREEN
mobs[123].eyes = xi.dynamis.eye.BLUE
mobs[126].eyes = xi.dynamis.eye.BLUE
mobs[127].eyes = xi.dynamis.eye.GREEN
mobs[128].eyes = xi.dynamis.eye.BLUE
mobs[129].eyes = xi.dynamis.eye.GREEN
mobs[150].eyes = xi.dynamis.eye.GREEN

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 2, 4, 29, 45, 113 }
mobs[2].timeExtension = 30
mobs[4].timeExtension = 30
mobs[29].timeExtension = 30
mobs[45].timeExtension = 30
mobs[113].timeExtension = 30 -- Goblin Golem
