-----------------------------------
-- Era Dynamis - Dynamis-Qufim spawn data
--
-- Primary Source of Information: https://enedin.be/dyna/html/zone/quf.htm
-- Secondary Source of Information: http://www.dynamisbums.com/strategy/quf.html
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}
xi.dynamis.mobList = xi.dynamis.mobList or {}

local zoneID = xi.zone.DYNAMIS_QUFIM

local mobs = {}
for i = 1, 279 do
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

-- Sea Monk NM Area
mobs[1].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (001-Q)
mobs[2].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (002-Q)
-- Southwest AreaStatue"Quadav"
mobs[3].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (003-Q)
mobs[4].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (004-Q)
mobs[5].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (005-Q)
mobs[6].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (006-Q)
mobs[7].info = { mobType = 'Statue', name = 'Adamantking Effigy', family = 'Quadav' } -- (007-Q)
mobs[8].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (008-Y)
mobs[9].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (009-Y)
mobs[10].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (010-Y)
mobs[11].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (011-Y)
mobs[12].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (012-Y)
mobs[13].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (013-Y)
mobs[14].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (014-Y)
mobs[15].info = { mobType = 'Statue', name = 'Manifest Icon', family = 'Yagudo' } -- (015-Y)
-- Northeast Area
mobs[16].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (016-O)
mobs[17].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (017-O)
mobs[18].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (018-O)
mobs[19].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (019-O)
mobs[20].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (020-O)
mobs[21].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (021-O)
mobs[22].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (022-O)
mobs[23].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (023-O)
mobs[24].info = { mobType = 'Statue', name = 'Serjeant Tombstone', family = 'Orc' } -- (024-O)
mobs[25].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (025-G)
mobs[26].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (026-G)
-- Boss Area
mobs[27].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (027-G)
mobs[28].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (028-G)
mobs[29].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (029-G)
mobs[30].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (030-G)
mobs[31].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (031-G)
-- Golem NM Area
mobs[32].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (032-G)
mobs[33].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (033-G)
mobs[34].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (034-G)
mobs[35].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (035-G)
-- Giant Bat NM Area
mobs[36].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (036-G)
mobs[37].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (037-G)
mobs[38].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (038-G)
mobs[39].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (039-G)
-- Sea Monk NM Area
mobs[43].info = { mobType = 'Elemental', name = 'Water Elemental', deathVar = 'water_killed' } -- (043) (Reduces Antaeus' resistance to water)
mobs[40].info = { mobType = 'NM', name = 'Scolopendra', deathVar = 'scolopendra_killed' } -- (040) (Reduces Antaeus' HP regeneration rate)
-- Southwest Area
mobs[44].info = { mobType = 'Elemental', name = 'Fire Elemental', deathVar = 'fire_killed' } -- (044) (Reduces Antaeus' resistance to fire)
-- Giant Bat Area
mobs[45].info = { mobType = 'Elemental', name = 'Thunder Elemental', deathVar = 'thunder_killed' } -- (045) (Reduces Antaeus' resistance to thunder)
mobs[41].info = { mobType = 'NM', name = 'Stringes', deathVar = 'stringes_killed' } -- (041) (Reduces Antaeus' physical attack damage)
-- Northeast Area
mobs[46].info = { mobType = 'Elemental', name = 'Air Elemental', deathVar = 'air_killed' } -- (046) (Reduces Antaeus' resistance to wind)
mobs[47].info = { mobType = 'Elemental', name = 'Light Elemental', deathVar = 'light_killed' } -- (047) (Reduces Antaeus' resistance to light)
-- Boss Area
mobs[48].info = { mobType = 'Elemental', name = 'Ice Elemental', deathVar = 'ice_killed' } -- (048) (Reduces Antaeus' resistance to ice)
mobs[64].info = { mobType = 'NM', name = 'Antaeus', deathVar = 'MegaBoss_Killed' } -- (064) (Spawns 065-138)
-- Golem NM Area
mobs[49].info = { mobType = 'Elemental', name = 'Earth Elemental', deathVar = 'earth_killed' } -- (049) (Reduces Antaeus' resistance to earth)
mobs[50].info = { mobType = 'Elemental', name = 'Dark Elemental', deathVar = 'dark_killed' } -- (050) (Reduces Antaeus' resistance to dark)
mobs[42].info = { mobType = 'NM', name = 'Suttung', deathVar = 'suttung_killed' } -- (042) (Reduces Antaeus' magic damage resistance)
-- Nightmare Stirge
mobs[51].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } -- 051-Nightmare Stirge (×4)
mobs[244].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[245].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[246].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[52].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } -- 052-Nightmare Stirge (×4)
mobs[247].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[248].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[249].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[53].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } -- 053-Nightmare Stirge (×4)
mobs[250].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[251].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[252].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[62].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } -- 062-Nightmare Stirge (×3)
mobs[253].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[254].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[63].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } -- 063-Nightmare Stirge (×4)
mobs[255].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[256].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
mobs[257].info = { mobType = 'Nightmare', name = 'Nightmare Stirge' } --
-- Nightmare Roc
mobs[58].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } -- 058-Nightmare Roc (×3)
mobs[258].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } --
mobs[259].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } --
mobs[61].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } -- 061-Nightmare Roc (×3)
mobs[260].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } --
mobs[261].info = { mobType = 'Nightmare', name = 'Nightmare Roc' } --
-- Nightmare Snoll
mobs[54].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 054-Nightmare Snoll (×4)
mobs[262].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[263].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[264].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[55].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 055-Nightmare Snoll (×4)
mobs[265].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[266].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[267].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[56].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 056-Nightmare Snoll (×4)
mobs[268].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[269].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[270].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[57].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 057-Nightmare Snoll (×4)
mobs[271].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[272].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[273].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[59].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 059-Nightmare Snoll (×4)
mobs[274].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[275].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[276].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[60].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } -- 060-Nightmare Snoll (×4)
mobs[277].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[278].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
mobs[279].info = { mobType = 'Nightmare', name = 'Nightmare Snoll' } --
-- Southwest Area
mobs[65].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (065-G)
mobs[66].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (066-G)
mobs[67].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (067-G)
mobs[68].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (068-G)
-- Northeast Area
mobs[69].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (069-G)
mobs[70].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (070-G)
-- Central Area
mobs[71].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (071-G)
mobs[72].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (072-G)
mobs[73].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (073-G)
mobs[74].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (074-G)
mobs[75].info = { mobType = 'Statue', name = 'Goblin Replica', family = 'Goblin' } -- (075-G)
-- Nightmare Weapon
mobs[76].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 076-Nightmare Weapon (×3)
mobs[139].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[140].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[77].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 077-Nightmare Weapon (×3)
mobs[141].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[142].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[78].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 078-Nightmare Weapon (×3)
mobs[143].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[144].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[79].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 079-Nightmare Weapon (×3)
mobs[145].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[146].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[80].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 080-Nightmare Weapon (×3)
mobs[147].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[148].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[81].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 081-Nightmare Weapon (×3)
mobs[149].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[150].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[82].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 082-Nightmare Weapon (×3)
mobs[151].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[152].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[83].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 083-Nightmare Weapon (×3)
mobs[153].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[154].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[84].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 084-Nightmare Weapon (×3)
mobs[155].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[156].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[85].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } -- 085-Nightmare Weapon (×3)
mobs[157].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
mobs[158].info = { mobType = 'Nightmare', name = 'Nightmare Weapon' } --
-- Nightmare Kraken
mobs[86].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 086-Nightmare Kraken (×2)
mobs[159].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[87].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 087-Nightmare Kraken (×2)
mobs[160].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[88].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 088-Nightmare Kraken (×2)
mobs[161].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[89].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 089-Nightmare Kraken (×2)
mobs[162].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[90].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 090-Nightmare Kraken (×2)
mobs[163].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[91].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 091-Nightmare Kraken (×2)
mobs[164].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[92].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 092-Nightmare Kraken (×2)
mobs[165].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[93].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 093-Nightmare Kraken (×2)
mobs[166].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[94].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 094-Nightmare Kraken (×2)
mobs[167].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[95].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 095-Nightmare Kraken (×2)
mobs[168].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[96].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 096-Nightmare Kraken (×2)
mobs[169].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[97].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 097-Nightmare Kraken (×2)
mobs[170].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[98].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } -- 098-Nightmare Kraken (×3)
mobs[171].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
mobs[172].info = { mobType = 'Nightmare', name = 'Nightmare Kraken' } --
-- Nightmare Tiger
mobs[99].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 099-Nightmare Tiger (×4)
mobs[173].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[174].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[175].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[100].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 100-Nightmare Tiger (×4)
mobs[176].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[177].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[178].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[101].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 101-Nightmare Tiger (×4)
mobs[179].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[180].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[181].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[102].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 102-Nightmare Tiger (×5)
mobs[182].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[183].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[184].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[185].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[103].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 103-Nightmare Tiger (×5)
mobs[186].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[187].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[188].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[189].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[104].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 104-Nightmare Tiger (×5)
mobs[190].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[191].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[192].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[193].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[105].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } -- 105-Nightmare Tiger (×5)
mobs[194].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[195].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[196].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
mobs[197].info = { mobType = 'Nightmare', name = 'Nightmare Tiger' } --
-- Nightmare Raptor
mobs[106].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 106-Nightmare Raptor (×2)
mobs[198].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[107].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 107-Nightmare Raptor (×2)
mobs[199].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[108].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 108-Nightmare Raptor (×2)
mobs[200].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[109].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 109-Nightmare Raptor (×2)
mobs[201].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[110].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 110-Nightmare Raptor (×2)
mobs[202].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[111].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 111-Nightmare Raptor (×2)
mobs[203].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[112].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 112-Nightmare Raptor (×2)
mobs[204].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[113].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 113-Nightmare Raptor (×2)
mobs[205].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[114].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 114-Nightmare Raptor (×2)
mobs[206].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[115].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 115-Nightmare Raptor (×2)
mobs[207].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[116].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 116-Nightmare Raptor (×2)
mobs[208].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
mobs[117].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } -- 117-Nightmare Raptor (×2)
mobs[209].info = { mobType = 'Nightmare', name = 'Nightmare Raptor' } --
--Nightmare Diremite
mobs[118].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 118-Nightmare Diremite (×2)
mobs[210].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[119].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 119-Nightmare Diremite (×2)
mobs[211].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[120].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 120-Nightmare Diremite (×2)
mobs[212].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[121].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 121-Nightmare Diremite (×2)
mobs[213].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[122].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 122-Nightmare Diremite (×2)
mobs[214].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[123].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 123-Nightmare Diremite (×2)
mobs[215].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[124].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 124-Nightmare Diremite (×2)
mobs[216].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[125].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 125-Nightmare Diremite (×2)
mobs[217].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[126].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 126-Nightmare Diremite (×2)
mobs[218].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[127].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 127-Nightmare Diremite (×2)
mobs[219].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[128].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 128-Nightmare Diremite (×2)
mobs[220].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[129].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 129-Nightmare Diremite (×2)
mobs[221].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
mobs[130].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } -- 130-Nightmare Diremite (×2)
mobs[222].info = { mobType = 'Nightmare', name = 'Nightmare Diremite' } --
-- Nightmare Gaylas
mobs[131].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 131-Nightmare Gaylas (×3)
mobs[223].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[224].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[132].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 132-Nightmare Gaylas (×3)
mobs[225].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[226].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[133].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 133-Nightmare Gaylas (×3)
mobs[227].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[228].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[134].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 134-Nightmare Gaylas (×4)
mobs[229].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[230].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[231].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[135].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 135-Nightmare Gaylas (×4)
mobs[232].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[233].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[234].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[136].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 136-Nightmare Gaylas (×4)
mobs[235].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[236].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[237].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[137].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 137-Nightmare Gaylas (×4)
mobs[238].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[239].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[240].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[138].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } -- 138-Nightmare Gaylas (×4)
mobs[241].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[242].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --
mobs[243].info = { mobType = 'Nightmare', name = 'Nightmare Gaylas' } --

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
    1 , -- (001-Q) Adamantking Effigy
    2 , -- (002-Q) Adamantking Effigy
    3 , -- (003-Q) Adamantking Effigy
    4 , -- (004-Q) Adamantking Effigy
    5 , -- (005-Q) Adamantking Effigy
    6 , -- (006-Q) Adamantking Effigy
    7 , -- (007-Q) Adamantking Effigy
    8 , -- (008-Y) Manifest Icon
    9 , -- (009-Y) Manifest Icon
    10, -- (010-Y) Manifest Icon
    11, -- (011-Y) Manifest Icon
    12, -- (012-Y) Manifest Icon
    13, -- (013-Y) Manifest Icon
    14, -- (014-Y) Manifest Icon
    15, -- (015-Y) Manifest Icon
    16, -- (016-O) Serjeant Tombstone
    17, -- (017-O) Serjeant Tombstone
    18, -- (018-O) Serjeant Tombstone
    19, -- (019-O) Serjeant Tombstone
    20, -- (020-O) Serjeant Tombstone
    21, -- (021-O) Serjeant Tombstone
    22, -- (022-O) Serjeant Tombstone
    23, -- (023-O) Serjeant Tombstone
    24, -- (024-O) Serjeant Tombstone
    25, -- (025-G) Goblin Replica
    26, -- (026-G) Goblin Replica
    27, -- (027-G) Goblin Replica
    28, -- (028-G) Goblin Replica
    29, -- (029-G) Goblin Replica
    30, -- (030-G) Goblin Replica
    31, -- (031-G) Goblin Replica
    32, -- (032-G) Goblin Replica
    33, -- (033-G) Goblin Replica
    34, -- (034-G) Goblin Replica
    35, -- (035-G) Goblin Replica
    36, -- (036-G) Goblin Replica
    37, -- (037-G) Goblin Replica
    38, -- (038-G) Goblin Replica
    39, -- (039-G) Goblin Replica
    -- Wave 1 Nightmare Mobs
    51, -- ( 051 ) Nightmare Stirge (×4)
    52, -- ( 052 ) Nightmare Stirge (×4)
    53, -- ( 053 ) Nightmare Stirge (×4)
    62, -- ( 062 ) Nightmare Stirge (×3)
    63, -- ( 063 ) Nightmare Stirge (×4)
    58, -- ( 058 ) Nightmare Roc (×3)
    61, -- ( 061 ) Nightmare Roc (×3)
    54, -- ( 054 ) Nightmare Snoll (×4)
    55, -- ( 055 ) Nightmare Snoll (×4)
    56, -- ( 056 ) Nightmare Snoll (×4)
    57, -- ( 057 ) Nightmare Snoll (×4)
    59, -- ( 059 ) Nightmare Snoll (×4)
    60, -- ( 060 ) Nightmare Snoll (×4)
    -- Wave 1 Elementals and NMs
    43, -- ( 043 ) Water Elemental
    40, -- ( 040 ) Scolopendra
    44, -- ( 044 ) Fire Elemental
    45, -- ( 045 ) Thunder Elemental
    41, -- ( 041 ) Stringes
    46, -- ( 046 ) Air Elemental
    47, -- ( 047 ) Light Elemental
    48, -- ( 048 ) Ice Elemental
    64, -- ( 064 ) Antaeus
    49, -- ( 049 ) Earth Elemental
    50, -- ( 050 ) Dark Elemental
    42  -- ( 042 ) Suttung
}

