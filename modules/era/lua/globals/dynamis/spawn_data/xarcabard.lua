-----------------------------------
-- Era Dynamis - Dynamis-Xarcabard spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/xar.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/xar.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_XARCABARD

local mobs = {}
for i = 1, 258 do
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

mobs[1].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (001-D)
mobs[2].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (002-D)
mobs[3].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (003-D)
mobs[4].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (004-D)
mobs[5].info = { mobType = 'Statue', name = 'Statue Prototype' } -- (005-G) Statue Prototype
mobs[6].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (006-D)
mobs[7].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (007-D)
mobs[8].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (008-D)
mobs[9].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (009-D)
mobs[10].info = { mobType = 'Statue', name = 'Tombstone Prototype' } -- (010-O)(30) Tombstone Prototype
mobs[11].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (011-D)
mobs[12].info = { mobType = 'Statue', name = 'Effigy Prototype' } -- (012-Q) Effigy Prototype
mobs[13].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (013-D)
mobs[14].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (014-D)
mobs[15].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (015-D)
mobs[16].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (016-D)
mobs[17].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (017-D)
mobs[18].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (018-D)
mobs[19].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (019-D)
mobs[20].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (020-D)
mobs[21].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (021-D)
mobs[22].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (022-D)
mobs[23].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (023-D)
mobs[24].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (024-D)
mobs[25].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (025-D)
mobs[26].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (026-D)
mobs[27].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (027-D)
mobs[28].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (028-D)
mobs[29].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (029-D)
mobs[30].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (030-D)
mobs[31].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (031-D)
mobs[32].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (032-D)
mobs[33].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (033-D)
mobs[34].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (034-D)
mobs[35].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '35_killed' } -- (035-D) Vanguard Eye (spawns 36-38)
mobs[36].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (036-D)
mobs[37].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (037-D)
mobs[38].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (038-D)
mobs[39].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '39_killed' } -- (039-D) Vanguard Eye (spawns 40-42)
mobs[40].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (040-D)
mobs[41].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (041-D)
mobs[42].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (042-D)
mobs[43].info = { mobType = 'Statue', name = 'Icon Prototype' } -- (043-Y)(30) Icon Prototype
mobs[44].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (044-D)
mobs[45].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (045-D)
mobs[46].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (046-D)
mobs[47].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (047-D)
mobs[48].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (048-D)
mobs[49].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (049-D)
mobs[50].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (050-D)
mobs[51].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (051-D)
mobs[52].info = { mobType = 'Statue', name = 'Icon Prototype' } -- (052-Y)(HP) Icon Prototype
mobs[53].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (053-D)
mobs[54].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (054-D)
mobs[55].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (055-D)
mobs[56].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (056-D)
mobs[57].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (057-D)
mobs[58].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '58_killed' } -- (058-D)
mobs[59].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (059-D)
mobs[60].info = { mobType = 'Statue', name = 'Tombstone Prototype' } -- (060-O)(30) Tombstone Prototype
mobs[61].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (061-D)
mobs[62].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (062-D)
mobs[63].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (063-D)
mobs[64].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (064-D)
mobs[65].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (065-D)
mobs[66].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (066-D)
mobs[67].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (067-D)
mobs[68].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (068-D)
mobs[69].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (069-D)
mobs[70].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (070-D)
mobs[71].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (071-D)
mobs[72].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (072-D)
mobs[73].info = { mobType = 'Statue', name = 'Icon Prototype' } -- (073-Y)(MP) Icon Prototype
mobs[74].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (074-D)
mobs[75].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (075-D)
mobs[76].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (076-D)
mobs[77].info = { mobType = 'Statue', name = 'Tombstone Prototype' } -- (077-O)(MP) Tombstone Prototype
mobs[78].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (078-D)
mobs[79].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (079-D)
mobs[80].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (080-D)
mobs[81].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (081-D)
mobs[82].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (082-D)
mobs[83].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (083-D)
mobs[84].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (084-D)
mobs[85].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (085-D)
mobs[86].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (086-D)
mobs[87].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (087-D)
mobs[88].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (088-D)
mobs[89].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (089-D)
mobs[90].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (090-D)
mobs[91].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (091-D)
mobs[92].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (092-D)
mobs[93].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (093-D)
mobs[94].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (094-D)
mobs[95].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (095-D)
mobs[96].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (096-D)
mobs[97].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (097-D)
mobs[98].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (098-D)
mobs[99].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (099-D)
mobs[100].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (100-D)
mobs[101].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (101-D)
mobs[102].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (102-D)
mobs[103].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (103-D)
mobs[104].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (104-D)
mobs[105].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (105-D)
mobs[106].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (106-D)
mobs[107].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (107-D)
mobs[108].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (108-D)
mobs[109].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (109-D)
mobs[110].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (110-D)
mobs[111].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (111-D)
mobs[112].info = { mobType = 'Statue', name = 'Effigy Prototype' } -- (112-Q)(HP) Effigy Prototype
mobs[113].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (113-D)
mobs[114].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (114-D)
mobs[115].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (115-D)
mobs[116].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (116-D)
mobs[117].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (117-D)
mobs[118].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (118-D)
mobs[119].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (119-D)
mobs[120].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (120-D)
mobs[121].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (121-D)
mobs[122].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (122-D)
mobs[123].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (123-D)
mobs[124].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (124-D)
mobs[125].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (125-D)
mobs[126].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (126-D)
mobs[127].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (127-D)  Pops Marquis Decarabia BRD
mobs[128].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (128-D)  Pops Count Zaebos WAR
mobs[129].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (129-D)  Pops Duke Berith RDM
mobs[130].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (130-D)  Pops Prince Seere WHM
mobs[131].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (131-D)  Pops Duke Gomory MNK
mobs[132].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (132-D)  Pops Marquis Andras BST
mobs[133].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (133-D)  Pops Marquis Gamygyn NIN
mobs[134].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (134-D)  Pops Duke Scox DRK
mobs[135].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (135-D)  Pops Marquis Orias BLM
mobs[136].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (136-D)  Pops Count Raum THF
mobs[137].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (137-D)  Pops Marquis Sabnak PLD
mobs[138].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (138-D)  Pops Marquis Nebiros SMN
mobs[139].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (139-D)  Pops King Zagan DRG
mobs[140].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (140-D)  Pops Count Vine SAM
mobs[141].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (141-D)  Pops Marquis Cimeries RNG
mobs[142].info = { mobType = 'Statue', name = 'Effigy Prototype' } --  (142-Q)(HP)     Effigy Prototype
mobs[143].info = { mobType = 'Statue', name = 'Statue Prototype' } --  (143-G)(30)     Statue Prototype
mobs[144].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '144_killed' } -- (144-D)
mobs[145].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '145_killed' } -- (145-D)
mobs[146].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '146_killed' } -- (146-D)
mobs[147].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '147_killed' } -- (147-D)
mobs[148].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '148_killed' } -- (148-D)
mobs[149].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '149_killed' } -- (149-D)
mobs[150].info = { mobType = 'Statue', name = 'Statue Prototype' } -- (150-G)(30)     Statue Prototype
mobs[151].info = { mobType = 'NM', name = 'Animated Hammer', deathVar = 'hammer_killed' } -- ( 151 ) Animated Hammer
mobs[152].info = { mobType = 'NM', name = 'Animated Dagger', deathVar = 'dagger_killed' } -- ( 152 ) Animated Dagger
mobs[153].info = { mobType = 'NM', name = 'Animated Shield', deathVar = 'shield_killed' } -- ( 153 ) Animated Shield
mobs[154].info = { mobType = 'NM', name = 'Animated Claymore', deathVar = 'claymore_killed' } -- ( 154 ) Animated Claymore
mobs[155].info = { mobType = 'NM', name = 'Animated Gun', deathVar = 'gun_killed' } -- ( 155 ) Animated Gun
mobs[156].info = { mobType = 'NM', name = 'Animated Longbow', deathVar = 'longbow_killed' } -- ( 156 ) Animated Longbow
mobs[157].info = { mobType = 'NM', name = 'Animated Tachi', deathVar = 'tachi_killed' } -- ( 157 ) Animated Tachi
mobs[158].info = { mobType = 'NM', name = 'Animated Tabar', deathVar = 'tabar_killed' } -- ( 158 ) Animated Tabar
mobs[159].info = { mobType = 'NM', name = 'Animated Staff', deathVar = 'staff_killed' } -- ( 159 ) Animated Staff
mobs[160].info = { mobType = 'NM', name = 'Animated Spear', deathVar = 'spear_killed' } -- ( 160 ) Animated Spear
mobs[161].info = { mobType = 'NM', name = 'Animated Kunai', deathVar = 'kunai_killed' } -- ( 161 ) Animated Kunai
mobs[162].info = { mobType = 'NM', name = 'Animated Knuckles', deathVar = 'knuckles_killed' } -- ( 162 ) Animated Knuckles
mobs[163].info = { mobType = 'NM', name = 'Animated Great Axe', deathVar = 'gaxe_killed' } -- ( 163 ) Animated Great Axe
mobs[164].info = { mobType = 'NM', name = 'Animated Horn', deathVar = 'horn_killed' } -- ( 164 ) Animated Horn
mobs[165].info = { mobType = 'NM', name = 'Animated Longsword', deathVar = 'longsword_killed' } -- ( 165 ) Animated Longsword
mobs[166].info = { mobType = 'NM', name = 'Animated Scythe', deathVar = 'scythe_killed' } -- ( 166 ) Animated Scythe
mobs[167].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 167 ) Vanguard Dragon
mobs[168].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 168 ) Vanguard Dragon
mobs[169].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 169 ) Vanguard Dragon
mobs[170].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 170 ) Vanguard Dragon
mobs[171].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 171 ) Vanguard Dragon
mobs[172].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 172 ) Vanguard Dragon
mobs[173].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 173 ) Vanguard Dragon
mobs[174].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 174 ) Vanguard Dragon
mobs[175].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 175 ) Vanguard Dragon
mobs[176].info = { mobType = 'Other', name = 'Vanguard Dragon' } -- ( 176 ) Vanguard Dragon
mobs[177].info = { mobType = 'NM', name = 'Yang', deathVar = 'yang_killed' } -- ( 177 ) Shadow Dragon NM (Yang)
mobs[178].info = { mobType = 'NM', name = 'Ying', deathVar = 'ying_killed' } -- ( 178 ) Shadow Dragon NM (Ying)
mobs[179].info = { mobType = 'NM', name = 'Dynamis Lord' } -- ( 179 ) Dynamis Lord

