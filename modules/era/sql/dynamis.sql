-- --------------------------------------------------------------------
--                        Era Dynamis Module                          --
--                                                                    --
-- Droplists, spell/skill lists, skill tuning and mob groups for the  --
-- level 75 era Dynamis.                                               --
-- --------------------------------------------------------------------

-- Variables
SET @ALWAYS = 1000;  -- Always, 100%
SET @VCOMMON = 240;  -- Very common, 24%
SET @COMMON = 150;   -- Common, 15%
SET @UNCOMMON = 100; -- Uncommon, 10%
SET @RARE = 50;      -- Rare, 5%
SET @VRARE = 10;     -- Very rare, 1%
SET @SRARE = 5;      -- Super Rare, 0.5%
SET @URARE = 1;      -- Ultra rare, 0.1%

-- --------------------------------------------------------------------
--                        Dynamis Era Module                        --
-- --------------------------------------------------------------------

-- --------------------------------------------------------------------
--                          Dynamis-Bastok                          --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--            Megaboss           --
DELETE FROM `mob_droplist` WHERE dropid = "4089"; -- Delete Droplist 2906
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,1455,@COMMON); -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,1455,@COMMON); -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (4089,0,0,1000,1456,@COMMON); -- Hundred Byne Bill
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "4000"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4000,0,0,1000,748,20);  -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4000,0,0,1000,749,60);  -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4000,0,0,1000,1456,30); -- Hundred Byne Bill
REPLACE INTO `mob_droplist` VALUES (4000,0,0,1000,1470,50); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4000,0,0,1000,1474,130); -- Infinity Core
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4090"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15133,91); -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15120,91); -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15106,91); -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15092,90); -- THF Body
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15078,91); -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15139,91); -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15095,91); -- BST Body
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15111,91); -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15113,91); -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15130,91); -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4090,1,1,@UNCOMMON,15116,91); -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4090,1,2,@RARE,16346,500); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4090,1,2,@RARE,11385,500); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4090,1,3,@RARE,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4090,1,3,@RARE,11478,500); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1455,@VCOMMON); -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1455,@COMMON); -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1455,@UNCOMMON); -- Byne Bill 3
REPLACE INTO `mob_droplist` VALUES (4090,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4090,0,0,1000,1456,@VRARE); -- 1 Hbyne
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4080"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15133,91); -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15120,91); -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15106,91); -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15092,90); -- THF Body
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15078,91); -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15139,91); -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15095,91); -- BST Body
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15111,91); -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15113,91); -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15130,91); -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4080,1,1,@RARE,15116,91); -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4080,1,3,@RARE,16346,500); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4080,1,3,@RARE,11385,500); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4080,1,4,@RARE,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4080,1,4,@RARE,11478,500); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1455,@VCOMMON); -- Byne Bill 1
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1455,@COMMON); -- Byne Bill 2
REPLACE INTO `mob_droplist` VALUES (4080,0,0,1000,1455,@UNCOMMON); -- Byne Bill 3
REPLACE INTO `mob_droplist` VALUES (4080,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4080,1,2,@RARE,18314,250); -- Ito
REPLACE INTO `mob_droplist` VALUES (4080,1,2,@RARE,18302,250); -- Relic Scythe
REPLACE INTO `mob_droplist` VALUES (4080,1,2,@RARE,18284,250); -- Relic Axe
REPLACE INTO `mob_droplist` VALUES (4080,1,2,@RARE,18278,250); -- Relic Blade
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 143
-- Use Spell List 0
-- --------------------------------------------------------------------
--                         Dynamis-San d`Oria                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4055"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,1452,@COMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (4055,0,0,1000,1453,@COMMON); -- Montiont Silverpiece
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "4059"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4059,0,0,1000,748,40);  -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4059,0,0,1000,749,90);  -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4059,0,0,1000,1453,30); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4059,0,0,1000,1470,50); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4059,0,0,1000,1474,50); -- Infinity Core
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4092"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15132,90); -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15118,91); -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15074,91); -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15136,91); -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15108,91); -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15125,91); -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15081,91); -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15127,91); -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15129,91); -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15145,91); -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4092,1,1,@UNCOMMON,15146,91); -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4092,1,2,@RARE,15025,500); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4092,1,2,@RARE,16349,500); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4092,1,3,@RARE,11388,500); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4092,1,3,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1452,@VCOMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1452,@UNCOMMON); -- Bronzepiece 3
REPLACE INTO `mob_droplist` VALUES (4092,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4092,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4070"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15132,90); -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15118,91); -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15074,91); -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15136,91); -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15108,91); -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15125,91); -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15081,91); -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15127,91); -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15129,91); -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15145,91); -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4070,1,1,@RARE,15146,91); -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4070,1,3,@RARE,15025,500); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4070,1,3,@RARE,16349,500); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4070,1,4,@RARE,11388,500); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4070,1,4,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1452,@VCOMMON); -- Bronzepiece 1
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1452,@COMMON); -- Bronzepiece 2
REPLACE INTO `mob_droplist` VALUES (4070,0,0,1000,1452,@UNCOMMON); -- Bronzepiece 3
REPLACE INTO `mob_droplist` VALUES (4070,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4070,1,2,@RARE,18308,250); -- Ihintanto
REPLACE INTO `mob_droplist` VALUES (4070,1,2,@RARE,18332,250); -- Relic Gun
REPLACE INTO `mob_droplist` VALUES (4070,1,2,@RARE,18290,250); -- Relic Bhuj
REPLACE INTO `mob_droplist` VALUES (4070,1,2,@RARE,18296,250); -- Relic Lance
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 93
-- Use Spell List 49
-- --------------------------------------------------------------------
--                         Dynamis-Windurst                         --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4060"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,749,@UNCOMMON); -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,748,@UNCOMMON); -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,1474,@COMMON); -- Infinity Core
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,1449,@COMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (4060,0,0,1000,1450,@COMMON); -- Jadeshell
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "4005"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4005,0,0,1000,748,10);  -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4005,0,0,1000,749,10);  -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4005,0,0,1000,1450,30); -- Lungo-Nango Jadeshell
REPLACE INTO `mob_droplist` VALUES (4005,0,0,1000,1470,80); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4005,0,0,1000,1474,80); -- Infinity Core
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4027"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15072,90); -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15134,91); -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15105,91); -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15077,91); -- THF Head
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15138,91); -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15109,91); -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15080,91); -- BST Head
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15112,91); -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15128,91); -- Sam Legs
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15084,91); -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4027,1,1,@UNCOMMON,15131,91); -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4027,1,2,@RARE,11382,500); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4027,1,2,@RARE,15031,500); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4027,1,3,@RARE,11398,500); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4027,1,3,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1518,@VRARE); -- colossal skull
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1466,@VRARE); -- relic iron
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1464,@VRARE); -- lancewood log
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1470,@RARE); -- sparkling stone
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1449,@VCOMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1449,@UNCOMMON); -- Whiteshell 3
REPLACE INTO `mob_droplist` VALUES (4027,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4027,0,0,1000,1450,@VRARE); -- Jadeshell
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4075"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15072,90); -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15134,91); -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15105,91); -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15077,91); -- THF Head
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15138,91); -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15109,91); -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15080,91); -- BST Head
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15112,91); -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15128,91); -- Sam Legs
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15084,91); -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4075,1,1,@RARE,15131,91); -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4075,1,3,@RARE,11382,500); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4075,1,3,@RARE,15031,500); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4075,1,4,@RARE,11398,500); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4075,1,4,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1518,@VRARE); -- Colossal Skull
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1466,@VRARE); -- Relic Iron
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1464,@VRARE); -- Lancewood Log
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1449,@VCOMMON); -- Whiteshell 1
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1449,@COMMON); -- Whiteshell 2
REPLACE INTO `mob_droplist` VALUES (4075,0,0,1000,1449,@UNCOMMON); -- Whiteshell 3
REPLACE INTO `mob_droplist` VALUES (4075,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4075,1,2,@RARE,18266,250); -- Relic Dagger
REPLACE INTO `mob_droplist` VALUES (4075,1,2,@RARE,18260,250); -- Relic Knuckles
REPLACE INTO `mob_droplist` VALUES (4075,1,2,@RARE,18320,250); -- Relic Maul
REPLACE INTO `mob_droplist` VALUES (4075,1,2,@RARE,18272,250); -- Relic Sword
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 95
-- Use Spell List 50
-- --------------------------------------------------------------------
--                          Dynamis-Jeuno                           --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4020"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,748,10);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,749,10);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1455,90);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1474,80);
REPLACE INTO `mob_droplist` VALUES (4020,0,0,1000,1453,30);
--            Statues            --
DELETE FROM `mob_droplist` WHERE dropid = "4021"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,748,10);  -- Gold Beastcoin
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,749,10);  -- Mythril Beastcoin
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,1450,30); -- Lungo-Nango Jadeshell
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,1453,30); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,1456,30); -- Hundred Byne Bill
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,1470,80); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4021,0,0,1000,1474,80); -- Infinity Core
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4002"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15102,90); -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15103,91); -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15119,91); -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15135,91); -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15121,91); -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15137,91); -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15124,91); -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15141,91); -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15082,91); -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15143,91); -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15144,91); -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4002,1,1,@UNCOMMON,15115,91); -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4002,1,3,@RARE,15028,500); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4002,1,3,@RARE,16352,500); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4002,1,4,10,16352,1000); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4002,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (4002,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4002,1,2,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4002,1,2,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4002,1,2,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4002,1,3,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4002,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4002,1,3,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4002,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4002,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4002,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4002,1,4,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4002,1,4,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4002,1,4,@VRARE,1453,334); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4065"; -- Delete
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15102,90); -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15103,91); -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15119,91); -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15135,91); -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15121,91); -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15137,91); -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15124,91); -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15141,91); -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15082,91); -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15143,91); -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15144,91); -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4065,1,1,@RARE,15115,91); -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4065,1,3,10,15028,500); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4065,1,3,10,16352,500); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4065,1,4,5,16352,1000); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4065,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (4065,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4065,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4065,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4065,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4065,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4065,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4065,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4065,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4065,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4065,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4065,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4065,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4065,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4065,1,5,@RARE,18344,250); -- Relic Bow
REPLACE INTO `mob_droplist` VALUES (4065,1,5,@RARE,18338,250); -- Relic Horn
REPLACE INTO `mob_droplist` VALUES (4065,1,5,@RARE,18326,250); -- Relic Staff
REPLACE INTO `mob_droplist` VALUES (4065,1,5,@RARE,15066,250); -- Relic Shield
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 92
-- Use Spell List 47
-- --------------------------------------------------------------------
--                         Dynamis-Beaucedine                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
-- Use Drop ID 0
--             Eyes              --
DELETE FROM `mob_droplist` WHERE dropid = "4094"; -- Angra Mainyu
REPLACE INTO `mob_droplist` VALUES (4094,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4094,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4094,1,1,@VRARE,1453,334); -- Montinont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4082"; -- Eyes
REPLACE INTO `mob_droplist` VALUES (4082,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4082,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4082,1,1,@VRARE,1453,334); -- Montinont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4096"; -- Vanguard Eyes
REPLACE INTO `mob_droplist` VALUES (4096,1,1,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4096,1,1,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4096,1,1,@VRARE,1453,334); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4096,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "4097"; -- Orc Statues
REPLACE INTO `mob_droplist` VALUES (4097,0,0,1000,1453,@VRARE); -- Montinont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4097,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "4098"; -- Quadav Statues
REPLACE INTO `mob_droplist` VALUES (4098,0,0,1000,1456,@VRARE); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4098,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
DELETE FROM `mob_droplist` WHERE dropid = "4099"; -- Yagudo Statues
REPLACE INTO `mob_droplist` VALUES (4099,0,0,1000,1450,@VRARE); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4099,0,0,1000,4248,@UNCOMMON); -- Ginurva's Battle Theory
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4004"; -- Goblin NM
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4004,1,1,@UNCOMMON,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4004,1,3,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4004,1,3,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4004,1,3,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4004,1,4,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4004,1,4,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4004,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4004,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4004,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4004,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4004,1,2,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4004,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4004,1,2,@VRARE,1453,334); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4010"; -- Orc NM
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4010,1,1,@UNCOMMON,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4010,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4010,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4010,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4010,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4010,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4010,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4010,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4010,2,0,1000,1452,0);   -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4010,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4007"; -- Quadav NM
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4007,1,1,@UNCOMMON,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4007,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4007,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4007,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4007,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4007,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4007,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4007,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4007,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4007,0,0,1000,1456,@VRARE); -- Hundred Byne
DELETE FROM `mob_droplist` WHERE dropid = "4008"; -- Yagudo NM
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4008,1,1,@UNCOMMON,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4008,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4008,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4008,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4008,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4008,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4008,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4008,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4008,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4008,0,0,1000,1450,@VRARE); -- Jadeshell
DELETE FROM `mob_droplist` WHERE dropid = "4014"; -- Dagourmarche
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1560,330);
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1563,330);
REPLACE INTO `mob_droplist` VALUES (4014,0,0,1000,1567,330);
DELETE FROM `mob_droplist` WHERE dropid = "4022"; -- Goublefaupe
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1558,330);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1559,330);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1561,330);
REPLACE INTO `mob_droplist` VALUES (4022,0,0,1000,1821,330);
DELETE FROM `mob_droplist` WHERE dropid = "4035"; -- Mildaunegeux
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1556,330);
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1564,330);
REPLACE INTO `mob_droplist` VALUES (4035,0,0,1000,1570,330);
DELETE FROM `mob_droplist` WHERE dropid = "4057"; -- Quiebitiel
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1557,330);
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1566,330);
REPLACE INTO `mob_droplist` VALUES (4057,0,0,1000,1569,330);
DELETE FROM `mob_droplist` WHERE dropid = "4083"; -- Velosareon
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1562,330);
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1565,330);
REPLACE INTO `mob_droplist` VALUES (4083,0,0,1000,1568,330);
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4064"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4064,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4064,1,5,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4064,1,5,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4064,1,5,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4064,1,6,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4064,1,6,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4064,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (4064,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4064,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4064,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4064,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4064,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4064,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4064,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4064,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4064,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4064,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4064,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4064,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4064,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4069"; -- Orc
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15090,66); -- BLM Bodys
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4069,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4069,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4069,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4069,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4069,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4069,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1519,@VRARE); -- Fresh Orc Liver
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1517,@VRARE); -- Giant Frozen Head
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1516,@VRARE); -- Griffon Hide
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1452,@VCOMMON);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1452,@COMMON);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4069,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4069,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4079"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4079,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4079,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4079,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4079,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4079,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4079,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1469,@VRARE); -- Wootz Ore
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1521,@VRARE); -- Slime Juice
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1455,@VCOMMON);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1455,@COMMON);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4079,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4079,2,0,1000,1455,0); -- Byne Bill (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4074"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4074,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4074,1,2,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4074,1,2,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4074,1,2,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4074,1,3,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4074,1,3,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1518,@VRARE); -- Colossal Skull
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1466,@VRARE); -- Relic Iron
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1464,@VRARE); -- Lancewood Log
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1449,@VCOMMON);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1449,@COMMON);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4074,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4074,2,0,1000,1449,0); -- Whiteshell (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4095"; -- Hydra
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4095,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4095,1,5,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4095,1,5,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4095,1,5,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4095,1,6,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4095,1,6,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4095,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (4095,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4095,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4095,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4095,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4095,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4095,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4095,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4095,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4095,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4095,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4095,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4095,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4095,2,0,1000,1452,0); -- Bronzepiece (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 4
-- Use Spell List 500
-- --------------------------------------------------------------------
--                          Dynamis-Xarcabard                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4018"; -- Dynamis Lord
REPLACE INTO `mob_droplist` VALUES (4018,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4018,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4018,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4018,0,0,1000,13658,520);
REPLACE INTO `mob_droplist` VALUES (4018,0,0,1000,14646,210);
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4013"; -- Count Zaebos
REPLACE INTO `mob_droplist` VALUES (4013,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4013,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4013,0,0,1000,15087,70);
DELETE FROM `mob_droplist` WHERE dropid = "4015"; -- Duke Berith
REPLACE INTO `mob_droplist` VALUES (4015,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4015,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4015,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4015,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4015,0,0,1000,15076,160);
DELETE FROM `mob_droplist` WHERE dropid = "4030"; -- Marquis Decarabia
REPLACE INTO `mob_droplist` VALUES (4030,0,0,1000,1452,40);
REPLACE INTO `mob_droplist` VALUES (4030,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4030,0,0,1000,15126,120);
DELETE FROM `mob_droplist` WHERE dropid = "4016"; -- Duke Gomory
REPLACE INTO `mob_droplist` VALUES (4016,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4016,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4016,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4016,0,0,1000,15073,110);
DELETE FROM `mob_droplist` WHERE dropid = "4028"; -- Marquis Andras
REPLACE INTO `mob_droplist` VALUES (4028,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4028,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4028,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4028,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4028,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4028,0,0,1000,15110,130);
DELETE FROM `mob_droplist` WHERE dropid = "4056"; -- Prince Seere
REPLACE INTO `mob_droplist` VALUES (4056,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4056,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4056,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4056,0,0,1000,15104,70);
DELETE FROM `mob_droplist` WHERE dropid = "4017"; -- Duke Scox
REPLACE INTO `mob_droplist` VALUES (4017,0,0,1000,1455,90);
REPLACE INTO `mob_droplist` VALUES (4017,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4017,0,0,1000,15079,90);
DELETE FROM `mob_droplist` WHERE dropid = "4031"; -- Marquis Gamygyn
REPLACE INTO `mob_droplist` VALUES (4031,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4031,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4031,0,0,1000,15114,100);
DELETE FROM `mob_droplist` WHERE dropid = "4033"; -- Marquis Orias
REPLACE INTO `mob_droplist` VALUES (4033,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4033,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4033,0,0,1000,15075,60);
DELETE FROM `mob_droplist` WHERE dropid = "4011"; -- Count Raum
REPLACE INTO `mob_droplist` VALUES (4011,0,0,1000,1449,40);
REPLACE INTO `mob_droplist` VALUES (4011,0,0,1000,1455,30);
REPLACE INTO `mob_droplist` VALUES (4011,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4011,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4011,0,0,1000,15107,90);
DELETE FROM `mob_droplist` WHERE dropid = "4032"; -- Marquis Nebiros
REPLACE INTO `mob_droplist` VALUES (4032,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4032,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4032,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4032,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4032,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4032,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4032,0,0,1000,15086,130);
DELETE FROM `mob_droplist` WHERE dropid = "4034"; -- Marquis Sabnak
REPLACE INTO `mob_droplist` VALUES (4034,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4034,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4034,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4034,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4034,0,0,1000,1455,90);
REPLACE INTO `mob_droplist` VALUES (4034,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4034,0,0,1000,15093,50);
DELETE FROM `mob_droplist` WHERE dropid = "4012"; -- Count Vine
REPLACE INTO `mob_droplist` VALUES (4012,0,0,1000,1449,90);
REPLACE INTO `mob_droplist` VALUES (4012,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4012,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4012,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4012,0,0,1000,15083,180);
DELETE FROM `mob_droplist` WHERE dropid = "4026"; -- King Zagan
REPLACE INTO `mob_droplist` VALUES (4026,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4026,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4026,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4026,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4026,0,0,1000,1455,90);
REPLACE INTO `mob_droplist` VALUES (4026,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4026,0,0,1000,15085,110);
DELETE FROM `mob_droplist` WHERE dropid = "4029"; -- Marquis Cimeries
REPLACE INTO `mob_droplist` VALUES (4029,0,0,1000,1452,10);
REPLACE INTO `mob_droplist` VALUES (4029,0,0,1000,1455,90);
REPLACE INTO `mob_droplist` VALUES (4029,0,0,1000,4249,1000);
REPLACE INTO `mob_droplist` VALUES (4029,0,0,1000,15097,80);
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4025"; -- Kindred
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15087,66); -- WAR Body
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15073,66); -- MNK Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15104,66); -- WHM Hands
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15075,66); -- BLM Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15076,66); -- RDM Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15107,67); -- THF Hands
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15093,67); -- PLD Body
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15079,67); -- DRK Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15110,67); -- BST Hands
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15126,67); -- BRD Legs
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15097,67); -- RNG Body
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15083,67); -- SAM Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15114,67); -- NIN Hands
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15085,67); -- DRG Head
REPLACE INTO `mob_droplist` VALUES (4025,1,1,@RARE,15086,67); -- SMN Head
REPLACE INTO `mob_droplist` VALUES (4025,1,5,@RARE,11468,333); -- COR Head
REPLACE INTO `mob_droplist` VALUES (4025,1,5,@RARE,11465,333); -- BLU Head
REPLACE INTO `mob_droplist` VALUES (4025,1,5,@RARE,11471,334); -- PUP Head
REPLACE INTO `mob_droplist` VALUES (4025,1,6,@RARE,11480,500); -- SCH Head
REPLACE INTO `mob_droplist` VALUES (4025,1,6,@RARE,11305,500); -- DNC Body
REPLACE INTO `mob_droplist` VALUES (4025,1,2,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4025,1,2,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4025,1,2,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4025,1,3,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4025,1,3,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4025,1,3,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4025,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4025,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4025,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4025,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4025,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4025,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4081"; -- Vanguard Dragon
REPLACE INTO `mob_droplist` VALUES (4081,1,1,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4081,1,1,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4081,1,1,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4081,1,2,@VRARE,1456,334); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4081,1,2,@VRARE,1450,333); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4081,1,2,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4081,0,0,1000,1589,@COMMON); -- Necropsyche
REPLACE INTO `mob_droplist` VALUES (4081,0,0,1000,1452,@ALWAYS); -- Strategems
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 361
-- Use Spell List 86
--           Dragons             --
-- Use Skill List 87
-- --------------------------------------------------------------------
--                            Dynamis-Valkurm                        --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4009"; -- Cirrate Christelle
REPLACE INTO `mob_droplist` VALUES (4009,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4009,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4009,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4009,0,0,1000,1456,30);
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4091"; -- NMs
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,1,@UNCOMMON,2103,67);  -- SMN -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@UNCOMMON,2662,333); -- BLU -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@UNCOMMON,2667,333); -- COR -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@UNCOMMON,2672,334); -- PUP -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,4,@UNCOMMON,2718,500); -- DNC -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,4,@UNCOMMON,2723,500); -- SCH -1 Head
REPLACE INTO `mob_droplist` VALUES (4091,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4091,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4091,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4091,1,3,@VRARE,1453,333); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4061"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4061,1,1,@RARE,15131,67);  -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4061,1,4,@RARE,11382,333); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4061,1,4,@RARE,16349,333); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4061,1,4,@RARE,16352,334); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4061,1,5,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4061,1,5,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4061,1,2,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4061,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4061,1,2,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4061,1,3,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4061,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4061,1,3,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4061,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4061,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4061,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4066"; -- Orc
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4066,1,1,@RARE,15131,67);  -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4066,1,2,@RARE,11382,333); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4066,1,2,@RARE,16349,333); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4066,1,2,@RARE,16352,334); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4066,1,3,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4066,1,3,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4066,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4066,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4066,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "4076"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4076,1,1,@RARE,15131,67);  -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4076,1,2,@RARE,11382,333); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4076,1,2,@RARE,16349,333); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4076,1,2,@RARE,16352,334); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4076,1,3,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4076,1,3,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4076,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4076,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4076,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "4071"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15132,66);  -- WAR Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15133,66);  -- MNK Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15134,66);  -- WHM Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15135,66);  -- BLM Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15136,66);  -- RDM Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15077,67);  -- THF Head
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15138,67);  -- PLD Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15139,67);  -- DRK Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15080,67);  -- BST Head
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15141,67);  -- BRD Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15112,67);  -- RNG Hands
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15143,67);  -- SAM Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15129,67);  -- NIN Legs
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15130,67);  -- DRG Legs
REPLACE INTO `mob_droplist` VALUES (4071,1,1,@RARE,15131,67);  -- SMN Legs
REPLACE INTO `mob_droplist` VALUES (4071,1,2,@RARE,11382,333); -- BLU Feet
REPLACE INTO `mob_droplist` VALUES (4071,1,2,@RARE,16349,333); -- COR Legs
REPLACE INTO `mob_droplist` VALUES (4071,1,2,@RARE,16352,334); -- PUP Legs
REPLACE INTO `mob_droplist` VALUES (4071,1,3,@RARE,15038,500); -- DNC Hands
REPLACE INTO `mob_droplist` VALUES (4071,1,3,@RARE,15040,500); -- SCH Hands
REPLACE INTO `mob_droplist` VALUES (4071,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4071,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4071,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "4043"; -- Hippogryph / Sabotender
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,1,@RARE,2103,67);  -- SMN -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,3,@RARE,2662,333); -- BLU -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,3,@RARE,2667,333); -- COR -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,3,@RARE,2672,334); -- PUP -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,4,@RARE,2718,500); -- DNC -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,4,@RARE,2723,500); -- SCH -1 Head
REPLACE INTO `mob_droplist` VALUES (4043,1,2,@RARE,15481,200); -- PLD Back
REPLACE INTO `mob_droplist` VALUES (4043,1,2,@RARE,15877,200); -- NIN Waist
REPLACE INTO `mob_droplist` VALUES (4043,1,2,@RARE,15482,200); -- BRD Back
REPLACE INTO `mob_droplist` VALUES (4043,1,2,@RARE,15484,200); -- SMN Back
REPLACE INTO `mob_droplist` VALUES (4043,1,2,@RARE,15871,200); -- WAR Waist
REPLACE INTO `mob_droplist` VALUES (4043,1,5,10,15920,1000); -- COR Waist
REPLACE INTO `mob_droplist` VALUES (4043,1,6,10,16248,1000); -- DNC Back
REPLACE INTO `mob_droplist` VALUES (4043,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4043,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4043,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "4045"; -- Sheep / Fly
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2033,66);  -- WAR -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2038,66);  -- MNK -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2043,66);  -- WHM -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2048,66);  -- BLM -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2053,66);  -- RDM -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2058,67);  -- THF -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2063,67);  -- PLD -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2068,67);  -- DRK -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2073,67);  -- BST -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2078,67);  -- BRD -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2083,67);  -- RNG -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2088,67);  -- SAM -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2093,67);  -- NIN -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2098,67);  -- DRG -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,1,@RARE,2103,67);  -- SMN -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,3,@RARE,2662,333); -- BLU -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,3,@RARE,2667,333); -- COR -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,3,@RARE,2672,334); -- PUP -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,4,@RARE,2718,500); -- DNC -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,4,@RARE,2723,500); -- SCH -1 Head
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15480,125); -- THF Back
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15879,125); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15872,125); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15874,125); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15482,125); -- BRD Back
REPLACE INTO `mob_droplist` VALUES (4045,1,2,@RARE,15875,125); -- BST Waist
REPLACE INTO `mob_droplist` VALUES (4045,1,5,10,16244,1000); -- BLU Back
REPLACE INTO `mob_droplist` VALUES (4045,1,6,10,16248,1000); -- DNC Back
REPLACE INTO `mob_droplist` VALUES (4045,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4045,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4045,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "4050"; -- Manticore
REPLACE INTO `mob_droplist` VALUES (4050,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,3462,30);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2033,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2038,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2043,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2048,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2053,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2058,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2063,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2068,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2073,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2078,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2083,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2088,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2093,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2098,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2103,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2662,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2667,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2672,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2718,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,2723,10);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,15480,20);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,15872,20);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,15874,20);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,15875,20);
REPLACE INTO `mob_droplist` VALUES (4050,0,0,1000,15879,20);
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- Use Skill List 0
--          Dragontrap            --
-- Use Skill List 114
--          Fairy Ring            --
-- Use Skill List 116
--           Nant`ina             --
-- Use Skill List 1214
REPLACE INTO `mob_skill_lists` VALUES ('Nantina',600,1617);
REPLACE INTO `mob_skill_lists` VALUES ('Nantina',600,1618);
REPLACE INTO `mob_skill_lists` VALUES ('Nantina',600,1619);
--         Stcemqestcint          --
-- Use Skill List 245
-- --------------------------------------------------------------------
--                           Dynamis-Buburimu                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4003"; -- Apocalyptic Beast
REPLACE INTO `mob_droplist` VALUES (4003,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4003,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4003,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4003,0,0,1000,1456,30);
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4006"; -- NMs
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@UNCOMMON,2669,333); -- COR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands
REPLACE INTO `mob_droplist` VALUES (4006,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4006,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4006,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4006,1,3,@VRARE,1453,333); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4084"; -- Goblin NM
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4084,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4084,1,4,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4084,1,4,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4084,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4084,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4084,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4084,1,3,@VRARE,1453,333); -- Montiont Silverpiece
REPLACE INTO `mob_droplist` VALUES (4084,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4084,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4084,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4019"; -- Orc NM
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4019,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4019,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4019,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4019,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4019,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4019,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4019,2,0,1000,1452,0); -- Bronzepiece (Steal)
REPLACE INTO `mob_droplist` VALUES (4019,0,0,1000,1453,@VRARE); -- Montiont Silverpiece
DELETE FROM `mob_droplist` WHERE dropid = "4088"; -- Quadav NM
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4088,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4088,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4088,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4088,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4088,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4088,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4088,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4088,0,0,1000,1456,@VRARE); -- Hundred Byne
DELETE FROM `mob_droplist` WHERE dropid = "4058"; -- Yagudo NM
REPLACE INTO `mob_droplist` VALUES (4058,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,5902,30);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,15116,130);
REPLACE INTO `mob_droplist` VALUES (4058,0,0,1000,1450,18);
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4062"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4062,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4062,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4062,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4062,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4062,1,3,@UNCOMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4062,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4062,1,3,@UNCOMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4062,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4062,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4062,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4067"; -- Orc
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4067,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4067,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4067,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4067,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4067,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4067,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4067,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4067,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "4077"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4077,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4077,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4077,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4077,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4077,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4077,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4077,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4077,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "4072"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15102,66);  -- WAR Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15118,66);  -- MNK Legs
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15074,66);  -- WHM Head
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15105,66);  -- BLM Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15106,66);  -- RDM Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15092,67);  -- THF Body
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15108,67);  -- PLD Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15109,67);  -- DRK Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15095,67);  -- BST Body
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15081,67);  -- BRD Head
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15127,67);  -- RNG Legs
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15128,67);  -- SAM Legs
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15144,67);  -- NIN Feet
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15145,67);  -- DRG Feet
REPLACE INTO `mob_droplist` VALUES (4072,1,1,@UNCOMMON,15116,67);  -- SMN Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,2,@UNCOMMON,16346,200); -- BLU Legs
REPLACE INTO `mob_droplist` VALUES (4072,1,2,@UNCOMMON,15028,200); -- COR Hands
REPLACE INTO `mob_droplist` VALUES (4072,1,2,@UNCOMMON,11388,200); -- PUP Feet
REPLACE INTO `mob_droplist` VALUES (4072,1,3,@UNCOMMON,11478,200); -- DNC Head
REPLACE INTO `mob_droplist` VALUES (4072,1,3,@UNCOMMON,11398,200); -- SCH Feet
REPLACE INTO `mob_droplist` VALUES (4072,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4072,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4072,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "4040"; -- Bunny/Mandragora
REPLACE INTO `mob_droplist` VALUES (4040,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,16245,20);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,15874,20);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,15876,20);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,15871,20);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,3463,30);
REPLACE INTO `mob_droplist` VALUES (4040,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4053"; -- Cockatrice
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,3,@UNCOMMON,2669,333); -- COR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands
REPLACE INTO `mob_droplist` VALUES (4053,1,2,@RARE,15874,500); -- BLM Waist
REPLACE INTO `mob_droplist` VALUES (4053,1,2,@RARE,15878,500); -- DRG Waist
REPLACE INTO `mob_droplist` VALUES (4053,1,5,@RARE,16245,1000); -- PUP Back
REPLACE INTO `mob_droplist` VALUES (4053,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4053,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4053,2,0,1000,1449,0); -- Whiteshell (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4042"; -- Crab
REPLACE INTO `mob_droplist` VALUES (4042,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,15481,20);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,15482,20);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,15878,20);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,15478,20);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,3465,20);
REPLACE INTO `mob_droplist` VALUES (4042,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4049"; -- Crawler
REPLACE INTO `mob_droplist` VALUES (4049,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,15479,20);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,16244,20);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,15873,20);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,15877,20);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,3464,30);
REPLACE INTO `mob_droplist` VALUES (4049,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4086"; -- Dhalmel
REPLACE INTO `mob_droplist` VALUES (4086,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,15481,20);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,15482,20);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,15878,20);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,15478,20);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,3465,10);
REPLACE INTO `mob_droplist` VALUES (4086,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4085"; -- Eft
REPLACE INTO `mob_droplist` VALUES (4085,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,16245,20);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,15874,20);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,15876,20);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,15871,20);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,3463,10);
REPLACE INTO `mob_droplist` VALUES (4085,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4039"; -- Raven
REPLACE INTO `mob_droplist` VALUES (4039,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,1455,200);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,15479,20);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,16244,20);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,15873,20);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,15877,20);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,3464,30);
REPLACE INTO `mob_droplist` VALUES (4039,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4038"; -- Scorpion
REPLACE INTO `mob_droplist` VALUES (4038,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,15481,20);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,15482,20);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,15878,20);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,15478,20);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2035,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2040,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2045,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2050,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2055,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2060,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2065,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2070,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2075,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2080,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2085,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2090,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2095,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2100,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2105,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2664,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2669,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2674,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2720,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,2725,10);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,3465,20);
REPLACE INTO `mob_droplist` VALUES (4038,0,0,1000,3466,10);
DELETE FROM `mob_droplist` WHERE dropid = "4036"; -- Uragnite
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2035,66);  -- WAR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2040,66);  -- MNK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2045,66);  -- WHM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2050,66);  -- BLM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2055,66);  -- RDM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2060,67);  -- THF -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2065,67);  -- PLD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2070,67);  -- DRK -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2075,67);  -- BST -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2080,67);  -- BRD -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2085,67);  -- RNG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2090,67);  -- SAM -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2095,67);  -- NIN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2100,67);  -- DRG -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,1,@UNCOMMON,2105,67);  -- SMN -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,3,@UNCOMMON,2664,333); -- BLU -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,3,@UNCOMMON,2669,333); -- COR -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,3,@UNCOMMON,2674,334); -- PUP -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,4,@UNCOMMON,2720,500); -- DNC -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,4,@UNCOMMON,2725,500); -- SCH -1 Hands
REPLACE INTO `mob_droplist` VALUES (4036,1,2,@RARE,15478,500); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (4036,1,2,@RARE,15481,500); -- PLD Back
REPLACE INTO `mob_droplist` VALUES (4036,1,5,10,16245,1000); -- PUP Back
REPLACE INTO `mob_droplist` VALUES (4036,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4036,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4036,2,0,1000,1455,0); -- Byne Bill (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
REPLACE INTO `mob_skill_lists` VALUES ('Stihi',601,642);
REPLACE INTO `mob_skill_lists` VALUES ('Vishap',602,643);
REPLACE INTO `mob_skill_lists` VALUES ('Jurik',5003,644);
REPLACE INTO `mob_skill_lists` VALUES ('Barong',5004,645);
REPLACE INTO `mob_skill_lists` VALUES ('Tarasca',5005,646);
REPLACE INTO `mob_skill_lists` VALUES ('Alklha',5006,647);
REPLACE INTO `mob_skill_lists` VALUES ('Basillic',5007,648);
REPLACE INTO `mob_skill_lists` VALUES ('Aitvaras',5008,649);
REPLACE INTO `mob_skill_lists` VALUES ('Koschei',5009,650);
REPLACE INTO `mob_skill_lists` VALUES ('Stollenwurm',5010,651);
-- --------------------------------------------------------------------
--                            Dynamis-Qufim                         --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--           Megaboss            --
DELETE FROM `mob_droplist` WHERE dropid = "4001"; -- Antaeus
REPLACE INTO `mob_droplist` VALUES (4001,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4001,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4001,0,0,1000,1456,30);
--              NMs              --
DELETE FROM `mob_droplist` WHERE dropid = "4093"; -- NMs
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@UNCOMMON,2671,333); -- COR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet
REPLACE INTO `mob_droplist` VALUES (4093,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4093,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4093,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@VRARE,1456,333); -- Hundred Byne
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@VRARE,1450,334); -- Jadeshell
REPLACE INTO `mob_droplist` VALUES (4093,1,3,@VRARE,1453,333); -- Montiont Silverpiece
--            Regular            --
DELETE FROM `mob_droplist` WHERE dropid = "4063"; -- Goblin
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,1,@UNCOMMON,15146,67);  -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@UNCOMMON,15025,333); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@UNCOMMON,11385,333); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@UNCOMMON,15031,334); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4063,1,3,@UNCOMMON,16352,500); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4063,1,3,@UNCOMMON,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@COMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4063,1,2,@COMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4063,1,3,@UNCOMMON,1455,333); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4063,1,3,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4063,1,3,@UNCOMMON,1452,334); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4063,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4063,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4063,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4068"; -- Orc
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,1,@UNCOMMON,15146,67);  -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4068,1,2,@UNCOMMON,15025,333); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,2,@UNCOMMON,11385,333); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4068,1,2,@UNCOMMON,15031,334); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4068,1,3,@UNCOMMON,16352,500); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4068,1,3,@UNCOMMON,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4068,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4068,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4068,2,0,1000,1452,0); -- Bronzepiece
DELETE FROM `mob_droplist` WHERE dropid = "4078"; -- Quadav
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,1,@UNCOMMON,15146,67);  -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4078,1,2,@UNCOMMON,15025,333); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,2,@UNCOMMON,11385,333); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4078,1,2,@UNCOMMON,15031,334); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4078,1,3,@UNCOMMON,16352,500); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4078,1,3,@UNCOMMON,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4078,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4078,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4078,2,0,1000,1455,0); -- Byne Bill
DELETE FROM `mob_droplist` WHERE dropid = "4073"; -- Yagudo
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15072,66);  -- WAR Head
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15103,66);  -- MNK Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15119,66);  -- WHM Legs
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15120,66);  -- BLM Legs
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15121,66);  -- RDM Legs
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15137,67);  -- THF Feet
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15078,67);  -- PLD Head
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15124,67);  -- DRK Legs
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15125,67);  -- BST Legs
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15111,67);  -- BRD Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15082,67);  -- RNG Head
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15113,67);  -- SAM Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15084,67);  -- NIN Head
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15115,67);  -- DRG Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,1,@UNCOMMON,15146,67);  -- SMN Feet
REPLACE INTO `mob_droplist` VALUES (4073,1,2,@UNCOMMON,15025,333); -- BLU Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,2,@UNCOMMON,11385,333); -- COR Feet
REPLACE INTO `mob_droplist` VALUES (4073,1,2,@UNCOMMON,15031,334); -- PUP Hands
REPLACE INTO `mob_droplist` VALUES (4073,1,3,@UNCOMMON,16352,500); -- DNC Feet
REPLACE INTO `mob_droplist` VALUES (4073,1,3,@UNCOMMON,16362,500); -- SCH Legs
REPLACE INTO `mob_droplist` VALUES (4073,0,0,1000,1449,@COMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4073,0,0,1000,1449,@UNCOMMON); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4073,2,0,1000,1449,0); -- Whiteshell
--           Nightmare           --
DELETE FROM `mob_droplist` WHERE dropid = "4044"; -- Gaylas/Kraken/Raptor/Roc
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,3,@UNCOMMON,2671,333); -- COR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet
REPLACE INTO `mob_droplist` VALUES (4044,1,2,@RARE,15872,200); -- WHM Waist
REPLACE INTO `mob_droplist` VALUES (4044,1,2,@RARE,15478,200); -- MNK Back
REPLACE INTO `mob_droplist` VALUES (4044,1,2,@RARE,15878,200); -- DRG Waist
REPLACE INTO `mob_droplist` VALUES (4044,1,2,@RARE,15484,200); -- SMN Back
REPLACE INTO `mob_droplist` VALUES (4044,1,2,@RARE,15875,200); -- BST Waist
REPLACE INTO `mob_droplist` VALUES (4044,1,5,10,16245,1000); -- PUP Back
REPLACE INTO `mob_droplist` VALUES (4044,1,6,10,15925,1000); -- SCH Waist
REPLACE INTO `mob_droplist` VALUES (4044,0,0,1000,1455,@COMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4044,0,0,1000,1455,@UNCOMMON); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4044,2,0,1000,1455,0); -- Byne Bill (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4051"; -- Snoll
REPLACE INTO `mob_droplist` VALUES (4051,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,15875,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,15878,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,15478,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,15872,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2072,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2727,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2062,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2082,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2047,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2671,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2057,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2722,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2097,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2042,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2666,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2077,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2676,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2092,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2087,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2052,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2107,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2067,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2037,20);
REPLACE INTO `mob_droplist` VALUES (4051,0,0,1000,2102,20);
DELETE FROM `mob_droplist` WHERE dropid = "4041"; -- Diremite
REPLACE INTO `mob_droplist` VALUES (4041,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,15920,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,16245,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,15879,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,15925,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,15484,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2072,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2727,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2062,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2082,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2047,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2671,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2057,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2722,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2097,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2042,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2666,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2077,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2676,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2092,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2087,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2052,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2107,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2067,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2037,20);
REPLACE INTO `mob_droplist` VALUES (4041,0,0,1000,2102,20);
DELETE FROM `mob_droplist` WHERE dropid = "4052"; -- Stirge/Tiger/Weapon
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2037,66);  -- WAR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2042,66);  -- MNK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2047,66);  -- WHM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2052,66);  -- BLM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2057,66);  -- RDM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2062,67);  -- THF -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2067,67);  -- PLD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2072,67);  -- DRK -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2077,67);  -- BST -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2082,67);  -- BRD -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2087,67);  -- RNG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2092,67);  -- SAM -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2097,67);  -- NIN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2102,67);  -- DRG -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,1,@UNCOMMON,2107,67);  -- SMN -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,3,@UNCOMMON,2666,333); -- BLU -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,3,@UNCOMMON,2671,333); -- COR -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,3,@UNCOMMON,2676,334); -- PUP -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,4,@UNCOMMON,2722,500); -- DNC -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,4,@UNCOMMON,2727,500); -- SCH -1 Feet
REPLACE INTO `mob_droplist` VALUES (4052,1,2,@RARE,15479,200); -- DRK Back
REPLACE INTO `mob_droplist` VALUES (4052,1,2,@RARE,15480,200); -- THF Back
REPLACE INTO `mob_droplist` VALUES (4052,1,2,@RARE,15873,200); -- RDM Waist
REPLACE INTO `mob_droplist` VALUES (4052,1,2,@RARE,15879,200); -- SAM Waist
REPLACE INTO `mob_droplist` VALUES (4052,1,2,@RARE,15876,200); -- RNG Waist
REPLACE INTO `mob_droplist` VALUES (4052,1,5,10,15920,1000); -- COR Waist
REPLACE INTO `mob_droplist` VALUES (4052,0,0,1000,1452,@COMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4052,0,0,1000,1452,@UNCOMMON); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4052,2,0,1000,1452,0); -- Bronzepiece (Steal)
-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- --------------------------------------------------------------------
--                           Dynamis-Tavnazia                       --
-- --------------------------------------------------------------------
-- ---------------------------------
--           Droplists           --
-- ---------------------------------
--             Nightmare         --
DELETE FROM `mob_droplist` WHERE dropid = "4037"; -- Nightmare Cluster
REPLACE INTO `mob_droplist` VALUES (4037,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2034,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2039,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2044,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2049,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2054,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2059,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2064,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2069,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2074,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2079,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2084,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2089,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2094,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2099,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2104,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2663,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2668,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2673,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2719,10);
REPLACE INTO `mob_droplist` VALUES (4037,0,0,1000,2724,10);