mobs[2].wave =
{
    76 , --  ( 076 ) Nightmare Weapon (×3)
    77 , --  ( 077 ) Nightmare Weapon (×3)
    78 , --  ( 078 ) Nightmare Weapon (×3)
    79 , --  ( 079 ) Nightmare Weapon (×3)
    80 , --  ( 080 ) Nightmare Weapon (×3)
    81 , --  ( 081 ) Nightmare Weapon (×3)
    82 , --  ( 082 ) Nightmare Weapon (×3)
    83 , --  ( 083 ) Nightmare Weapon (×3)
    84 , --  ( 084 ) Nightmare Weapon (×3)
    85 , --  ( 085 ) Nightmare Weapon (×3)
    86 , --  ( 086 ) Nightmare Kraken (×2)
    87 , --  ( 087 ) Nightmare Kraken (×2)
    88 , --  ( 088 ) Nightmare Kraken (×2)
    89 , --  ( 089 ) Nightmare Kraken (×2)
    90 , --  ( 090 ) Nightmare Kraken (×2)
    91 , --  ( 091 ) Nightmare Kraken (×2)
    92 , --  ( 092 ) Nightmare Kraken (×2)
    93 , --  ( 093 ) Nightmare Kraken (×2)
    94 , --  ( 094 ) Nightmare Kraken (×2)
    95 , --  ( 095 ) Nightmare Kraken (×2)
    96 , --  ( 096 ) Nightmare Kraken (×2)
    97 , --  ( 097 ) Nightmare Kraken (×2)
    98 , --  ( 098 ) Nightmare Kraken (×3)
    99 , --  ( 099 ) Nightmare Tiger (×4)
    100, --  ( 100 ) Nightmare Tiger (×4)
    101, --  ( 101 ) Nightmare Tiger (×4)
    102, --  ( 102 ) Nightmare Tiger (×5)
    103, --  ( 103 ) Nightmare Tiger (×5)
    104, --  ( 104 ) Nightmare Tiger (×5)
    105, --  ( 105 ) Nightmare Tiger (×5)
    106, --  ( 106 ) Nightmare Raptor (×2)
    107, --  ( 107 ) Nightmare Raptor (×2)
    108, --  ( 108 ) Nightmare Raptor (×2)
    109, --  ( 109 ) Nightmare Raptor (×2)
    110, --  ( 110 ) Nightmare Raptor (×2)
    111, --  ( 111 ) Nightmare Raptor (×2)
    112, --  ( 112 ) Nightmare Raptor (×2)
    113, --  ( 113 ) Nightmare Raptor (×2)
    114, --  ( 114 ) Nightmare Raptor (×2)
    115, --  ( 115 ) Nightmare Raptor (×2)
    116, --  ( 116 ) Nightmare Raptor (×2)
    117, --  ( 117 ) Nightmare Raptor (×2)
    118, --  ( 118 ) Nightmare Diremite (×2)
    119, --  ( 119 ) Nightmare Diremite (×2)
    120, --  ( 120 ) Nightmare Diremite (×2)
    121, --  ( 121 ) Nightmare Diremite (×2)
    122, --  ( 122 ) Nightmare Diremite (×2)
    123, --  ( 123 ) Nightmare Diremite (×2)
    124, --  ( 124 ) Nightmare Diremite (×2)
    125, --  ( 125 ) Nightmare Diremite (×2)
    126, --  ( 126 ) Nightmare Diremite (×2)
    127, --  ( 127 ) Nightmare Diremite (×2)
    128, --  ( 128 ) Nightmare Diremite (×2)
    129, --  ( 129 ) Nightmare Diremite (×2)
    130, --  ( 130 ) Nightmare Diremite (×2)
    131, --  ( 131 ) Nightmare Gaylas (×3)
    132, --  ( 132 ) Nightmare Gaylas (×3)
    133, --  ( 133 ) Nightmare Gaylas (×3)
    134, --  ( 134 ) Nightmare Gaylas (×4)
    135, --  ( 135 ) Nightmare Gaylas (×4)
    136, --  ( 136 ) Nightmare Gaylas (×4)
    137, --  ( 137 ) Nightmare Gaylas (×4)
    138, --  ( 138 ) Nightmare Gaylas (×4)
    65 , --  (065-G) Goblin Replica
    66 , --  (066-G) Goblin Replica
    67 , --  (067-G) Goblin Replica
    68 , --  (068-G) Goblin Replica
    69 , --  (069-G) Goblin Replica
    70 , --  (070-G) Goblin Replica
    71 , --  (071-G) Goblin Replica
    72 , --  (072-G) Goblin Replica
    73 , --  (073-G) Goblin Replica
    74 , --  (074-G) Goblin Replica
    75   --  (075-G) Goblin Replica
}

