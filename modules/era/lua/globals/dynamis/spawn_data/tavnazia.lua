-----------------------------------
-- Era Dynamis - Dynamis-Tavnazia spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/tav.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/tav.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_TAVNAZIA

local mobs = {}
for i = 1, 252 do
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

-- Nightmare
mobs[1].info = { mobType = 'Nightmare', name = 'Nightmare Bugard' } -- ( 001 ) Nightmare Bugard (15)
mobs[2].info = { mobType = 'NM', name = 'Nightmare Worm' } -- ( 002 ) Nightmare Worm
mobs[3].info = { mobType = 'NM', name = 'Nightmare Antlion' } -- ( 003 ) Nightmare Antlion (30)
mobs[4].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 004 ) Nightmare Hornet (×3)
mobs[114].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 004 ) Nightmare Hornet
mobs[115].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 004 ) Nightmare Hornet
mobs[5].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 005 ) Nightmare Hornet (×3)
mobs[116].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 005 ) Nightmare Hornet
mobs[117].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 005 ) Nightmare Hornet

-- Vanguard Eyes
mobs[6].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (006-H)
mobs[7].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (007-H)
mobs[8].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (008-H)
mobs[9].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', deathVar = 'eyeOneKilled', floor = 2 } -- (009-H)

-- Nightmare
mobs[10].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 010 ) Nightmare Hornet (×3)
mobs[118].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 010 ) Nightmare Hornet
mobs[119].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 010 ) Nightmare Hornet
mobs[11].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 011 ) Nightmare Hornet (×3)
mobs[120].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 011 ) Nightmare Hornet
mobs[121].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 011 ) Nightmare Hornet

-- Vanguard Eyes
mobs[12].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (012-H)
mobs[13].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (013-H)
mobs[14].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (014-H)
mobs[15].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', deathVar = 'eyeTwoKilled', floor = 2 } -- (015-H)

-- Nightmare
mobs[16].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 016 ) Nightmare Leech (×2)
mobs[122].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 016 ) Nightmare Leech

mobs[17].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 017 ) Nightmare Leech (×2)
mobs[123].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 017 ) Nightmare Leech

mobs[18].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 018 ) Nightmare Leech (×3)
mobs[124].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 018 ) Nightmare Leech
mobs[125].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 018 ) Nightmare Leech

mobs[19].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 019 ) Nightmare Leech (×3)
mobs[126].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 019 ) Nightmare Leech
mobs[127].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 019 ) Nightmare Leech

mobs[20].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 020 ) Nightmare Leech (×2)
mobs[128].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 020 ) Nightmare Leech

mobs[21].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 021 ) Nightmare Leech (×2)
mobs[129].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 021 ) Nightmare Leech

mobs[22].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 022 ) Nightmare Leech (×3)
mobs[130].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 022 ) Nightmare Leech
mobs[131].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 022 ) Nightmare Leech

mobs[23].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 023 ) Nightmare Leech (×3)
mobs[132].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 023 ) Nightmare Leech
mobs[133].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 023 ) Nightmare Leech

mobs[24].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 024 ) Nightmare Makara (×2)
mobs[134].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 024 ) Nightmare Makara

mobs[25].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 025 ) Nightmare Makara (×2)
mobs[135].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 025 ) Nightmare Makara

mobs[26].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 026 ) Nightmare Makara (×3)
mobs[136].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 026 ) Nightmare Makara
mobs[137].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 026 ) Nightmare Makara

mobs[27].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 027 ) Nightmare Makara (×3)
mobs[138].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 027 ) Nightmare Makara
mobs[139].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 027 ) Nightmare Makara

mobs[28].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 028 ) Nightmare Makara (×2)
mobs[140].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 028 ) Nightmare Makara

mobs[29].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 029 ) Nightmare Makara (×2)
mobs[141].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 029 ) Nightmare Makara

mobs[30].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 030 ) Nightmare Makara (×3)
mobs[142].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 030 ) Nightmare Makara
mobs[143].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 030 ) Nightmare Makara

mobs[31].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 031 ) Nightmare Makara (×3)
mobs[144].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 031 ) Nightmare Makara
mobs[145].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 031 ) Nightmare Makara

mobs[32].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 032 ) Nightmare Hornet (×3)
mobs[146].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 032 ) Nightmare Hornet
mobs[147].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 032 ) Nightmare Hornet

mobs[33].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 033 ) Nightmare Hornet (×3)
mobs[148].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 033 ) Nightmare Hornet
mobs[149].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 033 ) Nightmare Hornet

-- Vanguard Eyes
mobs[34].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (034-H)
mobs[35].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (035-H)
mobs[36].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (036-H)
mobs[37].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (037-H)

-- Nightmare
mobs[38].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 038 ) Nightmare Hornet (×3)
mobs[150].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 038 ) Nightmare Hornet
mobs[151].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 038 ) Nightmare Hornet
mobs[39].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 039 ) Nightmare Hornet (×3)
mobs[152].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 039 ) Nightmare Hornet
mobs[153].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 039 ) Nightmare Hornet

-- Vanguard Eyes
mobs[40].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (040-H)
mobs[41].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (041-H)
mobs[42].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (042-H)
mobs[43].info = { mobType = 'Statue', name = 'Vanguard Eye', family = 'Hydra', floor = 2 } -- (043-H)

-- Nightmare
mobs[44].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 044 ) Nightmare Leech (×2)
mobs[154].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 044 ) Nightmare Leech
mobs[45].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 045 ) Nightmare Leech (×2)
mobs[155].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 045 ) Nightmare Leech
mobs[46].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 046 ) Nightmare Leech (×3)
mobs[156].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 046 ) Nightmare Leech
mobs[157].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 046 ) Nightmare Leech
mobs[47].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 047 ) Nightmare Leech (×3)
mobs[158].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 047 ) Nightmare Leech
mobs[159].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 047 ) Nightmare Leech
mobs[48].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 048 ) Nightmare Leech (×2)
mobs[160].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 048 ) Nightmare Leech
mobs[49].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 049 ) Nightmare Leech (×2)
mobs[161].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 049 ) Nightmare Leech
mobs[50].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 050 ) Nightmare Leech (×3)
mobs[162].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 050 ) Nightmare Leech
mobs[163].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 050 ) Nightmare Leech
mobs[51].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 051 ) Nightmare Leech (×3)
mobs[164].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 051 ) Nightmare Leech
mobs[165].info = { mobType = 'Nightmare', name = 'Nightmare Leech' } -- ( 051 ) Nightmare Leech
mobs[52].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 052 ) Nightmare Makara (×2)
mobs[166].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 052 ) Nightmare Makara
mobs[53].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 053 ) Nightmare Makara (×2)
mobs[167].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 053 ) Nightmare Makara