DELETE FROM `mob_droplist` WHERE dropid = "4047"; -- Nightmare Leech
REPLACE INTO `mob_droplist` VALUES (4047,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2034,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2039,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2044,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2049,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2054,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2059,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2064,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2069,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2074,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2079,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2084,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2089,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2094,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2099,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2104,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2663,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2668,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2673,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2719,10);
REPLACE INTO `mob_droplist` VALUES (4047,0,0,1000,2724,10);

DELETE FROM `mob_droplist` WHERE dropid = "4046"; -- Nightmare Bugard/Hornet
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2036,66); -- WAR -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2041,66); -- MNK -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2046,66); -- WHM -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2051,66); -- BLM -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2056,66); -- RDM -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2061,67); -- THF -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2066,67); -- PLD -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2071,67); -- DRK -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2076,67); -- BST -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2081,67); -- BRD -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2086,67); -- RNG -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2091,67); -- SAM -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2096,67); -- NIN -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2101,67); -- DRG -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,1,@UNCOMMON,2106,67); -- SMN -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,2,@UNCOMMON,2665,333); -- BLU -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,2,@UNCOMMON,2670,333); -- COR -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,2,@UNCOMMON,2675,334); -- PUP -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,3,@UNCOMMON,2721,500); -- DNC -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,1,3,@UNCOMMON,2726,500); -- SCH -1 Legs
REPLACE INTO `mob_droplist` VALUES (4046,0,0,1000,1455,@COMMON); -- One Byne Bill
REPLACE INTO `mob_droplist` VALUES (4046,0,0,1000,1455,@UNCOMMON); -- One Byne Bill
REPLACE INTO `mob_droplist` VALUES (4046,2,0,1000,1455,0); -- One Byne Bill

