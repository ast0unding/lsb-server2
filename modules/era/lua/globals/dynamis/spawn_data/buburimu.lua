-----------------------------------
-- Era Dynamis - Dynamis-Buburimu spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/bub.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/bub.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_BUBURIMU

local mobs = {}
for i = 1, 299 do
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

mobs[51].info = { mobType = 'NM', name = 'Alklha', deathVar = 'alklha_killed' } -- ( 051 ) Alkhla              (Apocalyptic Beast's 'Chaos Blade' has no effect)
mobs[52].info = { mobType = 'NM', name = 'Stihi', deathVar = 'stihi_killed' } -- ( 052 ) Stihi               (Apocalyptic Beast's 'Flame Breath' has no effect)
mobs[53].info = { mobType = 'NM', name = 'Basilic', deathVar = 'basilic_killed' } -- ( 053 ) Basilic             (Apocalyptic Beast's 'Petro Eyes' has no effect)
mobs[54].info = { mobType = 'NM', name = 'Jurik', deathVar = 'jurik_killed' } -- ( 054 ) Jurik               (Apocalyptic Beast's 'Wind Breath' has no effect)
mobs[55].info = { mobType = 'NM', name = 'Barong', deathVar = 'barong_killed' } -- ( 055 ) Barong              (Apocalyptic Beast's 'Body Slam' has no effect)
mobs[56].info = { mobType = 'NM', name = 'Tarasca', deathVar = 'tarasca_killed' } -- ( 056 ) Tarasca             (Apocalyptic Beast's 'Heavy Stomp' has no effect)
mobs[57].info = { mobType = 'NM', name = 'Stollenwurm', deathVar = 'stollenwurm_killed' } -- ( 057 ) Stollenwurm         (Apocalyptic Beast's 'Lodesong' has no effect)
mobs[58].info = { mobType = 'NM', name = 'Koschei', deathVar = 'koschei_killed' } -- ( 058 ) Koschei             (Apocalyptic Beast's 'Thornsong' has no effect)
mobs[59].info = { mobType = 'NM', name = 'Aitvaras', deathVar = 'aitvaras_killed' } -- ( 059 ) Aitvaras            (Apocalyptic Beast's 'Voidsong' has no effect)
mobs[60].info = { mobType = 'NM', name = 'Vishap', deathVar = 'vishap_killed' } -- ( 060 ) Vishap              (Apocalyptic Beast's 'Poison Breath' has no effect)
mobs[61].info = { mobType = 'NM', name = 'Apocalyptic Beast', deathVar = 'MegaBoss_Killed' } -- ( 061 ) Apocalyptic Beast

-- Orcs Statues
mobs[1].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (001-O)
mobs[2].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (002-O)
mobs[3].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (003-O)
mobs[4].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (004-O)
mobs[5].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (005-O)
mobs[6].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (006-O)
mobs[7].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (007-O)
mobs[8].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (008-O)
mobs[9].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (009-O)
mobs[10].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (010-O)
mobs[11].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (011-O)
mobs[12].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (012-O)
mobs[13].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (013-O)

-- Goblins Statues
mobs[14].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (014-G)
mobs[15].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (015-G)
mobs[16].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (016-G)
mobs[17].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (017-G)
mobs[18].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (018-G)
mobs[19].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (019-G)
mobs[20].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (020-G)
mobs[21].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (021-G)
mobs[22].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (022-G)
mobs[23].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (023-G)
mobs[24].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (024-G)

-- Quadavs Statues
mobs[25].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (025-Q)
mobs[26].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (026-Q)
mobs[27].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (027-Q)
mobs[28].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (028-Q)
mobs[29].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (029-Q)
mobs[30].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (030-Q)
mobs[31].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (031-Q)
mobs[32].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (032-Q)
mobs[33].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (033-Q)
mobs[34].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (034-Q)
mobs[35].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (035-Q)
mobs[36].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (036-Q)
mobs[37].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (037-Q)

-- Yagudos Statues
mobs[38].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (038-Y)
mobs[39].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (039-Y)
mobs[40].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (040-Y)
mobs[41].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (041-Y)
mobs[42].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (042-Y)
mobs[43].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (043-Y)
mobs[44].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (044-Y)
mobs[45].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (045-Y)
mobs[46].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (046-Y)
mobs[47].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (047-Y)
mobs[48].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (048-Y)
mobs[49].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (049-Y)
mobs[50].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (050-Y)

-- Nightmare Crabs
mobs[62].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 062 ) Nightmare Crab (×2)
mobs[153].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[63].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 063 ) Nightmare Crab (×2)
mobs[154].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[64].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 064 ) Nightmare Crab (×2)
mobs[155].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[65].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 065 ) Nightmare Crab (×2)
mobs[156].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[66].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 066 ) Nightmare Crab (×2)
mobs[157].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[67].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 067 ) Nightmare Crab (×2)
mobs[158].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[68].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 068 ) Nightmare Crab (×2)
mobs[159].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[69].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 069 ) Nightmare Crab (×2)
mobs[160].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[70].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 070 ) Nightmare Crab (×2)
mobs[161].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --
mobs[71].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } -- ( 071 ) Nightmare Crab (×2)
mobs[162].info = { mobType = 'Nightmare', name = 'Nightmare Crab' } --

-- Nightmare Dhalmel
mobs[118].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 118 ) Nightmare Dhalmel (×2)
mobs[227].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[119].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 119 ) Nightmare Dhalmel (×2)
mobs[228].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[120].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 120 ) Nightmare Dhalmel (×2)
mobs[229].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[121].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 121 ) Nightmare Dhalmel (×2)
mobs[230].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[122].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 122 ) Nightmare Dhalmel (×2)
mobs[231].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[123].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 123 ) Nightmare Dhalmel (×2)
mobs[232].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[124].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 124 ) Nightmare Dhalmel (×2)
mobs[233].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[125].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 125 ) Nightmare Dhalmel (×3)
mobs[234].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[235].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[126].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 126 ) Nightmare Dhalmel (×3)
mobs[236].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[237].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[127].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 127 ) Nightmare Dhalmel (×3)
mobs[238].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[239].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[128].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } -- ( 128 ) Nightmare Dhalmel (×3)
mobs[240].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --
mobs[241].info = { mobType = 'Nightmare', name = 'Nightmare Dhalmel' } --

-- Nightmare Urganite
mobs[139].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 139 ) Nightmare Uragnite (×2)
mobs[256].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[140].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 140 ) Nightmare Uragnite (×2)
mobs[257].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[141].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 141 ) Nightmare Uragnite (×2)
mobs[258].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[142].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 142 ) Nightmare Uragnite (×2)
mobs[259].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[143].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 143 ) Nightmare Uragnite (×2)
mobs[260].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[144].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 144 ) Nightmare Uragnite (×3)
mobs[261].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[262].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[145].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 145 ) Nightmare Uragnite (×3)
mobs[263].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[264].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[146].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 146 ) Nightmare Uragnite (×3)
mobs[265].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[266].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[147].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } -- ( 147 ) Nightmare Uragnite (×3)
mobs[267].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --
mobs[268].info = { mobType = 'Nightmare', name = 'Nightmare Urganite' } --

