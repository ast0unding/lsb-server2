-----------------------------------
-- Era Dynamis - Dynamis-Valkurm spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/val.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/val.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_VALKURM

local mobs = {}
for i = 1, 290 do
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

-- Wave 1
-- Nightmare Mobs + NMs Based on https://enedin.be/dyna/html/zone/frame_val1.htm
-- Nightmare Mobs
-- Hippogryph Sands
mobs[21].info = { mobType = 'Nightmare', name = 'Nightmare Fly', deathVar = 'fly1_killed' } -- ( 021 ) Nightmare Fly Recovers Subjobs
-- Sheep Sands
mobs[22].info = { mobType = 'Nightmare', name = 'Nightmare Fly', deathVar = 'fly2_killed' } -- ( 022 )  Nightmare Fly Recover Subjobs
-- Manticore Sands
mobs[23].info = { mobType = 'Nightmare', name = 'Nightmare Fly', deathVar = 'fly3_killed' } -- ( 023 ) Nightmare Fly Recover Subjobs

-- NM based on https://enedin.be/dyna/html/zone/frame_val1.htm
-- Funguar NM Area
mobs[5].info = { mobType = 'NM', name = 'Fairy Ring', deathVar = 'fairy_ring_killed' } -- ( 005 ) Fairy Ring - Inhibits Cirrate Christelle's 'Miasmic Breath' effect; Removes Cirrate Christelle's enhanced movement speed
-- Flytrap NM Area
mobs[10].info = { mobType = 'NM', name = 'Dragontrap_1', deathVar = 'dragontrap1_killed' } -- ( 010 ) Flytrap NMs (Dragontrap ×3)
mobs[287].info = { mobType = 'NM', name = 'Dragontrap_2', deathVar = 'dragontrap2_killed' } -- Inhibits Cirrate Christelle's 'Putrid Breath' effect
mobs[288].info = { mobType = 'NM', name = 'Dragontrap_3', deathVar = 'dragontrap3_killed' } -- Makes Cirrate Christelle unable to summon Nightmare Morbols
-- Treant NM Area
mobs[15].info = { mobType = 'NM', name = 'Stcemqestcint', deathVar = 'stcemqestcint_killed' } -- ( 015 ) Stcemqestcint - Inhibits Cirrate Christelle's 'Vampiric Lash' effect
-- Gobbue NM Area
mobs[20].info = { mobType = 'NM', name = "Nant'ina", deathVar = 'nantina_killed' } -- ( 020 ) Nant'ina - Inhibits Cirrate Christelle's 'Fragrant Breath' effect
-- Boss Area
mobs[24].info = { mobType = 'NM', name = 'Cirrate Christelle', deathVar = 'MegaBoss_Killed' } -- ( 024 ) Cirrate Christelle - Spawns 025-052
mobs[289].info = { mobType = 'NM', name = 'Nightmare Morbol', deathVar = 'morbol1_killed' } -- Spawned by Cirrate Christelle
mobs[290].info = { mobType = 'NM', name = 'Nightmare Morbol', deathVar = 'morbol2_killed' } -- Spawned by Cirrate Christelle
-- Spawns
mobs[25].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (025-G)
mobs[26].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (026-Y)
mobs[27].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (027-Q)
mobs[28].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (028-O)
mobs[29].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 029 ) Nightmare Manticore (×3)
mobs[136].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 029 )
mobs[137].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 029 )
mobs[30].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 030 ) Nightmare Hippogryph (×3)
mobs[138].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 030 )
mobs[139].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 030 )
mobs[31].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 031 ) Nightmare Sabotender (×3)
mobs[140].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 031 )
mobs[141].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 031 )
mobs[32].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 032 ) Nightmare Sheep (×3)
mobs[142].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 032 )
mobs[143].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 032 )

-- Initial Statues based on https://enedin.be/dyna/html/zone/frame_val1.htm
-- Funguar NM Area
mobs[1].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (001-Y)
mobs[2].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (002-Y)
mobs[3].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (003-Y)
mobs[4].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (004-Y)
-- Flytrap NM Area
mobs[6].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (006-G)
mobs[7].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (007-G)
mobs[8].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (008-G)
mobs[9].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (009-G)
-- Treant NM Area
mobs[11].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (011-O)
mobs[12].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (012-O)
mobs[13].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (013-O)
mobs[14].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (014-O)
-- Goobbue NM Area
mobs[16].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (016-Q)
mobs[17].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (017-Q)
mobs[18].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (018-Q)
mobs[19].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (019-Q)

-- Wave 2 Manticore Sands and Goobubue NM Area
-- Nightmare Mobs + NMs Based on https://enedin.be/dyna/html/zone/frame_val2.htm
-- Nightmare Mobs
mobs[110].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 110 ) Nightmare Manticore (×3)
mobs[244].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 110 )
mobs[245].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 110 )
mobs[111].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 111 ) Nightmare Manticore (×3)
mobs[246].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 111 )
mobs[247].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 111 )
mobs[112].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 112 ) Nightmare Manticore (×3)
mobs[248].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 112 )
mobs[249].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 112 )
mobs[113].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 113 ) Nightmare Manticore (×3)
mobs[250].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 113 )
mobs[251].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 113 )
mobs[114].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 114 ) Nightmare Manticore (×3)
mobs[252].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 114 )
mobs[253].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 114 )
mobs[115].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 115 ) Nightmare Manticore (×3)
mobs[254].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 115 )
mobs[255].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 115 )
mobs[116].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 116 ) Nightmare Manticore (×3)
mobs[256].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 116 )
mobs[257].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 116 )
mobs[117].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 117 ) Nightmare Manticore (×3)
mobs[258].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 117 )
mobs[259].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 117 )
mobs[118].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 118 ) Nightmare Manticore (×3)
mobs[260].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 118 )
mobs[261].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 118 )
mobs[119].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 119 ) Nightmare Manticore (×4)
mobs[262].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 119 )
mobs[263].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 119 )
mobs[264].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 119 )
mobs[120].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 120 ) Nightmare Manticore (×3)
mobs[265].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 120 )
mobs[266].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 120 )
mobs[121].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 121 ) Nightmare Manticore (×3)
mobs[267].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 121 )
mobs[268].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 121 )
mobs[122].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 122 ) Nightmare Manticore (×3)
mobs[269].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 122 )
mobs[270].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 122 )
mobs[123].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 123 ) Nightmare Manticore (×4)
mobs[271].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 123 )
mobs[272].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 123 )
mobs[273].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 123 )
mobs[124].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 124 ) Nightmare Manticore (×4)
mobs[274].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 124 )
mobs[275].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 124 )
mobs[276].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 124 )
-- Goobbue NM Area
mobs[125].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 125 ) Nightmare Manticore (×3)
mobs[277].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 125 )
mobs[278].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 125 )
mobs[126].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 126 ) Nightmare Manticore (×3)
mobs[279].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 126 )
mobs[280].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 126 )
mobs[127].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 127 ) Nightmare Manticore (×3)
mobs[281].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 127 )
mobs[282].info = { mobType = 'Nightmare', name = 'Nightmare Manticore' } -- ( 127 )
mobs[128].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 128 ) Nightmare Sabotender (×3)
mobs[283].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 128 )
mobs[284].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 128 )
mobs[129].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 129 ) Nightmare Sabotender (×3)
mobs[285].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 129 )
mobs[286].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 129 )

