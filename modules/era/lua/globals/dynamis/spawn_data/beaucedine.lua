-----------------------------------
-- Era Dynamis - Dynamis-Beaucedine spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/bea.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/bcd.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_BEAUCEDINE

local mobs = {}
for i = 1, 227 do
    mobs[i] = { id = i }
end

mobs.maxWaves = 2

xi.dynamis.mobList[zoneID] = mobs


----------------------------------------------------------------------------------------------------
--                                  Setup of Parent Spawning                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--               Mob Info               --
-- Note: Primarily used for mobs that   --
-- are NMs or parent mobs.              --
------------------------------------------

mobs[1].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (001-Q)
mobs[2].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (002-O)
mobs[3].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (003-Y)
mobs[4].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (004-G)
mobs[5].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (005-Y) (HP)
mobs[6].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (006-Q)
mobs[7].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (007-O)
mobs[8].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (008-G) (MP)
mobs[9].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (009-Y)
mobs[10].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (010-Y) (15)
mobs[11].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (011-Y)
mobs[12].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (012-Y) (MP)
mobs[13].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (013-Y) (HP)
mobs[14].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (014-Y)
mobs[15].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (015-Y)
mobs[16].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (016-Y)
mobs[17].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (017-Y)
mobs[18].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (018-Y) (HP)
mobs[19].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (019-Y) (MP)
mobs[20].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (020-Y) (15)
mobs[21].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (021-Y)
mobs[22].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (022-Y) (MP)
mobs[23].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (023-Y) (HP)
mobs[24].info = { mobType = 'NM', name = 'Dynamis Icon', family = 'Yagudo' } -- ( 024 )
mobs[25].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (025-Y) (MP)
mobs[26].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (026-Y)
mobs[27].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (027-Y) (MP)
mobs[28].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (028-Y) (HP)
mobs[29].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (029-Y)
mobs[30].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (030-Y) (HP)
mobs[31].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (031-G) (15)
mobs[32].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (032-G)
mobs[33].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (033-G)
mobs[34].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (034-G)
mobs[35].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (035-G)
mobs[36].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (036-G)
mobs[37].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (037-G) (HP)
mobs[38].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (038-G) (MP)
mobs[39].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (039-G)
mobs[40].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (040-G) (MP)
mobs[41].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (041-G) (HP)
mobs[42].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (042-G)
mobs[43].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (043-G)
mobs[44].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (044-G) (HP)
mobs[45].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (045-G) (MP)
mobs[46].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (046-G) (15)
mobs[47].info = { mobType = 'NM', name = 'Dynamis Statue', family = 'Goblin' } -- ( 047 )
mobs[48].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (048-G)
mobs[49].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (049-G) (MP)
mobs[50].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (050-G)
mobs[51].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (051-G) (HP)
mobs[52].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (052-G) (MP)
mobs[53].info = { mobType = 'Statue', name = 'Goblin Statue', family = 'Goblin' } -- (053-G) (HP)
mobs[54].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (054-Q)
mobs[55].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (055-Q)
mobs[56].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (056-Q) (HP)
mobs[57].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (057-Q) (MP)
mobs[58].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (058-Q)
mobs[59].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (059-Q) (HP)
mobs[60].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (060-Q)
mobs[61].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (061-Q) (MP)
mobs[62].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (062-Q)
mobs[63].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (063-Q) (15)
mobs[64].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (064-Q)
mobs[65].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (065-Q) (HP)
mobs[66].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (066-Q) (15)
mobs[67].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (067-Q) (MP)
mobs[68].info = { mobType = 'NM', name = 'Dynamis Effigy', family = 'Quadav' } -- ( 068 )
mobs[69].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (069-Q)
mobs[70].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (070-Q) (HP)
mobs[71].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (071-Q)
mobs[72].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (072-Q) (MP)
mobs[73].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (073-Q)
mobs[74].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (074-Q) (HP)
mobs[75].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (075-Q)
mobs[76].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (076-Q) (MP)
mobs[77].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (077-O)
mobs[78].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (078-O) (HP)
mobs[79].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (079-O)
mobs[80].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (080-O) (MP)
mobs[81].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (081-O)
mobs[82].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (082-O) (MP)
mobs[83].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (083-O) (15)
mobs[84].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (084-O) (HP)
mobs[85].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (085-O)
mobs[86].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (086-O) (HP)
mobs[87].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (087-O) (15)
mobs[88].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (088-O) (MP)
mobs[89].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (089-O)
mobs[90].info = { mobType = 'NM', name = 'Dynamis Tombstone', family = 'Orc' } -- ( 090 )
mobs[91].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (091-O) (HP)
mobs[92].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (092-O)
mobs[93].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (093-O)
mobs[94].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (094-O) (MP)
mobs[95].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (095-O) (HP)
mobs[96].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (096-O)
mobs[97].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (097-O)
mobs[98].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (098-O) (MP)
mobs[99].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (099-O)
mobs[100].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (100-Q)
mobs[101].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (101-Y)
mobs[102].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (102-G)
mobs[103].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (103-Q) (HP)
mobs[104].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (104-G) (MP)
mobs[105].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (105-O) (HP)
mobs[106].info = { mobType = 'Statue', name = 'Avatar Icon', family = 'Yagudo' } -- (106-Y) (MP)
mobs[107].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (107-H)
mobs[108].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (108-H)
mobs[109].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (109-H)
mobs[110].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (110-H)
mobs[111].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (111-H)
mobs[112].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (112-H)
mobs[113].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (113-H)
mobs[114].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (114-H)
mobs[115].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (115-H)
mobs[116].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (116-H)
mobs[117].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (117-H)
mobs[118].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (118-H)
mobs[119].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (119-H)
mobs[120].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (120-H) (15)
mobs[121].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (121-H)
mobs[122].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (122-H)
mobs[123].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (123-H)
mobs[124].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (124-H)
mobs[125].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (125-H)
mobs[126].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (126-H)
mobs[127].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (127-H)
mobs[128].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (128-H)
mobs[129].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (129-H)
mobs[130].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (130-H)
mobs[131].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (131-H)
mobs[132].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (132-H)
mobs[133].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (133-H)
mobs[134].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (134-H)
mobs[135].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (135-H)
mobs[136].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (136-H)
mobs[137].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (137-H)
mobs[138].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (138-H)
mobs[139].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (139-H)
mobs[140].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (140-H)
mobs[141].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (141-H)
mobs[142].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (142-H)
mobs[143].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (143-H)
mobs[144].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (144-H)
mobs[145].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (145-H)
mobs[146].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (146-H)
mobs[147].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (147-H) (15)
mobs[148].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (148-H)
mobs[149].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (149-H)
mobs[150].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (150-H)
mobs[151].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (151-H)
mobs[152].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (152-H)
mobs[153].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (153-H)
mobs[154].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (154-H)
mobs[155].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (155-H)
mobs[156].info = { mobType = 'Statue', name = 'Vanguard Eye' } -- (156-H)
mobs[157].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = '157_killed' } -- (157-H)
mobs[158].info = { mobType = 'NM', name = 'Dagourmarche', family = 'Hydra' } -- ( 158 ) Attest. NM (Dagourmarche) (DRG+SMN+BST)
mobs[159].info = { mobType = 'NM', name = 'Quiebitiel', family = 'Hydra' } -- ( 159 ) Attest. NM (Quiebitiel) (BLM+WHM+BRD)
mobs[160].info = { mobType = 'NM', name = 'Goublefaupe', family = 'Hydra' } -- ( 160 ) Attest. NM (Goublefaupe) (RDM+PLD+WAR)
mobs[161].info = { mobType = 'NM', name = 'Mildaunegeux', family = 'Hydra' } -- ( 161 ) Attest. NM (Mildaunegeux) (MNK+NIN+THF)
mobs[162].info = { mobType = 'NM', name = 'Velosareon', family = 'Hydra' } -- ( 162 ) Attest. NM (Velosareon) (DRK+SAM+RNG)
mobs[163].info = { mobType = 'NM', name = 'Angra Mainyu', family = 'Hydra' } -- ( 163 ) Ahriman NM (Angra Mainyu)
mobs[164].info = { mobType = 'NM', name = 'Fire Pukis' } --   Fire Pukis
mobs[165].info = { mobType = 'NM', name = 'Poison Pukis' } -- Poison Pukis
mobs[166].info = { mobType = 'NM', name = 'Wind Pukis' } --   Wind Pukis
mobs[167].info = { mobType = 'NM', name = 'Petro Pukis' } --  Petro Pukis
mobs[168].info = { mobType = 'NM', name = 'Xaa Chau the Roctalon', family = 'Yagudo' } -- MNK
mobs[169].info = { mobType = 'NM', name = 'Maa Zaua the Wyrmkeeper', family = 'Yagudo' } -- DRG
mobs[170].info = { mobType = 'NM', name = 'Soo Jopo the Fiendking', family = 'Yagudo' } -- BST
mobs[171].info = { mobType = 'NM', name = 'Hee Mida the Meticulous', family = 'Yagudo' } -- RNG
mobs[172].info = { mobType = 'NM', name = 'Xhoo Fuza the Sublime', family = 'Yagudo' } -- BRD
mobs[173].info = { mobType = 'NM', name = 'Puu Timu the Phantasmal', family = 'Yagudo' } -- SMN
mobs[174].info = { mobType = 'NM', name = 'Foo Peku the Bloodcloak', family = 'Yagudo' } -- WAR
mobs[175].info = { mobType = 'NM', name = 'Koo Saxu the Everfast', family = 'Yagudo' } -- WHM
mobs[176].info = { mobType = 'NM', name = 'Kuu Xuka the Nimble', family = 'Yagudo' } -- NIN
mobs[177].info = { mobType = 'NM', name = 'Guu Waji the Preacher', family = 'Yagudo' } -- PLD
mobs[178].info = { mobType = 'NM', name = 'Nee Huxa the Judgemental', family = 'Yagudo' } -- DRK
mobs[179].info = { mobType = 'NM', name = 'Caa Xaza the Madpiercer', family = 'Yagudo' } -- RDM
mobs[180].info = { mobType = 'NM', name = 'Bhuu Wjato the Firepool', family = 'Yagudo' } -- BLM
mobs[181].info = { mobType = 'NM', name = 'Droprix Granitepalms', family = 'Goblin' } -- MNK
mobs[182].info = { mobType = 'NM', name = 'Ascetox Ratgums', family = 'Goblin' } -- BLM
mobs[183].info = { mobType = 'NM', name = 'Bordox Kittyback', family = 'Goblin' } -- THF
mobs[184].info = { mobType = 'NM', name = 'Draklix Scalecrust', family = 'Goblin' } -- DRG
mobs[185].info = { mobType = 'NM', name = 'Swypestix Tigershins', family = 'Goblin' } -- NIN
mobs[186].info = { mobType = 'NM', name = 'Shisox Widebrow', family = 'Goblin' } -- SAM
mobs[187].info = { mobType = 'NM', name = 'Gibberox Pimplebeak', family = 'Goblin' } -- RDM
mobs[188].info = { mobType = 'NM', name = 'Morblox Chubbychin', family = 'Goblin' } -- SMN
mobs[189].info = { mobType = 'NM', name = 'Moltenox Stubthumbs', family = 'Goblin' } -- WAR
mobs[190].info = { mobType = 'NM', name = 'Slinkix Trufflesniff', family = 'Goblin' } -- RNG
mobs[191].info = { mobType = 'NM', name = 'Ruffbix Jumbolobes', family = 'Goblin' } -- PLD
mobs[192].info = { mobType = 'NM', name = 'Routsix Rubbertendon', family = 'Goblin' } -- BST
mobs[193].info = { mobType = 'NM', name = 'Whistix Toadthroat', family = 'Goblin' } -- BRD
mobs[194].info = { mobType = 'NM', name = "Ji'Fhu Infiltrator", family = 'Quadav' } -- THF
mobs[195].info = { mobType = 'NM', name = "Ta'Hyu Gallanthunter", family = 'Quadav' } -- DRK
mobs[196].info = { mobType = 'NM', name = "Mu'Gha Legionkiller", family = 'Quadav' } -- PLD
mobs[197].info = { mobType = 'NM', name = "Mi'Rhe Whisperblade", family = 'Quadav' } -- NIN
mobs[198].info = { mobType = 'NM', name = "Nu'Bhi Spiraleye", family = 'Quadav' } -- BRD
mobs[199].info = { mobType = 'NM', name = "Be'Zhe Keeprazer", family = 'Quadav' } -- SMN
mobs[200].info = { mobType = 'NM', name = "Na'Hya Floodmaker", family = 'Quadav' } -- RDM
mobs[201].info = { mobType = 'NM', name = "So'Zho Metalbender", family = 'Quadav' } -- MNK
mobs[202].info = { mobType = 'NM', name = "Ga'Fho Venomtouch", family = 'Quadav' } -- WHM
mobs[203].info = { mobType = 'NM', name = "De'Bho Pyrohand", family = 'Quadav' } -- BLM
mobs[204].info = { mobType = 'NM', name = "So'Gho Adderhandler", family = 'Quadav' } -- BST
mobs[205].info = { mobType = 'NM', name = "Go'Tyo Magenapper", family = 'Quadav' } -- DRG
mobs[206].info = { mobType = 'NM', name = "Ji'Khu Towercleaver", family = 'Quadav' } -- SAM
mobs[207].info = { mobType = 'NM', name = 'Deathcaller Bidfbid', family = 'Orc' } -- SMN
mobs[208].info = { mobType = 'NM', name = 'Taruroaster Biggsjig', family = 'Orc' } -- BLM
mobs[209].info = { mobType = 'NM', name = 'Heavymail Djidzbad', family = 'Orc' } -- PLD
mobs[210].info = { mobType = 'NM', name = 'Skinmask Ugghfogg', family = 'Orc' } -- DRK
mobs[211].info = { mobType = 'NM', name = 'Lockbuster Zapdjipp', family = 'Orc' } -- THF
mobs[212].info = { mobType = 'NM', name = 'Cobraclaw Buchzvotch', family = 'Orc' } -- MNK
mobs[213].info = { mobType = 'NM', name = 'Galkarider Retzpratz', family = 'Orc' } -- RNG
mobs[214].info = { mobType = 'NM', name = 'Drakefeast Wubmfub', family = 'Orc' } -- DRG
mobs[215].info = { mobType = 'NM', name = 'Spinalsucker Galflmall', family = 'Orc' } -- RDM
mobs[216].info = { mobType = 'NM', name = 'Elvaanlopper Grokdok', family = 'Orc' } -- SAM
mobs[217].info = { mobType = 'NM', name = 'Humegutter Adzjbadj', family = 'Orc' } -- WAR
mobs[218].info = { mobType = 'NM', name = 'Mithraslaver Debhabob', family = 'Orc' } -- BST
mobs[219].info = { mobType = 'NM', name = 'Wraithdancer Gidbnod', family = 'Orc' } -- WHM
mobs[220].info = { mobType = 'NM', name = "Gu'Nha Wallstormer", family = 'Quadav' } -- WAR
mobs[221].info = { mobType = 'NM', name = "Gu'Khu Dukesniper", family = 'Quadav' } -- RNG
mobs[222].info = { mobType = 'NM', name = 'Brewnix Bittypupils', family = 'Goblin' } -- WHM
mobs[223].info = { mobType = 'NM', name = 'Tocktix Thinlids', family = 'Goblin' } -- DRK
mobs[224].info = { mobType = 'NM', name = 'Ultrasonic Zeknajak', family = 'Orc' } -- BRD
mobs[225].info = { mobType = 'NM', name = 'Jeunoraider Gepkzip', family = 'Orc' } -- NIN
mobs[226].info = { mobType = 'NM', name = 'Ryy Qihi the Idolrobber', family = 'Yagudo' } -- THF
mobs[227].info = { mobType = 'NM', name = 'Knii Hoqo the Bisector', family = 'Yagudo' } -- SAM

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    { }, -- Do not touch this is wave 1
    {'157_killed'} -- Spawns paper NMs
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    3  , -- (003-Y)   Avatar Icon
    1  , -- (001-Q)   Adamantking Effigy
    2  , -- (002-O)   Serjeant Tombstone
    4  , -- (004-G)   Goblin Replica
    7  , -- (007-O)   Serjeant Tombstone
    6  , -- (006-Q)   Adamantking Effigy
    5  , -- (005-Y)   Avatar Icon
    8  , -- (008-G)   Goblin Replica
    10 , -- (010-Y)   Avatar Icon
    9  , -- (009-Y)   Avatar Icon
    11 , -- (011-Y)   Avatar Icon
    13 , -- (013-Y)   Avatar Icon
    12 , -- (012-Y)   Avatar Icon
    15 , -- (015-Y)   Avatar Icon
    16 , -- (016-Y)   Avatar Icon
    17 , -- (017-Y)   Avatar Icon
    14 , -- (014-Y)   Avatar Icon
    18 , -- (018-Y)   Avatar Icon
    19 , -- (019-Y)   Avatar Icon
    20 , -- (020-Y)   Avatar Icon
    21 , -- (021-Y)   Avatar Icon
    23 , -- (023-Y)   Avatar Icon
    22 , -- (022-Y)   Avatar Icon
    28 , -- (028-Y)   Avatar Icon
    27 , -- (027-Y)   Avatar Icon
    29 , -- (029-Y)   Avatar Icon
    26 , -- (026-Y)   Avatar Icon
    30 , -- (030-Y)   Avatar Icon
    25 , -- (025-Y)   Avatar Icon
    24 , -- (024- )   Dynamis Icon
    31 , -- (031-G)   Goblin Statue
    33 , -- (033-G)   Goblin Statue
    32 , -- (032-G)   Goblin Statue
    34 , -- (034-G)   Goblin Statue
    35 , -- (035-G)   Goblin Statue
    36 , -- (036-G)   Goblin Statue
    37 , -- (037-G)   Goblin Statue
    38 , -- (038-G)   Goblin Statue
    48 , -- (048-G)   Goblin Statue
    50 , -- (050-G)   Goblin Statue
    51 , -- (051-G)   Goblin Statue
    49 , -- (049-G)   Goblin Statue
    52 , -- (052-G)   Goblin Statue
    53 , -- (053-G)   Goblin Statue
    47 , -- (047- )   Dynamis Statue
    39 , -- (039-G)   Goblin Statue
    41 , -- (041-G)   Goblin Statue
    40 , -- (040-G)   Goblin Statue
    43 , -- (043-G)   Goblin Statue
    42 , -- (042-G)   Goblin Statue
    44 , -- (044-G)   Goblin Statue
    45 , -- (045-G)   Goblin Statue
    46 , -- (046-G)   Goblin Statue
    56 , -- (056-Q)   Adamantking Effigy
    54 , -- (054-Q)   Adamantking Effigy
    55 , -- (055-Q)   Adamantking Effigy
    57 , -- (057-Q)   Adamantking Effigy
    68 , -- (068- )   Dynamis Effigy
    76 , -- (076-Q)   Adamantking Effigy
    75 , -- (075-Q)   Adamantking Effigy
    74 , -- (074-Q)   Adamantking Effigy
    73 , -- (073-Q)   Adamantking Effigy
    72 , -- (072-Q)   Adamantking Effigy
    71 , -- (071-Q)   Adamantking Effigy
    70 , -- (070-Q)   Adamantking Effigy
    69 , -- (069-Q)   Adamantking Effigy
    58 , -- (058-Q)   Adamantking Effigy
    59 , -- (059-Q)   Adamantking Effigy
    60 , -- (060-Q)   Adamantking Effigy
    61 , -- (061-Q)   Adamantking Effigy
    62 , -- (062-Q)   Adamantking Effigy
    63 , -- (063-Q)   Adamantking Effigy
    65 , -- (065-Q)   Adamantking Effigy
    64 , -- (064-Q)   Adamantking Effigy
    67 , -- (067-Q)   Adamantking Effigy
    66 , -- (066-Q)   Adamantking Effigy
    90 , -- (090- )   Dynamis Tombstone
    91 , -- (091-O)   Serjeant Tombstone
    92 , -- (092-O)   Serjeant Tombstone
    93 , -- (093-O)   Serjeant Tombstone
    94 , -- (094-O)   Serjeant Tombstone
    98 , -- (098-O)   Serjeant Tombstone
    97 , -- (097-O)   Serjeant Tombstone
    96 , -- (096-O)   Serjeant Tombstone
    95 , -- (095-O)   Serjeant Tombstone
    77 , -- (077-O)   Serjeant Tombstone
    78 , -- (078-O)   Serjeant Tombstone
    79 , -- (079-O)   Serjeant Tombstone
    80 , -- (080-O)   Serjeant Tombstone
    81 , -- (081-O)   Serjeant Tombstone
    84 , -- (084-O)   Serjeant Tombstone
    83 , -- (083-O)   Serjeant Tombstone
    82 , -- (082-O)   Serjeant Tombstone
    85 , -- (085-O)   Serjeant Tombstone
    86 , -- (086-O)   Serjeant Tombstone
    87 , -- (087-O)   Serjeant Tombstone
    88 , -- (088-O)   Serjeant Tombstone
    89 , -- (089-O)   Serjeant Tombstone
    99 , -- (099-O)   Serjeant Tombstone
    100, -- (100-Q)   Adanantking Effigy
    101, -- (101-Y)   Avatar Icon
    102, -- (102-G)   Goblin Replica
    103, -- (103-Q)   Adamantking Effigy
    104, -- (104-G)   Goblin Replica
    105, -- (105-O)   Serjeant Tombstone
    106, -- (106-Y)   Avatar Icon
    107, -- (107-H)   Vanguard Eye
    118, -- (118-H)   Vanguard Eye
    117, -- (117-H)   Vanguard Eye
    116, -- (116-H)   Vanguard Eye
    115, -- (115-H)   Vanguard Eye
    114, -- (114-H)   Vanguard Eye
    119, -- (119-H)   Vanguard Eye
    113, -- (113-H)   Vanguard Eye
    112, -- (112-H)   Vanguard Eye
    108, -- (108-H)   Vanguard Eye
    111, -- (111-H)   Vanguard Eye
    110, -- (110-H)   Vanguard Eye
    109, -- (109-H)   Vanguard Eye
    122, -- (122-H)   Vanguard Eye
    121, -- (121-H)   Vanguard Eye
    123, -- (123-H)   Vanguard Eye
    124, -- (124-H)   Vanguard Eye
    125, -- (125-H)   Vanguard Eye
    126, -- (126-H)   Vanguard Eye
    127, -- (127-H)   Vanguard Eye
    128, -- (128-H)   Vanguard Eye
    129, -- (129-H)   Vanguard Eye
    130, -- (130-H)   Vanguard Eye
    131, -- (131-H)   Vanguard Eye
    132, -- (132-H)   Vanguard Eye
    133, -- (133-H)   Vanguard Eye
    136, -- (136-H)   Vanguard Eye
    134, -- (134-H)   Vanguard Eye
    135, -- (135-H)   Vanguard Eye
    137, -- (137-H)   Vanguard Eye
    138, -- (138-H)   Vanguard Eye
    139, -- (139-H)   Vanguard Eye
    140, -- (140-H)   Vanguard Eye
    141, -- (141-H)   Vanguard Eye
    142, -- (142-H)   Vanguard Eye
    143, -- (143-H)   Vanguard Eye
    144, -- (144-H)   Vanguard Eye
    145, -- (145-H)   Vanguard Eye
    146, -- (146-H)   Vanguard Eye
    148, -- (148-H)   Vanguard Eye
    147, -- (147-H)   Vanguard Eye
    149, -- (149-H)   Vanguard Eye
    150, -- (150-H)   Vanguard Eye
    151, -- (151-H)   Vanguard Eye
    152, -- (152-H)   Vanguard Eye
    153, -- (153-H)   Vanguard Eye
    154, -- (154-H)   Vanguard Eye
    155, -- (155-H)   Vanguard Eye
    156, -- (156-H)   Vanguard Eye
    157, -- (157-H)   Vanguard Eye
    163  -- (163- )   Angra Mainyu
}