-- Animated Hammer
mobs[180].info = { mobType = 'NM', name = 'Satellite Hammer' } -- Satellite Hammer
mobs[181].info = { mobType = 'NM', name = 'Satellite Hammer' } -- Satellite Hammer
mobs[182].info = { mobType = 'NM', name = 'Satellite Hammer' } -- Satellite Hammer
mobs[183].info = { mobType = 'NM', name = 'Satellite Hammer' } -- Satellite Hammer
-- Animated Dagger
mobs[184].info = { mobType = 'NM', name = 'Satellite Dagger' } -- Satellite Dagger
mobs[185].info = { mobType = 'NM', name = 'Satellite Dagger' } -- Satellite Dagger
mobs[186].info = { mobType = 'NM', name = 'Satellite Dagger' } -- Satellite Dagger
mobs[187].info = { mobType = 'NM', name = 'Satellite Dagger' } -- Satellite Dagger
-- Animated Shield
mobs[188].info = { mobType = 'NM', name = 'Satellite Shield' } -- Satellite Shield
mobs[189].info = { mobType = 'NM', name = 'Satellite Shield' } -- Satellite Shield
mobs[190].info = { mobType = 'NM', name = 'Satellite Shield' } -- Satellite Shield
mobs[191].info = { mobType = 'NM', name = 'Satellite Shield' } -- Satellite Shield
-- Animated Claymore
mobs[192].info = { mobType = 'NM', name = 'Satellite Claymore' } -- Satellite Claymore
mobs[193].info = { mobType = 'NM', name = 'Satellite Claymore' } -- Satellite Claymore
mobs[194].info = { mobType = 'NM', name = 'Satellite Claymore' } -- Satellite Claymore
mobs[195].info = { mobType = 'NM', name = 'Satellite Claymore' } -- Satellite Claymore
-- Animated Gun
mobs[196].info = { mobType = 'NM', name = 'Satellite Gun' } -- Satellite Gun
mobs[197].info = { mobType = 'NM', name = 'Satellite Gun' } -- Satellite Gun
mobs[198].info = { mobType = 'NM', name = 'Satellite Gun' } -- Satellite Gun
mobs[199].info = { mobType = 'NM', name = 'Satellite Gun' } -- Satellite Gun
-- Animated Longbow
mobs[200].info = { mobType = 'NM', name = 'Satellite Longbow' } -- Satellite Longbow
mobs[201].info = { mobType = 'NM', name = 'Satellite Longbow' } -- Satellite Longbow
mobs[202].info = { mobType = 'NM', name = 'Satellite Longbow' } -- Satellite Longbow
mobs[203].info = { mobType = 'NM', name = 'Satellite Longbow' } -- Satellite Longbow
-- Animated Tachi
mobs[204].info = { mobType = 'NM', name = 'Satellite Tachi' } -- Satellite Tachi
mobs[205].info = { mobType = 'NM', name = 'Satellite Tachi' } -- Satellite Tachi
mobs[206].info = { mobType = 'NM', name = 'Satellite Tachi' } -- Satellite Tachi
mobs[207].info = { mobType = 'NM', name = 'Satellite Tachi' } -- Satellite Tachi
-- Animated Tabar
mobs[208].info = { mobType = 'NM', name = 'Satellite Tabar' } -- Satellite Tabar
mobs[209].info = { mobType = 'NM', name = 'Satellite Tabar' } -- Satellite Tabar
mobs[210].info = { mobType = 'NM', name = 'Satellite Tabar' } -- Satellite Tabar
mobs[211].info = { mobType = 'NM', name = 'Satellite Tabar' } -- Satellite Tabar
-- Animated Staff
mobs[212].info = { mobType = 'NM', name = 'Satellite Staff' } -- Satellite Staff
mobs[213].info = { mobType = 'NM', name = 'Satellite Staff' } -- Satellite Staff
mobs[214].info = { mobType = 'NM', name = 'Satellite Staff' } -- Satellite Staff
mobs[215].info = { mobType = 'NM', name = 'Satellite Staff' } -- Satellite Staff
-- Animated Spear
mobs[216].info = { mobType = 'NM', name = 'Satellite Spear' } -- Satellite Spear
mobs[217].info = { mobType = 'NM', name = 'Satellite Spear' } -- Satellite Spear
mobs[218].info = { mobType = 'NM', name = 'Satellite Spear' } -- Satellite Spear
mobs[219].info = { mobType = 'NM', name = 'Satellite Spear' } -- Satellite Spear
-- Animated Kunai
mobs[220].info = { mobType = 'NM', name = 'Satellite Kunai' } -- Satellite Kunai
mobs[221].info = { mobType = 'NM', name = 'Satellite Kunai' } -- Satellite Kunai
mobs[222].info = { mobType = 'NM', name = 'Satellite Kunai' } -- Satellite Kunai
mobs[223].info = { mobType = 'NM', name = 'Satellite Kunai' } -- Satellite Kunai
-- Animated Knuckles
mobs[224].info = { mobType = 'NM', name = 'Satellite Knuckles' } -- Satellite Knuckles
mobs[225].info = { mobType = 'NM', name = 'Satellite Knuckles' } -- Satellite Knuckles
mobs[226].info = { mobType = 'NM', name = 'Satellite Knuckles' } -- Satellite Knuckles
mobs[227].info = { mobType = 'NM', name = 'Satellite Knuckles' } -- Satellite Knuckles
-- Animated Great Axe
mobs[228].info = { mobType = 'NM', name = 'Satellite Great Axe' } -- Satellite Great Axe
mobs[229].info = { mobType = 'NM', name = 'Satellite Great Axe' } -- Satellite Great Axe
mobs[230].info = { mobType = 'NM', name = 'Satellite Great Axe' } -- Satellite Great Axe
mobs[231].info = { mobType = 'NM', name = 'Satellite Great Axe' } -- Satellite Great Axe
-- Animated Horn
mobs[232].info = { mobType = 'NM', name = 'Satellite Horn' } -- Satellite Horn
mobs[233].info = { mobType = 'NM', name = 'Satellite Horn' } -- Satellite Horn
mobs[234].info = { mobType = 'NM', name = 'Satellite Horn' } -- Satellite Horn
mobs[235].info = { mobType = 'NM', name = 'Satellite Horn' } -- Satellite Horn
-- Animated Longsword
mobs[236].info = { mobType = 'NM', name = 'Satellite Longsword' } -- Satellite Longsword
mobs[237].info = { mobType = 'NM', name = 'Satellite Longsword' } -- Satellite Longsword
mobs[238].info = { mobType = 'NM', name = 'Satellite Longsword' } -- Satellite Longsword
mobs[239].info = { mobType = 'NM', name = 'Satellite Longsword' } -- Satellite Longsword
-- Animated Scythe
mobs[240].info = { mobType = 'NM', name = 'Satellite Scythe' } -- Satellite Scythe
mobs[241].info = { mobType = 'NM', name = 'Satellite Scythe' } -- Satellite Scythe
mobs[242].info = { mobType = 'NM', name = 'Satellite Scythe' } -- Satellite Scythe
mobs[243].info = { mobType = 'NM', name = 'Satellite Scythe' } -- Satellite Scythe
-- Demon NMs
mobs[244].info = { mobType = 'NM', name = 'Marquis Decarabia', family = 'Kindred', job = 'BRD', deathVar = 'Decarabia_killed' } -- Marquis Decarabia
mobs[245].info = { mobType = 'NM', name = 'Count Zaebos', family = 'Kindred', job = 'WAR', deathVar = 'Zaebos_killed' } -- Count Zaebos
mobs[246].info = { mobType = 'NM', name = 'Duke Berith', family = 'Kindred', job = 'RDM', deathVar = 'Berith_killed' } -- Duke Berith
mobs[247].info = { mobType = 'NM', name = 'Prince Seere', family = 'Kindred', job = 'WHM', deathVar = 'Seere_killed' } -- Prince Seere
mobs[248].info = { mobType = 'NM', name = 'Duke Gomory', family = 'Kindred', job = 'MNK', deathVar = 'Gomory_killed' } -- Duke Gomory
mobs[249].info = { mobType = 'NM', name = 'Marquis Andras', family = 'Kindred', job = 'BST', deathVar = 'Andras_killed' } -- Marquis Andras
mobs[250].info = { mobType = 'NM', name = 'Marquis Gamygyn', family = 'Kindred', job = 'NIN', deathVar = 'Gamygyn_killed' } -- Marquis Gamygyn
mobs[251].info = { mobType = 'NM', name = 'Duke Scox', family = 'Kindred', job = 'DRK', deathVar = 'Scox_killed' } -- Duke Scox
mobs[252].info = { mobType = 'NM', name = 'Marquis Orias', family = 'Kindred', job = 'BLM', deathVar = 'Orias_killed' } -- Marquis Oriass
mobs[253].info = { mobType = 'NM', name = 'Count Raum', family = 'Kindred', job = 'THF', deathVar = 'Raum_killed' } -- Count Raum
mobs[254].info = { mobType = 'NM', name = 'Marquis Sabnak', family = 'Kindred', job = 'PLD', deathVar = 'Sabnak_killed' } -- Marquis Sabnak
mobs[255].info = { mobType = 'NM', name = 'Marquis Nebiros', family = 'Kindred', job = 'SMN', deathVar = 'Nebiros_killed' } -- Marquis Nebiros
mobs[256].info = { mobType = 'NM', name = 'King Zagan', family = 'Kindred', job = 'DRG', deathVar = 'Zagan_killed' } -- King Zagan
mobs[257].info = { mobType = 'NM', name = 'Count Vine', family = 'Kindred', job = 'SAM', deathVar = 'Vine_killed' } -- Count Vine
mobs[258].info = { mobType = 'NM', name = 'Marquis Cimeries', family = 'Kindred', job = 'RNG', deathVar = 'Cimeries_killed' } -- Marquis Cimeries

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    { '35_killed', '39_killed' }, -- Spawns 43
    { '58_killed' }, -- Spawns 60
    { 'Decarabia_killed', 'Zaebos_killed', 'Berith_killed', 'Seere_killed', 'Gomory_killed', 'Andras_killed', 'Gamygyn_killed', 'Scox_killed', 'Orias_killed', 'Raum_killed', 'Sabnak_killed', 'Nebiros_killed', 'Zagan_killed', 'Vine_killed', 'Cimeries_killed' },  -- Demon NMs spawn Animated Weapons, Vanguard Dragons, Ying, Yang
    { '144_killed', '145_killed', '146_killed', '147_killed', '148_killed', '149_killed' }, -- Spawns 150
    { 'ying_killed', 'yang_killed' } -- Spawns Dynalord
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    1  , -- (001-D)  Avatar Icon
    2  , -- (002-D)  Avatar Icon
    3  , -- (003-D)  Avatar Icon
    4  , -- (004-D)  Avatar Icon
    5  , -- (005-G)  Avatar Icon
    6  , -- (006-D)  Manifest Icon
    7  , -- (007-D)  Avatar Icon
    8  , -- (008-D)  Manifest Icon
    9  , -- (009-D)  Avatar Icon
    10 , -- (010-O)  Avatar Icon
    11 , -- (011-D)  Avatar Icon
    12 , -- (012-Q)  Manifest Icon
    13 , -- (013-D)  Avatar Icon
    14 , -- (014-D)  Avatar Icon
    15 , -- (015-D)  Avatar Icon
    16 , -- (016-D)  Avatar Icon
    17 , -- (017-D)  Manifest Icon
    18 , -- (018-D)  Avatar Icon
    19 , -- (019-D)  Manifest Icon
    20 , -- (020-D)  Avatar Icon
    21 , -- (021-D)  Avatar Icon
    22 , -- (022-D)  Avatar Icon
    23 , -- (023-D)  Avatar Icon
    24 , -- (024-D)  Manifest Icon
    25 , -- (025-D)  Manifest Icon
    26 , -- (026-D)  Avatar Icon
    27 , -- (027-D)  Avatar Icon
    28 , -- (028-D)  Avatar Icon
    29 , -- (029-D)  Manifest Icon
    30 , -- (030-D)  Manifest Icon
    31 , -- (031-D)  Avatar Icon
    32 , -- (032-D)  Avatar Icon
    33 , -- (033-D)  Manifest Icon
    34 , -- (034-D)  Avatar Icon
    35 , -- (035-D)  Avatar Icon
    39 , -- (039-D)  Avatar Icon
    44 , -- (044-D)  Avatar Icon
    45 , -- (045-D)  Manifest Icon
    46 , -- (046-D)  Avatar Idol
    47 , -- (047-D)  Avatar Icon
    48 , -- (048-D)  Avatar Icon
    49 , -- (049-D)  Avatar Icon
    50 , -- (050-D)  Avatar Icon
    51 , -- (051-D)  Manifest Icon
    52 , -- (052-Y)  Avatar Icon
    53 , -- (053-D)  Avatar Icon
    54 , -- (054-D)  Avatar Icon
    55 , -- (055-D)  Avatar Icon
    56 , -- (056-D)  Manifest Icon
    57 , -- (057-D)  Manifest Icon
    58 , -- (058-D)  Avatar Icon
    59 , -- (059-D)  Avatar Icon
    61 , -- (061-D)  Avatar Icon
    62 , -- (062-D)  Avatar Icon
    63 , -- (063-D)  Avatar Icon
    64 , -- (064-D)  Avatar Icon
    65 , -- (065-D)  Avatar Icon
    66 , -- (066-D)  Avatar Icon
    67 , -- (067-D)  Avatar Icon
    68 , -- (068-D)  Avatar Icon
    69 , -- (069-D)  Avatar Icon
    70 , -- (070-D)  Avatar Icon
    71 , -- (071-D)  Avatar Icon
    72 , -- (072-D)  Manifest Icon
    73 , -- (073-Y)  Avatar Icon
    74 , -- (074-D)  Manifest Icon
    75 , -- (075-D)  Avatar Icon
    76 , -- (076-D)  Avatar Icon
    77 , -- (077-O)  Manifest Icon
    78 , -- (078-D)  Avatar Icon
    79 , -- (079-D)  Avatar Icon
    80 , -- (080-D)  Manifest Icon
    81 , -- (081-D)  Avatar Icon
    82 , -- (082-D)  Avatar Icon
    83 , -- (083-D)  Manifest Icon
    84 , -- (084-D)  Avatar Idol
    85 , -- (085-D)  Avatar Icon
    86 , -- (086-D)  Manifest Icon
    87 , -- (087-D)  Avatar Icon
    88 , -- (088-D)  Manifest Icon
    89 , -- (089-D)  Avatar Icon
    90 , -- (090-D)  Avatar Icon
    91 , -- (091-D)  Avatar Icon
    92 , -- (092-D)  Avatar Icon
    93 , -- (093-D)  Avatar Idol
    94 , -- (094-D)  Manifest Icon
    95 , -- (095-D)  Manifest Icon
    96 , -- (096-D)  Manifest Icon
    97 , -- (097-D)  Avatar Icon
    98 , -- (098-D)  Avatar Icon
    99 , -- (099-D)  Avatar Icon
    100, -- (100-D)  Manifest Icon
    101, -- (101-D)  Avatar Icon
    102, -- (102-D)  Avatar Icon
    103, -- (103-D)  Avatar Icon
    104, -- (104-D)  Avatar Icon
    105, -- (105-D)  Avatar Icon
    106, -- (106-D)  Avatar Icon
    107, -- (107-D)  Avatar Icon
    108, -- (108-D)  Avatar Icon
    109, -- (109-D)  Avatar Icon
    110, -- (110-D)  Manifest Icon
    111, -- (111-D)  Manifest Icon
    112, -- (112-Q)  Avatar Icon
    113, -- (113-D)  Avatar Icon
    114, -- (114-D)  Avatar Icon
    115, -- (115-D)  Avatar Icon
    116, -- (116-D)  Manifest Idol
    117, -- (117-D)  Manifest Icon
    118, -- (118-D)  Manifest Icon
    119, -- (119-D)  Avatar Icon
    120, -- (120-D)  Avatar Icon
    121, -- (121-D)  #N/A
    122, -- (122-D)  Avatar Icon
    123, -- (123-D)  Avatar Icon
    124, -- (124-D)  Avatar Icon
    125, -- (125-D)  Avatar Icon
    126, -- (126-D)  Manifest Icon
    127, -- (127-D)  Manifest Icon
    128, -- (128-D)  Avatar Icon
    129, -- (129-D)  Avatar Icon
    130, -- (130-D)  Avatar Icon
    131, -- (131-D)  Manifest Icon
    132, -- (132-D)  Avatar Icon
    133, -- (133-D)  Manifest Icon
    134, -- (134-D)  Avatar Icon
    135, -- (135-D)  Avatar Icon
    136, -- (136-D)  Manifest Icon
    137, -- (137-D)  Manifest Icon
    138, -- (138-D)  Manifest Icon
    139, -- (139-D)  Manifest Icon
    140, -- (140-D)  Avatar Icon
    141  -- (141-D)  Avatar Icon
}