-- Wave 3 Sheep Sands and Treant NM Area
-- Nightmare Mobs + NMs Based on https://enedin.be/dyna/html/zone/frame_val2.htm
-- Nightmare Mobs
mobs[87].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 087 ) Nightmare Sheep (×3)
mobs[212].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 087 )
mobs[213].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 087 )
mobs[88].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 088 ) Nightmare Sheep (×3)
mobs[214].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 088 )
mobs[215].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 088 )
mobs[89].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 089 ) Nightmare Sheep (×3)
mobs[216].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 089 )
mobs[217].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 089 )
mobs[90].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 090 ) Nightmare Sheep (×3)
mobs[218].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 090 )
mobs[219].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 090 )
mobs[91].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 091 ) Nightmare Sheep (×3)
mobs[220].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 091 )
mobs[221].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 091 )
mobs[92].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 092 ) Nightmare Sheep (×3)
mobs[222].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 092 )
mobs[223].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 092 )
mobs[93].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 093 ) Nightmare Sheep (×2)
mobs[224].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 093 )
mobs[94].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 094 ) Nightmare Sheep (×2)
mobs[225].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 094 )
mobs[95].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 095 ) Nightmare Sheep (×2)
mobs[226].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 095 )
mobs[96].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 096 ) Nightmare Sheep (×2)
mobs[227].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 096 )
mobs[97].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 097 ) Nightmare Sheep (×2)
mobs[228].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 097 )
mobs[98].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 098 ) Nightmare Sheep (×2)
mobs[229].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 098 )
mobs[99].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 099 ) Nightmare Sheep (×2)
mobs[230].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 099 )
mobs[100].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 100 ) Nightmare Sheep (×2)
mobs[231].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 100 )
mobs[101].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 101 ) Nightmare Sheep (×2)
mobs[232].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 101 )
mobs[102].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 102 ) Nightmare Sheep (×2)
mobs[233].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 102 )
mobs[103].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 103 ) Nightmare Sheep (×2)
mobs[234].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 103 )
mobs[104].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 104 ) Nightmare Sheep (×2)
mobs[235].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 104 )
mobs[105].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 105 ) Nightmare Sheep (×2)
mobs[236].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 105 )
mobs[106].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 106 ) Nightmare Sheep (×2)
mobs[237].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 106 )
mobs[107].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 107 ) Nightmare Sheep (×3)
mobs[238].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 107 )
mobs[239].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 107 )
mobs[108].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 108 ) Nightmare Sheep (×3)
mobs[240].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 108 )
mobs[241].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 108 )
mobs[109].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 109 ) Nightmare Sheep (×3)
mobs[242].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 109 )
mobs[243].info = { mobType = 'Nightmare', name = 'Nightmare Sheep' } -- ( 109 )

-- Wave 4 Hippogryph Sands and Flytrap NM Area
-- Nightmare Mobs + NMs Based on https://enedin.be/dyna/html/zone/frame_val2.htm
-- Nightmare Mobs
-- Hippogryph Sands
mobs[59].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 059 ) Nightmare Hippogryph (×3)
mobs[156].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 059 )
mobs[157].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 059 )
mobs[60].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 060 ) Nightmare Hippogryph (×3)
mobs[158].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 060 )
mobs[159].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 060 )
mobs[61].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 061 ) Nightmare Hippogryph (×3)
mobs[160].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 061 )
mobs[161].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 061 )
mobs[62].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 062 ) Nightmare Hippogryph (×3)
mobs[162].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 062 )
mobs[163].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 062 )
mobs[63].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 063 ) Nightmare Hippogryph (×3)
mobs[164].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 063 )
mobs[165].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 063 )
mobs[64].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 064 ) Nightmare Hippogryph (×3)
mobs[166].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 064 )
mobs[167].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 064 )
mobs[65].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 065 ) Nightmare Hippogryph (×3)
mobs[168].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 065 )
mobs[169].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 065 )
mobs[66].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 066 ) Nightmare Hippogryph (×3)
mobs[170].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 066 )
mobs[171].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 066 )
mobs[67].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 067 ) Nightmare Hippogryph (×3)
mobs[172].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 067 )
mobs[173].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 067 )
mobs[68].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 068 ) Nightmare Hippogryph (×3)
mobs[174].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 068 )
mobs[175].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 068 )
mobs[69].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 069 ) Nightmare Hippogryph (×3)
mobs[176].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 069 )
mobs[177].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 069 )
mobs[70].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 070 ) Nightmare Hippogryph (×3)
mobs[178].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 070 )
mobs[179].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 070 )
mobs[71].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 071 ) Nightmare Hippogryph (×3)
mobs[180].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 071 )
mobs[181].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 071 )
mobs[72].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 072 ) Nightmare Hippogryph (×3)
mobs[182].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 072 )
mobs[183].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 072 )
mobs[73].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 073 ) Nightmare Hippogryph (×3)
mobs[184].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 073 )
mobs[185].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 073 )
mobs[74].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 074 ) Nightmare Sabotender (×3)
mobs[186].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 074 )
mobs[187].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 074 )
mobs[75].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 075 ) Nightmare Sabotender (×3)
mobs[188].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 075 )
mobs[189].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 075 )
mobs[76].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 076 ) Nightmare Sabotender (×3)
mobs[190].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 076 )
mobs[191].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 076 )
mobs[77].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 077 ) Nightmare Sabotender (×3)
mobs[192].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 077 )
mobs[193].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 077 )
mobs[78].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 078 ) Nightmare Sabotender (×3)
mobs[194].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 078 )
mobs[195].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 078 )
mobs[79].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 079 ) Nightmare Sabotender (×3)
mobs[196].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 079 )
mobs[197].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 079 )
mobs[80].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 080 ) Nightmare Sabotender (×3)
mobs[198].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 080 )
mobs[199].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 080 )
mobs[81].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 081 ) Nightmare Sabotender (×3)
mobs[200].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 081 )
mobs[201].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 081 )
mobs[82].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 082 ) Nightmare Sabotender (×3)
mobs[202].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 082 )
mobs[203].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 082 )
-- Flytrap NM Area
mobs[83].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 083 ) Nightmare Sabotender (×3)
mobs[204].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 083 )
mobs[205].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 083 )
mobs[84].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 084 ) Nightmare Hippogryph (×3)
mobs[206].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 084 )
mobs[207].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 084 )
mobs[85].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 085 ) Nightmare Hippogryph (×3)
mobs[208].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 085 )
mobs[209].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 085 )
mobs[86].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 086 ) Nightmare Hippogryph (×3)
mobs[210].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 086 )
mobs[211].info = { mobType = 'Nightmare', name = 'Nightmare Hippogryph' } -- ( 086 )