DELETE FROM `mob_droplist` WHERE dropid = "4048"; -- Nightmare Makara
REPLACE INTO `mob_droplist` VALUES (4048,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,1452,200);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2036,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2041,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2046,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2051,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2056,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2061,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2066,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2071,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2076,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2081,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2086,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2091,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2096,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2101,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2106,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2665,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2670,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2675,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2721,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,2726,10);
REPLACE INTO `mob_droplist` VALUES (4048,0,0,1000,3459,50);

DELETE FROM `mob_droplist` WHERE dropid = "4054"; -- Nightmare Worm
REPLACE INTO `mob_droplist` VALUES (4054,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,1449,200);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2036,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2041,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2046,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2051,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2056,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2061,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2066,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2071,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2076,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2081,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2086,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2091,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2096,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2101,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2106,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2665,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2670,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2675,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2721,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,2726,10);
REPLACE INTO `mob_droplist` VALUES (4054,0,0,1000,3459,50);

DELETE FROM `mob_droplist` WHERE dropid = "4087"; -- Nightmare Taurus
REPLACE INTO `mob_droplist` VALUES (4087,2,0,1000,1449,0);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1449,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1450,30);
REPLACE INTO `mob_droplist` VALUES (4087,2,0,1000,1452,0);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1452,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1452,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1453,30);
REPLACE INTO `mob_droplist` VALUES (4087,2,0,1000,1455,0);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1455,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1455,150);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1456,30);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14515,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14516,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14517,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14518,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14924,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14925,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14926,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,14927,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15260,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15261,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15262,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15263,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15595,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15596,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15597,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15598,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15680,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15681,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15682,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,15683,20);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1453,18);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1450,18);
REPLACE INTO `mob_droplist` VALUES (4087,0,0,1000,1456,18);