-- Nightmare Scorpion
mobs[148].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } -- ( 148 ) Nightmare Scorpion (×4)
mobs[269].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[270].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[271].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[149].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } -- ( 149 ) Nightmare Scorpion (×4)
mobs[272].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[273].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[274].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[150].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } -- ( 150 ) Nightmare Scorpion (×4)
mobs[275].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[276].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[277].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[151].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } -- ( 151 ) Nightmare Scorpion (×4)
mobs[278].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[279].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[280].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[152].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } -- ( 152 ) Nightmare Scorpion (×5)
mobs[281].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[282].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[283].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --
mobs[284].info = { mobType = 'Nightmare', name = 'Nightmare Scorpion' } --

-- Nightmare Bunny
mobs[82].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 082 ) Nightmare Bunny (×2)
mobs[173].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[83].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 083 ) Nightmare Bunny (×2)
mobs[174].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[84].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 084 ) Nightmare Bunny (×2)
mobs[175].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[85].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 085 ) Nightmare Bunny (×2)
mobs[176].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[86].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 086 ) Nightmare Bunny (×2)
mobs[177].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[87].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 087 ) Nightmare Bunny (×2)
mobs[178].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[88].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 088 ) Nightmare Bunny (×2)
mobs[179].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[89].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 089 ) Nightmare Bunny (×2)
mobs[180].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[90].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 090 ) Nightmare Bunny (×2)
mobs[181].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --
mobs[91].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } -- ( 091 ) Nightmare Bunny (×2)
mobs[182].info = { mobType = 'Nightmare', name = 'Nightmare Bunny' } --

-- Nightmare Mandragora
mobs[97].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 097 ) Nightmare Mandragora (×3)
mobs[198].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[199].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[98].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 098 ) Nightmare Mandragora (×3)
mobs[200].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[201].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[99].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 099 ) Nightmare Mandragora (×3)
mobs[202].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[203].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[100].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 100 ) Nightmare Mandragora (×3)
mobs[204].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[205].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[101].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 101 ) Nightmare Mandragora (×3)
mobs[206].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[207].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[102].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 102 ) Nightmare Mandragora (×3)
mobs[208].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[209].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[103].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 103 ) Nightmare Mandragora (×3)
mobs[210].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[211].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[104].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } -- ( 104 ) Nightmare Mandragora (×3)
mobs[212].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --
mobs[213].info = { mobType = 'Nightmare', name = 'Nightmare Mandragora' } --

-- Nightmare Crawler
mobs[129].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 129 ) Nightmare Crawler (×2)
mobs[242].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[130].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 130 ) Nightmare Crawler (×2)
mobs[243].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[131].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 131 ) Nightmare Crawler (×2)
mobs[244].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[132].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 132 ) Nightmare Crawler (×3)
mobs[245].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[246].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[133].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 133 ) Nightmare Crawler (×3)
mobs[247].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[248].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[134].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 134 ) Nightmare Crawler (×2)
mobs[249].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[135].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 135 ) Nightmare Crawler (×2)
mobs[250].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[136].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 136 ) Nightmare Crawler (×2)
mobs[251].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[137].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 137 ) Nightmare Crawler (×3)
mobs[252].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[253].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[138].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } -- ( 138 ) Nightmare Crawler (×3)
mobs[254].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --
mobs[255].info = { mobType = 'Nightmare', name = 'Nightmare Crawler' } --

-- Nightmare Raven
mobs[105].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 105 ) Nightmare Raven (×2)
mobs[214].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[106].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 106 ) Nightmare Raven (×2)
mobs[215].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[107].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 107 ) Nightmare Raven (×2)
mobs[216].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[108].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 108 ) Nightmare Raven (×2)
mobs[217].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[109].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 109 ) Nightmare Raven (×2)
mobs[218].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[110].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 110 ) Nightmare Raven (×2)
mobs[219].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[111].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 111 ) Nightmare Raven (×2)
mobs[220].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[112].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 112 ) Nightmare Raven (×2)
mobs[221].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[113].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 113 ) Nightmare Raven (×2)
mobs[222].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[114].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 114 ) Nightmare Raven (×2)
mobs[223].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[115].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 115 ) Nightmare Raven (×2)
mobs[224].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[116].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 116 ) Nightmare Raven (×2)
mobs[225].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --
mobs[117].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } -- ( 117 ) Nightmare Raven (×2)
mobs[226].info = { mobType = 'Nightmare', name = 'Nightmare Raven' } --

-- Nightmare Eft
mobs[72].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 072 ) Nightmare Eft (×2)
mobs[163].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[73].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 073 ) Nightmare Eft (×2)
mobs[164].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[74].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 074 ) Nightmare Eft (×2)
mobs[165].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[75].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 075 ) Nightmare Eft (×2)
mobs[166].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[76].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 076 ) Nightmare Eft (×2)
mobs[167].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[77].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 077 ) Nightmare Eft (×2)
mobs[168].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[78].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 078 ) Nightmare Eft (×2)
mobs[169].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[79].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 079 ) Nightmare Eft (×2)
mobs[170].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[80].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 080 ) Nightmare Eft (×2)
mobs[171].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --
mobs[81].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } -- ( 081 ) Nightmare Eft (×2)
mobs[172].info = { mobType = 'Nightmare', name = 'Nightmare Eft' } --

-- Nightmare Cockatrice
mobs[92].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } -- ( 092 ) Nightmare Cockatrice (×4)
mobs[183].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[184].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[185].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[93].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } -- ( 093 ) Nightmare Cockatrice (×4)
mobs[186].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[187].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[188].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } -- ( 094 ) Nightmare Cockatrice (×4)
mobs[94].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[189].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[190].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[191].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[95].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } -- ( 095 ) Nightmare Cockatrice (×4)
mobs[192].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[193].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[194].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[96].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } -- ( 096 ) Nightmare Cockatrice (×4)
mobs[195].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[196].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --
mobs[197].info = { mobType = 'Nightmare', name = 'Nightmare Cockatrice' } --