mobs[2].wave =
{
    43   -- Icon Prototype
}

mobs[3].wave =
{
    60   -- Tombstone Prototype
}

mobs[4].wave =
{
    142, -- (142-Q)  Avatar Icon
    143, -- (143-G)  Avatar Icon
    144, -- (144-D)  Avatar Icon
    145, -- (145-D)  Avatar Icon
    146, -- (146-D)  Avatar Icon
    147, -- (147-D)  Avatar Icon
    148, -- (148-D)  Avatar Icon
    149, -- (149-D)  Avatar Icon
    151, -- Animated Hammer
    152, -- Animated Dagger
    153, -- Animated Shield
    154, -- Animated Claymore
    155, -- Animated Gun
    156, -- Animated Longbow
    157, -- Animated Tachi
    158, -- Animated Tabar
    159, -- Animated Staff
    160, -- Animated Spear
    161, -- Animated Kunai
    162, -- Animated Knuckles
    163, -- Animated Great Axe
    164, -- Animated Horn
    165, -- Animated Longsword
    166, -- Animated Scythe
    167, -- Vanguard Dragon
    168, -- Vanguard Dragon
    169, -- Vanguard Dragon
    170, -- Vanguard Dragon
    171, -- Vanguard Dragon
    172, -- Vanguard Dragon
    173, -- Vanguard Dragon
    174, -- Vanguard Dragon
    175, -- Vanguard Dragon
    176, -- Vanguard Dragon
    177, -- Shadow Dragon NM (Yang)
    178  -- Shadow Dragon NM (Ying)
}