--             Regular           --
DELETE FROM `mob_droplist` WHERE dropid = "4023"; -- Hydra ** NOTE THESE ARE THE SAME DROP RATES AT Dynamis-Beac **
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15117,66); -- WAR Legs
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15088,66); -- MNK Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15089,66); -- WHM Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15090,66); -- BLM Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15091,66); -- RDM Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15122,67); -- THF Legs
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15123,67); -- PLD Legs
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15094,67); -- DRK Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15140,67); -- BST Feet
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15096,67); -- BRD Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15142,67); -- RNG Feet
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15098,67); -- SAM Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15099,67); -- NIN Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15100,67); -- DRG Body
REPLACE INTO `mob_droplist` VALUES (4023,1,1,@RARE,15101,67); -- SMN Body
REPLACE INTO `mob_droplist` VALUES (4023,1,5,@RARE,11295,333); -- COR Body
REPLACE INTO `mob_droplist` VALUES (4023,1,5,@RARE,11292,333); -- BLU Body
REPLACE INTO `mob_droplist` VALUES (4023,1,5,@RARE,11298,334); -- PUP Body
REPLACE INTO `mob_droplist` VALUES (4023,1,6,@RARE,11307,500); -- SCH Body
REPLACE INTO `mob_droplist` VALUES (4023,1,6,@RARE,16360,500); -- DNC Legs
REPLACE INTO `mob_droplist` VALUES (4023,0,0,1000,1520,@VRARE); -- Goblin Grease
REPLACE INTO `mob_droplist` VALUES (4023,0,0,1000,1470,@RARE); -- Sparkling Stone
REPLACE INTO `mob_droplist` VALUES (4023,1,2,@VCOMMON,1455,334);  -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4023,1,2,@VCOMMON,1449,333);  -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4023,1,2,@VCOMMON,1452,333);  -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4023,1,3,@COMMON,1455,334);   -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4023,1,3,@COMMON,1449,333);   -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4023,1,3,@COMMON,1452,333);   -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4023,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4023,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4023,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4023,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4023,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4023,2,0,1000,1452,0); -- Bronzepiece (Steal)
DELETE FROM `mob_droplist` WHERE dropid = "4024"; -- Kindred ** NOTE THESE ARE THE SAME DROP RATES AT Dynamis-Beac **
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15087,66); -- WAR Body
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15073,66); -- MNK Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15104,66); -- WHM Hands
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15075,66); -- BLM Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15076,66); -- RDM Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15107,67); -- THF Hands
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15093,67); -- PLD Body
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15079,67); -- DRK Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15110,67); -- BST Hands
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15126,67); -- BRD Legs
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15097,67); -- RNG Body
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15083,67); -- SAM Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15114,67); -- NIN Hands
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15085,67); -- DRG Head
REPLACE INTO `mob_droplist` VALUES (4024,1,1,@RARE,15086,67); -- SMN Head
REPLACE INTO `mob_droplist` VALUES (4024,1,5,@RARE,11468,333); -- COR Head
REPLACE INTO `mob_droplist` VALUES (4024,1,5,@RARE,11465,333); -- BLU Head
REPLACE INTO `mob_droplist` VALUES (4024,1,5,@RARE,11471,334); -- PUP Head
REPLACE INTO `mob_droplist` VALUES (4024,1,6,@RARE,11480,500); -- SCH Head
REPLACE INTO `mob_droplist` VALUES (4024,1,6,@RARE,11305,500); -- DNC Body
REPLACE INTO `mob_droplist` VALUES (4024,1,2,@VCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4024,1,2,@VCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4024,1,2,@VCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4024,1,3,@COMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4024,1,3,@COMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4024,1,3,@COMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4024,1,4,@UNCOMMON,1455,334); -- Byne Bill
REPLACE INTO `mob_droplist` VALUES (4024,1,4,@UNCOMMON,1449,333); -- Whiteshell
REPLACE INTO `mob_droplist` VALUES (4024,1,4,@UNCOMMON,1452,333); -- Bronzepiece
REPLACE INTO `mob_droplist` VALUES (4024,2,0,1000,1455,0); -- Byne Bill (Steal)
REPLACE INTO `mob_droplist` VALUES (4024,2,0,1000,1449,0); -- Whiteshell (Steal)
REPLACE INTO `mob_droplist` VALUES (4024,2,0,1000,1452,0); -- Bronzepiece (Steal)