mobs[54].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 054 ) Nightmare Makara (×3)
mobs[168].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 054 ) Nightmare Makara
mobs[169].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 054 ) Nightmare Makara

mobs[55].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 055 ) Nightmare Makara (×3)
mobs[170].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 055 ) Nightmare Makara
mobs[171].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 055 ) Nightmare Makara

mobs[56].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 056 ) Nightmare Makara (×2)
mobs[172].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 056 ) Nightmare Makara

mobs[57].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 057 ) Nightmare Makara (×2)
mobs[173].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 057 ) Nightmare Makara

mobs[58].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 058 ) Nightmare Makara (×3)
mobs[174].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 058 ) Nightmare Makara
mobs[175].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 058 ) Nightmare Makara

mobs[59].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 059 ) Nightmare Makara (×3)
mobs[176].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 059 ) Nightmare Makara
mobs[177].info = { mobType = 'Nightmare', name = 'Nightmare Makara' } -- ( 059 ) Nightmare Makara

mobs[60].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 060 ) Nightmare Hornet (×3)
mobs[178].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 060 ) Nightmare Hornet
mobs[179].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 060 ) Nightmare Hornet

mobs[61].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 061 ) Nightmare Hornet (×3)
mobs[180].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 061 ) Nightmare Hornet
mobs[181].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 061 ) Nightmare Hornet

-- Vanguard Eyes
mobs[62].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (062-D)
mobs[63].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (063-D)
mobs[64].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (064-D)
mobs[65].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (065-D)
mobs[66].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (066-D)
mobs[67].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = 'eyeThreeKilled', floor = 3 } -- (067-D)

-- Nightmare
mobs[68].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 068 ) Nightmare Hornet (×3)
mobs[182].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 068 ) Nightmare Hornet
mobs[183].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 068 ) Nightmare Hornet
mobs[69].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 069 ) Nightmare Hornet (×3)
mobs[184].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 069 ) Nightmare Hornet
mobs[185].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 069 ) Nightmare Hornet

mobs[70].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (070-D)
mobs[71].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (071-D)
mobs[72].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (072-D)
mobs[73].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (073-D)
mobs[74].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (074-D)
mobs[75].info = { mobType = 'Statue', name = 'Vanguard Eye', deathVar = 'eyeFourKilled', floor = 3 } -- (075-D)

-- Nightmare
mobs[76].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 076 ) Nightmare Cluster (×3)
mobs[186].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 076 ) Nightmare Cluster
mobs[187].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 076 ) Nightmare Cluster

mobs[77].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 077 ) Nightmare Cluster (×3)
mobs[188].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 077 ) Nightmare Cluster
mobs[189].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 077 ) Nightmare Cluster

mobs[78].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 078 ) Nightmare Cluster (×3)
mobs[190].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 078 ) Nightmare Cluster
mobs[191].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 078 ) Nightmare Cluster

mobs[79].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 079 ) Nightmare Cluster (×3)
mobs[192].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 079 ) Nightmare Cluster
mobs[193].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 079 ) Nightmare Cluster

mobs[80].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 080 ) Nightmare Cluster (×3)
mobs[194].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 080 ) Nightmare Cluster
mobs[195].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 080 ) Nightmare Cluster

mobs[81].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 081 ) Nightmare Cluster (×3)
mobs[196].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 081 ) Nightmare Cluster
mobs[197].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 081 ) Nightmare Cluster

mobs[82].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 082 ) Nightmare Cluster (×3)
mobs[198].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 082 ) Nightmare Cluster
mobs[199].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 082 ) Nightmare Cluster

mobs[83].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 083 ) Nightmare Hornet (×3)
mobs[200].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 083 ) Nightmare Hornet
mobs[201].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 083 ) Nightmare Hornet
mobs[84].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 084 ) Nightmare Hornet (×3)
mobs[202].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 084 ) Nightmare Hornet
mobs[203].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 084 ) Nightmare Hornet

mobs[85].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (085-D)
mobs[86].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (086-D)
mobs[87].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (087-D)
mobs[88].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (088-D)
mobs[89].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (089-D)
mobs[90].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (090-D)

-- Nightmare
mobs[91].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 091 ) Nightmare Hornet (×3)
mobs[204].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 091 ) Nightmare Hornet
mobs[205].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 091 ) Nightmare Hornet
mobs[92].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 092 ) Nightmare Hornet (×3)
mobs[206].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 092 ) Nightmare Hornet
mobs[207].info = { mobType = 'Nightmare', name = 'Nightmare Hornet' } -- ( 092 ) Nightmare Hornet

mobs[93].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (093-D)
mobs[94].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (094-D)
mobs[95].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (095-D)
mobs[96].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (096-D)
mobs[97].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (097-D)
mobs[98].info = { mobType = 'Statue', name = 'Vanguard Eye', floor = 3 } -- (098-D)

-- Nightmare
mobs[99].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 099 ) Nightmare Cluster (×3)
mobs[208].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 099 ) Nightmare Cluster
mobs[209].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 099 ) Nightmare Cluster
mobs[100].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 100 ) Nightmare Cluster (×3)
mobs[210].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 100 ) Nightmare Cluster
mobs[211].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 100 ) Nightmare Cluster
mobs[101].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 101 ) Nightmare Cluster (×3)
mobs[212].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 101 ) Nightmare Cluster
mobs[213].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 101 ) Nightmare Cluster
mobs[102].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 102 ) Nightmare Cluster (×3)
mobs[214].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 102 ) Nightmare Cluster
mobs[215].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 102 ) Nightmare Cluster
mobs[103].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 103 ) Nightmare Cluster (×3)
mobs[216].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 103 ) Nightmare Cluster
mobs[217].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 103 ) Nightmare Cluster
mobs[104].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 104 ) Nightmare Cluster (×3)
mobs[218].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 104 ) Nightmare Cluster
mobs[219].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 104 ) Nightmare Cluster
mobs[105].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 105 ) Nightmare Cluster (×3)
mobs[220].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 105 ) Nightmare Cluster
mobs[221].info = { mobType = 'Nightmare', name = 'Nightmare Cluster' } -- ( 105 ) Nightmare Cluster

-- NMs
mobs[106].info = { mobType = 'NM', name = 'Umbral Diabolos' } -- ( 106 ) Umbral Diabolos
mobs[107].info = { mobType = 'NM', name = 'Umbral Diabolos' } -- ( 107 ) Umbral Diabolos
mobs[108].info = { mobType = 'NM', name = 'Umbral Diabolos' } -- ( 108 ) Umbral Diabolos
mobs[109].info = { mobType = 'NM', name = 'Umbral Diabolos' } -- ( 109 ) Umbral Diabolos
mobs[110].info = { mobType = 'NM', name = 'Diabolos Club' } -- ( 110 ) Diabolos Club
mobs[111].info = { mobType = 'NM', name = 'Diabolos Heart' } -- ( 111 ) Diabolos Heart
mobs[112].info = { mobType = 'NM', name = 'Diabolos Spade' } -- ( 112 ) Diabolos Spade
mobs[113].info = { mobType = 'NM', name = 'Diabolos Diamond' } -- ( 113 ) Diabolos Diamond
mobs[252].info = { mobType = 'NM', name = 'Diabolos Shard' } -- ( 110 ) Diabolos Club