mobs[5].wave =
{
    150  -- Statue Prototype
}

mobs[6].wave =
{
    179  -- Dynamis Lord
}
----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.SAM] = 2 } --   2 SAM
mobs[2].mobchildren = { [xi.job.SMN] = 2 } --   2 SMN
mobs[3].mobchildren = { [xi.job.DRG] = 2 } --   2 DRG
mobs[4].mobchildren = { [xi.job.NIN] = 2 } --   2 NIN
mobs[6].mobchildren = { [xi.job.BST] = 3 } --   3 BST
mobs[7].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRG] = 2 } --   1 PLD  2 DRG
mobs[8].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 2 } --   1 PLD  2 DRK
mobs[9].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 2 } --   1 PLD  2 DRK
mobs[11].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } --   1 WAR  1 MNK  1 WHM  1 BLM  1 RDM  1 THF
mobs[13].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } --   1 WAR  1 MNK  1 WHM  1 BLM  1 RDM  1 THF
mobs[14].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1 } --   1 RDM  1 PLD
mobs[15].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1 } --   1 MNK  1 WHM
mobs[16].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1 } --   1 RDM  1 PLD
mobs[17].mobchildren = { [xi.job.BRD] = 1, [xi.job.NIN] = 3 } --   1 BRD  3 NIN
mobs[18].mobchildren = { [xi.job.WAR] = 3, [xi.job.BRD] = 1 } --   3 WAR  1 BRD
mobs[19].mobchildren = { [xi.job.BRD] = 1, [xi.job.SAM] = 3 } --   1 BRD  3 SAM
mobs[20].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 2 } --   1 RNG  2 SAM
mobs[21].mobchildren = { [xi.job.THF] = 1, [xi.job.NIN] = 1 } --   1 THF  1 NIN
mobs[22].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 2 } --   1 RNG  2 SAM
mobs[23].mobchildren = { [xi.job.THF] = 2, [xi.job.NIN] = 1 } --   2 THF  1 NIN
mobs[24].mobchildren = { [xi.job.THF] = 1, [xi.job.NIN] = 1 } --   1 THF  1 NIN
mobs[25].mobchildren = { [xi.job.THF] = 2, [xi.job.NIN] = 1 } --   2 THF  1 NIN
mobs[26].mobchildren = { [xi.job.DRG] = 2 } --   2 DRG
mobs[27].mobchildren = { [xi.job.BST] = 2 } --   2 BST
mobs[28].mobchildren = { [xi.job.SMN] = 2 } --   2 SMN
mobs[29].mobchildren = { [xi.job.WAR] = 2 } --   2 WAR
mobs[30].mobchildren = { [xi.job.MNK] = 2 } --   2 MNK
mobs[31].mobchildren = { [xi.job.WHM] = 2 } --   2 WHM
mobs[32].mobchildren = { [xi.job.BLM] = 2 } --   2 BLM
mobs[33].mobchildren = { [xi.job.RDM] = 2 } --   2 RDM
mobs[34].mobchildren = { [xi.job.THF] = 2 } --   2 THF
mobs[44].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1 } --   1 BLM  1 RNG
mobs[45].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1 } --   1 BLM  1 RNG
mobs[46].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1 } --   1 BLM  1 RNG
mobs[47].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1 } --   1 BLM  1 RNG
mobs[48].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 2, [xi.job.BRD] = 1 } --   1 WHM  2 BST  1 BRD
mobs[49].mobchildren = { [xi.job.MNK] = 1, [xi.job.NIN] = 1, [xi.job.SMN] = 1 } --   1 MNK  1 NIN  1 SMN
mobs[50].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 2, [xi.job.BRD] = 1 } --   1 WHM  2 BST  1 BRD
mobs[51].mobchildren = { [xi.job.MNK] = 1, [xi.job.NIN] = 1, [xi.job.SMN] = 1 } --   1 MNK  1 NIN  1 SMN
mobs[53].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } --   1 SAM  1 NIN  1 DRG  1 SMN
mobs[54].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } --   1 PLD  1 DRK  1 BST  1 BRD  1 RNG
mobs[55].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } --   1 SAM  1 NIN  1 DRG  1 SMN
mobs[56].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } --   1 PLD  1 DRK  1 BST  1 BRD  1 RNG
mobs[57].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } --   1 RNG  1 SAM  1 DRG
mobs[58].mobchildren = { [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.SMN] = 1 } --   1 THF  1 PLD  1 SMN
mobs[59].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } --   1 BLM  1 DRK  1 NIN
mobs[61].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1 } --   1 WAR  1 MNK  1 WHM
mobs[62].mobchildren = { [xi.job.BLM] = 1, [xi.job.THF] = 2 } --   1 BLM  2 THF
mobs[63].mobchildren = { [xi.job.RDM] = 3 } --   3 RDM
mobs[64].mobchildren = { [xi.job.BLM] = 1, [xi.job.THF] = 2 } --   1 BLM  2 THF
mobs[65].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.WHM] = 1 } --   1 WAR  1 MNK  1 WHM
mobs[66].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRK] = 3 } --   1 BLM  3 DRK
mobs[67].mobchildren = { [xi.job.BLM] = 1, [xi.job.SAM] = 3 } --   1 BLM  3 SAM
mobs[68].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[69].mobchildren = { [xi.job.PLD] = 2 } --   2 PLD
mobs[70].mobchildren = { [xi.job.PLD] = 2 } --   2 PLD
mobs[71].mobchildren = { [xi.job.MNK] = 3 } --   3 MNK
mobs[72].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[74].mobchildren = { [xi.job.DRG] = 2 } --   2 DRG
mobs[75].mobchildren = { [xi.job.BST] = 2 } --   2 BST
mobs[76].mobchildren = { [xi.job.SMN] = 3 } --   3 SMN
mobs[78].mobchildren = { [xi.job.BST] = 2 } --   2 BST
mobs[79].mobchildren = { [xi.job.DRK] = 2 } --   2 DRK
mobs[80].mobchildren = { [xi.job.RNG] = 2 } --   2 RNG
mobs[81].mobchildren = { [xi.job.PLD] = 2 } --   2 PLD
mobs[82].mobchildren = { [xi.job.BRD] = 2 } --   2 BRD
mobs[83].mobchildren = { [xi.job.WAR] = 2, [xi.job.RDM] = 1 } --   2 WAR  1 RDM
mobs[84].mobchildren = { [xi.job.BLM] = 2 } --   2 BLM
mobs[85].mobchildren = { [xi.job.WAR] = 2, [xi.job.RDM] = 1 } --   2 WAR  1 RDM
mobs[86].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1 } --   1 MNK  1 THF
mobs[87].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1 } --   1 MNK  1 THF
mobs[88].mobchildren = { [xi.job.WHM] = 2 } --   2 WHM
mobs[89].mobchildren = { [xi.job.WAR] = 2, [xi.job.BRD] = 1 } --   2 WAR  1 BRD
mobs[90].mobchildren = { [xi.job.MNK] = 2, [xi.job.BRD] = 1 } --   2 MNK  1 BRD
mobs[91].mobchildren = { [xi.job.WAR] = 2, [xi.job.BRD] = 1 } --   2 WAR  1 BRD
mobs[92].mobchildren = { [xi.job.MNK] = 2, [xi.job.BRD] = 1 } --   2 MNK  1 BRD
mobs[93].mobchildren = { [xi.job.RNG] = 2 } --   2 RNG
mobs[94].mobchildren = { [xi.job.SAM] = 3 } --   3 SAM
mobs[95].mobchildren = { [xi.job.RNG] = 2 } --   2 RNG
mobs[96].mobchildren = { [xi.job.THF] = 3 } --   3 THF
mobs[97].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.BRD] = 1 } --   1 WAR  1 RDM  1 BRD
mobs[98].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BST] = 1 } --   1 MNK  1 WHM  1 BST
mobs[99].mobchildren = { [xi.job.MNK] = 1, [xi.job.BRD] = 1 } --   1 MNK  1 BRD
mobs[100].mobchildren = { [xi.job.WAR] = 1, [xi.job.BRD] = 1 } --   1 WAR  1 BRD
mobs[101].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1 } --   1 WAR  1 WHM
mobs[102].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1, [xi.job.BRD] = 1 } --   1 WHM  1 RDM  1 BRD
mobs[103].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1, [xi.job.BRD] = 1 } --   1 WHM  1 RDM  1 BRD
mobs[104].mobchildren = { [xi.job.DRK] = 2, [xi.job.BRD] = 1 } --   2 DRK  1 BRD
mobs[105].mobchildren = { [xi.job.DRK] = 2, [xi.job.BRD] = 1 } --   2 DRK  1 BRD
mobs[106].mobchildren = { [xi.job.PLD] = 2 } --   2 PLD
mobs[107].mobchildren = { [xi.job.RDM] = 1, [xi.job.NIN] = 2 } --   1 RDM  2 NIN
mobs[108].mobchildren = { [xi.job.RDM] = 1, [xi.job.NIN] = 2 } --   1 RDM  2 NIN
mobs[109].mobchildren = { [xi.job.DRG] = 3 } --   3 DRG
mobs[110].mobchildren = { [xi.job.SMN] = 2 } --   2 SMN
mobs[111].mobchildren = { [xi.job.BST] = 2 } --   2 BST
mobs[113].mobchildren = { [xi.job.BST] = 2 } --   2 BST
mobs[114].mobchildren = { [xi.job.SMN] = 3 } --   3 SMN
mobs[115].mobchildren = { [xi.job.RNG] = 1, [xi.job.DRG] = 1 } --   1 RNG  1 DRG
mobs[116].mobchildren = { [xi.job.RNG] = 1, [xi.job.DRG] = 1 } --   1 RNG  1 DRG
mobs[117].mobchildren = { [xi.job.PLD] = 1, [xi.job.SMN] = 1 } --   1 PLD  1 SMN
mobs[118].mobchildren = { [xi.job.PLD] = 1, [xi.job.SMN] = 1 } --   1 PLD  1 SMN
mobs[119].mobchildren = { [xi.job.RNG] = 3 } --   3 RNG
mobs[120].mobchildren = { [xi.job.PLD] = 1, [xi.job.SMN] = 1 } --   1 PLD  1 SMN
mobs[121].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[122].mobchildren = { [xi.job.NIN] = 2 } --   2 NIN
mobs[123].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[124].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRG] = 2 } --   1 RDM  2 DRG
mobs[125].mobchildren = { [xi.job.RDM] = 1, [xi.job.SAM] = 2 } --   1 RDM  2 SAM
mobs[126].mobchildren = { [xi.job.DRK] = 2 } --   2 DRK
mobs[144].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[145].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[146].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[147].mobchildren = { [xi.job.DRG] = 2 } --   2 DRG
mobs[148].mobchildren = { [xi.job.DRK] = 2 } --   2 DRK
mobs[149].mobchildren = { [xi.job.PLD] = 2 } --   2 PLD

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[35].nmchildren = { true, 36, 37, 38 }
mobs[39].nmchildren = { true, 40, 41, 42 }
mobs[127].nmchildren = { true, 244 } -- Marquis Decarabia
mobs[128].nmchildren = { true, 245 } -- Count Zaebos
mobs[129].nmchildren = { true, 246 } -- Duke Berith
mobs[130].nmchildren = { true, 247 } -- Prince Seere
mobs[131].nmchildren = { true, 248 } -- Duke Gomory
mobs[132].nmchildren = { true, 249 } -- Marquis Andras
mobs[133].nmchildren = { true, 250 } -- Marquis Gamygyn
mobs[134].nmchildren = { true, 251 } -- Duke Scox
mobs[135].nmchildren = { true, 252 } -- Marquis Orias
mobs[136].nmchildren = { true, 253 } -- Count Raum
mobs[137].nmchildren = { true, 254 } -- Marquis Sabnak
mobs[138].nmchildren = { true, 255 } -- Marquis Nebiros
mobs[139].nmchildren = { true, 256 } -- King Zagan
mobs[140].nmchildren = { true, 257 } -- Count Vine
mobs[141].nmchildren = { true, 258 } -- Marquis Cimerie
mobs[151].nmchildren = { true, 180, 181, 182, 183 } -- Satellite Hammer
mobs[152].nmchildren = { true, 184, 185, 186, 187 } -- Satellite Dagger
mobs[153].nmchildren = { true, 188, 189, 190, 191 } -- Satellite Shield
mobs[154].nmchildren = { true, 192, 193, 194, 195 } -- Satellite Claymore
mobs[155].nmchildren = { true, 196, 197, 198, 199 } -- Satellite Gun
mobs[156].nmchildren = { true, 200, 201, 202, 203 } -- Satellite Longbow
mobs[157].nmchildren = { true, 204, 205, 206, 207 } -- Satellite Tachi
mobs[158].nmchildren = { true, 208, 209, 210, 211 } -- Satellite Tabar
mobs[159].nmchildren = { true, 212, 213, 214, 215 } -- Satellite Staff
mobs[160].nmchildren = { true, 216, 217, 218, 219 } -- Satellite Spear
mobs[161].nmchildren = { true, 220, 221, 222, 223 } -- Satellite Kunai
mobs[162].nmchildren = { true, 224, 225, 226, 227 } -- Satellite Knuckles
mobs[163].nmchildren = { true, 228, 229, 230, 231 } -- Satellite Great Axe
mobs[164].nmchildren = { true, 232, 233, 234, 235 } -- Satellite Horn
mobs[165].nmchildren = { true, 236, 237, 238, 239 } -- Satellite Longsword
mobs[166].nmchildren = { true, 240, 241, 242, 243 } -- Satellite Scythe

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = 418.0000, y = -0.1120, z = -181.0000, rot = 250 } -- (001-D)  Avatar Icon
mobs[2].pos = { x = 412.0000, y = -0.0060, z = -181.0000, rot = 250 } -- (002-D)  Avatar Icon
mobs[3].pos = { x = 412.0000, y = 0.1500, z = -189.0000, rot = 250 } -- (003-D)  Avatar Icon
mobs[4].pos = { x = 418.0000, y = 0.4490, z = -189.0000, rot = 250 } -- (004-D)  Avatar Icon
mobs[5].pos = { x = 414.4022, y = -0.3546, z = -182.0117, rot = 0 } -- (005-G)  Avatar Icon
mobs[6].pos = { x = 360.3150, y = 8.0000, z = -195.9620, rot = 207 } -- (006-D)  Manifest Icon
mobs[7].pos = { x = 351.5450, y = 8.1760, z = -198.2200, rot = 161 } -- (007-D)  Avatar Icon
mobs[8].pos = { x = 352.8550, y = 7.8800, z = -202.6150, rot = 95 } -- (008-D)  Manifest Icon
mobs[9].pos = { x = 360.4140, y = 7.8980, z = -204.7670, rot = 50 } -- (009-D)  Avatar Icon
mobs[10].pos = { x = 354.4850, y = 8.0746, z = -198.8310, rot = 201 } -- (010-O)  Avatar Icon
mobs[11].pos = { x = 369.6550, y = -0.5840, z = -252.0700, rot = 185 } -- (011-D)  Avatar Icon
mobs[12].pos = { x = 360.5640, y = 0.2452, z = -248.9267, rot = 219 } -- (012-Q)  Manifest Icon
mobs[13].pos = { x = 349.2870, y = 0.0640, z = -253.5000, rot = 185 } -- (013-D)  Avatar Icon
mobs[14].pos = { x = 346.0290, y = 0.0420, z = -288.8600, rot = 200 } -- (014-D)  Avatar Icon
mobs[15].pos = { x = 337.8850, y = 0.4550, z = -288.7410, rot = 200 } -- (015-D)  Avatar Icon
mobs[16].pos = { x = 328.7880, y = -0.2300, z = -288.8310, rot = 200 } -- (016-D)  Avatar Icon
mobs[17].pos = { x = 301.9260, y = 0.0380, z = -272.5340, rot = 5 } -- (017-D)  Manifest Icon
mobs[18].pos = { x = 308.2730, y = 3.9430, z = -260.9340, rot = 5 } -- (018-D)  Avatar Icon
mobs[19].pos = { x = 312.8730, y = 6.8840, z = -249.5730, rot = 5 } -- (019-D)  Manifest Icon
mobs[20].pos = { x = 263.6300, y = -2.7060, z = -254.7930, rot = 255 } -- (020-D)  Avatar Icon
mobs[21].pos = { x = 265.8270, y = -2.4480, z = -243.3610, rot = 255 } -- (021-D)  Avatar Icon
mobs[22].pos = { x = 267.4530, y = -3.7530, z = -228.5740, rot = 255 } -- (022-D)  Avatar Icon
mobs[23].pos = { x = 275.7250, y = -4.3600, z = -207.3570, rot = 15 } -- (023-D)  Avatar Icon
mobs[24].pos = { x = 280.7260, y = -0.4180, z = -192.7070, rot = 15 } -- (024-D)  Manifest Icon
mobs[25].pos = { x = 285.7810, y = -3.8910, z = -180.3090, rot = 15 } -- (025-D)  Manifest Icon
mobs[26].pos = { x = 378.8620, y = 1.2130, z = -108.6070, rot = 75 } -- (026-D)  Avatar Icon
mobs[27].pos = { x = 381.8620, y = -1.6070, z = -103.2170, rot = 75 } -- (027-D)  Avatar Icon
mobs[28].pos = { x = 384.8620, y = -3.1330, z = -97.4730, rot = 75 } -- (028-D)  Avatar Icon
mobs[29].pos = { x = 290.5600, y = -7.6830, z = -112.8680, rot = 75 } -- (029-D)  Manifest Icon
mobs[30].pos = { x = 286.4450, y = -8.4490, z = -106.9320, rot = 44 } -- (030-D)  Manifest Icon
mobs[31].pos = { x = 281.3030, y = -7.2840, z = -100.9400, rot = 50 } -- (031-D)  Avatar Icon
mobs[32].pos = { x = 274.8960, y = -7.6600, z = -95.8660, rot = 42 } -- (032-D)  Avatar Icon
mobs[33].pos = { x = 269.7580, y = -7.7640, z = -89.8510, rot = 44 } -- (033-D)  Manifest Icon
mobs[34].pos = { x = 264.2580, y = -7.7790, z = -82.3000, rot = 54 } -- (034-D)  Avatar Icon
mobs[35].pos = { x = 249.8710, y = -14.9140, z = -182.8610, rot = 15 } -- (035-D)  Manifest Icon
mobs[36].pos = { x = 229.4250, y = -20.7388, z = -168.6801, rot = 149 } -- (036-D)  Avatar Icon
mobs[37].pos = { x = 232.7480, y = -20.7388, z = -170.5852, rot = 159 } -- (037-D)  Avatar Icon
mobs[38].pos = { x = 234.2837, y = -20.6722, z = -166.8051, rot = 155 } -- (038-D)  Avatar Icon
mobs[39].pos = { x = 245.5010, y = -15.4300, z = -195.0440, rot = 15 } -- (039-D)  Avatar Icon
mobs[40].pos = { x = 235.5074, y = -20.7388, z = -157.9036, rot = 150 } -- (040-D)  Manifest Icon
mobs[41].pos = { x = 238.2971, y = -20.7388, z = -159.5938, rot = 141 } -- (041-D)  Avatar Icon
mobs[42].pos = { x = 236.8613, y = -20.7052, z = -162.9283, rot = 155 } -- (042-D)  Manifest Icon
mobs[43].pos = { x = 235.3885, y = -20.6618, z = -164.8875, rot = 149 } -- (043-Y)  Avatar Icon
mobs[44].pos = { x = 180.8440, y = -20.2890, z = -242.0870, rot = 180 } -- (044-D)  Avatar Icon
mobs[45].pos = { x = 187.9830, y = -18.3700, z = -246.6050, rot = 220 } -- (045-D)  Manifest Icon
mobs[46].pos = { x = 190.8440, y = -17.3150, z = -239.0870, rot = 245 } -- (046-D)  Avatar Idol
mobs[47].pos = { x = 185.3690, y = -18.6740, z = -234.0400, rot = 130 } -- (047-D)  Avatar Icon
mobs[48].pos = { x = 201.0440, y = -16.0000, z = -160.7170, rot = 68 } -- (048-D)  Avatar Icon
mobs[49].pos = { x = 189.3230, y = -17.6160, z = -160.7170, rot = 128 } -- (049-D)  Avatar Icon
mobs[50].pos = { x = 189.3230, y = -16.8640, z = -151.2730, rot = 192 } -- (050-D)  Avatar Icon
mobs[51].pos = { x = 201.0440, y = -16.8310, z = -151.2730, rot = 188 } -- (051-D)  Manifest Icon
mobs[52].pos = { x = 169.2042, y = -18.2180, z = -134.7736, rot = 0 } -- (052-Y)  Avatar Icon
mobs[53].pos = { x = 175.0320, y = -19.1960, z = -117.8140, rot = 65 } -- (053-D)  Avatar Icon
mobs[54].pos = { x = 215.1450, y = -21.6810, z = -117.8140, rot = 65 } -- (054-D)  Avatar Icon
mobs[55].pos = { x = 215.1450, y = -7.4330, z = -80.2630, rot = 65 } -- (055-D)  Avatar Icon
mobs[56].pos = { x = 175.0320, y = -13.6690, z = -80.2630, rot = 65 } -- (056-D)  Manifest Icon
mobs[57].pos = { x = 191.3460, y = -8.6530, z = 25.9310, rot = 85 } -- (057-D)  Manifest Icon
mobs[58].pos = { x = 198.7850, y = -7.1370, z = 22.7230, rot = 85 } -- (058-D)  Avatar Icon
mobs[59].pos = { x = 204.5440, y = -7.2150, z = 19.3450, rot = 85 } -- (059-D)  Avatar Icon
mobs[60].pos = { x = 204.1456, y = -7.9310, z = 34.5961, rot = 75 } -- (060-O)  Manifest Icon
mobs[61].pos = { x = 277.2050, y = -7.4930, z = 51.6440, rot = 65 } -- (061-D)  Avatar Icon
mobs[62].pos = { x = 279.1880, y = -7.3480, z = 54.5570, rot = 65 } -- (062-D)  Avatar Icon
mobs[63].pos = { x = 282.1120, y = -7.1490, z = 57.0310, rot = 65 } -- (063-D)  Avatar Icon
mobs[64].pos = { x = 285.1800, y = -7.4770, z = 54.5570, rot = 65 } -- (064-D)  Avatar Icon
mobs[65].pos = { x = 287.8900, y = -8.0220, z = 51.6440, rot = 65 } -- (065-D)  Avatar Icon
mobs[66].pos = { x = 362.3430, y = -8.0000, z = 122.0670, rot = 15 } -- (066-D)  Avatar Icon
mobs[67].pos = { x = 360.3290, y = -8.0000, z = 116.8500, rot = 15 } -- (067-D)  Avatar Icon
mobs[68].pos = { x = 360.7380, y = -7.3630, z = -58.0080, rot = 80 } -- (068-D)  Avatar Icon
mobs[69].pos = { x = 371.3490, y = -6.9430, z = -61.2000, rot = 80 } -- (069-D)  Avatar Icon
mobs[70].pos = { x = 380.4800, y = -3.3780, z = -63.9930, rot = 80 } -- (070-D)  Avatar Icon
mobs[71].pos = { x = 390.0320, y = -1.2920, z = -66.8870, rot = 80 } -- (071-D)  Avatar Icon
mobs[72].pos = { x = 401.1440, y = 0.1690, z = -72.6090, rot = 80 } -- (072-D)  Manifest Icon
mobs[73].pos = { x = 384.3539, y = -3.1706, z = -44.0433, rot = 77 } -- (073-Y)  Avatar Icon
mobs[74].pos = { x = 397.6840, y = -5.7590, z = -13.9870, rot = 78 } -- (074-D)  Manifest Icon
mobs[75].pos = { x = 391.5830, y = -7.8890, z = 5.6890, rot = 42 } -- (075-D)  Avatar Icon
mobs[76].pos = { x = 402.6690, y = -7.3680, z = 11.4160, rot = 60 } -- (076-D)  Avatar Icon
mobs[77].pos = { x = 397.8393, y = -7.8562, z = -5.2043, rot = 63 } -- (077-O)  Manifest Icon
mobs[78].pos = { x = 434.7900, y = -5.5610, z = 64.1650, rot = 31 } -- (078-D)  Avatar Icon
mobs[79].pos = { x = 434.7580, y = -6.8450, z = 69.2280, rot = 149 } -- (079-D)  Avatar Icon
mobs[80].pos = { x = 440.0800, y = -6.4100, z = 68.8980, rot = 248 } -- (080-D)  Manifest Icon
mobs[81].pos = { x = 441.5650, y = -5.6180, z = 63.5610, rot = 253 } -- (081-D)  Avatar Icon
mobs[82].pos = { x = 437.9940, y = -5.8730, z = 66.9330, rot = 109 } -- (082-D)  Avatar Icon
mobs[83].pos = { x = 487.7230, y = -0.1870, z = 35.8740, rot = 162 } -- (083-D)  Manifest Icon
mobs[84].pos = { x = 483.3900, y = -0.1630, z = 32.7590, rot = 162 } -- (084-D)  Avatar Idol
mobs[85].pos = { x = 491.2590, y = -0.0680, z = 28.4130, rot = 162 } -- (085-D)  Avatar Icon
mobs[86].pos = { x = 501.0970, y = -7.7850, z = 199.8770, rot = 65 } -- (086-D)  Manifest Icon
mobs[87].pos = { x = 502.7110, y = -8.0850, z = 207.4910, rot = 65 } -- (087-D)  Avatar Icon
mobs[88].pos = { x = 516.0010, y = -7.8440, z = 218.1160, rot = 99 } -- (088-D)  Manifest Icon
mobs[89].pos = { x = 62.0860, y = -24.0000, z = -272.5640, rot = 175 } -- (089-D)  Avatar Icon
mobs[90].pos = { x = 54.0420, y = -24.0000, z = -292.9970, rot = 215 } -- (090-D)  Avatar Icon
mobs[91].pos = { x = 91.9380, y = -24.0290, z = -252.6190, rot = 160 } -- (091-D)  Avatar Icon
mobs[92].pos = { x = 100.3520, y = -23.7290, z = -277.8250, rot = 195 } -- (092-D)  Avatar Icon
mobs[93].pos = { x = 13.8420, y = -23.4370, z = -362.6460, rot = 188 } -- (093-D)  Avatar Idol
mobs[94].pos = { x = 21.8420, y = -23.0010, z = -362.6460, rot = 188 } -- (094-D)  Manifest Icon
mobs[95].pos = { x = 29.8420, y = -23.7080, z = -362.6460, rot = 188 } -- (095-D)  Manifest Icon
mobs[96].pos = { x = 37.8420, y = -24.0000, z = -362.6460, rot = 188 } -- (096-D)  Manifest Icon
mobs[97].pos = { x = -7.3300, y = -15.8350, z = 43.7940, rot = 1 } -- (097-D)  Avatar Icon
mobs[98].pos = { x = -7.3300, y = -15.9130, z = 34.7340, rot = 1 } -- (098-D)  Avatar Icon
mobs[99].pos = { x = 50.1420, y = -15.7020, z = 20.5290, rot = 40 } -- (099-D)  Avatar Icon
mobs[100].pos = { x = 41.7620, y = -15.1820, z = 16.3780, rot = 40 } -- (100-D)  Manifest Icon
mobs[101].pos = { x = 33.6160, y = -15.9800, z = 11.7590, rot = 40 } -- (101-D)  Avatar Icon
mobs[102].pos = { x = 48.4010, y = -23.4090, z = -42.7030, rot = 65 } -- (102-D)  Avatar Icon
mobs[103].pos = { x = 60.5690, y = -20.3460, z = -42.7030, rot = 65 } -- (103-D)  Avatar Icon
mobs[104].pos = { x = 77.5550, y = -24.0000, z = -80.9360, rot = 65 } -- (104-D)  Avatar Icon
mobs[105].pos = { x = 90.0100, y = -23.7010, z = -80.5850, rot = 65 } -- (105-D)  Avatar Icon
mobs[106].pos = { x = 21.4590, y = -29.4610, z = 129.1000, rot = 60 } -- (106-D)  Avatar Icon
mobs[107].pos = { x = 25.0280, y = -33.5670, z = 140.0990, rot = 60 } -- (107-D)  Avatar Icon
mobs[108].pos = { x = 29.2060, y = -35.5310, z = 148.4780, rot = 60 } -- (108-D)  Avatar Icon
mobs[109].pos = { x = 31.8590, y = -35.7940, z = 157.3560, rot = 60 } -- (109-D)  Avatar Icon
mobs[110].pos = { x = -116.7700, y = -35.5300, z = 92.7420, rot = 60 } -- (110-D)  Manifest Icon
mobs[111].pos = { x = -116.4660, y = -36.0000, z = 80.3360, rot = 60 } -- (111-D)  Manifest Icon
mobs[112].pos = { x = -107.7923, y = -39.8030, z = 35.8958, rot = 159 } -- (112-Q)  Avatar Icon
mobs[113].pos = { x = -135.3740, y = -28.5000, z = 80.9980, rot = 60 } -- (113-D)  Avatar Icon
mobs[114].pos = { x = -135.8840, y = -26.0360, z = 95.4860, rot = 60 } -- (114-D)  Avatar Icon
mobs[115].pos = { x = 37.5390, y = -35.7740, z = 88.5370, rot = 180 } -- (115-D)  Avatar Icon
mobs[116].pos = { x = 45.9080, y = -35.8450, z = 88.5370, rot = 180 } -- (116-D)  Manifest Idol
mobs[117].pos = { x = 227.9120, y = -28.1870, z = 145.5460, rot = 72 } -- (117-D)  Manifest Icon
mobs[118].pos = { x = 224.9870, y = -28.3040, z = 150.8900, rot = 160 } -- (118-D)  Manifest Icon
mobs[119].pos = { x = 230.0830, y = -27.9330, z = 153.1550, rot = 75 } -- (119-D)  Avatar Icon
mobs[120].pos = { x = 234.2760, y = -27.7770, z = 148.6720, rot = 236 } -- (120-D)  Avatar Icon
mobs[121].pos = { x = 156.3720, y = -35.0160, z = 59.7010, rot = 194 } -- (121-D)  BOSS
mobs[122].pos = { x = 165.6510, y = -35.2220, z = 59.8440, rot = 194 } -- (122-D)  Avatar Icon
mobs[123].pos = { x = 239.7930, y = -27.7600, z = 111.1810, rot = 195 } -- (123-D)  Avatar Icon
mobs[124].pos = { x = 249.7930, y = -27.8850, z = 111.1810, rot = 195 } -- (124-D)  Avatar Icon
mobs[125].pos = { x = 300.9120, y = -27.8000, z = 220.1200, rot = 55 } -- (125-D)  Avatar Icon
mobs[126].pos = { x = 298.8870, y = -28.1650, z = 226.4730, rot = 50 } -- (126-D)  Manifest Icon
mobs[127].pos = { x = 152.2370, y = -21.0480, z = -38.1430, rot = 95 } -- (127-D)  Manifest Icon
mobs[128].pos = { x = 155.3720, y = -21.0330, z = -40.2900, rot = 95 } -- (128-D)  Avatar Icon
mobs[129].pos = { x = 158.2850, y = -21.0560, z = -43.3060, rot = 95 } -- (129-D)  Avatar Icon
mobs[130].pos = { x = 120.1050, y = -28.7700, z = -113.9930, rot = 130 } -- (130-D)  Avatar Icon
mobs[131].pos = { x = 120.1050, y = -28.7700, z = -117.8080, rot = 130 } -- (131-D)  Manifest Icon
mobs[132].pos = { x = 120.1050, y = -28.7750, z = -122.0800, rot = 130 } -- (132-D)  Avatar Icon
mobs[133].pos = { x = 64.3130, y = -28.5130, z = -199.1670, rot = 100 } -- (133-D)  Manifest Icon
mobs[134].pos = { x = 61.7690, y = -28.4910, z = -195.9100, rot = 100 } -- (134-D)  Avatar Icon
mobs[135].pos = { x = 58.6920, y = -28.5110, z = -193.6750, rot = 100 } -- (135-D)  Avatar Icon
mobs[136].pos = { x = 40.0550, y = -28.7300, z = -138.2650, rot = 128 } -- (136-D)  Manifest Icon
mobs[137].pos = { x = 40.0550, y = -28.6940, z = -134.6990, rot = 128 } -- (137-D)  Manifest Icon
mobs[138].pos = { x = 40.0550, y = -28.7140, z = -129.5340, rot = 128 } -- (138-D)  Manifest Icon
mobs[139].pos = { x = -3.3370, y = -28.5550, z = -97.3020, rot = 140 } -- (139-D)  Manifest Icon
mobs[140].pos = { x = -4.4480, y = -28.5310, z = -101.4500, rot = 140 } -- (140-D)  Avatar Icon
mobs[141].pos = { x = -5.5590, y = -28.5550, z = -105.5980, rot = 140 } -- (141-D)  Avatar Icon
mobs[142].pos = { x = -45.5989, y = -24.2095, z = -125.2383, rot = 230 } -- (142-Q)  Avatar Icon
mobs[143].pos = { x = -86.0996, y = -24.2289, z = -85.1929, rot = 232 } -- (143-G)  Avatar Icon
mobs[144].pos = { x = -128.0000, y = -23.4780, z = -35.0000, rot = 254 } -- (144-D)  Avatar Icon
mobs[145].pos = { x = -128.0000, y = -22.3400, z = -26.0000, rot = 254 } -- (145-D)  Avatar Icon
mobs[146].pos = { x = -128.0000, y = -20.7340, z = -17.0000, rot = 254 } -- (146-D)  Avatar Icon
mobs[147].pos = { x = -128.0000, y = -16.6230, z = -8.0000, rot = 254 } -- (147-D)  Avatar Icon
mobs[148].pos = { x = -128.0000, y = -15.7970, z = 1.0000, rot = 254 } -- (148-D)  Avatar Icon
mobs[149].pos = { x = -128.0000, y = -16.3240, z = 9.0000, rot = 254 } -- (149-D)  Avatar Icon
mobs[150].pos = { x = -150.0562, y = -16.1019, z = -6.8322, rot = 23 } -- (150-G)  Avatar Icon
-- Animated Weapons, Dragons
mobs[178].pos = { x = -365.6851, y = -36.0043, z = 15.7061, rot = 253 } -- ying
mobs[177].pos = { x = -366.2450, y = -36.3298, z = 24.8477, rot = 255 } -- yang
mobs[151].pos = { x = 338.2422, y = 0.0671, z = -377.4373, rot = 192 } -- Animated hammer
mobs[152].pos = { x = 146.8420, y = -25.2636, z = -226.5739, rot = 3 } -- Animated dagger
mobs[153].pos = { x = 90.9604, y = -24.0000, z = -375.0468, rot = 218 } -- Animated shield
mobs[154].pos = { x = -22.1978, y = -24.5956, z = -493.4288, rot = 199 } -- Animated claymore
mobs[155].pos = { x = -255.5342, y = -17.6566, z = -161.5427, rot = 192 } -- Animated gun
mobs[156].pos = { x = -296.0583, y = -25.8233, z = 161.7301, rot = 68 } -- Animated longbow
mobs[157].pos = { x = -100.4566, y = -15.8000, z = 138.8280, rot = 128 } -- Animated tachi
mobs[158].pos = { x = -122.0494, y = -36.0412, z = 124.8039, rot = 58 } -- Animated tabar
mobs[159].pos = { x = 49.1101, y = -36.2815, z = 61.7415, rot = 183 } -- Animated staff
mobs[160].pos = { x = 152.0960, y = -35.9728, z = 19.3087, rot = 224 } -- Animated spear
mobs[161].pos = { x = 241.9540, y = -28.4264, z = 63.3540, rot = 199 } -- Animated kunai
mobs[162].pos = { x = 342.1594, y = -27.8198, z = 378.1761, rot = 68 } -- Animated knuckles
mobs[163].pos = { x = 320.5472, y = -8.3209, z = 168.3653, rot = 72 } -- Animated great axe
mobs[164].pos = { x = 386.6498, y = -9.5122, z = 25.9243, rot = 21 } -- Animated horn
mobs[165].pos = { x = 582.5316, y = -8.0575, z = 296.7370, rot = 73 } -- Animated longsword
mobs[166].pos = { x = 577.9836, y = 0.1949, z = -18.2714, rot = 195 } -- Animated scythe
mobs[167].pos = { x = -213.8854, y = -6.7935, z = 42.7936, rot = 1 } -- Vanguard Dragon
mobs[168].pos = { x = -237.1062, y = -11.4733, z = 66.6790, rot = 228 } -- Vanguard Dragon
mobs[169].pos = { x = -247.0509, y = -11.9911, z = -11.5988, rot = 253 } -- Vanguard Dragon
mobs[170].pos = { x = -235.2860, y = -11.7157, z = -87.2030, rot = 0 } -- Vanguard Dragon
mobs[171].pos = { x = -276.5036, y = -20.0000, z = -81.0512, rot = 255 } -- Vanguard Dragon
mobs[172].pos = { x = -268.2993, y = -18.4545, z = 33.5037, rot = 45 } -- Vanguard Dragon
mobs[173].pos = { x = -284.7049, y = -20.2053, z = 121.2283, rot = 59 } -- Vanguard Dragon
mobs[174].pos = { x = -317.0527, y = -27.8170, z = 72.3022, rot = 21 } -- Vanguard Dragon
mobs[175].pos = { x = -297.9739, y = -23.4600, z = -2.6931, rot = 226 } -- Vanguard Dragon
mobs[176].pos = { x = -308.7357, y = -26.5187, z = -37.8035, rot = 226 } -- Vanguard Dragon
mobs[179].pos = { x = -414.2820, y = -44.0000, z = 20.4270, rot = 0 } -- Dynamis Lord

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------
------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[52].eyes = xi.dynamis.eye.BLUE
mobs[73].eyes = xi.dynamis.eye.GREEN
mobs[77].eyes = xi.dynamis.eye.GREEN
mobs[112].eyes = xi.dynamis.eye.BLUE
mobs[142].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 10, 43, 60, 143, 150 }
mobs[10].timeExtension = 30 -- Tombstone Prototype
mobs[43].timeExtension = 30 -- Icon Prototype
mobs[60].timeExtension = 30 -- Tombstone Prototype
mobs[143].timeExtension = 30 -- Statue Prototype
mobs[150].timeExtension = 30 -- Statue Prototype