-- Wave 5 Statues based on https://enedin.be/dyna/html/zone/frame_val2.htm
-- Outpost Area
mobs[33].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (033-Y) Manifest Icon
mobs[34].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (034-Y) Manifest Icon
mobs[35].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (035-Y) Manifest Icon
mobs[36].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (036-Y) Manifest Icon
mobs[37].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (037-Y) Manifest Icon
mobs[38].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (038-G) Goblin Replica
mobs[39].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (039-G) Goblin Replica
mobs[40].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (040-G) Goblin Replica
mobs[41].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (041-G) Goblin Replica
mobs[42].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (042-G) Goblin Replica
mobs[43].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (043-O) Serjeant Tombstone
mobs[44].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (044-O) Serjeant Tombstone
mobs[45].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (045-O) Serjeant Tombstone
mobs[46].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (046-O) Serjeant Tombstone
mobs[47].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (047-O) Serjeant Tombstone
mobs[48].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (048-Q) Adamantking Effigy
mobs[49].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (049-Q) Adamantking Effigy
mobs[50].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (050-Q) Adamantking Effigy
mobs[51].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (051-Q) Adamantking Effigy
mobs[52].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (052-Q) Adamantking Effigy

-- Wave 5 Outpost Area
-- Nightmare Mobs based on https://enedin.be/dyna/html/zone/frame_val2.htm
-- Nightmare Mobs
mobs[53].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 053 ) Nightmare Sabotender (×3)
mobs[144].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 053 )
mobs[145].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 053 )
mobs[54].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 054 ) Nightmare Sabotender (×3)
mobs[146].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 054 )
mobs[147].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 054 )
mobs[55].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 055 ) Nightmare Sabotender (×3)
mobs[148].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 055 )
mobs[149].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 055 )
mobs[56].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 056 ) Nightmare Sabotender (×3)
mobs[150].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 056 )
mobs[151].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 056 )
mobs[57].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 057 ) Nightmare Sabotender (×3)
mobs[152].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 057 )
mobs[153].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 057 )
mobs[58].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 058 ) Nightmare Sabotender (×3)
mobs[154].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 058 )
mobs[155].info = { mobType = 'Nightmare', name = 'Nightmare Sabotender' } -- ( 058 )

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    {}, -- Nightmare mobs: present from the start, not gated behind the megaboss
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    21 , -- ( 021 ) Nightmare Flys - Recover subjobs
    22 , -- ( 022 ) Nightmare Flys - Recover subjobs
    23 , -- ( 023 ) Nightmare Flys - Recover subjobs
    5  , -- ( 005 ) Fairy Ring
    10 , -- ( 010 ) Flytrap NMs
    15 , -- ( 015 ) Stcemqestcint
    20 , -- ( 020 ) Nant'ina
    24 , -- ( 024 ) Cirrate Christelle
    1  , -- (001-Y) Manifest Icon
    2  , -- (002-Y) Manifest Icon
    3  , -- (003-Y) Manifest Icon
    4  , -- (004-Y) Manifest Icon
    6  , -- (006-G) Goblin Replica
    7  , -- (007-G) Goblin Replica
    8  , -- (008-G) Goblin Replica
    9  , -- (009-G) Goblin Replica
    11 , -- (011-O) Serjeant Tombstone
    12 , -- (012-O) Serjeant Tombstone
    13 , -- (013-O) Serjeant Tombstone
    14 , -- (014-O) Serjeant Tombstone
    16 , -- (016-Q) Adamantking Effigy
    17 , -- (017-Q) Adamantking Effigy
    18 , -- (018-Q) Adamantking Effigy
    19 , -- (019-Q) Adamantking Effigy
    59 , -- ( 059 ) Nightmare Hippogryph (×3)
    60 , -- ( 060 ) Nightmare Hippogryph (×3)
    61 , -- ( 061 ) Nightmare Hippogryph (×3)
    62 , -- ( 062 ) Nightmare Hippogryph (×3)
    63 , -- ( 063 ) Nightmare Hippogryph (×3)
    64 , -- ( 064 ) Nightmare Hippogryph (×3)
    65 , -- ( 065 ) Nightmare Hippogryph (×3)
    66 , -- ( 066 ) Nightmare Hippogryph (×3)
    67 , -- ( 067 ) Nightmare Hippogryph (×3)
    68 , -- ( 068 ) Nightmare Hippogryph (×3)
    69 , -- ( 069 ) Nightmare Hippogryph (×3)
    70 , -- ( 070 ) Nightmare Hippogryph (×3)
    71 , -- ( 071 ) Nightmare Hippogryph (×3)
    72 , -- ( 072 ) Nightmare Hippogryph (×3)
    73 , -- ( 073 ) Nightmare Hippogryph (×3)
    53 , -- ( 053 ) Nightmare Sabotender (x3)
    54 , -- ( 054 ) Nightmare Sabotender (x3)
    55 , -- ( 055 ) Nightmare Sabotender (x3)
    56 , -- ( 056 ) Nightmare Sabotender (x3)
    57 , -- ( 057 ) Nightmare Sabotender (x3)
    58 , -- ( 058 ) Nightmare Sabotender (x3)
    74 , -- ( 074 ) Nightmare Sabotender (×3)
    75 , -- ( 075 ) Nightmare Sabotender (×3)
    76 , -- ( 076 ) Nightmare Sabotender (×3)
    77 , -- ( 077 ) Nightmare Sabotender (×3)
    78 , -- ( 078 ) Nightmare Sabotender (×3)
    79 , -- ( 079 ) Nightmare Sabotender (×3)
    80 , -- ( 080 ) Nightmare Sabotender (×3)
    81 , -- ( 081 ) Nightmare Sabotender (×3)
    82 , -- ( 082 ) Nightmare Sabotender (×3)
    83 , -- ( 083 ) Nightmare Sabotender (×3)
    84 , -- ( 084 ) Nightmare Hippogryph (×3)
    85 , -- ( 085 ) Nightmare Hippogryph (×3)
    86 , -- ( 086 ) Nightmare Hippogryph (×3)
    87 , -- ( 087 ) Nightmare Sheep (×3)
    88 , -- ( 088 ) Nightmare Sheep (×3)
    89 , -- ( 089 ) Nightmare Sheep (×3)
    90 , -- ( 090 ) Nightmare Sheep (×3)
    91 , -- ( 091 ) Nightmare Sheep (×3)
    92 , -- ( 092 ) Nightmare Sheep (×3)
    93 , -- ( 093 ) Nightmare Sheep (×2)
    94 , -- ( 094 ) Nightmare Sheep (×2)
    95 , -- ( 095 ) Nightmare Sheep (×2)
    96 , -- ( 096 ) Nightmare Sheep (×2)
    97 , -- ( 097 ) Nightmare Sheep (×2)
    98 , -- ( 098 ) Nightmare Sheep (×2)
    99 , -- ( 099 ) Nightmare Sheep (×2)
    100, -- ( 100 ) Nightmare Sheep (×2)
    101, -- ( 101 ) Nightmare Sheep (×2)
    102, -- ( 102 ) Nightmare Sheep (×2)
    103, -- ( 103 ) Nightmare Sheep (×2)
    104, -- ( 104 ) Nightmare Sheep (×2)
    105, -- ( 105 ) Nightmare Sheep (×2)
    106, -- ( 106 ) Nightmare Sheep (×2)
    107, -- ( 107 ) Nightmare Sheep (×3)
    108, -- ( 108 ) Nightmare Sheep (×3)
    109, -- ( 109 ) Nightmare Sheep (×3)
    110, -- ( 110 ) Nightmare Manticore (×3)
    111, -- ( 111 ) Nightmare Manticore (×3)
    112, -- ( 112 ) Nightmare Manticore (×3)
    113, -- ( 113 ) Nightmare Manticore (×3)
    114, -- ( 114 ) Nightmare Manticore (×3)
    115, -- ( 115 ) Nightmare Manticore (×3)
    116, -- ( 116 ) Nightmare Manticore (×3)
    117, -- ( 117 ) Nightmare Manticore (×3)
    118, -- ( 118 ) Nightmare Manticore (×3)
    119, -- ( 119 ) Nightmare Manticore (×4)
    120, -- ( 120 ) Nightmare Manticore (×3)
    121, -- ( 121 ) Nightmare Manticore (×3)
    122, -- ( 122 ) Nightmare Manticore (×3)
    123, -- ( 123 ) Nightmare Manticore (×4)
    124, -- ( 124 ) Nightmare Manticore (×4)
    125, -- ( 125 ) Nightmare Manticore (×3)
    126, -- ( 126 ) Nightmare Manticore (×3)
    127, -- ( 127 ) Nightmare Manticore (×3)
    128, -- ( 128 ) Nightmare Sabotender (×3)
    129  -- ( 129 ) Nightmare Sabotender (×3)
}