-- Nightmare Taurus
mobs[222].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (062-D)
mobs[223].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (063-D)
mobs[224].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (064-D)
mobs[225].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (065-D)
mobs[226].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (066-D)
mobs[227].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (067-D)
mobs[228].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (072-D)
mobs[229].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (072-D)
mobs[230].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (072-D)
mobs[231].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (074-D)
mobs[232].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (074-D)
mobs[233].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (074-D)
mobs[234].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (085-D)
mobs[235].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (085-D)
mobs[236].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (086-D)
mobs[237].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (086-D)
mobs[238].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (087-D)
mobs[239].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (087-D)
mobs[240].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (088-D)
mobs[241].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (088-D)
mobs[242].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (089-D)
mobs[243].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (089-D)
mobs[244].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (090-D)
mobs[245].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (090-D)
mobs[246].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (093-D)
mobs[247].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (093-D)
mobs[248].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (093-D)
mobs[249].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (096-D)
mobs[250].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (097-D)
mobs[251].info = { mobType = 'Nightmare', name = 'Nightmare Taurus' } -- From Eye - (098-D)

----------------------------------------------------------------------------------------------------
--                                    Setup of Wave Spawning                                      --
----------------------------------------------------------------------------------------------------

---------------------------------------------
--           Wave Defeat Reqs.          --
--------------------------------------------

mobs.waveDefeatRequirements =
{
    {}, -- Do not touch this is wave 1
    { 'qmOne' }, -- Spawns First Floor Bees
    { 'qmTwo' }, -- Spawns Second Floor Bees
}

------------------------------------------
--            Wave Spawning             --
-- Note: Wave 1 spawns at start.        --
------------------------------------------

mobs[1].wave =
{
    1,  -- ( 001 )-Nightmare Bugard(15)
    4,  -- ( 004 )-Nightmare Hornet (×3)
    5,  -- ( 005 )-Nightmare Hornet (×3)
    6,  -- (006-H) Vanguard Eye
    7,  -- (007-H) Vanguard Eye
    8,  -- (008-H) Vanguard Eye
    9,  -- (009-H) Vanguard Eye
    10, -- ( 010 )-Nightmare Hornet (×3)
    11, -- ( 011 )-Nightmare Hornet (×3)
    12, -- (012-H) Vanguard Eye
    13, -- (013-H) Vanguard Eye
    14, -- (014-H) Vanguard Eye
    15, -- (015-H) Vanguard Eye
    16, -- ( 016 )-Nightmare Leech (×2)
    17, -- ( 017 )-Nightmare Leech (×2)
    18, -- ( 018 )-Nightmare Leech (×3)
    19, -- ( 019 )-Nightmare Leech (×3)
    20, -- ( 020 )-Nightmare Leech (×2)
    21, -- ( 021 )-Nightmare Leech (×2)
    22, -- ( 022 )-Nightmare Leech (×3)
    23, -- ( 023 )-Nightmare Leech (×3)
    24, -- ( 024 )-Nightmare Makara (×2)
    25, -- ( 025 )-Nightmare Makara (×2)
    26, -- ( 026 )-Nightmare Makara (×3)
    27, -- ( 027 )-Nightmare Makara (×3)
    28, -- ( 028 )-Nightmare Makara (×2)
    29, -- ( 029 )-Nightmare Makara (×2)
    30, -- ( 030 )-Nightmare Makara (×3)
    31, -- ( 031 )-Nightmare Makara (×3)
    60, -- ( 060 )-Nightmare Hornet (×3)
    61, -- ( 061 )-Nightmare Hornet (×3)
    62, -- ( 062-D ) Vanguard Eye
    63, -- ( 063-D ) Vanguard Eye
    64, -- ( 064-D ) Vanguard Eye
    65, -- ( 065-D ) Vanguard Eye
    66, -- ( 066-D ) Vanguard Eye
    67, -- ( 067-D ) Vanguard Eye
    68, -- ( 068 )-Nightmare Hornet (×3)
    69, -- ( 069 )-Nightmare Hornet (×3)
    70, -- ( 070-D ) Vanguard Eye
    71, -- ( 071-D ) Vanguard Eye
    72, -- ( 072-D ) Vanguard Eye
    73, -- ( 073-D ) Vanguard Eye
    74, -- ( 074-D ) Vanguard Eye
    75, -- ( 075-D ) Vanguard Eye
    76, -- ( 076 )-Nightmare Cluster (×3)
    77, -- ( 077 )-Nightmare Cluster (×3)
    78, -- ( 078 )-Nightmare Cluster (×3)
    79, -- ( 079 )-Nightmare Cluster (×3)
    80, -- ( 080 )-Nightmare Cluster (×3)
    81, -- ( 081 )-Nightmare Cluster (×3)
    82, -- ( 082 )-Nightmare Cluster (×3)
    106, -- ( 106 )-Umbral Diabolos
    107, -- ( 107 )-Umbral Diabolos
    108, -- ( 108 )-Umbral Diabolos
    109, -- ( 109 )-Umbral Diabolos
}

mobs[2].wave =
{
    32, -- ( 032 )-Nightmare Hornet (×3)
    33, -- ( 033 )-Nightmare Hornet (×3)
    34, -- ( 034-H )-Vanguard Eye
    35, -- ( 035-H )-Vanguard Eye
    36, -- ( 036-H )-Vanguard Eye
    37, -- ( 037-H )-Vanguard Eye
    38, -- ( 038 )-Nightmare Hornet (×3)
    39, -- ( 039 )-Nightmare Hornet (×3)
    40, -- ( 040-H )-Vanguard Eye
    41, -- ( 041-H )-Vanguard Eye
    42, -- ( 042-H )-Vanguard Eye
    43, -- ( 043-H )-Vanguard Eye
    44, -- ( 044 )-Nightmare Leech (×2)
    45, -- ( 045 )-Nightmare Leech (×2)
    46, -- ( 046 )-Nightmare Leech (×3)
    47, -- ( 047 )-Nightmare Leech (×3)
    48, -- ( 048 )-Nightmare Leech (×2)
    49, -- ( 049 )-Nightmare Leech (×2)
    50, -- ( 050 )-Nightmare Leech (×3)
    51, -- ( 051 )-Nightmare Leech (×3)
    52, -- ( 052 )-Nightmare Makara (×2)
    53, -- ( 053 )-Nightmare Makara (×2)
    54, -- ( 054 )-Nightmare Makara (×3)
    55, -- ( 055 )-Nightmare Makara (×3)
    56, -- ( 056 )-Nightmare Makara (×2)
    57, -- ( 057 )-Nightmare Makara (×2)
    58, -- ( 058 )-Nightmare Makara (×3)
    59, -- ( 059 )-Nightmare Makara (×3)
}