----------------------------------------------------------------------------------------------------
--                                  Setup of Children Spawning                                    --
----------------------------------------------------------------------------------------------------
------------------------------------------
--          Normal Child Spawn          --
------------------------------------------

-- Boss Area
mobs[27].mobchildren = { [xi.job.BST] = 1 } -- 1 BST
mobs[28].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.PLD] = 1 } -- 1 WAR  1 BLM  1 RDM  1 PLD
mobs[29].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[30].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[31].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1, [xi.job.SAM] = 1 } -- 1 WHM  1 DRK  1 RNG  1 SAM
-- Northeast
mobs[16].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.NIN] = 1 } -- 1 MNK  1 WHM  1 NIN
mobs[17].mobchildren = { [xi.job.PLD] = 1 } -- 1 PLD
mobs[18].mobchildren = { [xi.job.BRD] = 1, [xi.job.DRG] = 1 } -- 1 BRD  1 DRG
mobs[19].mobchildren = { [xi.job.BLM] = 1, [xi.job.RDM] = 1 } -- 1 BLM  1 RDM
mobs[20].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[21].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.SMN] = 1 } -- 1 MNK  1 THF  1 SMN
mobs[22].mobchildren = { [xi.job.DRK] = 1 } -- 1 DRK
mobs[24].mobchildren = { [xi.job.WAR] = 1, [xi.job.BST] = 1, [xi.job.RNG] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 BST  1 RNG  1 SAM
mobs[25].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1, [xi.job.SMN] = 1 } -- 1 THF  1 BRD  1 SMN
mobs[26].mobchildren = { [xi.job.MNK] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 MNK  1 NIN  1 DRG
-- Sea Monk NM Area
mobs[1].mobchildren = { [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.THF] = 1 } -- 1 MNK  1 BLM  1 THF
mobs[2].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.NIN] = 1 } -- 1 WAR  1 RDM  1 NIN
-- Southwest
mobs[3].mobchildren = { [xi.job.WHM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 WHM  1 PLD  1 SAM
mobs[4].mobchildren = { [xi.job.BST] = 1, [xi.job.RNG] = 1 } -- 1 BST  1 RNG
mobs[5].mobchildren = { [xi.job.DRK] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 DRK  1 NIN  1 DRG
mobs[6].mobchildren = { [xi.job.RDM] = 1, [xi.job.PLD] = 1, [xi.job.BST] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 RDM  1 PLD  1 BST  1 BRD  1 RNG
mobs[7].mobchildren = { [xi.job.WAR] = 1, [xi.job.WHM] = 1, [xi.job.BLM] = 1, [xi.job.SMN] = 1 } -- 1 WAR  1 WHM  1 BLM  1 SMN
mobs[8].mobchildren = { [xi.job.DRK] = 1, [xi.job.SAM] = 1 } -- 1 DRK  1 SAM
mobs[9].mobchildren = { [xi.job.WAR] = 1, [xi.job.RDM] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 WAR  1 RDM  1 BRD  1 RNG
mobs[10].mobchildren = { [xi.job.SMN] = 1 } -- 1 SMN
mobs[11].mobchildren = { [xi.job.BST] = 1, [xi.job.NIN] = 1 } -- 1 BST  1 NIN
mobs[13].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.THF] = 1 } -- 1 MNK  1 WHM  1 THF
mobs[14].mobchildren = { [xi.job.DRG] = 1 } -- 1 DRG
mobs[15].mobchildren = { [xi.job.BLM] = 1, [xi.job.PLD] = 1, [xi.job.SAM] = 1 } -- 1 BLM  1 PLD  1 SAM
-- Golem NM Area
mobs[32].mobchildren = { [xi.job.RDM] = 1, [xi.job.THF] = 1, [xi.job.SMN] = 1 } -- 1 RDM  1 THF  1 SMN
mobs[33].mobchildren = { [xi.job.BRD] = 1, [xi.job.NIN] = 1, [xi.job.DRG] = 1 } -- 1 BRD  1 NIN  1 DRG
-- Giant Bat NM Area
mobs[36].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.BST] = 1 } -- 1 WAR  1 BLM  1 BST
mobs[37].mobchildren = { [xi.job.WHM] = 1, [xi.job.DRK] = 1, [xi.job.RNG] = 1 } -- 1 WHM  1 DRK  1 RNG
-- Wave 2 based on https://enedin.be/dyna/html/zone/frame_quf2.htm
-- Southwest
mobs[65].mobchildren = { [xi.job.MNK] = 1, [xi.job.THF] = 1, [xi.job.BRD] = 1, [xi.job.RNG] = 1 } -- 1 MNK  1 THF  1 BRD  1 RNG
mobs[66].mobchildren = { [xi.job.MNK] = 1, [xi.job.WHM] = 1, [xi.job.PLD] = 1, [xi.job.SMN] = 1 } -- 1 MNK  1 WHM  1 PLD  1 SMN
mobs[67].mobchildren = { [xi.job.WAR] = 1, [xi.job.MNK] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.SAM] = 1 } -- 1 WAR  1 MNK  1 BLM  1 RDM  1 SAM
mobs[68].mobchildren = { [xi.job.WHM] = 1, [xi.job.PLD] = 1, [xi.job.DRK] = 1, [xi.job.BST] = 1 } -- 1 WHM  1 PLD  1 DRK  1 BST
-- Northeast
mobs[69].mobchildren = { [xi.job.THF] = 1, [xi.job.BRD] = 1, [xi.job.SAM] = 1, [xi.job.DRG] = 1 } -- 1 THF  1 BRD  1 SAM  1 DRG
mobs[70].mobchildren = { [xi.job.WAR] = 1, [xi.job.BLM] = 1, [xi.job.RDM] = 1, [xi.job.NIN] = 1 } -- 1 WAR  1 BLM  1 RDM  1 NIN