mobs[2].wave =
{
    25 , -- (025-G) Goblin Replica
    26 , -- (026-Y) Manifest Icon
    27 , -- (027-Q) Adamantking Effigy
    28 , -- (028-O) Serjeant Tombstone
    29 , -- ( 029 ) Nightmare Manticore (×3)
    30 , -- ( 030 ) Nightmare Hippogryph (×3)
    31 , -- ( 031 ) Nightmare Sabotender (×3)
    32 , -- ( 032 ) Nightmare Sheep (×3)
    33 , -- (033-Y) Manifest Icon
    34 , -- (034-Y) Manifest Icon
    35 , -- (035-Y) Manifest Icon
    36 , -- (036-Y) Manifest Icon
    37 , -- (037-Y) Manifest Icon
    38 , -- (038-G) Goblin Replica
    39 , -- (039-G) Goblin Replica
    40 , -- (040-G) Goblin Replica
    41 , -- (041-G) Goblin Replica
    42 , -- (042-G) Goblin Replica
    43 , -- (043-O) Serjeant Tombstone
    44 , -- (044-O) Serjeant Tombstone
    45 , -- (045-O) Serjeant Tombstone
    46 , -- (046-O) Serjeant Tombstone
    47 , -- (047-O) Serjeant Tombstone
    48 , -- (048-Q) Adamantking Effigy
    49 , -- (049-Q) Adamantking Effigy
    50 , -- (050-Q) Adamantking Effigy
    51 , -- (051-Q) Adamantking Effigy
    52   -- (052-Q) Adamantking Effigy
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

-- Boss Area
mobs[25].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[26].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[27].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[28].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[1].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[2].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[3].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[4].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[6].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[7].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[8].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[9].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[11].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[12].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[13].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BST 1 BRD 1 DRK
mobs[14].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[16].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[17].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[18].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[19].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[33].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[34].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[35].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[36].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[37].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[38].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[39].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[40].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[41].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[42].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[43].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[44].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[45].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[46].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[47].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN
mobs[48].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR 1 RNG 1 RDM
mobs[49].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 WHM 1 NIN 1 MNK
mobs[50].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 PLD 1 BLM 1 SAM
mobs[51].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1 } -- 1 BRD 1 BST 1 DRK
mobs[52].mobchildren = { [xi.job.THF] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 THF 1 DRG 1 SMN

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

-- Wave 1
-- Boss Arera
mobs[29].nmchildren = { true, 136, 137 } -- ( 029 ) Nightmare Manticore (×3)
mobs[30].nmchildren = { true, 138, 139 } -- ( 030 ) Nightmare Hippogryph (×3)
mobs[31].nmchildren = { true, 140, 141 } -- ( 031 ) Nightmare Sabotender (×3)
mobs[32].nmchildren = { true, 142, 143 } -- ( 032 ) Nightmare Sheep (×3)
-- Nightmare Mobs
mobs[53].nmchildren = { true, 144, 145 } -- ( 053 ) Nightmare Sabotender (×3)
mobs[54].nmchildren = { true, 146, 147 } -- ( 054 ) Nightmare Sabotender (×3)
mobs[55].nmchildren = { true, 148, 149 } -- ( 055 ) Nightmare Sabotender (×3)
mobs[56].nmchildren = { true, 150, 151 } -- ( 056 ) Nightmare Sabotender (×3)
mobs[57].nmchildren = { true, 152, 153 } -- ( 057 ) Nightmare Sabotender (×3)
mobs[58].nmchildren = { true, 154, 155 } -- ( 058 ) Nightmare Sabotender (×3)
mobs[59].nmchildren = { true, 156, 157 } -- ( 059 ) Nightmare Hippogryph (×3)
mobs[60].nmchildren = { true, 158, 159 } -- ( 060 ) Nightmare Hippogryph (×3)
mobs[61].nmchildren = { true, 160, 161 } -- ( 061 ) Nightmare Hippogryph (×3)
mobs[62].nmchildren = { true, 162, 163 } -- ( 062 ) Nightmare Hippogryph (×3)
mobs[63].nmchildren = { true, 164, 165 } -- ( 063 ) Nightmare Hippogryph (×3)
mobs[64].nmchildren = { true, 166, 167 } -- ( 064 ) Nightmare Hippogryph (×3)
mobs[65].nmchildren = { true, 168, 169 } -- ( 065 ) Nightmare Hippogryph (×3)
mobs[66].nmchildren = { true, 170, 171 } -- ( 066 ) Nightmare Hippogryph (×3)
mobs[67].nmchildren = { true, 172, 173 } -- ( 067 ) Nightmare Hippogryph (×3)
mobs[68].nmchildren = { true, 174, 175 } -- ( 068 ) Nightmare Hippogryph (×3)
mobs[69].nmchildren = { true, 176, 177 } -- ( 069 ) Nightmare Hippogryph (×3)
mobs[70].nmchildren = { true, 178, 179 } -- ( 070 ) Nightmare Hippogryph (×3)
mobs[71].nmchildren = { true, 180, 181 } -- ( 071 ) Nightmare Hippogryph (×3)
mobs[72].nmchildren = { true, 182, 183 } -- ( 072 ) Nightmare Hippogryph (×3)
mobs[73].nmchildren = { true, 184, 185 } -- ( 073 ) Nightmare Hippogryph (×3)
mobs[74].nmchildren = { true, 186, 187 } -- ( 074 ) Nightmare Sabotender (×3)
mobs[75].nmchildren = { true, 188, 189 } -- ( 075 ) Nightmare Sabotender (×3)
mobs[76].nmchildren = { true, 190, 191 } -- ( 076 ) Nightmare Sabotender (×3)
mobs[77].nmchildren = { true, 192, 193 } -- ( 077 ) Nightmare Sabotender (×3)
mobs[78].nmchildren = { true, 194, 195 } -- ( 078 ) Nightmare Sabotender (×3)
mobs[79].nmchildren = { true, 196, 197 } -- ( 079 ) Nightmare Sabotender (×3)
mobs[80].nmchildren = { true, 198, 199 } -- ( 080 ) Nightmare Sabotender (×3)
mobs[81].nmchildren = { true, 200, 201 } -- ( 081 ) Nightmare Sabotender (×3)
mobs[82].nmchildren = { true, 202, 203 } -- ( 082 ) Nightmare Sabotender (×3)
mobs[83].nmchildren = { true, 204, 205 } -- ( 083 ) Nightmare Sabotender (×3)
mobs[84].nmchildren = { true, 206, 207 } -- ( 084 ) Nightmare Hippogryph (×3)
mobs[85].nmchildren = { true, 208, 209 } -- ( 085 ) Nightmare Hippogryph (×3)
mobs[86].nmchildren = { true, 210, 211 } -- ( 086 ) Nightmare Hippogryph (×3)
mobs[87].nmchildren = { true, 212, 213 } -- ( 087 ) Nightmare Sheep (×3)
mobs[88].nmchildren = { true, 214, 215 } -- ( 088 ) Nightmare Sheep (×3)
mobs[89].nmchildren = { true, 216, 217 } -- ( 089 ) Nightmare Sheep (×3)
mobs[90].nmchildren = { true, 218, 219 } -- ( 090 ) Nightmare Sheep (×3)
mobs[91].nmchildren = { true, 220, 221 } -- ( 091 ) Nightmare Sheep (×3)
mobs[92].nmchildren = { true, 222, 223 } -- ( 092 ) Nightmare Sheep (×3)
mobs[93].nmchildren = { true, 224 } -- ( 093 ) Nightmare Sheep (×2)
mobs[94].nmchildren = { true, 225 } -- ( 094 ) Nightmare Sheep (×2)
mobs[95].nmchildren = { true, 226 } -- ( 095 ) Nightmare Sheep (×2)
mobs[96].nmchildren = { true, 227 } -- ( 096 ) Nightmare Sheep (×2)
mobs[97].nmchildren = { true, 228 } -- ( 097 ) Nightmare Sheep (×2)
mobs[98].nmchildren = { true, 229 } -- ( 098 ) Nightmare Sheep (×2)
mobs[99].nmchildren = { true, 230 } -- ( 099 ) Nightmare Sheep (×2)
mobs[100].nmchildren = { true, 231 } -- ( 100 ) Nightmare Sheep (×2)
mobs[101].nmchildren = { true, 232 } -- ( 101 ) Nightmare Sheep (×2)
mobs[102].nmchildren = { true, 233 } -- ( 102 ) Nightmare Sheep (×2)
mobs[103].nmchildren = { true, 234 } -- ( 103 ) Nightmare Sheep (×2)
mobs[104].nmchildren = { true, 235 } -- ( 104 ) Nightmare Sheep (×2)
mobs[105].nmchildren = { true, 236 } -- ( 105 ) Nightmare Sheep (×2)
mobs[106].nmchildren = { true, 237 } -- ( 106 ) Nightmare Sheep (×2)
mobs[107].nmchildren = { true, 238, 239 } -- ( 107 ) Nightmare Sheep (×3)
mobs[108].nmchildren = { true, 240, 241 } -- ( 108 ) Nightmare Sheep (×3)
mobs[109].nmchildren = { true, 242, 243 } -- ( 109 ) Nightmare Sheep (×3)
mobs[110].nmchildren = { true, 244, 245 } -- ( 110 ) Nightmare Manticore (×3)
mobs[111].nmchildren = { true, 246, 247 } -- ( 111 ) Nightmare Manticore (×3)
mobs[112].nmchildren = { true, 248, 249 } -- ( 112 ) Nightmare Manticore (×3)
mobs[113].nmchildren = { true, 250, 251 } -- ( 113 ) Nightmare Manticore (×3)
mobs[114].nmchildren = { true, 252, 253 } -- ( 114 ) Nightmare Manticore (×3)
mobs[115].nmchildren = { true, 254, 255 } -- ( 115 ) Nightmare Manticore (×3)
mobs[116].nmchildren = { true, 256, 257 } -- ( 116 ) Nightmare Manticore (×3)
mobs[117].nmchildren = { true, 258, 259 } -- ( 117 ) Nightmare Manticore (×3)
mobs[118].nmchildren = { true, 260, 261 } -- ( 118 ) Nightmare Manticore (×3)
mobs[119].nmchildren = { true, 262, 263, 264 } -- ( 119 ) Nightmare Manticore (×4)
mobs[120].nmchildren = { true, 265, 266 } -- ( 120 ) Nightmare Manticore (×3)
mobs[121].nmchildren = { true, 267, 268 } -- ( 121 ) Nightmare Manticore (×3)
mobs[122].nmchildren = { true, 269, 270 } -- ( 122 ) Nightmare Manticore (×3)
mobs[123].nmchildren = { true, 271, 272, 273 } -- ( 123 ) Nightmare Manticore (×4)
mobs[124].nmchildren = { true, 274, 275, 276 } -- ( 124 ) Nightmare Manticore (×4)
mobs[125].nmchildren = { true, 277, 278 } -- ( 125 ) Nightmare Manticore (×3)
mobs[126].nmchildren = { true, 279, 280 } -- ( 126 ) Nightmare Manticore (×3)
mobs[127].nmchildren = { true, 281, 282 } -- ( 127 ) Nightmare Manticore (×3)
mobs[128].nmchildren = { true, 283, 284 } -- ( 128 ) Nightmare Sabotender (×3)
mobs[129].nmchildren = { true, 285, 286 } -- ( 129 ) Nightmare Sabotender (×3)
-- NMs
mobs[10].nmchildren = { true, 287, 288 } -- ( 010 ) Dragontrap (×3)

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

-- Wave 1
-- Boss Area
mobs[24].pos = { x = 63.648, y = 1.031, z = -76.541, rot = 180 } -- ( 024 ) Cirrate Christelle - Spawns 025-052
mobs[25].pos = { x = 29.358, y = 0.045, z = -24.815, rot = 45 } -- (025-G) Goblin Replica
mobs[26].pos = { x = 41.943, y = 0.814, z = -23.702, rot = 67 } -- (026-Y) Manifest Icon
mobs[27].pos = { x = 56.671, y = 0.562, z = -25.307, rot = 67 } -- (027-Q) Adamantking Effigy
mobs[28].pos = { x = 84.413, y = 0.024, z = -29.546, rot = 59 } -- (028-O) Serjeant Tombstone
mobs[29].pos = { x = 37.877, y = 0.000, z = -38.515, rot = 60 } -- ( 029 ) 029-Nightmare Manticore (×3)
mobs[30].pos = { x = 85.392, y = 0.709, z = -56.579, rot = 78 } -- ( 030 ) 030-Nightmare Hippogryph (×3)
mobs[31].pos = { x = 111.675, y = 0.053, z = -46.130, rot = 110 } -- ( 031 ) 031-Nightmare Sabotender (×3)
mobs[32].pos = { x = 106.273, y = 0.463, z = -35.941, rot = 100 } -- ( 032 ) 032-Nightmare Sheep (×3)
-- NMs
mobs[5].pos = { x = -308.519, y = 0.095, z = -148.257, rot = 29 } -- ( 005 ) Fairy Ring
mobs[10].pos = { x = -679.979, y = -8.000, z = 158.754, rot = 139 } -- ( 010 ) Flytrap NMs (Dragontrap ×3)
mobs[15].pos = { x = 769.009, y = -7.530, z = 379.675, rot = 54 } -- ( 015 ) Stcemqestcint - Inhibits Cirrate Christelle's 'Vampiric Lash' effect
mobs[20].pos = { x = 956.335, y = 0.475, z = -332.799, rot = 190 } -- ( 020 ) Nant'ina
-- Initial Statues
mobs[1].pos = { x = -227.075, y = 4.043, z = -136.874, rot = 198 } -- (001-Y) Manifest Icon
mobs[2].pos = { x = -231.037, y = 4.300, z = -156.459, rot = 181 } -- (002-Y) Manifest Icon
mobs[3].pos = { x = -248.461, y = 4.300, z = -155.360, rot = 241 } -- (003-Y) Manifest Icon
mobs[4].pos = { x = -238.301, y = 3.994, z = -135.911, rot = 188 } -- (004-Y) Manifest Icon
mobs[6].pos = { x = -541.404, y = -15.080, z = 355.848, rot = 249 } -- (006-G) Goblin Replica
mobs[7].pos = { x = -565.817, y = -16.120, z = 354.162, rot = 255 } -- (007-G) Goblin Replica
mobs[8].pos = { x = -550.128, y = -16.683, z = 323.770, rot = 130 } -- (008-G) Goblin Replica
mobs[9].pos = { x = -568.867, y = -16.445, z = 325.818, rot = 8 } -- (009-G) Goblin Replica
mobs[11].pos = { x = 800.240, y = -7.456, z = 254.332, rot = 105 } -- (011-O) Serjeant Tombstone
mobs[12].pos = { x = 796.763, y = -7.631, z = 268.595, rot = 64 } -- (012-O) Serjeant Tombstone
mobs[13].pos = { x = 792.154, y = -8.291, z = 321.301, rot = 52 } -- (013-O) Serjeant Tombstone
mobs[14].pos = { x = 805.659, y = -7.797, z = 340.507, rot = 80 } -- (014-O) Serjeant Tombstone
mobs[16].pos = { x = 648.224, y = -0.554, z = -166.534, rot = 176 } -- (016-Q) Adamantking Effigy
mobs[17].pos = { x = 627.996, y = -1.738, z = -163.301, rot = 225 } -- (017-Q) Adamantking Effigy
mobs[18].pos = { x = 702.606, y = -5.689, z = -180.082, rot = 98 } -- (018-Q) Adamantking Effigy
mobs[19].pos = { x = 718.906, y = -8.000, z = -178.972, rot = 123 } -- (019-Q) Adamantking Effigy
mobs[33].pos = { x = 15.751, y = -7.298, z = 79.127, rot = 65 } -- (033-Y) Manifest Icon
mobs[34].pos = { x = 2.127, y = -7.719, z = 70.444, rot = 65 } -- (034-Y) Manifest Icon
mobs[35].pos = { x = 15.570, y = -7.075, z = 68.542, rot = 64 } -- (035-Y) Manifest Icon
mobs[36].pos = { x = 29.655, y = -8.313, z = 67.841, rot = 61 } -- (036-Y) Manifest Icon
mobs[37].pos = { x = 16.975, y = -6.399, z = 53.539, rot = 60 } -- (037-Y) Manifest Icon
mobs[38].pos = { x = -6.098, y = -7.882, z = 76.867, rot = 120 } -- (038-G) Goblin Replica
mobs[39].pos = { x = -18.538, y = -7.656, z = 87.493, rot = 126 } -- (039-G) Goblin Replica
mobs[40].pos = { x = -4.878, y = -7.742, z = 87.812, rot = 127 } -- (040-G) Goblin Replica
mobs[41].pos = { x = 6.479, y = -7.928, z = 87.953, rot = 130 } -- (041-G) Goblin Replica
mobs[42].pos = { x = -4.693, y = -7.204, z = 102.477, rot = 124 } -- (042-G) Goblin Replica
mobs[43].pos = { x = 20.768, y = -7.224, z = 125.433, rot = 199 } -- (043-O) Serjeant Tombstone
mobs[44].pos = { x = 3.822, y = -7.841, z = 112.598, rot = 204 } -- (044-O) Serjeant Tombstone
mobs[45].pos = { x = 17.844, y = -8.016, z = 108.887, rot = 198 } -- (045-O) Serjeant Tombstone
mobs[46].pos = { x = 31.170, y = -7.792, z = 106.365, rot = 195 } -- (046-O) Serjeant Tombstone
mobs[47].pos = { x = 15.876, y = -7.875, z = 96.537, rot = 191 } -- (047-O) Serjeant Tombstone
mobs[48].pos = { x = 42.235, y = -7.096, z = 101.898, rot = 2 } -- (048-Q) Adamantking Effigy
mobs[49].pos = { x = 28.787, y = -7.788, z = 86.305, rot = 2 } -- (049-Q) Adamantking Effigy
mobs[50].pos = { x = 40.759, y = -7.855, z = 86.931, rot = 253 } -- (050-Q) Adamantking Effigy
mobs[51].pos = { x = 54.684, y = -7.896, z = 87.993, rot = 252 } -- (051-Q) Adamantking Effigy
mobs[52].pos = { x = 41.105, y = -7.913, z = 74.242, rot = 255 } -- (052-Q) Adamantking Effigy
-- Nightmare Mobs
mobs[21].pos = { x = -199.637, y = 0.752, z = 15.476, rot = 243 } -- ( 021 ) Recover subjobs
mobs[22].pos = { x = 497.477, y = -15.127, z = 237.200, rot = 77 } -- ( 022 ) Recover subjobs
mobs[23].pos = { x = 351.001, y = -2.324, z = -21.541, rot = 159 } -- ( 023 ) Recover subjobs
mobs[53].pos = { x = 270.350, y = -7.845, z = 88.144, rot = 11 } -- ( 053 ) Nightmare Sabotender (×3)
mobs[54].pos = { x = 269.572, y = -7.850, z = 110.006, rot = 212 } -- ( 054 ) Nightmare Sabotender (×3)
mobs[55].pos = { x = 232.008, y = -8.007, z = 114.407, rot = 116 } -- ( 055 ) Nightmare Sabotender (×3)
mobs[56].pos = { x = 227.459, y = -7.580, z = 81.794, rot = 109 } -- ( 056 ) Nightmare Sabotender (×3)
mobs[57].pos = { x = 203.136, y = -7.688, z = 103.600, rot = 130 } -- ( 057 ) Nightmare Sabotender (×3)
mobs[58].pos = { x = 204.115, y = -7.446, z = 133.583, rot = 112 } -- ( 058 ) Nightmare Sabotender (×3)
mobs[59].pos = { x = -201.351, y = -0.157, z = -72.847, rot = 191 } -- ( 059 ) Nightmare Hippogryph (×3)
mobs[60].pos = { x = -182.171, y = -2.491, z = -41.078, rot = 211 } -- ( 060 ) Nightmare Hippogryph (×3)
mobs[61].pos = { x = -207.936, y = -3.404, z = -18.120, rot = 169 } -- ( 061 ) Nightmare Hippogryph (×3)
mobs[62].pos = { x = -211.957, y = -0.079, z = -48.985, rot = 246 } -- ( 062 ) Nightmare Hippogryph (×3)
mobs[63].pos = { x = -242.782, y = -0.176, z = -39.340, rot = 131 } -- ( 063 ) Nightmare Hippogryph (×3)
mobs[64].pos = { x = -337.618, y = -7.120, z = 116.906, rot = 27 } -- ( 064 ) Nightmare Hippogryph (×3)
mobs[65].pos = { x = -368.481, y = -7.446, z = 104.491, rot = 3 } -- ( 065 ) Nightmare Hippogryph (×3)
mobs[66].pos = { x = -431.067, y = -7.755, z = 83.780, rot = 17 } -- ( 066 ) Nightmare Hippogryph (×3)
mobs[67].pos = { x = -439.514, y = -7.563, z = 147.256, rot = 66 } -- ( 067 ) Nightmare Hippogryph (×3)
mobs[68].pos = { x = -411.644, y = -7.61, z = 200.437, rot = 235 } -- ( 068 ) Nightmare Hippogryph (×3)
mobs[69].pos = { x = -363.394, y = -8.000, z = 199.008, rot = 245 } -- ( 069 ) Nightmare Hippogryph (×3)
mobs[70].pos = { x = -337.741, y = -9.782, z = 180.387, rot = 21 } -- ( 070 ) Nightmare Hippogryph (×3)
mobs[71].pos = { x = -323.574, y = -7.976, z = 155.486, rot = 27 } -- ( 071 ) Nightmare Hippogryph (×3)
mobs[72].pos = { x = -321.165, y = -7.748, z = 129.066, rot = 16 } -- ( 072 ) Nightmare Hippogryph (×3)
mobs[73].pos = { x = -307.629, y = -7.568, z = 161.307, rot = 21 } -- ( 073 ) Nightmare Hippogryph (×3)
mobs[74].pos = { x = -528.345, y = -9.070, z = 112.368, rot = 235 } -- ( 074 ) Nightmare Sabotender (×3)
mobs[75].pos = { x = -525.822, y = -7.596, z = 134.059, rot = 26 } -- ( 075 ) Nightmare Sabotender (×3)
mobs[76].pos = { x = -525.602, y = -8.154, z = 161.502, rot = 57 } -- ( 076 ) Nightmare Sabotender (×3)
mobs[77].pos = { x = -504.772, y = -8.829, z = 166.651, rot = 10 } -- ( 077 ) Nightmare Sabotender (×3)
mobs[78].pos = { x = -506.119, y = -7.978, z = 141.795, rot = 55 } -- ( 078 ) Nightmare Sabotender (×3)
mobs[79].pos = { x = -495.775, y = -7.227, z = 116.713, rot = 12 } -- ( 079 ) Nightmare Sabotender (×3)
mobs[80].pos = { x = -477.706, y = -7.630, z = 131.416, rot = 248 } -- ( 080 ) Nightmare Sabotender (×3)
mobs[81].pos = { x = -476.029, y = -8.003, z = 161.425, rot = 237 } -- ( 081 ) Nightmare Sabotender (×3)
mobs[82].pos = { x = -496.854, y = -7.158, z = 123.142, rot = 221 } -- ( 082 ) Nightmare Sabotender (×3)
mobs[83].pos = { x = -675.863, y = -8.309, z = 206.097, rot = 69 } -- ( 083 ) Nightmare Sabotender (×3)
mobs[84].pos = { x = -704.722, y = -7.277, z = 203.703, rot = 3 } -- ( 084 ) Nightmare Hippogryph (×3)
mobs[85].pos = { x = -722.532, y = -8.000, z = 238.819, rot = 49 } -- ( 085 ) Nightmare Hippogryph (×3)
mobs[86].pos = { x = -747.801, y = -4.455, z = 196.307, rot = 11 } -- ( 086 ) Nightmare Hippogryph (×3)
mobs[87].pos = { x = 448.005, y = -15.775, z = 233.921, rot = 42 } -- ( 087 ) Nightmare Sheep (×3)
mobs[88].pos = { x = 449.724, y = -16.110, z = 209.823, rot = 94 } -- ( 088 ) Nightmare Sheep (×3)
mobs[89].pos = { x = 471.173, y = -16.142, z = 218.323, rot = 235 } -- ( 089 ) Nightmare Sheep (×3)
mobs[90].pos = { x = 463.897, y = -15.196, z = 239.508, rot = 50 } -- ( 090 ) Nightmare Sheep (×3)
mobs[91].pos = { x = 486.988, y = -15.702, z = 251.184, rot = 49 } -- ( 091 ) Nightmare Sheep (×3)
mobs[92].pos = { x = 500.990, y = -16.375, z = 219.804, rot = 148 } -- ( 092 ) Nightmare Sheep (×3)
mobs[93].pos = { x = 440.603, y = -8.000, z = 80.841, rot = 179 } -- ( 093 ) Nightmare Sheep (×2)
mobs[94].pos = { x = 453.174, y = -7.956, z = 99.440, rot = 198 } -- ( 094 ) Nightmare Sheep (×2)
mobs[95].pos = { x = 430.282, y = -8.061, z = 106.429, rot = 154 } -- ( 095 ) Nightmare Sheep (×2)
mobs[96].pos = { x = 414.866, y = -7.318, z = 80.183, rot = 110 } -- ( 096 ) Nightmare Sheep (×2)
mobs[97].pos = { x = 407.319, y = -7.451, z = 58.923, rot = 138 } -- ( 097 ) Nightmare Sheep (×2)
mobs[98].pos = { x = 428.845, y = -2.609, z = 48.355, rot = 15 } -- ( 098 ) Nightmare Sheep (×2)
mobs[99].pos = { x = 419.554, y = -3.957, z = 32.476, rot = 89 } -- ( 099 ) Nightmare Sheep (×2)
mobs[100].pos = { x = 398.680, y = -7.547, z = 32.037, rot = 121 } -- ( 100 ) Nightmare Sheep (×2)
mobs[101].pos = { x = 398.680, y = -7.547, z = 32.037, rot = 121 } -- ( 101 ) Nightmare Sheep (×2)
mobs[102].pos = { x = 374.559, y = -7.349, z = 77.603, rot = 144 } -- ( 102 ) Nightmare Sheep (×2)
mobs[103].pos = { x = 354.904, y = -7.569, z = 69.202, rot = 122 } -- ( 103 ) Nightmare Sheep (×2)
mobs[104].pos = { x = 350.501, y = -7.809, z = 48.913, rot = 84 } -- ( 104 ) Nightmare Sheep (×2)
mobs[105].pos = { x = 350.501, y = -7.809, z = 48.913, rot = 84 } -- ( 105 ) Nightmare Sheep (×2)
mobs[106].pos = { x = 390.835, y = -1.071, z = 11.709, rot = 1 } -- ( 106 ) Nightmare Sheep (×2)
mobs[107].pos = { x = 713.279, y = -7.865, z = 198.806, rot = 145 } -- ( 107 ) Nightmare Sheep (×3)
mobs[108].pos = { x = 716.741, y = -6.853, z = 221.077, rot = 139 } -- ( 108 ) Nightmare Sheep (×3)
mobs[109].pos = { x = 693.905, y = -14.598, z = 247.086, rot = 69 } -- ( 109 ) Nightmare Sheep (×3)
mobs[110].pos = { x = 313.455, y = -0.126, z = 4.949, rot = 49 } -- ( 110 ) Nightmare Manticore (×3)
mobs[111].pos = { x = 281.517, y = 0.000, z = 3.977, rot = 135 } -- ( 111 ) Nightmare Manticore (×3)
mobs[112].pos = { x = 257.308, y = -1.385, z = -25.174, rot = 98 } -- ( 112 ) Nightmare Manticore (×3)
mobs[113].pos = { x = 266.672, y = -2.356, z = -59.410, rot = 147 } -- ( 113 ) Nightmare Manticore (×3)
mobs[114].pos = { x = 301.975, y = -0.297, z = -50.620, rot = 237 } -- ( 114 ) Nightmare Manticore (×3)
mobs[115].pos = { x = 335.514, y = -0.512, z = -34.323, rot = 247 } -- ( 115 ) Nightmare Manticore (×3)
mobs[116].pos = { x = 248.361, y = 4.000, z = -157.225, rot = 217 } -- ( 116 ) Nightmare Manticore (×3)
mobs[117].pos = { x = 277.378, y = 3.340, z = -147.096, rot = 245 } -- ( 117 ) Nightmare Manticore (×3)
mobs[118].pos = { x = 306.276, y = 4.000, z = -164.827, rot = 192 } -- ( 118 ) Nightmare Manticore (×3)
mobs[119].pos = { x = 331.719, y = 0.533, z = -125.410, rot = 202 } -- ( 119 ) Nightmare Manticore (×4)
mobs[120].pos = { x = 627.957, y = -0.003, z = -29.334, rot = 81 } -- ( 120 ) Nightmare Manticore (×3)
mobs[121].pos = { x = 650.911, y = -0.059, z = -31.493, rot = 84 } -- ( 121 ) Nightmare Manticore (×3)
mobs[122].pos = { x = 657.631, y = 0.766, z = -4.862, rot = 56 } -- ( 122 ) Nightmare Manticore (×3)
mobs[123].pos = { x = 632.846, y = -0.239, z = 3.933, rot = 41 } -- ( 123 ) Nightmare Manticore (×4)
mobs[124].pos = { x = 679.221, y = 0.227, z = -8.568, rot = 107 } -- ( 124 ) Nightmare Manticore (×4)
mobs[125].pos = { x = 921.803, y = 0.809, z = -223.797, rot = 141 } -- ( 125 ) Nightmare Manticore (×3)
mobs[126].pos = { x = 896.764, y = 0.749, z = -205.139, rot = 139 } -- ( 126 ) Nightmare Manticore (×3)
mobs[127].pos = { x = 892.210, y = 0.249, z = -244.012, rot = 91 } -- ( 127 ) Nightmare Manticore (×3)
mobs[128].pos = { x = 911.322, y = -0.561, z = -323.268, rot = 237 } -- ( 128 ) Nightmare Sabotender (×3)
mobs[129].pos = { x = 968.520, y = -0.415, z = -278.791, rot = 99 } -- ( 129 ) Nightmare Sabotender (×3)

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[6].eyes = xi.dynamis.eye.BLUE
mobs[7].eyes = xi.dynamis.eye.GREEN
mobs[16].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 24 }
mobs[24].timeExtension = 60