mobs[3].wave =
{
    83,  -- ( 083 )-Nightmare Hornet (×3)
    84,  -- ( 084 )-Nightmare Hornet (×3)
    85,  -- ( 085-D ) Vanguard Eye
    86,  -- ( 086-D ) Vanguard Eye
    87,  -- ( 087-D ) Vanguard Eye
    88,  -- ( 088-D ) Vanguard Eye
    89,  -- ( 089-D ) Vanguard Eye
    90,  -- ( 090-D ) Vanguard Eye
    91,  -- ( 091 )-Nightmare Hornet (×3)
    92,  -- ( 092 )-Nightmare Hornet (×3)
    93,  -- ( 093-D ) Vanguard Eye
    94,  -- ( 094-D ) Vanguard Eye
    95,  -- ( 095-D ) Vanguard Eye
    96,  -- ( 096-D ) Vanguard Eye
    97,  -- ( 097-D ) Vanguard Eye
    98,  -- ( 098-D ) Vanguard Eye
    99,  -- ( 099 )-Nightmare Cluster (×3)
    100, -- ( 100 )-Nightmare Cluster (×3)
    101, -- ( 101 )-Nightmare Cluster (×3)
    102, -- ( 102 )-Nightmare Cluster (×3)
    103, -- ( 103 )-Nightmare Cluster (×3)
    104, -- ( 104 )-Nightmare Cluster (×3)
    105, -- ( 105 )-Nightmare Cluster (×3)
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

mobs[6].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.RNG] = 1 } -- 1 WAR  1 RDM  1 RNG
mobs[7].mobchildren = { [xi.job.DRK] = 1, [xi.job.BST] = 1, [xi.job.SMN] = 1 } -- 1 DRK  1 BST  1 SMN
mobs[8].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.THF] = 1, [xi.job.PLD] = 1, [xi.job.DRG] = 1 } -- 1 WHM  1 BLM  1 THF  1 PLD  1 DRG
mobs[9].mobchildren = { [xi.job.MNK] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 1, [xi.job.NIN] = 1 } -- 1 MNK  1 BRD  1 SAM  1 NIN
mobs[12].mobchildren = { [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 WHM  1 BLM  1 RDM
mobs[13].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 MNK  1 THF  1 SAM
mobs[14].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1, [xi.job.NIN] = 1 } -- 1 PLD  1 DRK  1 BRD  1 RNG  1 NIN
mobs[15].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 BST  1 DRG  1 SMN
mobs[34].mobchildren = { [xi.job.MNK] = 1, [xi.job.PLD] = 1, [xi.job.RNG] = 1, [xi.job.SMN] = 1 } -- 1 MNK  1 PLD  1 RNG  1 SMN
mobs[35].mobchildren = { [xi.job.BLM] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 DRK  1 NIN
mobs[36].mobchildren = { [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 BST  1 BRD  1 SAM  1 DRG
mobs[37].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.RDM] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 WHM  1 RDM  1 THF
mobs[40].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.BRD] = 1, [xi.job.NIN] = 1 } -- 1 MNK  1 WHM  1 BRD  1 NIN
mobs[41].mobchildren = { [xi.job.WAR] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 PLD  1 DRK  1 SAM
mobs[42].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.BST] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 THF  1 BST  1 DRG
mobs[43].mobchildren = { [xi.job.BLM] = 1, [xi.job.RNG] = 1, [xi.job.SMN] = 1 } -- 1 BLM  1 RNG  1 SMN
mobs[62].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[63].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 1 } -- 1 RNG  1 SAM
mobs[64].mobchildren = { [xi.job.BLM] = 1, [xi.job.BST] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 BST  1 NIN
mobs[65].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.SMN] = 1 } -- 1 PLD  1 DRK  1 SMN
mobs[66].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 BRD  1 DRG
mobs[67].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1 } -- 1 MNK  1 WHM
mobs[70].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 BLM  1 PLD  1 BRD  1 SMN
mobs[71].mobchildren = { [xi.job.WAR] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 WAR  1 NIN  1 DRG
mobs[73].mobchildren = { [xi.job.WHM] = 1, [xi.job.THF] = 1, [xi.job.BST] = 1, [xi.job.SAM] = 1 } -- 1 WHM  1 THF  1 BST  1 SAM
mobs[74].mobchildren = { [xi.job.MNK] = 1 } -- 1 MNK
mobs[75].mobchildren = { [xi.job.RDM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1 } -- 1 RDM  1 DRK  1 RNG
mobs[85].mobchildren = { [xi.job.WAR] = 1, [xi.job.THF] = 1 } -- 1 WAR  1 THF
mobs[86].mobchildren = { [xi.job.RNG] = 1, [xi.job.SAM] = 1 } -- 1 RNG  1 SAM
mobs[87].mobchildren = { [xi.job.BLM] = 1, [xi.job.BST] = 1, [xi.job.NIN] = 1 } -- 1 BLM  1 BST  1 NIN
mobs[88].mobchildren = { [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.SMN] = 1 } -- 1 PLD  1 DRK  1 SMN
mobs[89].mobchildren = { [xi.job.RDM] = 1, [xi.job.BRD] = 1, [xi.job.DRG] = 1 } -- 1 RDM  1 BRD  1 DRG
mobs[90].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1 } -- 1 MNK  1 WHM
mobs[94].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 WAR  1 WHM  1 BRD  1 RNG
mobs[95].mobchildren = { [xi.job.BST] = 1, [xi.job.DRG] = 1, [xi.job.SMN] = 1 } -- 1 BST  1 DRG  1 SMN
mobs[96].mobchildren = { [xi.job.THF] = 1, [xi.job.SAM] = 1 } -- 1 THF  1 SAM
mobs[97].mobchildren = { [xi.job.MNK] = 1, [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.NIN] = 1 } -- 1 MNK  1 RDM  1 PLD  1 DRK  1 NIN
mobs[98].mobchildren = { [xi.job.BLM] = 1 } -- 1 BLM

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

mobs[4].nmchildren = { true, 114, 115 }
mobs[5].nmchildren = { true, 116, 117 }
mobs[10].nmchildren = { true, 118, 119 }
mobs[11].nmchildren = { true, 120, 121 }
mobs[16].nmchildren = { true, 122 }
mobs[17].nmchildren = { true, 123 }
mobs[18].nmchildren = { true, 124, 125 }
mobs[19].nmchildren = { true, 126, 127 }
mobs[20].nmchildren = { true, 128 }
mobs[21].nmchildren = { true, 129 }
mobs[22].nmchildren = { true, 130, 131 }
mobs[23].nmchildren = { true, 132, 133 }
mobs[24].nmchildren = { true, 134 }
mobs[25].nmchildren = { true, 135 }
mobs[26].nmchildren = { true, 136, 137 }
mobs[27].nmchildren = { true, 138, 139 }
mobs[28].nmchildren = { true, 140 }
mobs[29].nmchildren = { true, 141 }
mobs[30].nmchildren = { true, 142, 143 }
mobs[31].nmchildren = { true, 144, 145 }
mobs[32].nmchildren = { true, 146, 147 }
mobs[33].nmchildren = { true, 148, 149 }
mobs[38].nmchildren = { true, 150, 151 }
mobs[39].nmchildren = { true, 152, 153 }
mobs[44].nmchildren = { true, 154 }
mobs[45].nmchildren = { true, 155 }
mobs[46].nmchildren = { true, 156, 157 }
mobs[47].nmchildren = { true, 158, 159 }
mobs[48].nmchildren = { true, 160 }
mobs[49].nmchildren = { true, 161 }
mobs[50].nmchildren = { true, 162, 163 }
mobs[51].nmchildren = { true, 164, 165 }
mobs[52].nmchildren = { true, 166 }
mobs[53].nmchildren = { true, 167 }
mobs[54].nmchildren = { true, 168, 169 }
mobs[55].nmchildren = { true, 170, 171 }
mobs[56].nmchildren = { true, 172 }
mobs[57].nmchildren = { true, 173 }
mobs[58].nmchildren = { true, 174, 175 }
mobs[59].nmchildren = { true, 176, 177 }
mobs[60].nmchildren = { true, 178, 179 }
mobs[61].nmchildren = { true, 180, 181 }
mobs[62].nmchildren = { true, 222 }
mobs[63].nmchildren = { true, 223 }
mobs[64].nmchildren = { true, 224 }
mobs[65].nmchildren = { true, 225 }
mobs[66].nmchildren = { true, 226 }
mobs[67].nmchildren = { true, 227 }
mobs[68].nmchildren = { true, 182, 183 }
mobs[69].nmchildren = { true, 184, 185 }
mobs[72].nmchildren = { true, 228, 229, 230 }
mobs[74].nmchildren = { true, 231, 232, 233 }
mobs[76].nmchildren = { true, 186, 187 }
mobs[77].nmchildren = { true, 188, 189 }
mobs[78].nmchildren = { true, 190, 191 }
mobs[79].nmchildren = { true, 192, 193 }
mobs[80].nmchildren = { true, 194, 195 }
mobs[81].nmchildren = { true, 196, 197 }
mobs[82].nmchildren = { true, 198, 199 }
mobs[83].nmchildren = { true, 200, 201 }
mobs[84].nmchildren = { true, 202, 203 }
mobs[85].nmchildren = { true, 234, 235 }
mobs[86].nmchildren = { true, 236, 237 }
mobs[87].nmchildren = { true, 238, 239 }
mobs[88].nmchildren = { true, 240, 241 }
mobs[89].nmchildren = { true, 242, 243 }
mobs[90].nmchildren = { true, 244, 245 }
mobs[91].nmchildren = { true, 204, 205 }
mobs[92].nmchildren = { true, 206, 207 }
mobs[93].nmchildren = { true, 246, 247, 248 }
mobs[96].nmchildren = { true, 249 }
mobs[97].nmchildren = { true, 250 }
mobs[98].nmchildren = { true, 251 }
mobs[99].nmchildren = { true, 208, 209 }
mobs[100].nmchildren = { true, 210, 211 }
mobs[101].nmchildren = { true, 212, 213 }
mobs[102].nmchildren = { true, 214, 215 }
mobs[103].nmchildren = { true, 216, 217 }
mobs[104].nmchildren = { true, 218, 219 }
mobs[105].nmchildren = { true, 220, 221 }

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

mobs[1].pos = { x = 27.963, y = -11.975, z = 41.412, rot = 62 } -- ( 001 )-Nightmare Bugard(15)
mobs[2].pos = { x = -0.492, y = -22.75, z = -26.778, rot = 193 } -- ( 002 )-Nightmare Worm
mobs[3].pos = { x = -0.945, y = -36.71, z = 25.281, rot = 122 } -- ( 003 )-Nightmare Antlion(30)
mobs[4].pos = { x = -26.358, y = -21.97, z = 26.411, rot = 161 } -- ( 004 )-Nightmare Hornet (×3)
mobs[5].pos = { x = -48.085, y = -22.051, z = 43.469, rot = 128 } -- ( 005 )-Nightmare Hornet (×3)
mobs[6].pos = { x = -79.351, y = -22.007, z = 51.741, rot = 57 } -- (006-H)
mobs[7].pos = { x = -93.81, y = -27, z = 48.07, rot = 127 } -- (007-H)
mobs[8].pos = { x = -112.802, y = -27, z = 41.735, rot = 255 } -- (008-H)
mobs[9].pos = { x = -98.08, y = -27.02, z = 7.02, rot = 190 } -- (009-H)
mobs[10].pos = { x = -27.114, y = -22.075, z = -26.941, rot = 225 } -- ( 010 )-Nightmare Hornet (×3)
mobs[11].pos = { x = -44.921, y = -22.026, z = -43.388, rot = 127 } -- ( 011 )-Nightmare Hornet (×3)
mobs[12].pos = { x = -79.26, y = -21.79, z = -53.194, rot = 201 } -- (012-H)
mobs[13].pos = { x = -94.169, y = -27, z = -52.06, rot = 129 } -- (013-H)
mobs[14].pos = { x = -112.867, y = -27, z = -42.33, rot = 253 } -- (014-H)
mobs[15].pos = { x = -98.25, y = -27.02, z = -6.92, rot = 63 } -- (015-H)
mobs[16].pos = { x = -75.824, y = -20, z = 65.71, rot = 13 } -- ( 016 )-Nightmare Leech (×2)
mobs[17].pos = { x = -88.107, y = -19.82, z = 64.57, rot = 63 } -- ( 017 )-Nightmare Leech (×2)
mobs[18].pos = { x = -88.119, y = -14.54, z = 47.74, rot = 0 } -- ( 018 )-Nightmare Leech (×3)
mobs[19].pos = { x = -86.376, y = -13.76, z = 36.24, rot = 0 } -- ( 019 )-Nightmare Leech (×3)
mobs[20].pos = { x = -74, y = -11.14, z = 16.16, rot = 193 } -- ( 020 )-Nightmare Leech (×2)
mobs[21].pos = { x = -74.09, y = -11.09, z = 7.78, rot = 125 } -- ( 021 )-Nightmare Leech (×2)
mobs[22].pos = { x = -87.31, y = -12.64, z = 8.62, rot = 4 } -- ( 022 )-Nightmare Leech (×3)
mobs[23].pos = { x = -89.58, y = -12.71, z = 6.76, rot = 12 } -- ( 023 )-Nightmare Leech (×3)
mobs[24].pos = { x = -88.66, y = -20.06, z = -70.82, rot = 122 } -- ( 024 )-Nightmare Makara (×2)
mobs[25].pos = { x = -89.36, y = -20.12, z = -69.05, rot = 209 } -- ( 025 )-Nightmare Makara (×2)
mobs[26].pos = { x = -87.69, y = -14.42, z = -47.04, rot = 0 } -- ( 026 )-Nightmare Makara (×3)
mobs[27].pos = { x = -84.038, y = -12.9, z = -34.33, rot = 0 } -- ( 027 )-Nightmare Makara (×3)
mobs[28].pos = { x = -73.84, y = -10.86, z = -22.94, rot = 30 } -- ( 028 )-Nightmare Makara (×2)
mobs[29].pos = { x = -74.12, y = -11.12, z = -9.12, rot = 119 } -- ( 029 )-Nightmare Makara (×2)
mobs[30].pos = { x = -87.10, y = -12.55, z = -8.09, rot = 112 } -- ( 030 )-Nightmare Makara (×3)
mobs[31].pos = { x = -90.97, y = -13.04, z = -7.25, rot = 30 } -- ( 031 )-Nightmare Makara (×3)
mobs[32].pos = { x = -26.358, y = -21.97, z = 26.411, rot = 161 } -- ( 032 )-Nightmare Hornet (×3)
mobs[33].pos = { x = -48.085, y = -22.051, z = 43.469, rot = 128 } -- ( 033 )-Nightmare Hornet (×3)
mobs[34].pos = { x = -79.351, y = -22.007, z = 51.741, rot = 57 } -- (034-H)
mobs[35].pos = { x = -93.81, y = -27, z = 48.07, rot = 127 } -- (035-H)
mobs[36].pos = { x = -112.802, y = -27, z = 41.735, rot = 255 } -- (036-H)
mobs[37].pos = { x = -98.08, y = -27.02, z = 7.02, rot = 190 } --(037-H)
mobs[38].pos = { x = -27.114, y = -22.075, z = -26.941, rot = 225 } -- ( 038 )-Nightmare Hornet (×3)
mobs[39].pos = { x = -44.921, y = -22.026, z = -43.388, rot = 127 } -- ( 039 )-Nightmare Hornet (×3)
mobs[40].pos = { x = -79.26, y = -21.79, z = -53.194, rot = 201 } -- (040-H)
mobs[41].pos = { x = -94.169, y = -27, z = -52.06, rot = 129 } -- (041-H)
mobs[42].pos = { x = -112.867, y = -27, z = -42.33, rot = 253 } -- (042-H)
mobs[43].pos = { x = -98.25, y = -27.02, z = -6.92, rot = 63 } -- (043-H)
mobs[44].pos = { x = -75.824, y = -20, z = 65.71, rot = 13 } -- ( 044 )-Nightmare Leech (×2) (extra source values dropped: 0)
mobs[45].pos = { x = -88.107, y = -19.82, z = 64.57, rot = 63 } -- ( 045 )-Nightmare Leech (×2) (extra source values dropped: 0)
mobs[46].pos = { x = -88.119, y = -14.54, z = 47.74, rot = 0 } -- ( 046 )-Nightmare Leech (×3)
mobs[47].pos = { x = -86.376, y = -13.76, z = 36.24, rot = 0 } -- ( 047 )-Nightmare Leech (×3)
mobs[48].pos = { x = -74, y = -11.14, z = 16.16, rot = 193 } -- ( 048 )-Nightmare Leech (×2)
mobs[49].pos = { x = -74.09, y = -11.09, z = 7.78, rot = 125 } -- ( 049 )-Nightmare Leech (×2)
mobs[50].pos = { x = -87.31, y = -12.64, z = 8.62, rot = 4 } -- ( 050 )-Nightmare Leech (×3)
mobs[51].pos = { x = -89.58, y = -12.71, z = 6.76, rot = 12 } -- ( 051 )-Nightmare Leech (×3)
mobs[52].pos = { x = -88.66, y = -20.06, z = -70.82, rot = 122 } -- ( 052 )-Nightmare Makara (×2)
mobs[53].pos = { x = -89.36, y = -20.12, z = -69.05, rot = 209 } -- ( 053 )-Nightmare Makara (×2)
mobs[54].pos = { x = -87.69, y = -14.42, z = -47.04, rot = 0 } -- ( 054 )-Nightmare Makara (×3)
mobs[55].pos = { x = -84.038, y = -12.9, z = -34.33, rot = 0 } -- ( 055 )-Nightmare Makara (×3)
mobs[56].pos = { x = -73.84, y = -10.86, z = -22.94, rot = 30 } -- ( 056 )-Nightmare Makara (×2)
mobs[57].pos = { x = -74.12, y = -11.12, z = -9.12, rot = 119 } -- ( 057 )-Nightmare Makara (×2)
mobs[58].pos = { x = -87.10, y = -12.55, z = -8.09, rot = 112 } -- ( 058 )-Nightmare Makara (×3)
mobs[59].pos = { x = -90.97, y = -13.04, z = -7.25, rot = 30 } -- ( 059 )-Nightmare Makara (×3)
mobs[60].pos = { x = 26.645, y = -36.03, z = 26.80, rot = 95 } -- ( 060 )-Nightmare Hornet (×3)
mobs[61].pos = { x = 46.02, y = -36.01, z = 43.65, rot = 0 } -- ( 061 )-Nightmare Hornet (×3)
mobs[62].pos = { x = 80.81, y = -36.20, z = 44.08, rot = 128 } -- (062-D)
mobs[63].pos = { x = 78.73, y = -34.37, z = 59.60, rot = 67 } -- (063-D)
mobs[64].pos = { x = 80.92, y = -38.75, z = 26.42, rot = 151 } -- (064-D)
mobs[65].pos = { x = 93.67, y = -41, z = 40.09, rot = 123 } -- (065-D)
mobs[66].pos = { x = 113.12, y = -41, z = 41.79, rot = 126 } -- (066-D)
mobs[67].pos = { x = 98.33, y = -41.01, z = 6.71, rot = 191 } -- (067-D)
mobs[68].pos = { x = 26.18, y = -35.92, z = -25.99, rot = 0 } -- ( 068 )-Nightmare Hornet (×3)
mobs[69].pos = { x = 47.43, y = -36.06, z = -43.24, rot = 0 } -- ( 069 )-Nightmare Hornet (×3)
mobs[70].pos = { x = 80.73, y = -36.19, z = -43.01, rot = 125 } -- (070-D)
mobs[71].pos = { x = 79.37, y = -34.78, z = -57.62, rot = 196 } -- (071-D)
mobs[72].pos = { x = 82.25, y = -39.20, z = -25.12, rot = 105 } -- (072-D)
mobs[73].pos = { x = 93.95, y = -41, z = -44.25, rot = 127 } -- (073-D)
mobs[74].pos = { x = 112.95, y = -41, z = -42.22, rot = 125 } -- (074-D)
mobs[75].pos = { x = 98.22, y = -41, z = -6.71, rot = 67 } -- (075-D)
mobs[76].pos = { x = 86.83, y = -33.93, z = 65.52, rot = 0 } -- ( 076 )-Nightmare Cluster (×3)
mobs[77].pos = { x = 88.14, y = -28, z = 39.44, rot = 0 } -- ( 077 )-Nightmare Cluster (×3)
mobs[78].pos = { x = 87.68, y = -33.72, z = -60.55, rot = 0 } -- ( 078 )-Nightmare Cluster (×3)
mobs[79].pos = { x = 87.56, y = -28, z = -37.52, rot = 0 } -- ( 079 )-Nightmare Cluster (×3)
mobs[80].pos = { x = 73.95, y = -25.05, z = 21.39, rot = 0 } -- ( 080 )-Nightmare Cluster (×3)
mobs[81].pos = { x = 70.23, y = -25, z = 4.81, rot = 0 } -- ( 081 )-Nightmare Cluster (×3)
mobs[82].pos = { x = 74, y = -25, z = -21.02, rot = 0 } -- ( 082 )-Nightmare Cluster (×3)
mobs[83].pos = { x = 26.645, y = -36.03, z = 26.80, rot = 95 } -- ( 083 )-Nightmare Hornet (×3)
mobs[84].pos = { x = 46.02, y = -36.01, z = 43.65, rot = 0 } -- ( 084 )-Nightmare Hornet (×3)
mobs[85].pos = { x = 80.81, y = -36.20, z = 44.08, rot = 128 } -- (085-D)
mobs[86].pos = { x = 78.73, y = -34.37, z = 59.60, rot = 67 } -- (086-D)
mobs[87].pos = { x = 80.92, y = -38.75, z = 26.42, rot = 151 } -- (087-D)
mobs[88].pos = { x = 93.67, y = -41, z = 40.09, rot = 123 } -- (088-D)
mobs[89].pos = { x = 113.12, y = -41, z = 41.79, rot = 126 } -- (089-D)
mobs[90].pos = { x = 43.37, y = -36.1, z = 42.54, rot = 250 } -- (090-D)
mobs[91].pos = { x = 26.18, y = -35.92, z = -25.99, rot = 0 } -- ( 091 )-Nightmare Hornet (×3)
mobs[92].pos = { x = 47.43, y = -36.06, z = -43.24, rot = 0 } -- ( 092 )-Nightmare Hornet (×3)
mobs[93].pos = { x = 80.73, y = -36.19, z = -43.01, rot = 125 } -- (093-D)
mobs[94].pos = { x = 79.37, y = -34.78, z = -57.62, rot = 196 } -- (094-D)
mobs[95].pos = { x = 82.25, y = -39.20, z = -25.12, rot = 105 } -- (095-D)
mobs[96].pos = { x = 93.95, y = -41, z = -44.25, rot = 127 } -- (096-D)
mobs[97].pos = { x = 112.95, y = -41, z = -42.22, rot = 125 } -- (097-D)
mobs[98].pos = { x = 43.37, y = -36.1, z = -42.54, rot = 0 } -- (098-D)
mobs[99].pos = { x = 86.83, y = -33.93, z = 65.52, rot = 0 } -- ( 099 )-Nightmare Cluster (×3)
mobs[100].pos = { x = 88.14, y = -28, z = 39.44, rot = 0 } -- ( 100 )-Nightmare Cluster (×3)
mobs[101].pos = { x = 87.68, y = -33.72, z = -60.55, rot = 0 } -- ( 101 )-Nightmare Cluster (×3)
mobs[102].pos = { x = 87.56, y = -28, z = -37.52, rot = 0 } -- ( 102 )-Nightmare Cluster (×3)
mobs[103].pos = { x = 73.95, y = -25.05, z = 21.39, rot = 0 } -- ( 103 )-Nightmare Cluster (×3)
mobs[104].pos = { x = 70.23, y = -25, z = 4.81, rot = 0 } -- ( 104 )-Nightmare Cluster (×3)
mobs[105].pos = { x = 74, y = -25, z = -21.02, rot = 0 } -- ( 105 )-Nightmare Cluster (×3)
mobs[106].pos = { x = 0.17, y = -24.77, z = 67, rot = 70 } -- ( 106 )-Umbral Diabolos
mobs[107].pos = { x = -12.29, y = -27.71, z = 89.71, rot = 54 } -- ( 107 )-Umbral Diabolos
mobs[108].pos = { x = -2.58, y = -27.95, z = 105.45, rot = 127 } -- ( 108 )-Umbral Diabolos
mobs[109].pos = { x = -15.71, y = -27.92, z = 110.71, rot = 57 } -- ( 109 )-Umbral Diabolos
mobs[110].pos = { x = -35.94, y = -27.23, z = 119.30, rot = 230 } -- ( 110 )-Diabolos Club
mobs[111].pos = { x = -43.83, y = -29.67, z = 155.47, rot = 33 } -- ( 111 )-Diabolos Heart
mobs[112].pos = { x = 3.67, y = -29.69, z = 152.06, rot = 103 } -- ( 112 )-Diabolos Spade
mobs[113].pos = { x = 8.28, y = -26.28, z = 123.05, rot = 143 } -- ( 113 )-Diabolos Diamond
mobs[252].pos = { x = -35.94, y = -27.23, z = 119.30, rot = 230 } -- ( 110 )-Diabolos Club

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

mobs[4].patrolPath = { { x = -26.358, y = -21.97, z = 26.411 }, { x = -40.109, y = 22.232, z = 40.212 } }
mobs[5].patrolPath = { { x = -48.085, y = -22.051, z = 43.469 }, { x = -63.012, y = -22.03, z = 43.799 } }
mobs[10].patrolPath = { { x = -27.114, y = -22.075, z = -26.941 }, { x = -37.896, y = -22.169, z = -37.871 } }
mobs[11].patrolPath = { { x = -44.921, y = -22.026, z = -43.388 }, { x = -63.904, y = -22.028, z = -43.865 } }
mobs[16].patrolPath = { { x = -75.824, y = -20, z = 65.71 }, { x = -88.177, y = -19.96, z = 66.99 } }
mobs[17].patrolPath = { { x = -88.107, y = -19.82, z = 64.57 }, { x = -88.06, y = -15.29, z = 49.79 } }
mobs[18].patrolPath = { { x = -88.119, y = -14.54, z = 47.74 }, { x = -87.79, y = -14, z = 36.53 } }
mobs[19].patrolPath = { { x = -86.376, y = -13.76, z = 36.24 }, { x = -77.85, y = -10.89, z = 28.93 } }
mobs[20].patrolPath = { { x = -74, y = -11.14, z = 16.16 }, { x = -73.76, y = -11.08, z = 8.89 } }
mobs[21].patrolPath = { { x = -74.09, y = -11.09, z = 7.78 }, { x = -74.10, y = -11.91, z = 2.04 } }
mobs[22].patrolPath = { { x = -87.31, y = -12.64, z = 8.62 }, { x = -87.68, y = -13.36, z = 1.44 } }
mobs[23].patrolPath = { { x = -89.58, y = -12.71, z = 6.76 }, { x = -79.12, y = -11.34, z = 7.71 } }
mobs[24].patrolPath = { { x = -88.66, y = -20.06, z = -70.82 }, { x = -77.18, y = -20, z = -68.71 } }
mobs[25].patrolPath = { { x = -89.36, y = -20.12, z = -69.05 }, { x = -88.007, y = -15.33, z = -49.93 } }
mobs[26].patrolPath = { { x = -87.69, y = -14.42, z = -47.04 }, { x = -86.76, y = -13.87, z = -36.38 } }
mobs[27].patrolPath = { { x = -84.038, y = -12.9, z = -34.33 }, { x = -74.28, y = -10.79, z = -23.86 } }
mobs[28].patrolPath = { { x = -73.84, y = -10.86, z = -22.94 }, { x = -73.969, y = -11.141, z = -13.271 } }
mobs[29].patrolPath = { { x = -74.12, y = -11.12, z = -9.12 }, { x = -73.91, y = -11.86, z = -1.56 } }
mobs[30].patrolPath = { { x = -87.10, y = -12.55, z = -8.09 }, { x = -87.68, y = -13.36, z = -1.24 } }
mobs[31].patrolPath = { { x = -90.97, y = -13.04, z = -7.25 }, { x = -78.84, y = -11.23, z = -7.36 } }
mobs[32].patrolPath = { { x = -26.358, y = -21.97, z = 26.411 }, { x = -40.109, y = 22.232, z = 40.212 } }
mobs[33].patrolPath = { { x = -48.085, y = -22.051, z = 43.469 }, { x = -63.012, y = -22.03, z = 43.799 } }
mobs[38].patrolPath = { { x = -27.114, y = -22.075, z = -26.941 }, { x = -37.896, y = -22.169, z = -37.871 } }
mobs[39].patrolPath = { { x = -44.921, y = -22.026, z = -43.388 }, { x = -63.904, y = -22.028, z = -43.865 } }
mobs[44].patrolPath = { { x = -75.824, y = -20, z = 65.71 }, { x = -88.177, y = -19.96, z = 66.99 } }
mobs[45].patrolPath = { { x = -88.107, y = -19.82, z = 64.57 }, { x = -88.06, y = -15.29, z = 49.79 } }
mobs[46].patrolPath = { { x = -88.119, y = -14.54, z = 47.74 }, { x = -87.79, y = -14, z = 36.53 } }
mobs[47].patrolPath = { { x = -86.376, y = -13.76, z = 36.24 }, { x = -77.85, y = -10.89, z = 28.93 } }
mobs[56].patrolPath = { { x = -73.84, y = -10.86, z = -22.94 }, { x = -73.969, y = -11.141, z = -13.271 } }
mobs[57].patrolPath = { { x = -74.12, y = -11.12, z = -9.12 }, { x = -73.91, y = -11.86, z = -1.56 } }
mobs[58].patrolPath = { { x = -87.10, y = -12.55, z = -8.09 }, { x = -87.68, y = -13.36, z = -1.24 } }
mobs[59].patrolPath = { { x = -90.97, y = -13.04, z = -7.25 }, { x = -78.84, y = -11.23, z = -7.36 } }
mobs[60].patrolPath = { { x = 26.645, y = -36.03, z = 26.80 }, { x = 40.232, y = -36.24, z = 40.01 } }
mobs[61].patrolPath = { { x = 46.02, y = -36.01, z = 43.65 }, { x = 61.50, y = -36.01, z = 43.96 } }
mobs[68].patrolPath = { { x = 26.18, y = -35.92, z = -25.99 }, { x = 40.67, y = -36.20, z = -40.54 } }
mobs[69].patrolPath = { { x = 47.43, y = -36.06, z = -43.24 }, { x = 62.50, y = -36.01, z = -43.90 } }
mobs[76].patrolPath = { { x = 86.83, y = -33.93, z = 65.52 }, { x = 87.79, y = -28.30, z = 46.23 } }
mobs[77].patrolPath = { { x = 88.14, y = -28, z = 39.44 }, { x = 73.93, y = -24.82, z = 24.32 } }
mobs[78].patrolPath = { { x = 87.68, y = -33.72, z = -60.55 }, { x = 88.10, y = -28, z = -42.12 } }
mobs[79].patrolPath = { { x = 87.56, y = -28, z = -37.52 }, { x = 74.64, y = -24.83, z = -24.88 } }
mobs[80].patrolPath = { { x = 73.95, y = -25.05, z = 21.39 }, { x = 73.93, y = -24.79, z = 7.95 } }
mobs[81].patrolPath = { { x = 70.23, y = -25, z = 4.81 }, { x = 70.23, y = -25, z = -4.23 } }
mobs[82].patrolPath = { { x = 74, y = -25, z = -21.02 }, { x = 73.81, y = -24.79, z = -6.64 } }
mobs[83].patrolPath = { { x = 26.645, y = -36.03, z = 26.80 }, { x = 40.232, y = -36.24, z = 40.01 } }
mobs[84].patrolPath = { { x = 46.02, y = -36.01, z = 43.65 }, { x = 61.50, y = -36.01, z = 43.96 } }
mobs[91].patrolPath = { { x = 26.18, y = -35.92, z = -25.99 }, { x = 40.67, y = -36.20, z = -40.54 } }
mobs[92].patrolPath = { { x = 47.43, y = -36.06, z = -43.24 }, { x = 62.50, y = -36.01, z = -43.90 } }

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 1, 3 }
mobs[1].timeExtension = 15 -- Nightmare Bugard
mobs[3].timeExtension = 30 -- Nightmare Antlion