--             Eyes           --
-- These use the same drop table as Dyna Beac -> 2561

--           Megaboss            --

-- ---------------------------------
--   Special Mob Skills/Spells   --
-- ---------------------------------
--           Megaboss            --
-- --------------------------------------------------------------------
--                     Beastmen Mob Skills/Spells                   --
-- --------------------------------------------------------------------
-- ---------------------------------
--            Quadav             --
-- ---------------------------------
--            Statue             --
-- Use List 94
-- Use Spell List 0
--              NMs              --
-- Use Skill List 202
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,611);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,612);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,613);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMQuadav',5011,1074);
--            Regular            --
-- Use Skill List 337
-- ---------------------------------
--              Orc              --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 1200
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,605);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,606);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,607);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,608);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,609);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMOrc',5012,1066);
--            Regular            --
-- Use Skill List 334
-- ---------------------------------
--            Goblin             --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 373
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,590);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,591);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1082);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1084);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1086);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1099);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1100);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1101);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1102);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1103);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1104);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1105);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1106);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1107);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1108);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1109);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMGoblin',5013,1518);
--            Regular            --
-- Use Skill List 327
-- ---------------------------------
--            Yagudo             --
-- ---------------------------------
--            Statue             --
-- Use List
-- Use Spell List
--              NMs              --
-- Use Skill List 1201
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,617);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,618);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,619);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,620);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,764);
REPLACE INTO `mob_skill_lists` VALUES ('DynaNMYagudo',5014,1067);
--            Regular            --
-- Use Skill List 360
-- ---------------------------------
--             Hydra             --
-- ---------------------------------
--              NMs              --
-- Use Skill List 359
--            Regular            --
-- Use Skill List 359
-- ---------------------------------
--            Kindred            --
-- ---------------------------------
--              NMs              --
-- Use Skill List 358
--            Regular            --
-- Use Skill List 358
-- ---------------------------------
--          Mob Spells           --
-- ---------------------------------
--              NMs              --
-- WHM Use List 1
-- BLM Use List 500
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,144,13,22);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,145,38,47);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,146,62,67);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,147,73,85);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,149,17,27);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,150,42,53);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,151,64,68);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,152,74,88);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,154,9,18);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,155,34,44);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,156,59,66);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,157,72,82);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,159,1,10);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,160,26,35);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,161,51,60);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,162,68,73);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,164,21,46);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,165,46,55);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,166,66,70);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,167,75,92);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,169,5,12);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,170,30,40);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,171,55,61);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,172,70,78);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,174,28,35);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,175,53,60);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,176,69,90);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,179,32,39);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,180,57,62);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,181,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,184,23,31);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,185,48,56);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,186,67,71);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,189,15,22);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,190,40,47);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,191,63,67);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,194,36,43);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,195,61,65);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,196,73,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,199,19,27);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,200,44,52);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,201,65,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,204,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,206,50,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,208,52,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,210,54,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,212,56,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,214,58,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,220,3,17);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,221,43,64);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,225,24,71);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,226,72,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,230,10,34);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,231,35,59);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,232,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,235,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,236,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,237,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,238,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,239,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,240,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,245,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,247,25,82);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,249,10,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,252,45,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,253,20,40);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,254,4,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,258,7,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,259,41,255);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,273,31,55);
REPLACE INTO `mob_spell_lists` VALUES ('Era_Beastmen_BLM',600,274,56,255);
-- RDM Use List 3
-- PLD Use List 4
-- DRK Use List 5
-- BRD Use List 6
-- NIN Use List 7
--          Goublefaupe         --
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,1,3,13);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,2,14,25);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,3,26,48);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,4,48,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,23,1,30);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,24,31,59);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,25,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,33,15,54);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,34,55,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,35,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,43,7,26);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,44,27,46);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,45,47,62);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,46,63,76);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,47,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,48,17,36);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,49,37,56);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,50,57,67);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,51,68,86);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,52,87,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,53,23,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,54,34,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,55,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,56,13,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,57,48,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,58,6,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,59,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,100,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,101,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,102,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,103,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,104,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,105,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,108,21,75);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,110,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,144,19,49);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,145,50,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,146,71,85);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,147,86,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,149,24,54);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,150,55,72);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,151,73,88);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,152,89,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,154,14,44);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,155,45,68);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,156,69,82);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,157,83,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,159,4,34);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,160,35,64);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,161,65,76);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,162,77,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,164,29,59);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,165,60,74);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,166,75,91);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,167,89,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,169,9,39);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,170,40,66);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,171,67,88);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,172,80,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,216,21,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,220,5,45);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,221,46,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,230,10,35);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,231,36,70);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,232,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,253,25,45);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,254,8,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,258,11,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,259,46,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,260,32,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,112,32,255);
REPLACE INTO `mob_spell_lists` VALUES ('Goublefaupe',601,97,32,255);
--           Quieitiel           --
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,144,13,22);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,145,38,47);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,146,62,67);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,147,73,85);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,149,17,27);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,150,42,53);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,151,64,68);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,152,74,88);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,154,9,18);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,155,34,44);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,156,59,66);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,157,72,82);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,159,1,10);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,160,26,35);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,161,51,60);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,162,68,73);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,164,21,46);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,165,46,55);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,166,66,70);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,167,75,92);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,169,5,12);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,170,30,40);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,171,55,61);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,172,70,78);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,174,28,35);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,175,53,60);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,176,69,90);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,179,32,39);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,180,57,62);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,181,71,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,184,23,31);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,185,48,56);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,186,67,71);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,189,15,22);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,190,40,47);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,191,63,67);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,194,36,43);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,195,61,65);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,196,73,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,199,19,27);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,200,44,52);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,201,65,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,204,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,206,50,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,208,52,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,210,54,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,212,56,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,214,58,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,220,3,17);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,221,43,64);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,225,24,71);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,226,72,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,230,10,34);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,231,35,59);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,232,60,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,235,24,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,236,22,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,237,20,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,238,18,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,239,16,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,240,27,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,245,12,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,247,25,82);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,248,83,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,249,10,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,252,45,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,253,20,40);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,254,4,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,258,7,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,259,41,255);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,273,31,55);
REPLACE INTO `mob_spell_lists` VALUES ('Quieitiel',602,274,56,255);