mobs[2].wave =
{
    160, -- ( 160 ) Attest. NM (Goublefaupe)
    159, -- ( 159 ) Attest. NM (Quiebitiel)
    161, -- ( 161 ) Attest. NM (Mildaunegeux)
    162, -- ( 162 ) Attest. NM (Velosareon)
    158  -- ( 158 ) Attest. NM (Dagourmarche)
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[3].mobchildren = { [xi.job.THF] = 1, [xi.job.RNG] = 1 } --   1 THF  1 RNG
mobs[1].mobchildren = { [xi.job.WHM] = 1, [xi.job.SAM] = 1 } --   1 WHM  1 SAM
mobs[2].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1 } --   1 WAR  1 BLM
mobs[4].mobchildren = { [xi.job.DRK] = 1, [xi.job.BRD] = 1 } --   1 DRK  1 BRD
mobs[7].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRG] = 1 } --   1 MNK  1 DRG
mobs[6].mobchildren = { [xi.job.PLD] = 1, [xi.job.BST] = 1 } --   1 PLD  1 BST
mobs[5].mobchildren = { [xi.job.RDM] = 1, [xi.job.NIN] = 1 } --   1 RDM  1 NIN
mobs[8].mobchildren = { [xi.job.THF] = 1, [xi.job.SMN] = 1 } --   1 THF  1 SMN
mobs[10].mobchildren = { [xi.job.WHM] = 1, [xi.job.BRD] = 1 } --   1 WHM  1 BRD
mobs[9].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[11].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[13].mobchildren = { [xi.job.WAR] = 1, [xi.job.BST] = 1 } --   1 WAR  1 BST
mobs[12].mobchildren = { [xi.job.SAM] = 1, [xi.job.SMN] = 1 } --   1 SAM  1 SMN
mobs[15].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[16].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[17].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[14].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[18].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[19].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[20].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[23].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1 } --   1 BLM  1 RDM
mobs[22].mobchildren = { [xi.job.RNG] = 1, [xi.job.NIN] = 1 } --   1 RNG  1 NIN
mobs[28].mobchildren = { [xi.job.WHM] = 1, [xi.job.BST] = 1 } --   1 WHM  1 BST
mobs[27].mobchildren = { [xi.job.BRD] = 1, [xi.job.SMN] = 1 } --   1 BRD  1 SMN
mobs[29].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[26].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[30].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRG] = 1 } --   1 MNK  1 DRG
mobs[25].mobchildren = { [xi.job.THF] = 1, [xi.job.SAM] = 1 } --   1 THF  1 SAM
mobs[31].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[33].mobchildren = { [xi.job.WHM] = 1, [xi.job.RNG] = 1 } --   1 WHM  1 RNG
mobs[32].mobchildren = { [xi.job.RDM] = 1, [xi.job.SAM] = 1 } --   1 RDM  1 SAM
mobs[34].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[35].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[36].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[37].mobchildren = { [xi.job.PLD] = 1, [xi.job.SAM] = 1 } --   1 PLD  1 SAM
mobs[38].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRG] = 1 } --   1 WHM  1 DRG
mobs[48].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[50].mobchildren = { [xi.job.THF] = 1 } --   1 THF
mobs[51].mobchildren = { [xi.job.MNK] = 1, [xi.job.RDM] = 1 } --   1 MNK  1 RDM
mobs[49].mobchildren = { [xi.job.DRK] = 1, [xi.job.NIN] = 1 } --   1 DRK  1 NIN
mobs[52].mobchildren = { [xi.job.SAM] = 1 } --   1 SAM
mobs[53].mobchildren = { [xi.job.DRG] = 1 } --   1 DRG
mobs[39].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1 } --   1 WAR  1 WHM
mobs[41].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[40].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[43].mobchildren = { [xi.job.MNK] = 1, [xi.job.BRD] = 1 } --   1 MNK  1 BRD
mobs[42].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[44].mobchildren = { [xi.job.DRG] = 1, [xi.job.SMN] = 1 } --   1 DRG  1 SMN
mobs[45].mobchildren = { [xi.job.PLD] = 1, [xi.job.BST] = 1 } --   1 PLD  1 BST
mobs[46].mobchildren = { [xi.job.THF] = 1 } --   1 THF
mobs[56].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1 } --   1 WAR  1 RDM
mobs[54].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[55].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[57].mobchildren = { [xi.job.BRD] = 1, [xi.job.DRG] = 1 } --   1 BRD  1 DRG
mobs[76].mobchildren = { [xi.job.SMN] = 1 } --   1 SMN
mobs[75].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[74].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1 } --   1 RDM  1 BRD
mobs[73].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[72].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[71].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[70].mobchildren = { [xi.job.THF] = 1, [xi.job.DRK] = 1 } --   1 THF  1 DRK
mobs[69].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[58].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[59].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[60].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[61].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[62].mobchildren = { [xi.job.SAM] = 1 } --   1 SAM
mobs[63].mobchildren = { [xi.job.THF] = 1, [xi.job.RNG] = 1 } --   1 THF  1 RNG
mobs[65].mobchildren = { [xi.job.MNK] = 1, [xi.job.SMN] = 1 } --   1 MNK  1 SMN
mobs[64].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1 } --   1 WHM  1 BLM
mobs[67].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 1 } --   1 BST  1 DRG
mobs[66].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[91].mobchildren = { [xi.job.THF] = 1 } --   1 THF
mobs[92].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[93].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[94].mobchildren = { [xi.job.PLD] = 1, [xi.job.BRD] = 1 } --   1 PLD  1 BRD
mobs[98].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[97].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[96].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[95].mobchildren = { [xi.job.THF] = 1, [xi.job.SMN] = 1 } --   1 THF  1 SMN
mobs[77].mobchildren = { [xi.job.WHM] = 1, [xi.job.RNG] = 1 } --   1 WHM  1 RNG
mobs[78].mobchildren = { [xi.job.SAM] = 1, [xi.job.NIN] = 1 } --   1 SAM  1 NIN
mobs[79].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[80].mobchildren = { [xi.job.PLD] = 1, [xi.job.BRD] = 1 } --   1 PLD  1 BRD
mobs[81].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1 } --   1 WAR  1 RDM
mobs[84].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[83].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[82].mobchildren = { [xi.job.DRG] = 1 } --   1 DRG
mobs[85].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1 } --   1 WHM  1 RDM
mobs[86].mobchildren = { [xi.job.SMN] = 1 } --   1 SMN
mobs[87].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[88].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[89].mobchildren = { [xi.job.DRK] = 1, [xi.job.SAM] = 1 } --   1 DRK  1 SAM
mobs[99].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[100].mobchildren = { [xi.job.SMN] = 1 } --   1 SMN
mobs[101].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[102].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[107].mobchildren = { [xi.job.MNK] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } --   1 MNK  1 BRD  1 RNG
mobs[118].mobchildren = { [xi.job.WHM] = 1 } --   1 WHM
mobs[117].mobchildren = { [xi.job.BLM] = 1, [xi.job.NIN] = 1 } --   1 BLM  1 NIN
mobs[116].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRG] = 1 } --   1 PLD  1 DRG
mobs[115].mobchildren = { [xi.job.WAR] = 1, [xi.job.RNG] = 1 } --   1 WAR  1 RNG
mobs[114].mobchildren = { [xi.job.RDM] = 1, [xi.job.SAM] = 1 } --   1 RDM  1 SAM
mobs[119].mobchildren = { [xi.job.THF] = 1, [xi.job.SMN] = 1 } --   1 THF  1 SMN
mobs[113].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[112].mobchildren = { [xi.job.WAR] = 1, [xi.job.BST] = 1 } --   1 WAR  1 BST
mobs[108].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[111].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[120].mobchildren = { [xi.job.WHM] = 1, [xi.job.SMN] = 1 } --   1 WHM  1 SMN
mobs[110].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[109].mobchildren = { [xi.job.THF] = 1 } --   1 THF
mobs[122].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[121].mobchildren = { [xi.job.DRG] = 1 } --   1 DRG
mobs[123].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[124].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[125].mobchildren = { [xi.job.WAR] = 1, [xi.job.BRD] = 1 } --   1 WAR  1 BRD
mobs[126].mobchildren = { [xi.job.WHM] = 1 } --   1 WHM
mobs[127].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[128].mobchildren = { [xi.job.PLD] = 1, [xi.job.SMN] = 1 } --   1 PLD  1 SMN
mobs[129].mobchildren = { [xi.job.BRD] = 1 } --   1 BRD
mobs[130].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[131].mobchildren = { [xi.job.BLM] = 1, [xi.job.NIN] = 1 } --   1 BLM  1 NIN
mobs[132].mobchildren = { [xi.job.MNK] = 1 } --   1 MNK
mobs[133].mobchildren = { [xi.job.RDM] = 1 } --   1 RDM
mobs[136].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1 } --   1 THF  1 DRG
mobs[134].mobchildren = { [xi.job.SAM] = 1 } --   1 SAM
mobs[135].mobchildren = { [xi.job.DRK] = 1 } --   1 DRK
mobs[137].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1 } --   1 MNK  1 WHM
mobs[138].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[139].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[140].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[141].mobchildren = { [xi.job.SMN] = 1 } --   1 SMN
mobs[142].mobchildren = { [xi.job.DRG] = 1 } --   1 DRG
mobs[143].mobchildren = { [xi.job.SAM] = 1 } --   1 SAM
mobs[144].mobchildren = { [xi.job.RNG] = 1 } --   1 RNG
mobs[145].mobchildren = { [xi.job.PLD] = 1 } --   1 PLD
mobs[146].mobchildren = { [xi.job.WAR] = 1 } --   1 WAR
mobs[148].mobchildren = { [xi.job.PLD] = 1, [xi.job.BRD] = 1 } --   1 PLD  1 BRD
mobs[147].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1 } --   1 RDM  1 THF
mobs[149].mobchildren = { [xi.job.DRG] = 1 } --   1 DRG
mobs[150].mobchildren = { [xi.job.BRD] = 1, [xi.job.RNG] = 1 } --   1 BRD  1 RNG
mobs[151].mobchildren = { [xi.job.BLM] = 1 } --   1 BLM
mobs[152].mobchildren = { [xi.job.NIN] = 1 } --   1 NIN
mobs[154].mobchildren = { [xi.job.BST] = 1 } --   1 BST
mobs[155].mobchildren = { [xi.job.SMN] = 1 } --   1 SMN
mobs[156].mobchildren = { [xi.job.MNK] = 1, [xi.job.DRK] = 1 } --   1 MNK  1 DRK
mobs[157].mobchildren = { [xi.job.WHM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.SAM] = 1, [xi.job.NIN] = 1 } --   1 WHM  1 RDM  1 THF  1 SAM  1 NIN
mobs[160].mobchildren = { [xi.job.WAR] = 2, [xi.job.RDM] = 2, [xi.job.PLD] = 2 } --   2 WAR  2 RDM  2 PLD
mobs[159].mobchildren = { [xi.job.WHM] = 2, [xi.job.BLM] = 2, [xi.job.BRD] = 2 } --   2 WHM  2 BLM  2 BRD
mobs[161].mobchildren = { [xi.job.MNK] = 2, [xi.job.THF] = 2, [xi.job.NIN] = 2 } --   2 MNK  2 THF  2 NIN
mobs[162].mobchildren = { [xi.job.DRK] = 2, [xi.job.RNG] = 2, [xi.job.SAM] = 2 } --   2 DRK  2 RNG  2 SAM
mobs[158].mobchildren = { [xi.job.BST] = 2, [xi.job.DRG] = 2, [xi.job.SMN] = 2 } --   2 BST  2 DRG  2 SMN

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[10].nmchildren = { true, 168 } -- (010-Y) Spawns -> MNK NM (Xaa Chau the Roctalon)
mobs[15].nmchildren = { true, 170 } -- (015-Y) Spawns -> BST NM (Soo Jopo the Fiendking)
mobs[17].nmchildren = { true, 171 } -- (017-Y) Spawns -> RNG NM (Hee Mida the Meticulous)
mobs[14].nmchildren = { true, 169 } -- (014-Y) Spawns -> DRG NM (Maa Zaua the Wyrmkeeper)
mobs[19].nmchildren = { true, 172 } -- (019-Y) Spawns -> BRD NM (Xhoo Fuza the Sublime)
mobs[20].nmchildren = { true, 173 } -- (020-Y) Spawns -> SMN NM (Puu Timu the Phantasmal)
mobs[21].nmchildren = { true, 174 } -- (021-Y) Spawns -> WAR NM (Foo Peku the Bloodcloak)
mobs[29].nmchildren = { true, 180 } -- (029-Y) Spawns -> BLM NM (Bhuu Wjato the Firepool)
mobs[26].nmchildren = { true, 179 } -- (026-Y) Spawns -> RDM NM (Caa Xaza the Madpiercer)
mobs[24].nmchildren = { true, 175, 176, 177, 178 } -- ( 024 ) Spawns -> WHM NM (Koo Saxu the Everfast),   NIN NM (Kuu Xuka the Nimble),    PLD NM (Guu Waji the Preacher), DRK NM (Nee Huxa the Judgmental)
mobs[31].nmchildren = { true, 181 } -- (031-G) Spawns -> MNK NM (Droprix Granitepalms)
mobs[34].nmchildren = { true, 182 } -- (034-G) Spawns -> BLM NM (Ascetox Ratgums)
mobs[35].nmchildren = { true, 183 } -- (035-G) Spawns -> THF NM (Bordox Kittyback)
mobs[52].nmchildren = { true, 192 } -- (052-G) Spawns -> BST NM (Routsix Rubbertendon)
mobs[53].nmchildren = { true, 193 } -- (053-G) Spawns -> BRD NM (Whistrix Toadthroat)
mobs[47].nmchildren = { true, 188, 189, 190, 191 } -- ( 047 ) Spawns -> SMN NM (Morblox Chubbychin),      WAR NM (Moltenox Stubthumbs),    RNG NM (Slinkix Trufflesniff),  PLD NM (Ruffbix Jumbolobes)
mobs[41].nmchildren = { true, 185 } -- (041-G) Spawns -> NIN NM (Swypestix Tigershins)
mobs[40].nmchildren = { true, 184 } -- (040-G) Spawns -> DRG NM (Draklix Scalecrust)
mobs[42].nmchildren = { true, 186 } -- (042-G) Spawns -> SAM NM (Shisox Widebrow)
mobs[46].nmchildren = { true, 187 } -- (046-G) Spawns -> RDM NM (Gibberox Pimplebeak)
mobs[54].nmchildren = { true, 194 } -- (054-Q) Spawns -> THF NM (Ji'Fhu Infiltrator)
mobs[55].nmchildren = { true, 195 } -- (055-Q) Spawns -> DRK NM (Ta'Hyu Gallanthunter)
mobs[68].nmchildren = { true, 201, 202, 203, 204 } -- ( 068 ) Spawns -> MNK NM (So'Zho Metalbender),      WHM NM (Ga'Fho Venomtouch),      BLM NM (De'Bho Pyrohand),       BST NM (So'Gho Adderhandler)
mobs[76].nmchildren = { true, 206 } -- (076-Q) Spawns -> SAM NM (Ji'Khu Towercleaver)
mobs[72].nmchildren = { true, 205 } -- (072-Q) Spawns -> DRG NM (Go'Tyo Magenapper)
mobs[58].nmchildren = { true, 196 } -- (058-Q) Spawns -> PLD NM (Mu'Gha Legionkiller)
mobs[60].nmchildren = { true, 197 } -- (060-Q) Spawns -> NIN NM (Mi'Rhe Whisperblade)
mobs[62].nmchildren = { true, 198 } -- (062-Q) Spawns -> BRD NM (Nu'Bhi Spiraleye)
mobs[63].nmchildren = { true, 199 } -- (063-Q) Spawns -> SMN NM (Be'Zhe Keeprazer)
mobs[66].nmchildren = { true, 200 } -- (066-Q) Spawns -> RDM NM (Na'Hya Floodmaker)
mobs[90].nmchildren = { true, 214, 215, 216, 217 } -- ( 090 ) Spawns -> DRG NM (Drakefeast Wubmfub),      RDM NM (Spinalsucker Galflmall), SAM NM (Elvaanlopper Grokdok),  WAR NM (Humegutter Adzjbadj)
mobs[91].nmchildren = { true, 218 } -- (091-O) Spawns -> BST NM (Mithraslaver Debhabob)
mobs[98].nmchildren = { true, 219 } -- (098-O) Spawns -> WHM NM (Wraithdancer Gidbnod)
mobs[79].nmchildren = { true, 207 } -- (079-O) Spawns -> SMN NM (Deathcaller Bidfbid)
mobs[84].nmchildren = { true, 210 } -- (084-O) Spawns -> DRK NM (Skinmask Ugghfogg)
mobs[83].nmchildren = { true, 209 } -- (083-O) Spawns -> PLD NM (Heavymail Djidzbad)
mobs[82].nmchildren = { true, 208 } -- (082-O) Spawns -> BLM NM (Taruroaster Biggsjig)
mobs[86].nmchildren = { true, 211 } -- (086-O) Spawns -> THF NM (Lockbuster Zapdjipp)
mobs[87].nmchildren = { true, 212 } -- (087-O) Spawns -> MNK NM (Cobraclaw Buchzvotch)
mobs[88].nmchildren = { true, 213 } -- (088-O) Spawns -> RNG NM (Galkarider Retzpratz)
mobs[103].nmchildren = { true, 220, 221 } -- (103-Q) Spawns -> WAR NM (Gu'Nha Wallstormer),      RNG NM (Gu'Khu Dukesniper)
mobs[104].nmchildren = { true, 222, 223 } -- (104-G) Spawns -> WHM NM (Brewnix Bittypupils),     DRK NM (Tocktix Thinlids)
mobs[105].nmchildren = { true, 224, 225 } -- (105-O) Spawns -> BRD NM (Ultrasonic Zeknajak),     NIN NM (Jeunoraider Gepkzip)
mobs[106].nmchildren = { true, 226, 227 } -- (106-Y) Spawns -> THF NM (Ryy Qihi the Idolrobber), SAM NM (Knii Hoqo the Bisector)
mobs[117].nmchildren = { false, 120 } -- (117-H) Spawns -> Vanguard Eye ( 120 )
mobs[163].nmchildren = { true, 164, 165, 166, 167 } -- ( 163 ) Ahriman NM (Angra Mainyu)

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[3].pos = { x = -279.0733, y = -39.1011, z = -341.9998, rot = 8 } -- (003-Y) Avatar Icon
mobs[1].pos = { x = -260.1787, y = -39.0101, z = -362.4289, rot = 70 } -- (001-Q) Adamantking Effigy
mobs[2].pos = { x = -239.1913, y = -40.0000, z = -362.8879, rot = 156 } -- (002-O) Serjeant Tombstone
mobs[4].pos = { x = -232.9155, y = -39.8400, z = -335.9303, rot = 127 } -- (004-G) Goblin Replica
mobs[7].pos = { x = -293.3890, y = -41.0000, z = -302.2890, rot = 65 } -- (007-O) Serjeant Tombstone
mobs[6].pos = { x = -297.7608, y = -39.8339, z = -272.4887, rot = 14 } -- (006-Q) Adamantking Effigy
mobs[5].pos = { x = -278.7580, y = -39.8060, z = -312.1010, rot = 65 } -- (005-Y) Avatar Icon
mobs[8].pos = { x = -310.9539, y = -40.1066, z = -287.0196, rot = 17 } -- (008-G) Goblin Replica
mobs[10].pos = { x = -192.7040, y = -39.7870, z = -212.9340, rot = 150 } -- (010-Y) Avatar Icon
mobs[9].pos = { x = -180.2090, y = -39.7730, z = -206.2730, rot = 190 } -- (009-Y) Avatar Icon
mobs[11].pos = { x = -192.6700, y = -39.7890, z = -227.3560, rot = 104 } -- (011-Y) Avatar Icon
mobs[13].pos = { x = -167.8000, y = -39.7830, z = -212.4320, rot = 235 } -- (013-Y) Avatar Icon
mobs[12].pos = { x = -180.6140, y = -39.7630, z = -233.8590, rot = 69 } -- (012-Y) Avatar Icon
mobs[15].pos = { x = -36.1910, y = -39.0110, z = -220.1960, rot = 195 } -- (015-Y) Avatar Icon
mobs[16].pos = { x = -19.7160, y = -41.0350, z = -216.4910, rot = 195 } -- (016-Y) Avatar Icon
mobs[17].pos = { x = -2.5500, y = -40.1670, z = -209.2830, rot = 130 } -- (017-Y) Avatar Icon
mobs[14].pos = { x = -46.0060, y = -39.9610, z = -233.1670, rot = 195 } -- (014-Y) Avatar Icon
mobs[18].pos = { x = -30.4170, y = -40.2040, z = -238.8100, rot = 195 } -- (018-Y) Avatar Icon
mobs[19].pos = { x = -30.7090, y = -39.2210, z = -249.8110, rot = 195 } -- (019-Y) Avatar Icon
mobs[20].pos = { x = -81.2900, y = -40.0000, z = -259.3080, rot = 255 } -- (020-Y) Avatar Icon
mobs[21].pos = { x = 118.9020, y = -40.0000, z = -2.9550, rot = 185 } -- (021-Y) Avatar Icon
mobs[23].pos = { x = 78.9390, y = -40.0520, z = -5.0180, rot = 185 } -- (023-Y) Avatar Icon
mobs[22].pos = { x = 86.8210, y = -39.8330, z = 4.5600, rot = 185 } -- (022-Y) Avatar Icon
mobs[28].pos = { x = 68.3370, y = -39.3630, z = 60.9290, rot = 65 } -- (028-Y) Avatar Icon
mobs[27].pos = { x = 55.5120, y = -39.3630, z = 60.9290, rot = 65 } -- (027-Y) Avatar Icon
mobs[29].pos = { x = 78.3370, y = -39.4350, z = 52.0620, rot = 65 } -- (029-Y) Avatar Icon
mobs[26].pos = { x = 48.3370, y = -39.1190, z = 52.0620, rot = 65 } -- (026-Y) Avatar Icon
mobs[30].pos = { x = 68.3370, y = -39.6180, z = 39.7590, rot = 65 } -- (030-Y) Avatar Icon
mobs[25].pos = { x = 55.5120, y = -39.2530, z = 39.7590, rot = 65 } -- (025-Y) Avatar Icon
mobs[24].pos = { x = 85.0448, y = -39.9585, z = 70.5809, rot = 96 } -- ( 024 ) Dynamis Icon
mobs[31].pos = { x = -128.8570, y = -59.5560, z = -179.7720, rot = 233 } -- (031-G) Goblin Statue
mobs[33].pos = { x = -135.9750, y = -59.7170, z = -179.9520, rot = 227 } -- ( 033 ) Goblin Statue
mobs[32].pos = { x = -131.4630, y = -60.1100, z = -187.4260, rot = 244 } -- (032-G) Goblin Statue
mobs[34].pos = { x = -43.0700, y = -59.1100, z = -97.8160, rot = 121 } -- (034-G) Goblin Statue
mobs[35].pos = { x = -41.1030, y = -60.0000, z = -118.6750, rot = 134 } -- (035-G) Goblin Statue
mobs[36].pos = { x = -40.0570, y = -59.0610, z = -138.8040, rot = 114 } -- (036-G) Goblin Statue
mobs[37].pos = { x = -31.1030, y = -59.7560, z = -117.3760, rot = 135 } -- (037-G) Goblin Statue
mobs[38].pos = { x = -16.3490, y = -60.2340, z = -131.9860, rot = 120 } -- (038-G) Goblin Statue
mobs[48].pos = { x = 44.5260, y = -59.9750, z = -75.9710, rot = 99 } -- (048-G) Goblin Statue
mobs[50].pos = { x = 42.5820, y = -59.8900, z = -46.2230, rot = 90 } -- (050-G) Goblin Statue
mobs[51].pos = { x = 56.6420, y = -59.5650, z = -32.1280, rot = 84 } -- (051-G) Goblin Statue
mobs[49].pos = { x = 41.2230, y = -59.0100, z = -60.1830, rot = 94 } -- (049-G) Goblin Statue
mobs[52].pos = { x = 106.8200, y = -59.4860, z = -39.0870, rot = 94 } -- (052-G) Goblin Statue
mobs[53].pos = { x = 100.5780, y = -60.7080, z = -58.5510, rot = 95 } -- (053-G) Goblin Statue
mobs[47].pos = { x = 85.8646, y = -59.7906, z = -50.6917, rot = 117 } -- ( 047 ) Dynamis Statue
mobs[39].pos = { x = 3.7100, y = -59.9680, z = 44.6510, rot = 65 } -- (039-G) Goblin Statue
mobs[41].pos = { x = -4.1650, y = -59.6600, z = 68.9840, rot = 53 } -- (041-G) Goblin Statue
mobs[40].pos = { x = 8.9320, y = -59.2820, z = 57.0380, rot = 64 } -- (040-G) Goblin Statue
mobs[43].pos = { x = 37.6000, y = -60.0000, z = 160.9740, rot = 70 } -- (043-G) Goblin Statue
mobs[42].pos = { x = 43.0710, y = -59.4680, z = 146.6300, rot = 79 } -- (042-G) Goblin Statue
mobs[44].pos = { x = 44.3420, y = -59.9840, z = 197.5760, rot = 80 } -- (044-G) Goblin Statue
mobs[45].pos = { x = 62.5380, y = -60.2490, z = 187.3380, rot = 90 } -- (045-G) Goblin Statue
mobs[46].pos = { x = 94.9680, y = -59.3070, z = 200.5510, rot = 99 } -- (046-G) Goblin Statue
mobs[56].pos = { x = 165.5100, y = -19.9260, z = 43.5990, rot = 138 } -- (056-Q) Adamantking Effigy
mobs[54].pos = { x = 160.4040, y = -19.5490, z = 27.4510, rot = 72 } -- (054-Q) Adamantking Effigy
mobs[55].pos = { x = 174.0870, y = -19.4170, z = 27.6870, rot = 63 } -- (055-Q) Adamantking Effigy
mobs[57].pos = { x = 175.9600, y = -19.9630, z = 16.7570, rot = 154 } -- (057-Q) Adamantking Effigy
mobs[68].pos = { x = 257.6411, y = -21.1347, z = -142.0784, rot = 131 } -- ( 068 ) Dynamis Effigy
mobs[76].pos = { x = 262.4240, y = -19.2330, z = -114.3680, rot = 251 } -- (076-Q) Adamantking Effigy
mobs[75].pos = { x = 287.3980, y = -20.0000, z = -123.6720, rot = 12 } -- (075-Q) Adamantking Effigy
mobs[74].pos = { x = 251.6910, y = -20.6720, z = -138.3530, rot = 207 } -- (074-Q) Adamantking Effigy
mobs[73].pos = { x = 240.3970, y = -20.0000, z = -167.8880, rot = 2 } -- (073-Q) Adamantking Effigy
mobs[72].pos = { x = 228.6810, y = -20.4210, z = -156.1300, rot = 183 } -- (072-Q) Adamantking Effigy
mobs[71].pos = { x = 228.7220, y = -20.0840, z = -134.6990, rot = 79 } -- (071-Q) Adamantking Effigy
mobs[70].pos = { x = 231.5310, y = -20.0000, z = -127.7760, rot = 81 } -- (070-Q) Adamantking Effigy
mobs[69].pos = { x = 239.2480, y = -20.0000, z = -118.7500, rot = 179 } -- (069-Q) Adamantking Effigy
mobs[58].pos = { x = 65.4130, y = -19.3460, z = -199.1060, rot = 182 } -- (058-Q) Adamantking Effigy
mobs[59].pos = { x = 67.1950, y = -19.7590, z = -206.3100, rot = 65 } -- (059-Q) Adamantking Effigy
mobs[60].pos = { x = 66.9230, y = -19.6550, z = -218.0810, rot = 198 } -- (060-Q) Adamantking Effigy
mobs[61].pos = { x = 58.6780, y = -19.2630, z = -233.4990, rot = 78 } -- (061-Q) Adamantking Effigy
mobs[62].pos = { x = 69.8000, y = -19.6590, z = -249.6350, rot = 245 } -- (062-Q) Adamantking Effigy
mobs[63].pos = { x = 123.3430, y = -20.0000, z = -201.3440, rot = 241 } -- (063-Q) Adamantking Effigy
mobs[65].pos = { x = -46.8760, y = -19.8570, z = -280.7820, rot = 51 } -- (065-Q) Adamantking Effigy
mobs[64].pos = { x = -32.9360, y = -19.8480, z = -279.6340, rot = 61 } -- (064-Q) Adamantking Effigy
mobs[67].pos = { x = -72.5120, y = -19.6340, z = -298.6780, rot = 193 } -- (067-Q) Adamantking Effigy
mobs[66].pos = { x = -79.4360, y = -20.1130, z = -273.7700, rot = 118 } -- (066-Q) Adamantking Effigy
mobs[90].pos = { x = 350.0000, y = 0.1359, z = -155.9000, rot = 128 } -- ( 090 ) Dynamis Tombstone
mobs[91].pos = { x = 365.0530, y = 0.1010, z = -206.3420, rot = 139 } -- (091-O) Serjeant Tombstone
mobs[92].pos = { x = 373.6760, y = 0.5630, z = -200.4790, rot = 232 } -- (092-O) Serjeant Tombstone
mobs[93].pos = { x = 385.5290, y = 0.5340, z = -193.8340, rot = 236 } -- (093-O) Serjeant Tombstone
mobs[94].pos = { x = 396.2660, y = 0.4300, z = -187.6520, rot = 241 } -- (094-O) Serjeant Tombstone
mobs[98].pos = { x = 350.1790, y = 0.6000, z = -149.9980, rot = 132 } -- (098-O) Serjeant Tombstone
mobs[97].pos = { x = 366.1470, y = 0.4110, z = -151.7740, rot = 132 } -- (097-O) Serjeant Tombstone
mobs[96].pos = { x = 381.1790, y = 0.8130, z = -152.5280, rot = 137 } -- (096-O) Serjeant Tombstone
mobs[95].pos = { x = 393.8360, y = 0.1030, z = -156.0670, rot = 220 } -- (095-O) Serjeant Tombstone
mobs[77].pos = { x = -13.5190, y = 0.0010, z = -332.6570, rot = 212 } -- (077-O) Serjeant Tombstone
mobs[78].pos = { x = -23.5040, y = 0.0010, z = -312.3000, rot = 229 } -- (078-O) Serjeant Tombstone
mobs[79].pos = { x = -49.3690, y = 0.0010, z = -303.1040, rot = 48 } -- (079-O) Serjeant Tombstone
mobs[80].pos = { x = -57.9420, y = 0.1430, z = -322.9880, rot = 71 } -- (080-O) Serjeant Tombstone
mobs[81].pos = { x = -66.6920, y = 0.0010, z = -344.8140, rot = 39 } -- (081-O) Serjeant Tombstone
mobs[84].pos = { x = -119.6320, y = 0.8180, z = -383.6150, rot = 109 } -- (084-O) Serjeant Tombstone
mobs[83].pos = { x = -112.1360, y = 0.1920, z = -396.5960, rot = 203 } -- (083-O) Serjeant Tombstone
mobs[82].pos = { x = -96.8300, y = 0.8400, z = -400.1330, rot = 24 } -- (082-O) Serjeant Tombstone
mobs[85].pos = { x = 388.1300, y = 0.3830, z = 2.1750, rot = 94 } -- (085-O) Serjeant Tombstone
mobs[86].pos = { x = 391.6170, y = 0.0010, z = 10.5400, rot = 152 } -- (086-O) Serjeant Tombstone
mobs[87].pos = { x = 388.5750, y = 0.4000, z = 18.4440, rot = 192 } -- (087-O) Serjeant Tombstone
mobs[88].pos = { x = 393.6060, y = 0.2280, z = 27.2420, rot = 211 } -- (088-O) Serjeant Tombstone
mobs[89].pos = { x = 395.5010, y = 0.0240, z = 42.6720, rot = 73 } -- (089-O) Serjeant Tombstone
mobs[99].pos = { x = 263.4912, y = -0.97039, z = 58.8165, rot = 29 } -- (099-O) Serjeant Tombstone
mobs[100].pos = { x = 268.7820, y = -0.5453, z = 70.0471, rot = 19 } -- (100-Q) Adanantking Effigy
mobs[101].pos = { x = 267.6158, y = 0.4338, z = 83.5243, rot = 31 } -- (101-Y) Avatar Icon
mobs[102].pos = { x = 260.9484, y = -0.5514, z = 98.2945, rot = 41 } -- (102-G) Goblin Replica
mobs[103].pos = { x = 251.6070, y = 0.3790, z = 240.6700, rot = 69 } -- (103-Q) Adamantking Effigy
mobs[104].pos = { x = 274.0790, y = 0.0950, z = 239.7930, rot = 136 } -- (104-G) Goblin Replica
mobs[105].pos = { x = 282.7620, y = 0.7340, z = 224.6140, rot = 42 } -- (105-O) Serjeant Tombstone
mobs[106].pos = { x = 287.3380, y = 0.1060, z = 210.4100, rot = 150 } -- (106-Y) Avatar Icon
mobs[107].pos = { x = -70.7560, y = -70.5430, z = 105.6260, rot = 8 } -- (107-H) Vanguard Eye
mobs[118].pos = { x = -51.6070, y = -79.7060, z = 124.8080, rot = 68 } -- (118-H) Vanguard Eye
mobs[117].pos = { x = -44.8480, y = -79.1430, z = 138.0260, rot = 69 } -- (117-H) Vanguard Eye
mobs[116].pos = { x = -42.4750, y = -79.7380, z = 150.7350, rot = 47 } -- (116-H) Vanguard Eye
mobs[115].pos = { x = -60.4040, y = -79.1680, z = 164.6390, rot = 57 } -- (115-H) Vanguard Eye
mobs[114].pos = { x = -89.5360, y = -79.4100, z = 140.9820, rot = 56 } -- (114-H) Vanguard Eye
mobs[119].pos = { x = -80.9050, y = -80.0000, z = 121.2520, rot = 32 } -- (119-H) Vanguard Eye
mobs[113].pos = { x = -110.4170, y = -79.9750, z = 153.7000, rot = 73 } -- (113-H) Vanguard Eye
mobs[112].pos = { x = -124.7030, y = -79.8700, z = 166.2820, rot = 58 } -- (112-H) Vanguard Eye
mobs[108].pos = { x = -119.5960, y = -79.8840, z = 126.3340, rot = 81 } -- (108-H) Vanguard Eye
mobs[111].pos = { x = -163.8400, y = -79.8540, z = 166.9310, rot = 67 } -- (111-H) Vanguard Eye
mobs[120].pos = { x = -138.3840, y = -79.6450, z = 212.4050, rot = 65 } -- (120-H) Vanguard Eye
mobs[110].pos = { x = -163.9420, y = -79.5970, z = 147.9170, rot = 28 } -- (110-H) Vanguard Eye
mobs[109].pos = { x = -140.7570, y = -79.7630, z = 143.0120, rot = 56 } -- (109-H) Vanguard Eye
mobs[122].pos = { x = -97.5740, y = -79.5250, z = 74.2180, rot = 204 } -- (122-H) Vanguard Eye
mobs[121].pos = { x = -91.7990, y = -79.6240, z = 83.6290, rot = 203 } -- (121-H) Vanguard Eye
mobs[123].pos = { x = -23.9480, y = -80.1220, z = -9.6970, rot = 215 } -- (123-H) Vanguard Eye
mobs[124].pos = { x = -37.5080, y = -80.0090, z = -18.2450, rot = 247 } -- (124-H) Vanguard Eye
mobs[125].pos = { x = -61.0340, y = -80.0000, z = -43.2000, rot = 215 } -- (125-H) Vanguard Eye
mobs[126].pos = { x = -77.5560, y = -80.0070, z = -58.5050, rot = 246 } -- (126-H) Vanguard Eye
mobs[127].pos = { x = -95.9540, y = -80.2490, z = -70.3230, rot = 215 } -- (127-H) Vanguard Eye
mobs[128].pos = { x = -100.3570, y = -80.0790, z = -83.1820, rot = 208 } -- (128-H) Vanguard Eye
mobs[129].pos = { x = -154.2780, y = -80.0000, z = -158.9490, rot = 253 } -- (129-H) Vanguard Eye
mobs[130].pos = { x = -170.9380, y = -79.6540, z = -160.2850, rot = 254 } -- (130-H) Vanguard Eye
mobs[131].pos = { x = -149.8240, y = -79.7360, z = -137.7530, rot = 251 } -- (131-H) Vanguard Eye
mobs[132].pos = { x = -153.6170, y = -80.1200, z = -118.3030, rot = 46 } -- (132-H) Vanguard Eye
mobs[133].pos = { x = -168.2160, y = -79.8490, z = -124.7150, rot = 19 } -- (133-H) Vanguard Eye
mobs[136].pos = { x = -227.6710, y = -81.5530, z = -138.4080, rot = 9 } -- (136-H) Vanguard Eye
mobs[134].pos = { x = -182.0950, y = -79.1060, z = -121.4020, rot = 252 } -- (134-H) Vanguard Eye
mobs[135].pos = { x = -178.0300, y = -79.4530, z = -112.5130, rot = 47 } -- (135-H) Vanguard Eye
mobs[137].pos = { x = -227.2890, y = -79.5630, z = -124.5740, rot = 7 } -- (137-H) Vanguard Eye
mobs[138].pos = { x = -298.9930, y = -80.1750, z = -106.4530, rot = 19 } -- (138-H) Vanguard Eye
mobs[139].pos = { x = -289.8220, y = -80.2460, z = -91.5610, rot = 44 } -- (139-H) Vanguard Eye
mobs[140].pos = { x = -279.6120, y = -80.0000, z = -77.4470, rot = 42 } -- (140-H) Vanguard Eye
mobs[141].pos = { x = -139.3440, y = -100.2960, z = 9.4090, rot = 122 } -- (141-H) Vanguard Eye
mobs[142].pos = { x = -139.9980, y = -99.2500, z = -8.4610, rot = 144 } -- (142-H) Vanguard Eye
mobs[143].pos = { x = -148.9050, y = -99.5710, z = -23.7200, rot = 123 } -- (143-H) Vanguard Eye
mobs[144].pos = { x = -133.2150, y = -99.4830, z = -40.4120, rot = 129 } -- (144-H) Vanguard Eye
mobs[145].pos = { x = -127.6830, y = -99.2010, z = -60.2680, rot = 24 } -- (145-H) Vanguard Eye
mobs[146].pos = { x = -121.6590, y = -99.4850, z = -26.8070, rot = 111 } -- (146-H) Vanguard Eye
mobs[148].pos = { x = -57.4870, y = -99.1270, z = 38.5340, rot = 83 } -- (148-H) Vanguard Eye
mobs[147].pos = { x = -69.8080, y = -99.9110, z = 10.4460, rot = 108 } -- (147-H) Vanguard Eye
mobs[149].pos = { x = -245.6360, y = -99.8560, z = 10.3650, rot = 250 } -- (149-H) Vanguard Eye
mobs[150].pos = { x = -246.3620, y = -99.3470, z = 22.1090, rot = 10 } -- (150-H) Vanguard Eye
mobs[151].pos = { x = -246.5250, y = -100.1280, z = 33.7600, rot = 3 } -- (151-H) Vanguard Eye
mobs[152].pos = { x = -277.8250, y = -99.7060, z = 19.9460, rot = 67 } -- (152-H) Vanguard Eye
mobs[153].pos = { x = -294.0850, y = -100.0000, z = 29.4120, rot = 39 } -- (153-H) Vanguard Eye
mobs[154].pos = { x = -307.4230, y = -100.0000, z = 54.0000, rot = 12 } -- (154-H) Vanguard Eye
mobs[155].pos = { x = -361.4890, y = -100.0290, z = 75.4480, rot = 214 } -- (155-H) Vanguard Eye
mobs[156].pos = { x = -347.7860, y = -100.5770, z = 95.1770, rot = 129 } -- (156-H) Vanguard Eye
mobs[157].pos = { x = -339.5000, y = -99.0260, z = 120.2200, rot = 61 } -- (157-H) Vanguard Eye
mobs[163].pos = { x = 280.0817, y = 20.0000, z = 536.5154, rot = 65 } -- ( 163 ) Angra Mainyu
mobs[164].pos = { x = 275.2877, y = 20, z = 544.6065, rot = 63 } -- Fire Pukis
mobs[165].pos = { x = 283.5459, y = 20, z = 545.8229, rot = 63 } -- Poison Pukis
mobs[166].pos = { x = 285.7335, y = 20, z = 532.6114, rot = 63 } -- Wind Pukis
mobs[167].pos = { x = 274.4853, y = 20, z = 532.4368, rot = 63 } -- Petro Pukis
mobs[160].pos = { x = 100.1128, y = -20.2500, z = 137.1149, rot = 63 } -- ( 160 ) Attest. NM (Goublefaupe) (RDM+PLD+WAR)
mobs[159].pos = { x = -20.0183, y = -60.2500, z = -64.0732, rot = 62 } -- ( 159 ) Attest. NM (Quiebitiel) (BLM+WHM+BRD)
mobs[161].pos = { x = 60.1032, y = -0.2500, z = -336.3712, rot = 191 } -- ( 161 ) Attest. NM (Mildaunegeux) (MNK+NIN+THF)
mobs[162].pos = { x = 263.2100, y = -0.2500, z = -19.8968, rot = 253 } -- ( 162 ) Attest. NM (Velosareon) (DRK+SAM+RNG)
mobs[158].pos = { x = -176.4133, y = -40.2500, z = -219.9464, rot = 0 } -- ( 158 ) Attest. NM (Dagourmarche) (DRG+SMN+BST)

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[5].eyes = xi.dynamis.eye.BLUE -- (005-Y) (HP) Avatar Icon
mobs[13].eyes = xi.dynamis.eye.BLUE -- (013-Y) (HP) Avatar Icon
mobs[18].eyes = xi.dynamis.eye.BLUE -- (018-Y) (HP) Avatar Icon
mobs[23].eyes = xi.dynamis.eye.BLUE -- (023-Y) (HP) Avatar Icon
mobs[30].eyes = xi.dynamis.eye.BLUE -- (030-Y) (HP) Avatar Icon
mobs[37].eyes = xi.dynamis.eye.BLUE -- (037-G) (HP) Goblin Statue
mobs[51].eyes = xi.dynamis.eye.BLUE -- (051-G) (HP) Goblin Statue
mobs[53].eyes = xi.dynamis.eye.BLUE -- (053-G) (HP) Goblin Statue
mobs[41].eyes = xi.dynamis.eye.BLUE -- (041-G) (HP) Goblin Statue
mobs[44].eyes = xi.dynamis.eye.BLUE -- (044-G) (HP) Goblin Statue
mobs[56].eyes = xi.dynamis.eye.BLUE -- (056-Q) (HP) Adamantking Effigy
mobs[74].eyes = xi.dynamis.eye.BLUE -- (074-Q) (HP) Adamantking Effigy
mobs[70].eyes = xi.dynamis.eye.BLUE -- (070-Q) (HP) Adamantking Effigy
mobs[59].eyes = xi.dynamis.eye.BLUE -- (059-Q) (HP) Adamantking Effigy
mobs[65].eyes = xi.dynamis.eye.BLUE -- (065-Q) (HP) Adamantking Effigy
mobs[91].eyes = xi.dynamis.eye.BLUE -- (091-O) (HP) Serjeant Tombstone
mobs[78].eyes = xi.dynamis.eye.BLUE -- (078-O) (HP) Serjeant Tombstone
mobs[84].eyes = xi.dynamis.eye.BLUE -- (084-O) (HP) Serjeant Tombstone
mobs[86].eyes = xi.dynamis.eye.BLUE -- (086-O) (HP) Serjeant Tombstone
mobs[103].eyes = xi.dynamis.eye.BLUE -- (103-Q) (HP) Adamantking Effigy
mobs[105].eyes = xi.dynamis.eye.BLUE -- (105-O) (HP) Serjeant Tombstone
mobs[8].eyes = xi.dynamis.eye.GREEN -- (008-G) (MP) Goblin Replica
mobs[12].eyes = xi.dynamis.eye.GREEN -- (012-Y) (MP) Avatar Icon
mobs[22].eyes = xi.dynamis.eye.GREEN -- (022-Y) (MP) Avatar Icon
mobs[27].eyes = xi.dynamis.eye.GREEN -- (027-Y) (MP) Avatar Icon
mobs[25].eyes = xi.dynamis.eye.GREEN -- (025-Y) (MP) Avatar Icon
mobs[38].eyes = xi.dynamis.eye.GREEN -- (038-G) (MP) Goblin Statue
mobs[49].eyes = xi.dynamis.eye.GREEN -- (049-G) (MP) Goblin Statue
mobs[52].eyes = xi.dynamis.eye.GREEN -- (052-G) (MP) Goblin Statue
mobs[40].eyes = xi.dynamis.eye.GREEN -- (040-G) (MP) Goblin Statue
mobs[45].eyes = xi.dynamis.eye.GREEN -- (045-G) (MP) Goblin Statue
mobs[57].eyes = xi.dynamis.eye.GREEN -- (057-Q) (MP) Adamantking Effigy
mobs[76].eyes = xi.dynamis.eye.GREEN -- (076-Q) (MP) Adamantking Effigy
mobs[72].eyes = xi.dynamis.eye.GREEN -- (072-Q) (MP) Adamantking Effigy
mobs[61].eyes = xi.dynamis.eye.GREEN -- (061-Q) (MP) Adamantking Effigy
mobs[67].eyes = xi.dynamis.eye.GREEN -- (067-Q) (MP) Adamantking Effigy
mobs[94].eyes = xi.dynamis.eye.GREEN -- (094-O) (MP) Serjeant Tombstone
mobs[98].eyes = xi.dynamis.eye.GREEN -- (098-O) (MP) Serjeant Tombstone
mobs[80].eyes = xi.dynamis.eye.GREEN -- (080-O) (MP) Serjeant Tombstone
mobs[82].eyes = xi.dynamis.eye.GREEN -- (082-O) (MP) Serjeant Tombstone
mobs[88].eyes = xi.dynamis.eye.GREEN -- (088-O) (MP) Serjeant Tombstone
mobs[104].eyes = xi.dynamis.eye.GREEN -- (104-G) (MP) Goblin Replica
mobs[106].eyes = xi.dynamis.eye.GREEN -- (106-Y) (MP) Avatar Icon

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 10, 20, 31, 46, 63, 66, 83, 87, 120, 147 }
mobs[10].timeExtension = 15 -- (010-Y) Avatar Icon
mobs[20].timeExtension = 15 -- (020-Y) Avatar Icon
mobs[31].timeExtension = 15 -- (031-G) Goblin Statue
mobs[46].timeExtension = 15 -- (046-G) Goblin Statue
mobs[63].timeExtension = 15 -- (063-Q) Adamantking Effigy
mobs[66].timeExtension = 15 -- (066-Q) Adamantking Effigy
mobs[83].timeExtension = 15 -- (083-O) Serjeant Tombstone
mobs[87].timeExtension = 15 -- (087-O) Serjeant Tombstone
mobs[120].timeExtension = 15 -- (120-H) Vanguard Eye
mobs[147].timeExtension = 15 -- (147-H) Vanguard Eye