------------------------------------------
--            NM Child Spawn            --
------------------------------------------
-- boolean value = forceLink true/false

-- Wave 1
mobs[51].nmchildren = { true, 244, 245, 246 } -- ( 051 ) Nightmare Stirge (×4)
mobs[52].nmchildren = { true, 247, 248, 249 } -- ( 052 ) Nightmare Stirge (×4)
mobs[53].nmchildren = { true, 250, 251, 252 } -- ( 053 ) Nightmare Stirge (×4)
mobs[62].nmchildren = { true, 253, 254 } -- ( 062 ) Nightmare Stirge (×3)
mobs[63].nmchildren = { true, 255, 256, 257 } -- ( 063 ) Nightmare Stirge (×4)
mobs[61].nmchildren = { true, 260, 261 } -- ( 061 ) Nightmare Roc (×3)
mobs[58].nmchildren = { true, 258, 259 } -- ( 058 ) Nightmare Roc (×3)
mobs[54].nmchildren = { true, 262, 263, 264 } -- ( 054 ) Nightmare Snoll (×4)
mobs[55].nmchildren = { true, 265, 266, 267 } -- ( 055 ) Nightmare Snoll (×4)
mobs[56].nmchildren = { true, 268, 269, 270 } -- ( 056 ) Nightmare Snoll (×4)
mobs[57].nmchildren = { true, 271, 272, 273 } -- ( 057 ) Nightmare Snoll (×4)
mobs[59].nmchildren = { true, 274, 275, 276 } -- ( 059 ) Nightmare Snoll (×4)
mobs[60].nmchildren = { true, 277, 278, 279 } -- ( 060 ) Nightmare Snoll (×4)