--            Regular            --
-- WHM Use List 1
-- BLM Use List 500
-- RDM Use List 3
-- PLD Use List 4
-- DRK Use List 5
-- BRD Use List 6
-- NIN Use List 7
-- --------------------------------------------------------------------
--                        Skill Modifictions                        --
-- --------------------------------------------------------------------
-- Dynamis - Valkurm
REPLACE INTO `mob_skills` VALUES (1605,63,'miasmic_breath',4,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1607,63,'fragrant_breath',4,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1609,63,'putrid_breath',4,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1610,63,'extremely_bad_breath',1,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1611,61,'vampiric_lash',0,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1617,325,'blow',0,0.0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1618,328,'uppercut',0,0.0,7.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1619,331,'attractant',1,0.0,15.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1146,304,'hecatomb_wave',0,0.0,25.0,2000,1500,4,0,0,0,0,0,0);
REPLACE INTO `mob_skills` VALUES (1123,355,'ore_toss',0,0.0,25.0,2000,1500,4,0,0,0,0,0,0);
-- --------------------------------------------------------------------
--                         Add Missing Mobs                         --
-- --------------------------------------------------------------------
REPLACE INTO `mob_groups` VALUES (198,1153,134,'Dynamis_Icon',600,128,0,9000,8000,0,NULL);
REPLACE INTO `mob_groups` VALUES (199,1155,134,'Dynamis_Statue',600,128,0,9000,8000,0,NULL);
REPLACE INTO `mob_groups` VALUES (200,1152,134,'Dynamis_Effigy',600,128,0,9000,8000,0,NULL);
REPLACE INTO `mob_groups` VALUES (201,1156,134,'Dynamis_Tombstone',600,128,0,9000,8000,0,NULL);
-- --------------------------------------------------------------------
--                            Fix Mob MP                            --
-- --------------------------------------------------------------------
REPLACE INTO `mob_groups` VALUES (6,1774,134,'Goublefaupe',0,128,4083,17000,17000,0,NULL);
REPLACE INTO `mob_groups` VALUES (7,3289,134,'Quiebitiel',0,128,4057,17000,17000,0,NULL);
REPLACE INTO `mob_groups` VALUES (8,2660,134,'Mildaunegeux',0,128,4083,17000,0,0,NULL);
REPLACE INTO `mob_groups` VALUES (9,4219,134,'Velosareon',0,128,4083,17000,17000,0,NULL);
REPLACE INTO `mob_groups` VALUES (10,892,134,'Dagourmarche',0,128,4057,17000,0,0,NULL);
REPLACE INTO `mob_groups` VALUES (1,198,40,'Apocalyptic_Beast',0,128,4003,27000,27000,0,NULL);
-- --------------------------------------------------------------------
--                     Zone Misc Modifications                      --
-- --------------------------------------------------------------------
-- THESE HAVE BEEN MOVED TO era/sql/zone_settings.sql
-- --------------------------------------------------------------------
--            Additions for data missing from this repo              --
-- --------------------------------------------------------------------
-- Nightmare Antlion (Dynamis - Tavnazia): custom pool 20017, modeled on
-- Albino_Antlion (species 422). The group bakes in the era HP directly.
REPLACE INTO `mob_pools` VALUES (20017,'Nightmare_Antlion','Nightmare_Antlion',422,0x0000440500000000000000000000000000000000,1,1,6,200,100,512,1,1,0,18,2,0,1,129,0,0,0,0,0,26,26,0,10);
REPLACE INTO `mob_groups` VALUES (64,20017,42,'Nightmare_Antlion',600,0,4037,14000,0,0,NULL);