-- Orc NMs
mobs[285].info = { mobType = 'NM', name = 'Elvaansticker Bxafraff', family = 'Orc', job = 'DRG', deathVar = 'elvaansticker_killed' } -- Elvaansticker Bxafraff      (Apocalyptic Beast's 'Call Wyvern' has no effect)
mobs[286].info = { mobType = 'NM', name = 'Flamecaller Zoeqdoq', family = 'Orc', job = 'BLM', deathVar = 'flamecaller_killed' } -- Flamecaller Zoeqdoq         (Apocalyptic Beast's 'Manafont' has no effect)
mobs[287].info = { mobType = 'NM', name = 'Hamfist Gukhbuk', family = 'Orc', job = 'MNK', deathVar = 'hamfist_killed' } -- Hamfist Gukhbuk             (Apocalyptic Beast's 'Hundred Fists' has no effect)
mobs[288].info = { mobType = 'NM', name = 'Lyncean Juwgneg', family = 'Orc', job = 'RNG', deathVar = 'lyncean_killed' } -- Lyncean Juwgneg             (Apocalyptic Beast's 'Eagle Eye Shot' has no effect)
-- Goblin NMs
mobs[289].info = { mobType = 'NM', name = 'Gosspix Blabberlips', family = 'Goblin', job = 'RDM', deathVar = 'gosspix_killed' } -- Gosspix Blabberlips         (Apocalyptic Beast's 'Chainspell' has no effect)
mobs[290].info = { mobType = 'NM', name = 'Woodnix Shrillwhistle', family = 'Goblin', job = 'BST', deathVar = 'woodnix_killed' } -- Woodnix Shrillwhistle       (Apocalyptic Beast's 'Familiar' has no effect)
mobs[291].info = { mobType = 'NM', name = 'Shamblix Rottenheart', family = 'Goblin', job = 'DRK', deathVar = 'shamblix_killed' } -- Shamblix Rottenheart        (Apocalyptic Beast's 'Blood Weapon' has no effect)
-- Quadav NMs
mobs[292].info = { mobType = 'NM', name = "Qu'Pho Bloodspiller", family = 'Quadav', job = 'WAR', deathVar = 'bloodspiller_killed' } -- Qu'Pho Bloodspiller         (Apocalyptic Beast's 'Mighty Strikes' has no effect)
mobs[293].info = { mobType = 'NM', name = "Te'Zha Ironclad", family = 'Quadav', job = 'PLD', deathVar = 'ironclad_killed' } -- Te'Zha Ironclad             (Apocalyptic Beast's 'Invincible' has no effect)
mobs[294].info = { mobType = 'NM', name = "Gi'Bhe Flesheater", family = 'Quadav', job = 'WHM', deathVar = 'flesheater_killed' } -- Gi'Bhe Flesheater           (Apocalyptic Beast's 'Benediction' has no effect)
mobs[295].info = { mobType = 'NM', name = "Va'Rhu Bodysnatcher", family = 'Quadav', job = 'THF', deathVar = 'bodysnatcher_killed' } -- Va'Rhu Bodysnatcher         (Apocalyptic Beast's 'Perfect Dodge' has no effect)
-- Yagudo NMs
mobs[296].info = { mobType = 'NM', name = 'Koo Rahi the Levinblade', family = 'Yagudo', job = 'SAM', deathVar = 'levinblade_killed' } -- Koo rahi the Levinblade     (Apocalyptic Beast's 'Meikyo Shisui' has no effect)
mobs[297].info = { mobType = 'NM', name = 'Baa Dava the Bibliophage', family = 'Yagudo', job = 'SMN', deathVar = 'bibliopage_killed' } -- Baa Dava the Bibliophage     (Apocalyptic Beast's 'Astral Flow' has no effect)
mobs[298].info = { mobType = 'NM', name = 'Doo Peku the Fleetfoot', family = 'Yagudo', job = 'NIN', deathVar = 'fleetfoot_killed' } -- Doo Peku the Fleetfoot      (Apocalyptic Beast's 'Mijin Gakure' has no effect)
mobs[299].info = { mobType = 'NM', name = 'Ree Nata the Melomanic', family = 'Yagudo', job = 'BRD', deathVar = 'melomanic_killed' } -- Ree Nata the Melomanic      (Apocalyptic Beast's 'Soul Voice' has no effect)

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    {}, -- Nightmare mobs: present from the start on Era, not gated behind the megaboss
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    61, -- (061)      Apocalyptic Beast
    52, -- (052)      Stihi
    51, -- (051)      Alklha
    53, -- (053)      Basilic
    54, -- (054)      Jurik
    55, -- (055)      Barong
    56, -- (056)      Tarasca
    57, -- (057)      Stollenwurm
    58, -- (058)      Koschei
    59, -- (059)      Aitvaras
    60, -- (060)      Vishap
    1 , -- (001-O)    Serjeant Tombstone
    2 , -- (002-O)    Serjeant Tombstone
    3 , -- (003-O)    Serjeant Tombstone
    4 , -- (004-O)    Serjeant Tombstone
    5 , -- (005-O)    Serjeant Tombstone
    6 , -- (006-O)    Serjeant Tombstone
    7 , -- (007-O)    Serjeant Tombstone
    8 , -- (008-O)    Serjeant Tombstone
    9 , -- (009-O)    Serjeant Tombstone
    10, -- (010-O)    Serjeant Tombstone
    11, -- (011-O)    Serjeant Tombstone
    12, -- (012-O)    Serjeant Tombstone
    13, -- (013-O)    Serjeant Tombstone
    14, -- (014-G)    Goblin Replica
    15, -- (015-G)    Goblin Replica
    16, -- (016-G)    Goblin Replica
    17, -- (017-G)    Goblin Replica
    18, -- (018-G)    Goblin Replica
    19, -- (019-G)    Goblin Replica
    20, -- (020-G)    Goblin Replica
    21, -- (021-G)    Goblin Replica
    22, -- (022-G)    Goblin Replica
    23, -- (023-G)    Goblin Replica
    24, -- (024-G)    Goblin Replica
    25, -- (025-Q)    Adamantking Effigy
    26, -- (026-Q)    Adamantking Effigy
    27, -- (027-Q)    Adamantking Effigy
    28, -- (028-Q)    Adamantking Effigy
    29, -- (029-Q)    Adamantking Effigy
    30, -- (030-Q)    Adamantking Effigy
    31, -- (031-Q)    Adamantking Effigy
    32, -- (032-Q)    Adamantking Effigy
    33, -- (033-Q)    Adamantking Effigy
    34, -- (034-Q)    Adamantking Effigy
    35, -- (035-Q)    Adamantking Effigy
    36, -- (036-Q)    Adamantking Effigy
    37, -- (037-Q)    Adamantking Effigy
    38, -- (038-Y)    Manifest Icon
    39, -- (039-Y)    Manifest Icon
    40, -- (040-Y)    Manifest Icon
    41, -- (041-Y)    Manifest Icon
    42, -- (042-Y)    Manifest Icon
    43, -- (043-Y)    Manifest Icon
    44, -- (044-Y)    Manifest Icon
    45, -- (045-Y)    Manifest Icon
    46, -- (046-Y)    Manifest Icon
    47, -- (047-Y)    Manifest Icon
    48, -- (048-Y)    Manifest Icon
    49, -- (049-Y)    Manifest Icon
    50  -- (050-Y)    Manifest Icon
}

mobs[2].wave =
{
    62 , -- Nightmare Crab
    63 , -- Nightmare Crab
    64 , -- Nightmare Crab
    65 , -- Nightmare Crab
    66 , -- Nightmare Crab
    67 , -- Nightmare Crab
    68 , -- Nightmare Crab
    69 , -- Nightmare Crab
    70 , -- Nightmare Crab
    71 , -- Nightmare Crab
    72 , -- Nightmare Eft
    73 , -- Nightmare Eft
    74 , -- Nightmare Eft
    75 , -- Nightmare Eft
    76 , -- Nightmare Eft
    77 , -- Nightmare Eft
    78 , -- Nightmare Eft
    79 , -- Nightmare Eft
    80 , -- Nightmare Eft
    81 , -- Nightmare Eft
    82 , -- Nightmare Bunny
    83 , -- Nightmare Bunny
    84 , -- Nightmare Bunny
    85 , -- Nightmare Bunny
    86 , -- Nightmare Bunny
    87 , -- Nightmare Bunny
    88 , -- Nightmare Bunny
    89 , -- Nightmare Bunny
    90 , -- Nightmare Bunny
    91 , -- Nightmare Bunny
    92 , -- Nightmare Cockatrice
    93 , -- Nightmare Cockatrice
    94 , -- Nightmare Cockatrice
    95 , -- Nightmare Cockatrice
    96 , -- Nightmare Cockatrice
    97 , -- Nightmare Mandragora
    98 , -- Nightmare Mandragora
    99 , -- Nightmare Mandragora
    100, -- Nightmare Mandragora
    101, -- Nightmare Mandragora
    102, -- Nightmare Mandragora
    103, -- Nightmare Mandragora
    104, -- Nightmare Mandragora
    105, -- Nightmare Raven
    106, -- Nightmare Raven
    107, -- Nightmare Raven
    108, -- Nightmare Raven
    109, -- Nightmare Raven
    110, -- Nightmare Raven
    111, -- Nightmare Raven
    112, -- Nightmare Raven
    113, -- Nightmare Raven
    114, -- Nightmare Raven
    115, -- Nightmare Raven
    116, -- Nightmare Raven
    117, -- Nightmare Raven
    118, -- Nightmare Dhalmel
    119, -- Nightmare Dhalmel
    120, -- Nightmare Dhalmel
    121, -- Nightmare Dhalmel
    122, -- Nightmare Dhalmel
    123, -- Nightmare Dhalmel
    124, -- Nightmare Dhalmel
    125, -- Nightmare Dhalmel
    126, -- Nightmare Dhalmel
    127, -- Nightmare Dhalmel
    129, -- Nightmare Crawler
    130, -- Nightmare Crawler
    131, -- Nightmare Crawler
    132, -- Nightmare Crawler
    133, -- Nightmare Crawler
    134, -- Nightmare Crawler
    135, -- Nightmare Crawler
    136, -- Nightmare Crawler
    137, -- Nightmare Crawler
    138, -- Nightmare Crawler
    139, -- Nightmare Urganite
    140, -- Nightmare Urganite
    141, -- Nightmare Urganite
    142, -- Nightmare Urganite
    143, -- Nightmare Urganite
    144, -- Nightmare Urganite
    145, -- Nightmare Urganite
    146, -- Nightmare Urganite
    147, -- Nightmare Urganite
    148, -- Nightmare Scorpion
    149, -- Nightmare Scorpion
    150, -- Nightmare Scorpion
    151, -- Nightmare Scorpion
    152  -- Nightmare Scorpion
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[1].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1 } -- 1 RDM  1 THF  1 BRD
mobs[2].mobchildren = { [xi.job.BST] = 1, [xi.job.SMN] = 1 } -- 1 BST  1 SMN
mobs[3].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WAR  1 WHM  1 NIN
mobs[4].mobchildren = { [xi.job.SAM] = 1 } -- 1 SAM
mobs[5].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[6].mobchildren = { [xi.job.WAR] = 1, [xi.job.BST] = 1, [xi.job.DRG] = 1 } -- 1 WAR  1 BST  1 DRG
mobs[7].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[8].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[9].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[10].mobchildren = { [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM  1 NIN
mobs[11].mobchildren = { [xi.job.MNK] = 2, [xi.job.RNG] = 1 } -- 2 MNK  1 RNG
mobs[12].mobchildren = { [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 BRD  1 SMN
mobs[13].mobchildren = { [xi.job.THF] = 1 } -- 1 THF
mobs[14].mobchildren = { [xi.job.BRD] = 1 } -- 1 BRD
mobs[15].mobchildren = { [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.DRG] = 1 } -- 1 THF  1 PLD  1 DRG
mobs[16].mobchildren = { [xi.job.BST] = 1, [xi.job.NIN] = 1 } -- 1 BST  1 NIN
mobs[17].mobchildren = { [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 BRD  1 SMN
mobs[18].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1 } -- 1 WHM  1 DRK  1 RNG
mobs[19].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[20].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM
mobs[21].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 MNK  1 SAM
mobs[22].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[23].mobchildren = { [xi.job.NIN] = 1 } -- 1 NIN
mobs[24].mobchildren = { [xi.job.RDM] = 1 } -- 1 RDM
mobs[25].mobchildren = { [xi.job.WAR] = 1, [xi.job.BST] = 2 } -- 1 WAR  2 BST
mobs[26].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[27].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[28].mobchildren = { [xi.job.PLD] = 1, [xi.job.NIN] = 2 } -- 1 PLD  2 NIN
mobs[29].mobchildren = { [xi.job.BRD] = 2 } -- 2 BRD
mobs[30].mobchildren = { [xi.job.DRG] = 2 } -- 2 DRG
mobs[31].mobchildren = { [xi.job.RDM] = 2 } -- 2 RDM
mobs[32].mobchildren = { [xi.job.SAM] = 2 } -- 2 SAM
mobs[33].mobchildren = { [xi.job.MNK] = 2, [xi.job.WHM] = 1 } -- 2 MNK  1 WHM
mobs[34].mobchildren = { [xi.job.PLD] = 2 } -- 2 PLD
mobs[35].mobchildren = { [xi.job.BLM] = 2 } -- 2 BLM
mobs[36].mobchildren = { [xi.job.SMN] = 2 } -- 2 SMN
mobs[37].mobchildren = { [xi.job.THF] = 1, [xi.job.RNG] = 2 } -- 1 THF  2 RNG
mobs[38].mobchildren = { [xi.job.MNK] = 1, [xi.job.SAM] = 1 } -- 1 MNK  1 SAM
mobs[39].mobchildren = { [xi.job.MNK] = 1, [xi.job.SAM] = 1 } -- 1 MNK  1 SAM
mobs[40].mobchildren = { [xi.job.WAR] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1 } -- 1 WAR  1 DRK  1 RNG
mobs[41].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 1 } -- 1 BST  1 DRG
mobs[42].mobchildren = { [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 BRD  1 SMN
mobs[43].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 WHM  1 BLM  1 RDM
mobs[44].mobchildren = { [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 BRD  1 SMN
mobs[45].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 1 } -- 1 BST  1 DRG
mobs[46].mobchildren = { [xi.job.DRK] = 2 } -- 2 DRK
mobs[47].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[48].mobchildren = { [xi.job.NIN] = 3 } -- 3 NIN
mobs[49].mobchildren = { [xi.job.THF] = 1, [xi.job.RNG] = 1 } -- 1 THF  1 RNG
mobs[50].mobchildren = { [xi.job.PLD] = 2, [xi.job.BRD] = 1 } -- 2 PLD  1 BRD

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[1].nmchildren = { true, 285 } -- (001-O) Elvaansticker Bxafraff
mobs[3].nmchildren = { true, 286 } -- (003-O) Flamecaller Zoeqdoq
mobs[6].nmchildren = { true, 287 } -- (006-O) Hamfist Gukhbuk
mobs[11].nmchildren = { true, 288 } -- (011-O) Lyncean Juwgneg
mobs[15].nmchildren = { true, 289 } -- (015-G) Gosspix Blabberlips
mobs[18].nmchildren = { true, 290 } -- (018-G) Woodnix Shrillwhistle
mobs[21].nmchildren = { true, 291 } -- (021-G) Shamblix Rottenheart
mobs[25].nmchildren = { true, 292 } -- (025-Q) Qu'Pho Bloodspiller
mobs[28].nmchildren = { true, 293 } -- (028-Q) Te'Zha Ironclad
mobs[33].nmchildren = { true, 294 } -- (033-Q) Gi'Bhe Flesheater
mobs[37].nmchildren = { true, 295 } -- (037-Q) Va'Rhu Bodysnatcher
mobs[40].nmchildren = { true, 296 } -- (040-Y) Koo rahi the Levinblade
mobs[43].nmchildren = { true, 297 } -- (043-Y) Baa Dava the Bibliophage
mobs[48].nmchildren = { true, 298 } -- (048-Y) Doo Peku the Fleetfoot
mobs[50].nmchildren = { true, 299 } -- (050-Y) Ree Nata the Melomanic

-- Nightmare Mobs
mobs[62].nmchildren = { true, 153 } -- ( 062 ) Nightmare Crab
mobs[63].nmchildren = { true, 154 } -- ( 063 ) Nightmare Crab
mobs[64].nmchildren = { true, 155 } -- ( 064 ) Nightmare Crab
mobs[65].nmchildren = { true, 156 } -- ( 065 ) Nightmare Crab
mobs[66].nmchildren = { true, 157 } -- ( 066 ) Nightmare Crab
mobs[67].nmchildren = { true, 158 } -- ( 067 ) Nightmare Crab
mobs[68].nmchildren = { true, 159 } -- ( 068 ) Nightmare Crab
mobs[69].nmchildren = { true, 160 } -- ( 069 ) Nightmare Crab
mobs[70].nmchildren = { true, 161 } -- ( 070 ) Nightmare Crab
mobs[71].nmchildren = { true, 162 } -- ( 071 ) Nightmare Crab
mobs[72].nmchildren = { true, 163 } -- ( 072 ) Nightmare Eft
mobs[73].nmchildren = { true, 164 } -- ( 073 ) Nightmare Eft
mobs[74].nmchildren = { true, 165 } -- ( 074 ) Nightmare Eft
mobs[75].nmchildren = { true, 166 } -- ( 075 ) Nightmare Eft
mobs[76].nmchildren = { true, 167 } -- ( 076 ) Nightmare Eft
mobs[77].nmchildren = { true, 168 } -- ( 077 ) Nightmare Eft
mobs[78].nmchildren = { true, 169 } -- ( 078 ) Nightmare Eft
mobs[79].nmchildren = { true, 170 } -- ( 079 ) Nightmare Eft
mobs[80].nmchildren = { true, 171 } -- ( 080 ) Nightmare Eft
mobs[81].nmchildren = { true, 172 } -- ( 081 ) Nightmare Eft
mobs[82].nmchildren = { true, 173 } -- ( 082 ) Nightmare Bunny
mobs[83].nmchildren = { true, 174 } -- ( 083 ) Nightmare Bunny
mobs[84].nmchildren = { true, 175 } -- ( 084 ) Nightmare Bunny
mobs[85].nmchildren = { true, 176 } -- ( 085 ) Nightmare Bunny
mobs[86].nmchildren = { true, 177 } -- ( 086 ) Nightmare Bunny
mobs[87].nmchildren = { true, 178 } -- ( 087 ) Nightmare Bunny
mobs[88].nmchildren = { true, 179 } -- ( 088 ) Nightmare Bunny
mobs[89].nmchildren = { true, 180 } -- ( 089 ) Nightmare Bunny
mobs[90].nmchildren = { true, 181 } -- ( 090 ) Nightmare Bunny
mobs[91].nmchildren = { true, 182 } -- ( 091 ) Nightmare Bunny
mobs[92].nmchildren = { true, 183, 184, 185 } -- ( 092 ) Nightmare Cockatrice
mobs[93].nmchildren = { true, 186, 187, 188 } -- ( 093 ) Nightmare Cockatrice
mobs[94].nmchildren = { true, 189, 190, 191 } -- ( 094 ) Nightmare Cockatrice
mobs[95].nmchildren = { true, 192, 193, 194 } -- ( 095 ) Nightmare Cockatrice
mobs[96].nmchildren = { true, 195, 196, 197 } -- ( 096 ) Nightmare Cockatrice
mobs[97].nmchildren = { true, 198, 199 } -- ( 097 ) Nightmare Mandragora
mobs[98].nmchildren = { true, 200, 201 } -- ( 098 ) Nightmare Mandragora
mobs[99].nmchildren = { true, 202, 203 } -- ( 099 ) Nightmare Mandragora
mobs[100].nmchildren = { true, 204, 205 } -- ( 100 ) Nightmare Mandragora
mobs[101].nmchildren = { true, 206, 207 } -- ( 101 ) Nightmare Mandragora
mobs[102].nmchildren = { true, 208, 209 } -- ( 102 ) Nightmare Mandragora
mobs[103].nmchildren = { true, 210, 211 } -- ( 103 ) Nightmare Mandragora
mobs[104].nmchildren = { true, 212, 213 } -- ( 104 ) Nightmare Mandragora
mobs[105].nmchildren = { true, 214 } -- ( 105 ) Nightmare Raven
mobs[106].nmchildren = { true, 215 } -- ( 106 ) Nightmare Raven
mobs[107].nmchildren = { true, 216 } -- ( 107 ) Nightmare Raven
mobs[108].nmchildren = { true, 217 } -- ( 108 ) Nightmare Raven
mobs[109].nmchildren = { true, 218 } -- ( 109 ) Nightmare Raven
mobs[110].nmchildren = { true, 219 } -- ( 110 ) Nightmare Raven
mobs[111].nmchildren = { true, 220 } -- ( 111 ) Nightmare Raven
mobs[112].nmchildren = { true, 221 } -- ( 112 ) Nightmare Raven
mobs[113].nmchildren = { true, 222 } -- ( 113 ) Nightmare Raven
mobs[114].nmchildren = { true, 223 } -- ( 114 ) Nightmare Raven
mobs[115].nmchildren = { true, 224 } -- ( 115 ) Nightmare Raven
mobs[116].nmchildren = { true, 225 } -- ( 116 ) Nightmare Raven
mobs[117].nmchildren = { true, 226 } -- ( 117 ) Nightmare Raven
mobs[118].nmchildren = { true, 227 } -- ( 118 ) Nightmare Dhalmel
mobs[119].nmchildren = { true, 228 } -- ( 119 ) Nightmare Dhalmel
mobs[120].nmchildren = { true, 229 } -- ( 120 ) Nightmare Dhalmel
mobs[121].nmchildren = { true, 230 } -- ( 121 ) Nightmare Dhalmel
mobs[122].nmchildren = { true, 231 } -- ( 122 ) Nightmare Dhalmel
mobs[123].nmchildren = { true, 232 } -- ( 123 ) Nightmare Dhalmel
mobs[124].nmchildren = { true, 233 } -- ( 124 ) Nightmare Dhalmel
mobs[125].nmchildren = { true, 234, 235 } -- ( 125 ) Nightmare Dhalmel
mobs[126].nmchildren = { true, 236, 237 } -- ( 126 ) Nightmare Dhalmel
mobs[127].nmchildren = { true, 238, 239 } -- ( 127 ) Nightmare Dhalmel
mobs[128].nmchildren = { true, 240, 241 } -- ( 128 ) Nightmare Dhalmel
mobs[129].nmchildren = { true, 242 } -- ( 129 ) Nightmare Crawler
mobs[130].nmchildren = { true, 243 } -- ( 130 ) Nightmare Crawler
mobs[131].nmchildren = { true, 244 } -- ( 131 ) Nightmare Crawler
mobs[132].nmchildren = { true, 245, 246 } -- ( 132 ) Nightmare Crawler
mobs[133].nmchildren = { true, 247, 248 } -- ( 133 ) Nightmare Crawler
mobs[134].nmchildren = { true, 249 } -- ( 134 ) Nightmare Crawler
mobs[135].nmchildren = { true, 250 } -- ( 135 ) Nightmare Crawler
mobs[136].nmchildren = { true, 251 } -- ( 136 ) Nightmare Crawler
mobs[137].nmchildren = { true, 252, 253 } -- ( 137 ) Nightmare Crawler
mobs[138].nmchildren = { true, 254, 255 } -- ( 138 ) Nightmare Crawler
mobs[139].nmchildren = { true, 256 } -- ( 139 ) Nightmare Uragnite
mobs[140].nmchildren = { true, 257 } -- ( 140 ) Nightmare Uragnite
mobs[141].nmchildren = { true, 258 } -- ( 141 ) Nightmare Uragnite
mobs[142].nmchildren = { true, 259 } -- ( 142 ) Nightmare Uragnite
mobs[143].nmchildren = { true, 260 } -- ( 143 ) Nightmare Uragnite
mobs[144].nmchildren = { true, 261, 262 } -- ( 144 ) Nightmare Uragnite
mobs[145].nmchildren = { true, 263, 264 } -- ( 145 ) Nightmare Uragnite
mobs[146].nmchildren = { true, 265, 266 } -- ( 146 ) Nightmare Uragnite
mobs[147].nmchildren = { true, 267, 268 } -- ( 147 ) Nightmare Uragnite
mobs[148].nmchildren = { true, 269, 270, 271 } -- ( 148 ) Nightmare Scorption
mobs[149].nmchildren = { true, 272, 273, 274 } -- ( 149 ) Nightmare Scorption
mobs[150].nmchildren = { true, 275, 276, 277 } -- ( 150 ) Nightmare Scorption
mobs[151].nmchildren = { true, 278, 279, 280 } -- ( 151 ) Nightmare Scorption
mobs[152].nmchildren = { true, 281, 282, 283, 284 } -- ( 152 ) Nightmare Scorption

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

-- Dragons
mobs[61].pos = { x = -201.7883, y = -29.9139, z = 147.2554, rot = 57 }
mobs[52].pos = { x = 60.7967, y = -23.0410, z = 199.0426, rot = 12 }
mobs[51].pos = { x = -339.9798, y = -39.0022, z = 243.1307, rot = 70 }
mobs[53].pos = { x = 232.1226, y = -9.4403, z = 211.5448, rot = 20 }
mobs[54].pos = { x = 346.0957, y = -9.2967, z = 271.6128, rot = 66 }
mobs[55].pos = { x = -428.8357, y = -7.4000, z = -221.6568, rot = 211 }
mobs[56].pos = { x = -41.1463, y = -16.0195, z = -3.8987, rot = 63 }
mobs[57].pos = { x = -33.7517, y = 16.1113, z = -236.2199, rot = 186 }
mobs[58].pos = { x = 36.0265, y = 0.1348, z = -233.2813, rot = 193 }
mobs[59].pos = { x = 206.5141, y = -7.7500, z = 4.5535, rot = 119 }
mobs[60].pos = { x = 482.4607, y = 0.9171, z = -18.3645, rot = 127 }
-- Orc Stats
mobs[1].pos = { x = -489.6237, y = -29.8504, z = 59.9449, rot = 63 }
mobs[2].pos = { x = -483.8572, y = -30.9016, z = 65.4925, rot = 63 }
mobs[3].pos = { x = -474.6325, y = -29.7465, z = 58.5642, rot = 63 }
mobs[4].pos = { x = -365.3331, y = -22.1115, z = 21.2624, rot = 198 }
mobs[5].pos = { x = -355.8970, y = -21.9494, z = 21.5242, rot = 198 }
mobs[6].pos = { x = -360.7734, y = -21.8964, z = 18.8860, rot = 198 }
mobs[7].pos = { x = -370.3228, y = -23.2670, z = 15.0742, rot = 71 }
mobs[8].pos = { x = -353.7643, y = -22.5512, z = 15.7313, rot = 71 }
mobs[9].pos = { x = -216.7957, y = -22.1539, z = 96.7794, rot = 64 }
mobs[10].pos = { x = -216.1143, y = -22.1460, z = 106.0876, rot = 189 }
mobs[11].pos = { x = -208.1248, y = -21.6153, z = 101.4173, rot = 189 }
mobs[12].pos = { x = -199.5664, y = -22.8261, z = 94.8028, rot = 9 }
mobs[13].pos = { x = -199.2854, y = -22.8656, z = 105.3254, rot = 195 }
-- Goblin Stats
mobs[14].pos = { x = -30.1739, y = -13.7288, z = 61.2518, rot = 82 }
mobs[15].pos = { x = -24.6467, y = -13.2863, z = 58.9652, rot = 82 }
mobs[16].pos = { x = -15.2367, y = -13.3332, z = 57.8845, rot = 82 }
mobs[17].pos = { x = 26.1893, y = -13.1639, z = 61.5514, rot = 74 }
mobs[18].pos = { x = 36.0939, y = -13.8959, z = 61.0378, rot = 74 }
mobs[19].pos = { x = 47.8134, y = -12.8931, z = 60.0505, rot = 74 }
mobs[20].pos = { x = -20.4471, y = -13.5662, z = -5.0198, rot = 67 }
mobs[21].pos = { x = -20.9386, y = -6.1433, z = -33.5945, rot = 185 }
mobs[22].pos = { x = -12.7062, y = -7.3521, z = -42.6142, rot = 249 }
mobs[23].pos = { x = -26.1805, y = -6.9301, z = -43.9465, rot = 128 }
mobs[24].pos = { x = -18.5424, y = -6.0020, z = -48.6369, rot = 49 }
-- Quadav Stats
mobs[25].pos = { x = 241.4802, y = -5.7749, z = 20.1419, rot = 129 }
mobs[26].pos = { x = 257.7976, y = -2.3514, z = 22.7234, rot = 129 }
mobs[27].pos = { x = 279.3134, y = 2.1576, z = 20.6812, rot = 129 }
mobs[28].pos = { x = 302.2001, y = 2.1881, z = 96.2034, rot = 170 }
mobs[29].pos = { x = 299.4405, y = 2.1729, z = 82.7570, rot = 170 }
mobs[30].pos = { x = 300.0283, y = 2.2393, z = 77.8772, rot = 170 }
mobs[31].pos = { x = 283.6140, y = 2.1808, z = 19.5053, rot = 128 }
mobs[32].pos = { x = 299.0122, y = 2.2500, z = 37.3500, rot = 128 }
mobs[33].pos = { x = 298.2328, y = 2.8144, z = 16.9182, rot = 128 }
mobs[34].pos = { x = 300.0039, y = 2.2430, z = -0.4152, rot = 128 }
mobs[35].pos = { x = 301.2189, y = 2.5103, z = -25.6304, rot = 110 }
mobs[36].pos = { x = 299.6303, y = 2.1966, z = -37.0409, rot = 110 }
mobs[37].pos = { x = 300.0410, y = 2.2101, z = -43.0707, rot = 110 }
-- Yagudo Stats
mobs[38].pos = { x = 351.5531, y = 2.0022, z = -60.4356, rot = 196 }
mobs[39].pos = { x = 373.1893, y = 2.5996, z = -63.9211, rot = 219 }
mobs[40].pos = { x = 379.2950, y = 2.1553, z = -81.4621, rot = 2 }
mobs[41].pos = { x = 351.6066, y = -0.6636, z = -190.2410, rot = 1 }
mobs[42].pos = { x = 353.3952, y = -0.6354, z = -200.8557, rot = 236 }
mobs[43].pos = { x = 375.5005, y = -0.6350, z = -225.3975, rot = 225 }
mobs[44].pos = { x = 412.0664, y = 2.6627, z = -221.4059, rot = 189 }
mobs[45].pos = { x = 430.3526, y = 2.0774, z = -219.0766, rot = 123 }
mobs[46].pos = { x = 493.5782, y = 2.5840, z = -225.4034, rot = 154 }
mobs[47].pos = { x = 501.7607, y = 2.0000, z = -247.7523, rot = 169 }
mobs[48].pos = { x = 523.8189, y = 2.1778, z = -259.4799, rot = 144 }
mobs[49].pos = { x = 536.0930, y = 2.2397, z = -261.7803, rot = 137 }
mobs[50].pos = { x = 553.5475, y = 1.4175, z = -261.2966, rot = 126 }
-- Nightmare Crabs
mobs[62].pos = { x = -30.7958, y = 19.4184, z = -308.5479, rot = 130 }
mobs[63].pos = { x = -31.1747, y = 15.8897, z = -278.6635, rot = 168 }
mobs[64].pos = { x = -13.1607, y = 15.8045, z = -251.7880, rot = 164 }
mobs[65].pos = { x = -0.6842, y = 16.8508, z = -217.9911, rot = 228 }
mobs[66].pos = { x = -43.9131, y = 16.5957, z = -214.0052, rot = 243 }
mobs[67].pos = { x = -68.2952, y = 15.9799, z = -253.3839, rot = 79 }
mobs[68].pos = { x = -89.9767, y = 16.1424, z = -234.8192, rot = 48 }
mobs[69].pos = { x = -120.5364, y = 16.0000, z = -238.3332, rot = 103 }
mobs[70].pos = { x = -132.1700, y = 15.4754, z = -280.0170, rot = 75 }
mobs[71].pos = { x = -111.2321, y = 20.0000, z = -321.6591, rot = 99 }
-- Nightmare Dhalmel
mobs[118].pos = { x = 147.0991, y = -13.8950, z = 83.2262, rot = 91 }
mobs[119].pos = { x = 184.7485, y = -14.7913, z = 70.9593, rot = 80 }
mobs[120].pos = { x = 173.1945, y = -15.7263, z = 105.4897, rot = 231 }
mobs[121].pos = { x = 168.6498, y = -17.3226, z = 97.7622, rot = 245 }
mobs[122].pos = { x = 164.7219, y = -20.3030, z = 142.5724, rot = 240 }
mobs[123].pos = { x = 200.3606, y = -12.1309, z = 138.5568, rot = 25 }
mobs[124].pos = { x = 202.5746, y = -13.5267, z = 144.1523, rot = 46 }
mobs[125].pos = { x = 229.5914, y = -7.8646, z = 131.2038, rot = 69 }
mobs[126].pos = { x = 218.4597, y = -11.5093, z = 170.9403, rot = 98 }
mobs[127].pos = { x = 226.7076, y = -10.4975, z = 199.3315, rot = 214 }
mobs[128].pos = { x = 257.5502, y = -5.7149, z = 202.1803, rot = 183 }
-- Nightmare Urganite
mobs[139].pos = { x = 387.0336, y = 15.3531, z = 76.0351, rot = 147 }
mobs[140].pos = { x = 377.8488, y = 15.0754, z = 102.8690, rot = 169 }
mobs[141].pos = { x = 359.6248, y = 16.2275, z = 128.5730, rot = 170 }
mobs[142].pos = { x = 349.6410, y = 15.6979, z = 156.5760, rot = 179 }
mobs[143].pos = { x = 367.1823, y = 15.1005, z = 173.3831, rot = 196 }
mobs[144].pos = { x = 435.8933, y = 19.9970, z = 170.3763, rot = 115 }
mobs[145].pos = { x = 435.6099, y = 20.0000, z = 138.3125, rot = 119 }
mobs[146].pos = { x = 445.4790, y = 20.0000, z = 105.9790, rot = 78 }
mobs[147].pos = { x = 445.8142, y = 20.0674, z = 68.9965, rot = 176 }
-- Nightmare Scorpion
mobs[148].pos = { x = 471.2361, y = 0.2161, z = 6.8440, rot = 62 }
mobs[149].pos = { x = 516.1291, y = 0.2165, z = -8.3529, rot = 115 }
mobs[150].pos = { x = 519.8561, y = 1.0989, z = -51.0201, rot = 102 }
mobs[151].pos = { x = 474.1000, y = 0.0938, z = -39.7732, rot = 137 }
mobs[152].pos = { x = 471.0633, y = 0.3659, z = -15.7049, rot = 56 }
--Nightmare Bunny
mobs[82].pos = { x = -500.4587, y = -31.1175, z = 40.6901, rot = 236 }
mobs[83].pos = { x = -490.4445, y = -31.8260, z = 19.6098, rot = 51 }
mobs[84].pos = { x = -465.3930, y = -32.6130, z = 15.1436, rot = 246 }
mobs[85].pos = { x = -459.7678, y = -29.8715, z = 35.0834, rot = 240 }
mobs[86].pos = { x = -458.8814, y = -32.5718, z = 66.9976, rot = 179 }
mobs[87].pos = { x = -478.2877, y = -32.0000, z = 78.9771, rot = 147 }
mobs[88].pos = { x = -503.5589, y = -31.2163, z = 79.4331, rot = 113 }
mobs[89].pos = { x = -524.4575, y = -32.0880, z = 44.5391, rot = 40 }
mobs[90].pos = { x = -471.6640, y = -31.7843, z = -0.3831, rot = 184 }
mobs[91].pos = { x = -432.8346, y = -31.8996, z = 0.7240, rot = 207 }
-- Nightmare Mandragora
mobs[97].pos = { x = 18.8103, y = -25.6353, z = 215.0178, rot = 84 }
mobs[98].pos = { x = -0.9103, y = -24.2774, z = 235.0815, rot = 0 }
mobs[99].pos = { x = -42.1285, y = -24.0754, z = 236.0463, rot = 104 }
mobs[100].pos = { x = -27.1142, y = -25.0121, z = 265.3078, rot = 82 }
mobs[101].pos = { x = -62.4796, y = -29.3045, z = 273.5851, rot = 222 }
mobs[102].pos = { x = -105.0640, y = -31.3110, z = 277.3794, rot = 172 }
mobs[103].pos = { x = -131.7827, y = -33.5953, z = 268.1009, rot = 136 }
mobs[104].pos = { x = 57.2546, y = -23.1384, z = 198.0793, rot = 78 }
-- Nightmare Crawler
mobs[129].pos = { x = 319.6010, y = 0.0000, z = 361.1112, rot = 80 }
mobs[130].pos = { x = 323.2807, y = 0.0000, z = 357.6271, rot = 91 }
mobs[131].pos = { x = 338.2596, y = 0.9850, z = 325.3451, rot = 252 }
mobs[132].pos = { x = 317.7736, y = 0.0000, z = 319.5869, rot = 247 }
mobs[133].pos = { x = 278.1880, y = -8.0000, z = 319.7731, rot = 107 }
mobs[134].pos = { x = 371.0742, y = 0.6000, z = 228.1120, rot = 74 }
mobs[135].pos = { x = 374.6455, y = 0.3026, z = 216.7436, rot = 65 }
mobs[136].pos = { x = 400.8975, y = 0.0391, z = 235.1942, rot = 177 }
mobs[137].pos = { x = 433.7487, y = 0.1114, z = 201.2834, rot = 121 }
mobs[138].pos = { x = 397.8453, y = 0.1269, z = 190.9244, rot = 55 }
--Nightmare Raven
mobs[105].pos = { x = 251.3917, y = -7.5990, z = -27.2447, rot = 247 }
mobs[106].pos = { x = 247.8203, y = -7.7523, z = -51.8739, rot = 76 }
mobs[107].pos = { x = 226.7718, y = -8.4287, z = -67.0033, rot = 101 }
mobs[108].pos = { x = 212.1411, y = -13.9209, z = -45.4596, rot = 175 }
mobs[109].pos = { x = 189.4418, y = -14.5562, z = -35.2972, rot = 106 }
mobs[110].pos = { x = 192.6980, y = -12.6985, z = -60.3909, rot = 50 }
mobs[111].pos = { x = 164.4827, y = -7.9380, z = -4.5929, rot = 98 }
mobs[112].pos = { x = 194.2779, y = -7.9510, z = 10.4772, rot = 243 }
mobs[113].pos = { x = 153.4070, y = -7.2771, z = -17.0971, rot = 133 }
mobs[114].pos = { x = 133.5932, y = -7.9051, z = -41.3949, rot = 50 }
mobs[115].pos = { x = 107.4268, y = -7.9171, z = -27.6511, rot = 142 }
mobs[116].pos = { x = 104.9176, y = -7.3981, z = 7.3448, rot = 79 }
mobs[117].pos = { x = 78.0692, y = -7.9856, z = 4.3110, rot = 91 }
--Nightmare Eft
mobs[72].pos = { x = -361.8208, y = -9.4083, z = -189.7500, rot = 254 }
mobs[73].pos = { x = -388.3024, y = -7.6163, z = -196.1346, rot = 60 }
mobs[74].pos = { x = -411.7224, y = -7.6151, z = -198.3405, rot = 131 }
mobs[75].pos = { x = -444.0339, y = -8.0858, z = -193.2675, rot = 164 }
mobs[76].pos = { x = -481.2613, y = -16.0000, z = -241.4592, rot = 71 }
mobs[77].pos = { x = -450.6776, y = -9.8428, z = -262.6942, rot = 35 }
mobs[78].pos = { x = -426.0003, y = -5.8710, z = -279.0026, rot = 24 }
mobs[79].pos = { x = -403.1646, y = 0.0000, z = -278.8900, rot = 233 }
mobs[80].pos = { x = -381.4844, y = -9.1690, z = -220.7178, rot = 122 }
mobs[81].pos = { x = -355.3060, y = -8.1887, z = -200.9366, rot = 245 }
--Nightmare Cockatrice
mobs[92].pos = { x = -313.1621, y = -39.8093, z = 257.1451, rot = 19 }
mobs[93].pos = { x = -352.1228, y = -39.8073, z = 236.7914, rot = 139 }
mobs[94].pos = { x = -334.8820, y = -31.3485, z = 204.2709, rot = 51 }
mobs[95].pos = { x = -357.9044, y = -32.3993, z = 154.4069, rot = 9 }
mobs[96].pos = { x = -318.5551, y = -23.0392, z = 139.2384, rot = 11 }

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[2].eyes = xi.dynamis.eye.GREEN
mobs[9].eyes = xi.dynamis.eye.BLUE
mobs[10].eyes = xi.dynamis.eye.GREEN
mobs[12].eyes = xi.dynamis.eye.GREEN
mobs[13].eyes = xi.dynamis.eye.BLUE
mobs[20].eyes = xi.dynamis.eye.GREEN
mobs[22].eyes = xi.dynamis.eye.BLUE
mobs[23].eyes = xi.dynamis.eye.BLUE
mobs[24].eyes = xi.dynamis.eye.GREEN
mobs[34].eyes = xi.dynamis.eye.GREEN
mobs[38].eyes = xi.dynamis.eye.GREEN
mobs[39].eyes = xi.dynamis.eye.BLUE
mobs[41].eyes = xi.dynamis.eye.BLUE
mobs[44].eyes = xi.dynamis.eye.GREEN
mobs[45].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 61 }
mobs[61].timeExtension = 60