-- Wave 2nmchildren
mobs[76].nmchildren = { true, 139, 140 } -- ( 076 ) Nightmare Weapon (×3)
mobs[77].nmchildren = { true, 141, 142 } -- ( 077 ) Nightmare Weapon (×3)
mobs[78].nmchildren = { true, 143, 144 } -- ( 078 ) Nightmare Weapon (×3)
mobs[79].nmchildren = { true, 145, 146 } -- ( 079 ) Nightmare Weapon (×3)
mobs[80].nmchildren = { true, 147, 148 } -- ( 080 ) Nightmare Weapon (×3)
mobs[81].nmchildren = { true, 149, 150 } -- ( 081 ) Nightmare Weapon (×3)
mobs[82].nmchildren = { true, 151, 152 } -- ( 082 ) Nightmare Weapon (×3)
mobs[83].nmchildren = { true, 153, 154 } -- ( 083 ) Nightmare Weapon (×3)
mobs[84].nmchildren = { true, 155, 156 } -- ( 084 ) Nightmare Weapon (×3)
mobs[85].nmchildren = { true, 157, 158 } -- ( 085 ) Nightmare Weapon (×3)
mobs[86].nmchildren = { true, 159 } -- ( 086 ) Nightmare Kraken (×2)
mobs[87].nmchildren = { true, 160 } -- ( 087 ) Nightmare Kraken (×2)
mobs[88].nmchildren = { true, 161 } -- ( 088 ) Nightmare Kraken (×2)
mobs[89].nmchildren = { true, 162 } -- ( 089 ) Nightmare Kraken (×2)
mobs[90].nmchildren = { true, 163 } -- ( 090 ) Nightmare Kraken (×2)
mobs[91].nmchildren = { true, 164 } -- ( 091 ) Nightmare Kraken (×2)
mobs[92].nmchildren = { true, 165 } -- ( 092 ) Nightmare Kraken (×2)
mobs[93].nmchildren = { true, 166 } -- ( 093 ) Nightmare Kraken (×2)
mobs[94].nmchildren = { true, 167 } -- ( 094 ) Nightmare Kraken (×2)
mobs[95].nmchildren = { true, 168 } -- ( 095 ) Nightmare Kraken (×2)
mobs[96].nmchildren = { true, 169 } -- ( 096 ) Nightmare Kraken (×2)
mobs[97].nmchildren = { true, 170 } -- ( 097 ) Nightmare Kraken (×2)
mobs[98].nmchildren = { true, 171, 172 } -- ( 098 ) Nightmare Kraken (×3)
mobs[99].nmchildren = { true, 173, 174, 175 } -- ( 099 ) Nightmare Tiger (×4)
mobs[100].nmchildren = { true, 176, 177, 178 } -- ( 100 ) Nightmare Tiger (×4)
mobs[101].nmchildren = { true, 179, 180, 181 } -- ( 101 ) Nightmare Tiger (×4)
mobs[102].nmchildren = { true, 182, 183, 184, 185 } -- ( 102 ) Nightmare Tiger (×5)
mobs[103].nmchildren = { true, 186, 187, 188, 189 } -- ( 103 ) Nightmare Tiger (×5)
mobs[104].nmchildren = { true, 190, 191, 192, 193 } -- ( 104 ) Nightmare Tiger (×5)
mobs[105].nmchildren = { true, 194, 195, 196, 197 } -- ( 105 ) Nightmare Tiger (×5)
mobs[106].nmchildren = { true, 198 } -- ( 106 ) Nightmare Raptor (×2)
mobs[107].nmchildren = { true, 199 } -- ( 107 ) Nightmare Raptor (×2)
mobs[108].nmchildren = { true, 200 } -- ( 108 ) Nightmare Raptor (×2)
mobs[109].nmchildren = { true, 201 } -- ( 109 ) Nightmare Raptor (×2)
mobs[110].nmchildren = { true, 202 } -- ( 110 ) Nightmare Raptor (×2)
mobs[111].nmchildren = { true, 203 } -- ( 111 ) Nightmare Raptor (×2)
mobs[112].nmchildren = { true, 204 } -- ( 112 ) Nightmare Raptor (×2)
mobs[113].nmchildren = { true, 205 } -- ( 113 ) Nightmare Raptor (×2)
mobs[114].nmchildren = { true, 206 } -- ( 114 ) Nightmare Raptor (×2)
mobs[115].nmchildren = { true, 207 } -- ( 115 ) Nightmare Raptor (×2)
mobs[116].nmchildren = { true, 208 } -- ( 116 ) Nightmare Raptor (×2)
mobs[117].nmchildren = { true, 209 } -- ( 117 ) Nightmare Raptor (×2)
mobs[118].nmchildren = { true, 210 } -- ( 118 ) Nightmare Diremite (×2)
mobs[119].nmchildren = { true, 211 } -- ( 119 ) Nightmare Diremite (×2)
mobs[120].nmchildren = { true, 212 } -- ( 120 ) Nightmare Diremite (×2)
mobs[121].nmchildren = { true, 213 } -- ( 121 ) Nightmare Diremite (×2)
mobs[122].nmchildren = { true, 214 } -- ( 122 ) Nightmare Diremite (×2)
mobs[123].nmchildren = { true, 215 } -- ( 123 ) Nightmare Diremite (×2)
mobs[124].nmchildren = { true, 216 } -- ( 124 ) Nightmare Diremite (×2)
mobs[125].nmchildren = { true, 217 } -- ( 125 ) Nightmare Diremite (×2)
mobs[126].nmchildren = { true, 218 } -- ( 126 ) Nightmare Diremite (×2)
mobs[127].nmchildren = { true, 219 } -- ( 127 ) Nightmare Diremite (×2)
mobs[128].nmchildren = { true, 220 } -- ( 128 ) Nightmare Diremite (×2)
mobs[129].nmchildren = { true, 221 } -- ( 129 ) Nightmare Diremite (×2)
mobs[130].nmchildren = { true, 222 } -- ( 130 ) Nightmare Diremite (×2)
mobs[131].nmchildren = { true, 223, 224 } -- ( 131 ) Nightmare Gaylas (×3)
mobs[132].nmchildren = { true, 225, 226 } -- ( 132 ) Nightmare Gaylas (×3)
mobs[133].nmchildren = { true, 227, 228 } -- ( 133 ) Nightmare Gaylas (×3)
mobs[134].nmchildren = { true, 229, 230, 231 } -- ( 134 ) Nightmare Gaylas (×4)
mobs[135].nmchildren = { true, 232, 233, 234 } -- ( 135 ) Nightmare Gaylas (×4)
mobs[136].nmchildren = { true, 235, 236, 237 } -- ( 136 ) Nightmare Gaylas (×4)
mobs[137].nmchildren = { true, 238, 239, 240 } -- ( 137 ) Nightmare Gaylas (×4)
mobs[138].nmchildren = { true, 241, 242, 243 } -- ( 138 ) Nightmare Gaylas (×4)

------------------------------------------
--          Mob Position Info           --
-- Note: Must be setup for parent mobs, --
-- but is optional for children.        --
------------------------------------------