-- --------------------------------------------------------------------
--                  Era HP tuning (Dynamis - Tavnazia)                --
-- 'Diaboloss_Shard' (double s) is the real group name in the          --
-- database, not a typo here.                                          --
-- --------------------------------------------------------------------
UPDATE `mob_groups` SET HP = 6000  WHERE name = 'Nightmare_Hornet'  AND zoneid = 42;
UPDATE `mob_groups` SET HP = 14000 WHERE name = 'Nightmare_Bugard'  AND zoneid = 42;
UPDATE `mob_groups` SET HP = 7000  WHERE name = 'Nightmare_Taurus'  AND zoneid = 42;
UPDATE `mob_groups` SET HP = 6000  WHERE name = 'Nightmare_Makara'  AND zoneid = 42;
UPDATE `mob_groups` SET HP = 12000 WHERE name = 'Nightmare_Worm'    AND zoneid = 42;
UPDATE `mob_groups` SET HP = 6000  WHERE name = 'Nightmare_Leech'   AND zoneid = 42;
UPDATE `mob_groups` SET HP = 6000  WHERE name = 'Nightmare_Cluster' AND zoneid = 42;
UPDATE `mob_groups` SET HP = 30000 WHERE name = 'Diabolos_Spade'    AND zoneid = 42;
UPDATE `mob_groups` SET HP = 30000 WHERE name = 'Diabolos_Heart'    AND zoneid = 42;
UPDATE `mob_groups` SET HP = 30000 WHERE name = 'Diabolos_Diamond'  AND zoneid = 42;
UPDATE `mob_groups` SET HP = 30000 WHERE name = 'Diabolos_Club'     AND zoneid = 42;
UPDATE `mob_groups` SET HP = 15000 WHERE name = 'Diaboloss_Shard'   AND zoneid = 42;

-- ------------------------------------------------------------------------- --
--                        Disable free-roam spawns                           --
-- Era uses the wave engine: statues spawn per wave and release their        --
-- beastmen when engaged, so no database mob may auto-spawn.                  --
-- 128 = Scripted (never spawned by the zone itself).                        --
-- ------------------------------------------------------------------------- --
UPDATE `mob_groups` SET spawntype = 128 WHERE zoneid IN (39,40,41,42,134,135,185,186,187,188);

-- ------------------------------------------------------------------------- --
--                     Hide instance ??? until earned                        --
-- Every ??? in the dynamis zones starts hidden; the win ??? is revealed by  --
-- its handler when the zone boss is defeated. 2 = DISAPPEAR.                --
-- ------------------------------------------------------------------------- --
UPDATE `npc_list` SET status = 2
WHERE polutils_name = '???'
  AND ((npcid >> 12) & 0xFFF) IN (39,40,41,42,134,135,185,186,187,188);