-- Statues Wave 1 and Wave 2
mobs[1].pos = { x = -260.608, y = -19.032, z = 43.783, rot = 6 } -- (001-Q) Adamantking Effigy
mobs[2].pos = { x = -249.283, y = -19.988, z = 45.831, rot = 6 } -- (002-Q) Adamantking Effigy
mobs[3].pos = { x = -207.631, y = -19.944, z = 106.263, rot = 28 } -- (003-Q) Adamantking Effigy
mobs[4].pos = { x = -193.663, y = -19.635, z = 131.329, rot = 68 } -- (004-Q) Adamantking Effigy
mobs[5].pos = { x = -205.758, y = -20.089, z = 162.879, rot = 203 } -- (005-Q) Adamantking Effigy
mobs[6].pos = { x = -118.681, y = -20.019, z = 195.651, rot = 27 } -- (006-Q) Adamantking Effigy
mobs[7].pos = { x = -116.667, y = -19.829, z = 207.454, rot = 48 } -- (007-Q) Adamantking Effigy
mobs[8].pos = { x = -1.307, y = -19.138, z = -17.269, rot = 129 } -- (008-Y) Manifest Icon
mobs[9].pos = { x = 13.437, y = -20.824, z = -21.301, rot = 128 } -- (009-Y) Manifest Icon
mobs[10].pos = { x = 37.826, y = -19.383, z = -14.216, rot = 237 } -- (010-Y) Manifest Icon
mobs[11].pos = { x = 60.955, y = -19.612, z = 11.245, rot = 81 } -- (011-Y) Manifest Icon
mobs[12].pos = { x = 81.461, y = -19.891, z = 6.198, rot = 107 } -- (012-Y) Manifest Icon
mobs[13].pos = { x = 93.956, y = -20.051, z = -14.926, rot = 137 } -- (013-Y) Manifest Icon
mobs[14].pos = { x = 109.566, y = -19.994, z = -6.029, rot = 113 } -- (014-Y) Manifest Icon
mobs[15].pos = { x = 121.584, y = -20.000, z = 0.963, rot = 180 } -- (015-Y) Manifest Icon
mobs[16].pos = { x = 140.120, y = -19.025, z = 75.671, rot = 154 } -- (016-O) Serjeant Tombstone
mobs[17].pos = { x = 138.601, y = -19.895, z = 65.463, rot = 165 } -- (017-O) Serjeant Tombstone
mobs[18].pos = { x = 151.705, y = -19.830, z = 68.108, rot = 146 } -- (018-O) Serjeant Tombstone
mobs[19].pos = { x = 101.349, y = -20.176, z = 150.119, rot = 38 } -- (019-O) Serjeant Tombstone
mobs[20].pos = { x = 111.338, y = -19.739, z = 150.965, rot = 48 } -- (020-O) Serjeant Tombstone
mobs[21].pos = { x = 55.335, y = -19.323, z = 234.979, rot = 79 } -- (021-O) Serjeant Tombstone
mobs[22].pos = { x = 56.364, y = -20.275, z = 249.147, rot = 44 } -- (022-O) Serjeant Tombstone
mobs[23].pos = { x = 0.556, y = -20.427, z = 242.431, rot = 50 } -- (023-O) Serjeant Tombstone
mobs[24].pos = { x = 1.133, y = -19.029, z = 260.556, rot = 129 } -- (024-O) Serjeant Tombstone
mobs[25].pos = { x = -91.348, y = -19.634, z = 242.081, rot = 171 } -- (025-G) Goblin Replica
mobs[26].pos = { x = -85.062, y = -19.723, z = 267.683, rot = 91 } -- (026-G) Goblin Replica
mobs[27].pos = { x = -216.469, y = -19.178, z = 319.638, rot = 255 } -- (027-G) Goblin Replica
mobs[28].pos = { x = -254.048, y = -20.000, z = 300.553, rot = 224 } -- (028-G) Goblin Replica
mobs[29].pos = { x = -256.694, y = -20.000, z = 313.411, rot = 231 } -- (029-G) Goblin Replica
mobs[30].pos = { x = -253.725, y = -20.000, z = 329.286, rot = 9 } -- (030-G) Goblin Replica
mobs[31].pos = { x = -250.551, y = -19.933, z = 341.246, rot = 43 } -- (031-G) Goblin Replica
mobs[32].pos = { x = -288.097, y = -11.721, z = 475.140, rot = 225 } -- (032-G) Goblin Replica
mobs[33].pos = { x = -312.791, y = -11.762, z = 483.752, rot = 247 } -- (033-G) Goblin Replica
mobs[34].pos = { x = -546.876, y = -8.836, z = 416.088, rot = 8 } -- (034-G) Goblin Replica
mobs[35].pos = { x = -550.221, y = -7.494, z = 422.123, rot = 13 } -- (035-G) Goblin Replica
mobs[36].pos = { x = 174.031, y = 20.747, z = -202.030, rot = 204 } -- (036-G) Goblin Replica
mobs[37].pos = { x = 163.990, y = 20.081, z = -208.679, rot = 232 } -- (037-G) Goblin Replica
mobs[38].pos = { x = 140.386, y = 17.982, z = -431.949, rot = 214 } -- (038-G) Goblin Replica
mobs[39].pos = { x = 142.936, y = 18.121, z = -436.945, rot = 196 } -- (039-G) Goblin Replica
mobs[65].pos = { x = -108.072, y = -20.30, z = 191.006, rot = 154 } -- (065-G) Goblin Replica
mobs[66].pos = { x = -112.225, y = -20.560, z = 188.736, rot = 160 } -- (066-G) Goblin Replica
mobs[67].pos = { x = -77.407, y = -19.770, z = 19.093, rot = 134 } -- (067-G) Goblin Replica
mobs[68].pos = { x = -59.591, y = -19.733, z = -2.097, rot = 34 } -- (068-G) Goblin Replica
mobs[69].pos = { x = 21.350, y = -19.769, z = 187.950, rot = 155 } -- (069-G) Goblin Replica
mobs[70].pos = { x = -2.647, y = -20.584, z = 191.007, rot = 239 } -- (070-G) Goblin Replica
mobs[71].pos = { x = -44.788, y = -20.040, z = 122.724, rot = 162 } -- (071-G) Goblin Replica
mobs[72].pos = { x = -45.871, y = -20.082, z = 75.716, rot = 94 } -- (072-G) Goblin Replica
mobs[73].pos = { x = 5.245, y = -20.007, z = 125.149, rot = 223 } -- (073-G) Goblin Replica
mobs[74].pos = { x = -7.265, y = -18.019, z = 101.000, rot = 9 } -- (074-G) Goblin Replica
mobs[75].pos = { x = -18.812, y = -17.300, z = 104.154, rot = 9 } -- (075-G) Goblin Replica
-- Wave 1 Nightmare Mobs + NMs + Elementals Based on https://enedin.be/dyna/html/zone/frame_quf1.htm
mobs[51].pos = { x = -61.614, y = -19.824, z = 36.806, rot = 64 } -- ( 051 ) Nightmare Stirge (×4)
mobs[52].pos = { x = 21.479, y = -19.832, z = 153.201, rot = 79 } -- ( 052 ) Nightmare Stirge (×4)
mobs[53].pos = { x = -60.969, y = -19.775, z = 153.545, rot = 54 } -- ( 053 ) Nightmare Stirge (×4)
mobs[62].pos = { x = 143.273, y = 21.394, z = -348.023, rot = 144 } -- ( 062 ) Nightmare Stirge (×3)
mobs[63].pos = { x = 153.181, y = 20.601, z = -370.837, rot = 193 } -- ( 063 ) Nightmare Stirge (×4)
mobs[63].pos = { x = 153.181, y = 20.601, z = -370.837, rot = 193 } -- ( 063 ) Nightmare Stirge (×4)
mobs[61].pos = { x = 153.580, y = -19.718, z = -20.217, rot = 128 } -- ( 061 ) Nightmare Roc (×3)
mobs[58].pos = { x = -221.369, y = -19.805, z = 437.399, rot = 56 } -- ( 058 ) Nightmare Roc (×3)
mobs[54].pos = { x = -136.073, y = -20.377, z = 344.4214, rot = 102 } -- ( 054 ) Nightmare Snoll (×4)
mobs[55].pos = { x = -132.776, y = -19.527, z = 320.005, rot = 118 } -- ( 055 ) Nightmare Snoll (×4)
mobs[56].pos = { x = -156.819, y = -20.000, z = 362.471, rot = 98 } -- ( 056 ) Nightmare Snoll (×4)
mobs[57].pos = { x = -157.837, y = -19.317, z = 334.877, rot = 115 } -- ( 057 ) Nightmare Snoll (×4)
mobs[59].pos = { x = -475.226, y = -11.232, z = 385.530, rot = 207 } -- ( 059 ) Nightmare Snoll (×4)
mobs[60].pos = { x = -496.717, y = -12.481, z = 379.136, rot = 236 } -- ( 060 ) Nightmare Snoll (×4)
mobs[40].pos = { x = -264.477, y = -3.417, z = 24.961, rot = 60 } -- ( 040 ) Scolopendra
mobs[41].pos = { x = 149.787, y = 21.221, z = -409.158, rot = 185 } -- ( 041 ) Stringes
mobs[64].pos = { x = -257.040, y = -20.000, z = 319.628, rot = 254 } -- ( 064 ) Antaeus
mobs[42].pos = { x = -535.544, y = -13.042, z = 386.895, rot = 51 } -- ( 042 ) Suttung
mobs[43].pos = { x = -278.296, y = -19.902, z = 74.020, rot = 57 } -- ( 043 ) Water Elemental
mobs[44].pos = { x = 19.150, y = -19.260, z = -86.259, rot = 193 } -- ( 044 ) Fire Elemental
mobs[45].pos = { x = 158.148, y = 20.219, z = -230.048, rot = 184 } -- ( 045 ) Thunder Elemental
mobs[46].pos = { x = 163.632, y = -19.481, z = 133.232, rot = 94 } -- ( 046 ) Air Elemental
mobs[47].pos = { x = 29.825, y = -19.906, z = 288.771, rot = 77 } -- ( 047 ) Light Elemental
mobs[48].pos = { x = -214.001, y = -19.742, z = 392.671, rot = 60 } -- ( 048 ) Ice Elemental
mobs[49].pos = { x = -338.197, y = -12.949, z = 531.737, rot = 70 } -- ( 049 ) Earth Elemental
mobs[50].pos = { x = -428.031, y = -12.956, z = 337.849, rot = 136 } -- ( 050 ) Dark Elemental
-- Wave 2 Nightmare Mobs Based on https://enedin.be/dyna/html/zone/frame_quf2.htm
mobs[76].pos = { x = -121.628, y = -19.756, z = 208.912, rot = 96 } -- ( 076 ) Nightmare Weapon (×3)
mobs[77].pos = { x = -134.926, y = -19.311, z = 196.783, rot = 161 } -- ( 077 ) Nightmare Weapon (×3)
mobs[78].pos = { x = -146.120, y = -20.016, z = 210.193, rot = 132 } -- ( 078 ) Nightmare Weapon (×3)
mobs[79].pos = { x = -130.309, y = -19.514, z = 223.921, rot = 94 } -- ( 079 ) Nightmare Weapon (×3)
mobs[80].pos = { x = -152.466, y = -19.784, z = 228.106, rot = 80 } -- ( 080 ) Nightmare Weapon (×3)
mobs[81].pos = { x = -180.295, y = -19.421, z = 234.489, rot = 124 } -- ( 081 ) Nightmare Weapon (×3)
mobs[82].pos = { x = -179.492, y = -19.027, z = 202.111, rot = 128 } -- ( 082 ) Nightmare Weapon (×3)
mobs[83].pos = { x = -204.581, y = -19.972, z = 196.347, rot = 177 } -- ( 083 ) Nightmare Weapon (×3)
mobs[84].pos = { x = -232.019, y = -19.347, z = 217.225, rot = 225 } -- ( 084 ) Nightmare Weapon (×3)
mobs[85].pos = { x = -223.150, y = -19.996, z = 252.186, rot = 131 } -- ( 085 ) Nightmare Weapon (×3)
mobs[86].pos = { x = -218.359, y = -19.083, z = 38.272, rot = 239 } -- ( 086 ) Nightmare Kraken (×2)
mobs[87].pos = { x = -243.159, y = -20.207, z = 27.225, rot = 198 } -- ( 087 ) Nightmare Kraken (×2)
mobs[88].pos = { x = -250.003, y = -20.170, z = 47.660, rot = 69 } -- ( 088 ) Nightmare Kraken (×2)
mobs[89].pos = { x = -265.529, y = -19.342, z = 39.694, rot = 8 } -- ( 089 ) Nightmare Kraken (×2)
mobs[90].pos = { x = -276.600, y = -19.065, z = 61.284, rot = 83 } -- ( 090 ) Nightmare Kraken (×2)
mobs[91].pos = { x = -294.936, y = -20.308, z = 50.588, rot = 29 } -- ( 091 ) Nightmare Kraken (×2)
mobs[92].pos = { x = -282.784, y = -19.906, z = 23.687, rot = 238 } -- ( 092 ) Nightmare Kraken (×2)
mobs[93].pos = { x = -277.102, y = -20.299, z = 87.588, rot = 87 } -- ( 093 ) Nightmare Kraken (×2)
mobs[94].pos = { x = -311.925, y = -19.710, z = 58.419, rot = 10 } -- ( 094 ) Nightmare Kraken (×2)
mobs[95].pos = { x = -332.640, y = -20.770, z = 56.555, rot = 26 } -- ( 095 ) Nightmare Kraken (×2)
mobs[96].pos = { x = -341.548, y = -20.000, z = 40.281, rot = 235 } -- ( 096 ) Nightmare Kraken (×2)
mobs[97].pos = { x = -304.406, y = -13.677, z = 26.310, rot = 162 } -- ( 097 ) Nightmare Kraken (×2)
mobs[98].pos = { x = -287.617, y = -6.243, z = 14.683, rot = 150 } -- ( 098 ) Nightmare Kraken (×3)
mobs[99].pos = { x = -5.263, y = -19.257, z = -17.494, rot = 134 } -- ( 099 ) Nightmare Tiger (×4)
mobs[100].pos = { x = 9.803, y = -19.711, z = 2.171, rot = 83 } -- ( 100 ) Nightmare Tiger (×4)
mobs[101].pos = { x = 16.809, y = -19.160, z = -37.493, rot = 160 } -- ( 101 ) Nightmare Tiger (×4)
mobs[102].pos = { x = 31.847, y = -19.619, z = -23.678, rot = 129 } -- ( 102 ) Nightmare Tiger (×5)
mobs[103].pos = { x = 26.496, y = -19.454, z = 2.021, rot = 98 } -- ( 103 ) Nightmare Tiger (×5)
mobs[104].pos = { x = 42.812, y = -19.072, z = -18.570, rot = 125 } -- ( 104 ) Nightmare Tiger (×5)
mobs[105].pos = { x = 42.515, y = -20.000, z = -43.731, rot = 152 } -- ( 105 ) Nightmare Tiger (×5)
mobs[106].pos = { x = 130.669, y = -19.668, z = 82.273, rot = 117 } -- ( 106 ) Nightmare Raptor (×2)
mobs[107].pos = { x = 148.374, y = -19.620, z = 76.792, rot = 122 } -- ( 107 ) Nightmare Raptor (×2)
mobs[108].pos = { x = 160.662, y = -19.133, z = 97.363, rot = 111 } -- ( 108 ) Nightmare Raptor (×2)
mobs[109].pos = { x = 145.314, y = -19.913, z = 105.753, rot = 129 } -- ( 109 ) Nightmare Raptor (×2)
mobs[110].pos = { x = 123.742, y = -19.506, z = 107.013, rot = 90 } -- ( 110 ) Nightmare Raptor (×2)
mobs[111].pos = { x = 119.467, y = -20.012, z = 123.786, rot = 77 } -- ( 111 ) Nightmare Raptor (×2)
mobs[112].pos = { x = 139.221, y = -19.040, z = 121.758, rot = 128 } -- ( 112 ) Nightmare Raptor (×2)
mobs[113].pos = { x = 157.073, y = -20.000, z = 120.170, rot = 126 } -- ( 113 ) Nightmare Raptor (×2)
mobs[114].pos = { x = 162.310, y = -19.547, z = 147.419, rot = 96 } -- ( 114 ) Nightmare Raptor (×2)
mobs[115].pos = { x = 146.681, y = -19.473, z = 160.135, rot = 96 } -- ( 115 ) Nightmare Raptor (×2)
mobs[116].pos = { x = 123.247, y = -19.623, z = 148.440, rot = 78 } -- ( 116 ) Nightmare Raptor (×2)
mobs[117].pos = { x = 196.789, y = -20.000, z = 119.545, rot = 127 } -- ( 117 ) Nightmare Raptor (×2)
mobs[118].pos = { x = -270.470, y = -10.747, z = 487.465, rot = 231 } -- ( 118 ) Nightmare Diremite (×2)
mobs[119].pos = { x = -275.038, y = -11.989, z = 471.655, rot = 162 } -- ( 119 ) Nightmare Diremite (×2)
mobs[120].pos = { x = -284.911, y = -12.086, z = 484.757, rot = 245 } -- ( 120 ) Nightmare Diremite (×2)
mobs[121].pos = { x = -296.533, y = -11.751, z = 491.319, rot = 54 } -- ( 121 ) Nightmare Diremite (×2)
mobs[122].pos = { x = -300.984, y = -11.000, z = 478.629, rot = 248 } -- ( 122 ) Nightmare Diremite (×2)
mobs[123].pos = { x = -298.767, y = -12.114, z = 463.578, rot = 218 } -- ( 123 ) Nightmare Diremite (×2)
mobs[124].pos = { x = -308.469, y = -12.394, z = 456.989, rot = 202 } -- ( 124 ) Nightmare Diremite (×2)
mobs[125].pos = { x = -320.408, y = -12.000, z = 472.749, rot = 7 } -- ( 125 ) Nightmare Diremite (×2)
mobs[126].pos = { x = -332.928, y = -12.946, z = 467.776, rot = 207 } -- ( 126 ) Nightmare Diremite (×2)
mobs[127].pos = { x = -316.672, y = -11.611, z = 450.671, rot = 221 } -- ( 127 ) Nightmare Diremite (×2)
mobs[128].pos = { x = -318.770, y = -11.912, z = 428.749, rot = 215 } -- ( 128 ) Nightmare Diremite (×2)
mobs[129].pos = { x = -332.708, y = -11.348, z = 443.779, rot = 234 } -- ( 129 ) Nightmare Diremite (×2)
mobs[130].pos = { x = -358.722, y = -12.000, z = 442.357, rot = 2 } -- ( 130 ) Nightmare Diremite (×2)
mobs[131].pos = { x = 255.054, y = -9.825, z = -20.566, rot = 157 } -- ( 131 ) Nightmare Gaylas (×3)
mobs[132].pos = { x = 209.686, y = 21.250, z = -150.013, rot = 232 } -- ( 132 ) Nightmare Gaylas (×3)
mobs[133].pos = { x = 191.926, y = 20.154, z = -154.146, rot = 32 } -- ( 133 ) Nightmare Gaylas (×3)
mobs[134].pos = { x = 198.768, y = 20.933, z = -175.515, rot = 216 } -- ( 134 ) Nightmare Gaylas (×4)
mobs[135].pos = { x = 185.369, y = 20.750, z = -195.772, rot = 193 } -- ( 135 ) Nightmare Gaylas (×4)
mobs[136].pos = { x = 162.382, y = 20.186, z = -194.457, rot = 241 } -- ( 136 ) Nightmare Gaylas (×4)
mobs[137].pos = { x = 153.565, y = 20.512, z = -214.524, rot = 219 } -- ( 137 ) Nightmare Gaylas (×4)
mobs[138].pos = { x = 165.904, y = 20.263, z = -235.467, rot = 209 } -- ( 138 ) Nightmare Gaylas (×4)

----------------------------------------------------------------------------------------------------
--                                    Setup of Mob Functions                                      --
----------------------------------------------------------------------------------------------------
------------------------------------------
--             Patrol Paths             --
------------------------------------------

------------------------------------------
--          Statue Eye Colors           --
------------------------------------------

mobs[25].eyes = xi.dynamis.eye.BLUE
mobs[26].eyes = xi.dynamis.eye.GREEN
mobs[27].eyes = xi.dynamis.eye.BLUE
mobs[34].eyes = xi.dynamis.eye.BLUE
mobs[35].eyes = xi.dynamis.eye.GREEN
mobs[72].eyes = xi.dynamis.eye.BLUE

------------------------------------------
--        Time Extension Values         --
------------------------------------------

mobs.timeExtensionList = { 64 }
mobs[64].timeExtension = 60
