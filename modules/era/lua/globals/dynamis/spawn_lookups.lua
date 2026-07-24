-----------------------------------
-- Era Dynamis - spawn lookup data
--
-- Static data consumed by the spawn engine (spawning.lua): which
-- dynamic entity to create for everything the engine spawns, per-zone
-- currency droplists, and job special / stat assignments.
--
-- Entry field guide:
--   name        : dynamic entity name (client-visible, 'DE_' prefixed by core)
--   groupId     : mob_groups id the entity is instantiated from
--   groupZoneId : zone id that mob group belongs to
--   dropId      : mob_droplist id (0 = no drops)
--   spellList   : mob spell list id (nil = keep group default)
--   skillList   : mob skill list id (nil = keep group default)
--   aiType      : key into the engine's AI handler sets (NMs only)
--   flags       : entityFlags override
--   skipSpawnAnimation : suppress the special spawn animation (normal spawns)
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local family = xi.mobFamily
xi.dynamis.mobFamily = family

-- Species ids (per sql/mob_species_system.sql) that distinguish the
-- statue types, which all share the Statue family.
local statueSpecies =
{
    EYE    = xi.mobSpecies.AHRIMAN,
    GOBLIN = xi.mobSpecies.GOBLIN_STATUE,
    ORC    = xi.mobSpecies.ORC_STATUE,
    QUADAV = xi.mobSpecies.QUADAV_STATUE,
    YAGUDO = xi.mobSpecies.YAGUDO_STATUE,
}

xi.dynamis.statueSpecies = statueSpecies

-- mob_skill_lists row ids installed by this module's SQL. They keep the
-- legacy family numbering they were created under; they are NOT current
-- family ids.
local mobSkillLists =
{
    VANGUARD_EYE  = 4,
    AVATAR        = 34,
    DRAGON        = 87,
    GOBLIN_STATUE = 92,
    ORC_STATUE    = 93,
    QUADAV_STATUE = 94,
    YAGUDO_STATUE = 95,
    GOBLIN        = 327,
    ORC           = 334,
    QUADAV        = 337,
    KINDRED       = 358,
    HYDRA         = 359,
    YAGUDO        = 360,
}

-- mob_spell_lists ids (names follow sql/mob_spell_lists.sql; the
-- 5000-series lists are installed by this module's SQL).
local spellLists =
{
    NONE                = 0,
    WHM                 = 1,    -- DEFAULT_BUFF
    BEASTMEN_WHM        = 20,   -- Beastmen_WHM
    RDM                 = 3,    -- Beastmen_RDM
    PLD                 = 4,    -- Beastmen_PLD
    DRK                 = 5,    -- Beastmen_DRK
    BRD                 = 6,    -- Beastmen_BRD
    NIN                 = 7,    -- Beastmen_NIN
    ELEMENTAL_AIR       = 12,
    ELEMENTAL_EARTH     = 13,
    ELEMENTAL_ICE       = 14,
    ELEMENTAL_WATER     = 15,
    ELEMENTAL_THUNDER   = 16,
    ELEMENTAL_FIRE      = 17,
    ELEMENTAL_DARK      = 18,
    ELEMENTAL_LIGHT     = 19,
    GOBLIN_STATUE       = 40,
    GOBLIN_GOLEM        = 47,
    OVERLORDS_TOMBSTONE = 49,
    TZEE_XICU           = 50,
    VANGUARD_HECTEYES   = 51,
    VANGUARD_CROW       = 52,
    VANGUARD_SCORPION   = 53,
    VANGUARD_SLIME      = 54,
    DYNAMIS_LORD        = 86,
    DIABOLOS_HEART      = 106,
    DIABOLOS_DIAMOND    = 107,
    DIABOLOS_CLUB       = 108,
    -- Module lists. These must stay below the core's MAX_MOBSPELLLIST_ID
    -- (5000): the loader only reads `spell_list_id < 5000`, and a missing
    -- list crashes the server when the mob spawns.
    BLM                 = 600,
    GOUBLEFAUPE         = 601,
    QUIEBITIEL          = 602,
}

local lookups = {}
xi.dynamis.spawnLookups = lookups

-- Spawn-time level ranges per spawn category. The stat functions in
-- spawning.lua remain authoritative; these seed the dynamic entity with
-- a valid level at creation.
lookups.levels =
{
    normal    = { min = 77, max = 78 },
    nightmare = { min = 78, max = 80 },
    nm        = { min = 80, max = 82 },
    statue    = { min = 82, max = 84 },
    megaBoss  = { min = 88, max = 88 },
    pet       = { min = 79, max = 79 },
}

-----------------------------------
-- Normal mob spawns (children of statues/eyes and beastman NMs)
-----------------------------------

local hydraJobs =
{
    levels = { min = 80, max = 82 },
    [1]    = { name = 'H. Warrior',     groupId = 159, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- WAR
    [2]    = { name = 'H. Monk',        groupId = 160, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- MNK
    [3]    = { name = 'H. White Mage',  groupId = 161, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.WHM,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- WHM
    [4]    = { name = 'H. Black Mage',  groupId = 164, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BLM, skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- BLM
    [5]    = { name = 'H. Red Mage',    groupId = 162, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.RDM,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- RDM
    [6]    = { name = 'H. Thief',       groupId = 165, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- THF
    [7]    = { name = 'H. Paladin',     groupId = 166, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.PLD,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- PLD
    [8]    = { name = 'H. Dark Knight', groupId = 167, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.DRK,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- DRK
    [9]    = { name = 'H. Beastmaster', groupId = 168, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- BST
    [10]   = { name = 'H. Bard',        groupId = 170, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BRD,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- BRD
    [11]   = { name = 'H. Ranger',      groupId = 171, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- RNG
    [12]   = { name = 'H. Samurai',     groupId = 172, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- SAM
    [13]   = { name = 'H. Ninja',       groupId = 173, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NIN,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- NIN
    [14]   = { name = 'H. Dragoon',     groupId = 174, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- DRG
    [15]   = { name = 'H. Summoner',    groupId = 176, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, flags = 1155, skipSpawnAnimation = true }, -- SMN
}

local kindredJobs =
{
    levels = { min = 77, max = 80 },
    [1]    = { name = 'K. Warrior',     groupId = 32, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- WAR
    [2]    = { name = 'K. Monk',        groupId = 33, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- MNK
    [3]    = { name = 'K. White Mage',  groupId = 29, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.WHM,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- WHM
    [4]    = { name = 'K. Black Mage',  groupId = 30, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.BLM, skillList = mobSkillLists.KINDRED, flags = 131 }, -- BLM
    [5]    = { name = 'K. Red Mage',    groupId = 31, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.RDM,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- RDM
    [6]    = { name = 'K. Thief',       groupId = 34, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- THF
    [7]    = { name = 'K. Paladin',     groupId = 15, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.PLD,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- PLD
    [8]    = { name = 'K. Dark Knight', groupId = 16, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.DRK,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- DRK
    [9]    = { name = 'K. Beastmaster', groupId = 17, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- BST
    [10]   = { name = 'K. Bard',        groupId = 20, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.BRD,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- BRD
    [11]   = { name = 'K. Ranger',      groupId = 19, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- RNG
    [12]   = { name = 'K. Samurai',     groupId = 22, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- SAM
    [13]   = { name = 'K. Ninja',       groupId = 23, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NIN,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- NIN
    [14]   = { name = 'K. Dragoon',     groupId = 27, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- DRG
    [15]   = { name = 'K. Summoner',    groupId = 24, groupZoneId = xi.zone.DYNAMIS_XARCABARD, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, flags = 131 }, -- SMN
}

local goblinJobs =
{
    [1]  = { name = 'V. Smithy',      groupId = 125, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- WAR
    [2]  = { name = 'V. Pitfighter',  groupId = 126, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- MNK
    [3]  = { name = 'V. Alchemist',   groupId = 141, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.WHM,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- WHM
    [4]  = { name = 'V. Shaman',      groupId = 127, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BLM, skillList = mobSkillLists.GOBLIN, flags = 131 }, -- BLM
    [5]  = { name = 'V. Enchanter',   groupId = 128, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.RDM,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- RDM
    [6]  = { name = 'V. Welldigger',  groupId = 132, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- THF
    [7]  = { name = 'V. Armorer',     groupId = 133, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.PLD,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- PLD
    [8]  = { name = 'V. Tinkerer',    groupId = 147, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.DRK,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- DRK
    [9]  = { name = 'V. Pathfinder',  groupId = 129, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- BST
    [10] = { name = 'V. Maestro',     groupId = 131, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BRD,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- BRD
    [11] = { name = 'V. Ambusher',    groupId = 134, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- RNG
    [12] = { name = 'V. Ronin',       groupId = 137, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- SAM
    [13] = { name = 'V. Hitman',      groupId = 138, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NIN,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- NIN
    [14] = { name = 'V. Dragontamer', groupId = 140, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- DRG
    [15] = { name = 'V. Necromancer', groupId = 135, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.GOBLIN, flags = 131 }, -- SMN
}

local orcJobs =
{
    [1]  = { name = 'V. Footsoldier', groupId = 59, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- WAR
    [2]  = { name = 'V. Grappler',    groupId = 64, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- MNK
    [3]  = { name = 'V. Amputator',   groupId = 67, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.WHM,    skillList = mobSkillLists.ORC, flags = 131 }, -- WHM
    [4]  = { name = 'V. Mesmerizer',  groupId = 75, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BLM, skillList = mobSkillLists.ORC, flags = 131 }, -- BLM
    [5]  = { name = 'V. Vexer',       groupId = 61, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.RDM,    skillList = mobSkillLists.ORC, flags = 131 }, -- RDM
    [6]  = { name = 'V. Pillager',    groupId = 78, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- THF
    [7]  = { name = 'V. Trooper',     groupId = 57, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.PLD,    skillList = mobSkillLists.ORC, flags = 131 }, -- PLD
    [8]  = { name = 'V. Neckchopper', groupId = 58, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.DRK,    skillList = mobSkillLists.ORC, flags = 131 }, -- DRK
    [9]  = { name = 'V. Hawker',      groupId = 76, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- BST
    [10] = { name = 'V. Bugler',      groupId = 81, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BRD,    skillList = mobSkillLists.ORC, flags = 131 }, -- BRD
    [11] = { name = 'V. Predator',    groupId = 70, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- RNG
    [12] = { name = 'V. Gutslasher',  groupId = 66, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- SAM
    [13] = { name = 'V. Backstabber', groupId = 62, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NIN,    skillList = mobSkillLists.ORC, flags = 131 }, -- NIN
    [14] = { name = 'V. Impaler',     groupId = 69, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- DRG
    [15] = { name = 'V. Dollmaster',  groupId = 72, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.ORC, flags = 131 }, -- SMN
}

local quadavJobs =
{
    [1]  = { name = 'V. Vindicator',  groupId = 19, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- WAR
    [2]  = { name = 'V. Militant',    groupId = 25, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- MNK
    [3]  = { name = 'V. Constable',   groupId = 29, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.WHM,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- WHM
    [4]  = { name = 'V. Thaumaturge', groupId = 42, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BLM, skillList = mobSkillLists.QUADAV, flags = 131 }, -- BLM
    [5]  = { name = 'V. Protector',   groupId = 20, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.RDM,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- RDM
    [6]  = { name = 'V. Purloiner',   groupId = 33, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- THF
    [7]  = { name = 'V. Defender',    groupId = 30, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.PLD,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- PLD
    [8]  = { name = 'V. Vigilante',   groupId = 38, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.DRK,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- DRK
    [9]  = { name = 'V. Beasttender', groupId = 21, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- BST
    [10] = { name = 'V. Minstrel',    groupId = 23, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BRD,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- BRD
    [11] = { name = 'V. Mason',       groupId = 34, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- RNG
    [12] = { name = 'V. Hatamoto',    groupId = 31, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- SAM
    [13] = { name = 'V. Kusa',        groupId = 32, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NIN,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- NIN
    [14] = { name = 'V. Drakekeeper', groupId = 26, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- DRG
    [15] = { name = 'V. Undertaker',  groupId = 35, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV, flags = 131 }, -- SMN
}

local yagudoJobs =
{
    [1]  = { name = 'V. Skirmisher',  groupId = 93,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- WAR
    [2]  = { name = 'V. Sentinel',    groupId = 91,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- MNK
    [3]  = { name = 'V. Priest',      groupId = 101, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.WHM,    skillList = 360, flags = 131 }, -- WHM
    [4]  = { name = 'V. Prelate',     groupId = 105, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BLM, skillList = 360, flags = 131 }, -- BLM
    [5]  = { name = 'V. Visionary',   groupId = 95,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.RDM,    skillList = 360, flags = 131 }, -- RDM
    [6]  = { name = 'V. Liberator',   groupId = 96,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- THF
    [7]  = { name = 'V. Exemplar',    groupId = 98,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.PLD,    skillList = 360, flags = 131 }, -- PLD
    [8]  = { name = 'V. Inciter',     groupId = 103, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.DRK,    skillList = 360, flags = 131 }, -- DRK
    [9]  = { name = 'V. Ogresoother', groupId = 99,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- BST
    [10] = { name = 'V. Chanter',     groupId = 104, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.BRD,    skillList = 360, flags = 131 }, -- BRD
    [11] = { name = 'V. Salvager',    groupId = 111, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- RNG
    [12] = { name = 'V. Persecutor',  groupId = 118, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- SAM
    [13] = { name = 'V. Assassin',    groupId = 92,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NIN,    skillList = 360, flags = 131 }, -- NIN
    [14] = { name = 'V. Partisan',    groupId = 108, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- DRG
    [15] = { name = 'V. Oracle',      groupId = 112, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, spellList = spellLists.NONE,    skillList = 360, flags = 131 }, -- SMN
}

-- Keyed by the PARENT's family. Eyes (Ahriman) spawn different families
-- per zone (and per floor in Tavnazia); hydra NMs release more hydra.
lookups.normal =
{
    [family.AHRIMAN] =
    {
        [xi.zone.DYNAMIS_BEAUCEDINE] = hydraJobs,
        [xi.zone.DYNAMIS_XARCABARD]  = kindredJobs,
        [xi.zone.DYNAMIS_TAVNAZIA] =
        {
            [2] = hydraJobs,   -- Floor 2
            [3] = kindredJobs, -- Floor 3
        },
    },
    [family.FOMOR] = hydraJobs,
}

-- Statues all share one family; their species picks the job table.
lookups.normalStatue =
{
    [statueSpecies.GOBLIN] = goblinJobs,
    [statueSpecies.ORC]    = orcJobs,
    [statueSpecies.QUADAV] = quadavJobs,
    [statueSpecies.YAGUDO] = yagudoJobs,
}

-- Currency droplists for normal spawns: [zone][child's family] = dropId
lookups.normalDrops =
{
    [xi.zone.DYNAMIS_BASTOK] =
    {
        [family.QUADAV] = 4080,
    },
    [xi.zone.DYNAMIS_BEAUCEDINE] =
    {
        [family.QUADAV] = 4079,
        [family.ORC]    = 4069,
        [family.GOBLIN] = 4064,
        [family.YAGUDO] = 4074,
        [family.FOMOR]  = 4095,
    },
    [xi.zone.DYNAMIS_BUBURIMU] =
    {
        [family.QUADAV] = 4077,
        [family.ORC]    = 4067,
        [family.GOBLIN] = 4062,
        [family.YAGUDO] = 4072,
    },
    [xi.zone.DYNAMIS_JEUNO] =
    {
        [family.GOBLIN] = 4065,
    },
    [xi.zone.DYNAMIS_QUFIM] =
    {
        [family.QUADAV] = 4078,
        [family.ORC]    = 4068,
        [family.GOBLIN] = 4063,
        [family.YAGUDO] = 4073,
    },
    [xi.zone.DYNAMIS_SAN_DORIA] =
    {
        [family.ORC] = 4070,
    },
    [xi.zone.DYNAMIS_TAVNAZIA] =
    {
        [family.FOMOR]   = 4023,
        [family.DEMON] = 4024,
    },
    [xi.zone.DYNAMIS_VALKURM] =
    {
        [family.QUADAV] = 4076,
        [family.ORC]    = 4066,
        [family.GOBLIN] = 4061,
        [family.YAGUDO] = 4071,
    },
    [xi.zone.DYNAMIS_WINDURST] =
    {
        [family.YAGUDO] = 4075,
    },
    [xi.zone.DYNAMIS_XARCABARD] =
    {
        [family.DEMON] = 4025,
    },
}

-----------------------------------
-- Statues, nightmare mobs, elementals and other non-standard spawns
-----------------------------------

lookups.nonStandard =
{
    ['Statue'] =
    {
        ['Vanguard Eye']        = { name = 'Vanguard Eye',    groupId = 163, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4021, spellList = spellLists.BLM, skillList = mobSkillLists.VANGUARD_EYE },
        ['Prototype Eye']       = { name = 'Prototype Eye',   groupId = 61,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4021, spellList = spellLists.BLM, skillList = mobSkillLists.VANGUARD_EYE },
        ['Goblin Statue']       = { name = 'Goblin Statue',   groupId = 158, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4021, spellList = spellLists.GOBLIN_STATUE, skillList = mobSkillLists.GOBLIN_STATUE },
        ['Goblin Replica']      = { name = 'Goblin Replica',  groupId = 157, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4021, spellList = spellLists.BEASTMEN_WHM, skillList = mobSkillLists.GOBLIN_STATUE },
        ['Statue Prototype']    = { name = 'Stat. Prototype', groupId = 36,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4021, spellList = spellLists.BEASTMEN_WHM, skillList = mobSkillLists.GOBLIN_STATUE },
        ['Serjeant Tombstone']  = { name = 'Serj. Tombstone', groupId = 89,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4059, spellList = spellLists.BLM, skillList = mobSkillLists.ORC_STATUE },
        ['Warchief Tombstone']  = { name = 'War. Tombstone',  groupId = 90,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4059, spellList = spellLists.BLM, skillList = mobSkillLists.ORC_STATUE },
        ['Tombstone Prototype'] = { name = 'Tomb. Prototype', groupId = 20,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4059, spellList = spellLists.BLM, skillList = mobSkillLists.ORC_STATUE },
        ['Adamantking Effigy']  = { name = 'Adamantking Eff', groupId = 55,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4000,   spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV_STATUE },
        ['Adamantking Image']   = { name = 'Adamantking Img', groupId = 56,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4000,   spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV_STATUE },
        ['Effigy Prototype']    = { name = 'Eff. Prototype',  groupId = 9,   groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4000,   spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV_STATUE },
        ['Avatar Idol']         = { name = 'Avatar Idol',     groupId = 124, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4005,  spellList = spellLists.BLM, skillList = mobSkillLists.YAGUDO_STATUE },
        ['Manifest Icon']       = { name = 'Manifest Icon',   groupId = 68,  groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4005,  spellList = spellLists.BLM, skillList = mobSkillLists.YAGUDO_STATUE },
        ['Avatar Icon']         = { name = 'Avatar Icon',     groupId = 123, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4005,  spellList = spellLists.BLM, skillList = mobSkillLists.YAGUDO_STATUE },
        ['Icon Prototype']      = { name = 'Icon Prototype',  groupId = 32,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4005,  spellList = spellLists.BLM, skillList = mobSkillLists.YAGUDO_STATUE },
    },
    ['Nightmare'] =
    {
        ['Nightmare Bunny']      = { name = 'N. Bunny',      groupId = 97, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4040, spellList = spellLists.NONE, skillList = 206 },
        ['Nightmare Cockatrice'] = { name = 'N. Cockatrice', groupId = 19, groupZoneId = xi.zone.KUFTAL_TUNNEL, dropId = 4053, spellList = spellLists.NONE, skillList = 70 },
        ['Nightmare Crab']       = { name = 'N. Crab',       groupId = 93, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4042, spellList = spellLists.NONE, skillList = 77 },
        ['Nightmare Crawler']    = { name = 'N. Crawler',    groupId = 99, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4049, spellList = spellLists.NONE, skillList = 79 },
        ['Nightmare Dhalmel']    = { name = 'N. Dhalmel',    groupId = 94, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4086, spellList = spellLists.NONE, skillList = 80 },
        ['Nightmare Eft']        = { name = 'N. Eft',        groupId = 101, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4085, spellList = spellLists.NONE, skillList = 98 },
        ['Nightmare Mandragora'] = { name = 'N. Mandragora', groupId = 98, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4040, spellList = spellLists.NONE, skillList = 178 },
        ['Nightmare Raven']      = { name = 'N. Raven',      groupId = 100, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4039, spellList = spellLists.NONE, skillList = 55 },
        ['Nightmare Scorpion']   = { name = 'N. Scorpion',   groupId = 96, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4038, spellList = spellLists.NONE, skillList = 217 },
        ['Nightmare Urganite']   = { name = 'N. Urganite',   groupId = 95, groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 4036, spellList = spellLists.NONE, skillList = 251 },
        ['Nightmare Cluster']    = { name = 'N. Cluster',    groupId = 40, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4037, spellList = spellLists.NONE, skillList = 4076, flags = 135 },
        ['Nightmare Hornet']     = { name = 'N. Hornet',     groupId = 10, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4046, spellList = spellLists.NONE, skillList = 4075, flags = 135 },
        ['Nightmare Leech']      = { name = 'N. Leech',      groupId = 41, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4047, spellList = spellLists.NONE, skillList = 4079, flags = 135 },
        ['Nightmare Makara']     = { name = 'N. Makara',     groupId = 34, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4048, spellList = spellLists.NONE, skillList = 4078, flags = 135 },
        ['Nightmare Taurus']     = { name = 'N. Taurus',     groupId = 33, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4087, spellList = spellLists.NONE, skillList = 4080 },
        ['Nightmare Bugard']     = { name = 'N. Bugard',     groupId = 6,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA,  dropId = 4046, spellList = spellLists.NONE, skillList = 4077 },
        ['Nightmare Hippogryph'] = { name = 'N. Hippogryph', groupId = 2,  groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4043, spellList = spellLists.NONE, skillList = 141 },
        ['Nightmare Manticore']  = { name = 'N. Manticore',  groupId = 3,  groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4050, spellList = spellLists.NONE, skillList = 179 },
        ['Nightmare Sabotender'] = { name = 'N. Sabotender', groupId = 11, groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4043, spellList = spellLists.NONE, skillList = 212 },
        ['Nightmare Sheep']      = { name = 'N. Sheep',      groupId = 13, groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4045, spellList = spellLists.NONE, skillList = 226 },
        ['Nightmare Fly']        = { name = 'N. Fly',        groupId = 4,  groupZoneId = xi.zone.DYNAMIS_VALKURM,  dropId = 4045, spellList = spellLists.NONE, skillList = 113 },
        ['Nightmare Gaylas']     = { name = 'N. Gaylas',     groupId = 80, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4044, spellList = spellLists.NONE, skillList = 47 },
        ['Nightmare Kraken']     = { name = 'N. Kraken',     groupId = 75, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4044, spellList = spellLists.NONE, skillList = 218 },
        ['Nightmare Raptor']     = { name = 'N. Raptor',     groupId = 84, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4044, spellList = spellLists.NONE, skillList = 210 },
        ['Nightmare Roc']        = { name = 'N. Roc',        groupId = 83, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4044, spellList = spellLists.NONE, skillList = 125 },
        ['Nightmare Snoll']      = { name = 'N. Snoll',      groupId = 86, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4051, spellList = spellLists.NONE, skillList = 232 },
        ['Nightmare Diremite']   = { name = 'N. Diremite',   groupId = 82, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4041, spellList = spellLists.NONE, skillList = 81 },
        ['Nightmare Stirge']     = { name = 'N. Stirge',     groupId = 78, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4052, spellList = spellLists.NONE, skillList = 46 },
        ['Nightmare Tiger']      = { name = 'N. Tiger',      groupId = 81, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4052, spellList = spellLists.NONE, skillList = 242 },
        ['Nightmare Weapon']     = { name = 'N. Weapon',     groupId = 77, groupZoneId = xi.zone.DYNAMIS_QUFIM,  dropId = 4052, spellList = spellLists.NONE, skillList = 110 },
    },
    ['Elemental'] =
    {
        ['Fire Elemental']    = { name = 'Fire Ele.',    groupId = 4,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_FIRE, skillList = 0 },
        ['Water Elemental']   = { name = 'Water Ele.',   groupId = 5,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_WATER, skillList = 0 },
        ['Thunder Elemental'] = { name = 'Thunder Ele.', groupId = 7,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_THUNDER, skillList = 0 },
        ['Earth Elemental']   = { name = 'Earth Ele.',   groupId = 11, groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_EARTH, skillList = 0 },
        ['Air Elemental']     = { name = 'Air Ele.',     groupId = 6,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_AIR, skillList = 0 },
        ['Ice Elemental']     = { name = 'Ice Ele.',     groupId = 10, groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_ICE, skillList = 0 },
        ['Light Elemental']   = { name = 'Light Ele.',   groupId = 8,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_LIGHT, skillList = 0 },
        ['Dark Elemental']    = { name = 'Dark Ele.',    groupId = 9,  groupZoneId = xi.zone.RUAUN_GARDENS, dropId = 0, spellList = spellLists.ELEMENTAL_DARK, skillList = 0 },
    },
    ['Beastmen'] =
    {
        ['Vanguard Vindicator'] = { name = 'V. Vindicator', groupId = 19, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4080, spellList = spellLists.NONE, skillList = 337 }, -- QWAR (Bastok)
        ['Vanguard Constable']  = { name = 'V. Constable',  groupId = 29, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4080, spellList = spellLists.WHM, skillList = 337 }, -- QWHM (Bastok)
        ['Vanguard Militant']   = { name = 'V. Militant',   groupId = 25, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4080, spellList = spellLists.NONE, skillList = 337 }, -- QMNK (Bastok)
    },
    ['Other'] =
    {
        ['Vanguard Dragon'] = { name = 'V. Dragon', groupId = 70, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4081, spellList = spellLists.NONE, skillList = 87 },
    },
}

-- Statue droplist overrides: [zone][statue's species] = dropId
lookups.statueDropOverrides =
{
    [xi.zone.DYNAMIS_XARCABARD] =
    {
        [statueSpecies.EYE]    = 4096,
        [statueSpecies.GOBLIN] = 4096,
        [statueSpecies.ORC]    = 4097,
        [statueSpecies.QUADAV] = 4098,
        [statueSpecies.YAGUDO] = 4099,
    },
    [xi.zone.DYNAMIS_BEAUCEDINE] =
    {
        [statueSpecies.EYE]    = 4096,
        [statueSpecies.GOBLIN] = 4096,
        [statueSpecies.ORC]    = 4097,
        [statueSpecies.QUADAV] = 4098,
        [statueSpecies.YAGUDO] = 4099,
    },
}

-- Dynamis-Xarcabard statue triplets share a superlink id so each
-- triplet links together despite the navmesh and child placement.
lookups.superlinkXarcabard =
{
    [127] = 1,
    [128] = 1,
    [129] = 1,
    [130] = 2,
    [131] = 2,
    [132] = 2,
    [133] = 3,
    [134] = 3,
    [135] = 3,
    [136] = 4,
    [137] = 4,
    [138] = 4,
    [139] = 5,
    [140] = 5,
    [141] = 5,
}

-----------------------------------
-- Notorious monsters
-----------------------------------
-- Kept under the historical xi.dynamis.nmInfoLookup name; GM commands
-- reference it too. aiType keys into the handler sets in spawning.lua.

xi.dynamis.nmInfoLookup =
{
    -- Goblin NMs: Dynamis - Beaucedine
    ['Ascetox Ratgums']       = { name = 'A.Ratgums',      groupId = 143, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.BLM, skillList = 5013, aiType = 'Beastmen' }, -- BLM
    ['Bordox Kittyback']      = { name = 'B.Kittyback',    groupId = 146, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- THF
    ['Brewnix Bittypupils']   = { name = 'B.Bittypupils',  groupId = 142, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.WHM,    skillList = 5013, aiType = 'Beastmen' }, -- WHM
    ['Draklix Scalecrust']    = { name = 'D.Scalecrust',   groupId = 149, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- DRG
    ['Droprix Granitepalms']  = { name = 'D.Granitepalms', groupId = 139, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- MNK
    ['Gibberox Pimplebeak']   = { name = 'G.Pimplebeak',   groupId = 144, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.RDM,    skillList = 5013, aiType = 'Beastmen' }, -- RDM
    ['Moltenox Stubthumbs']   = { name = 'M.Stubthumbs',  groupId = 136, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- WAR
    ['Morblox Chubbychin']    = { name = 'M.Chubbychin',   groupId = 153, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SMN
    ['Routsix Rubbertendon']  = { name = 'R.Rubbertendon', groupId = 151, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- BST
    ['Ruffbix Jumbolobes']    = { name = 'R.Jumbolobes',   groupId = 148, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.PLD,    skillList = 5013, aiType = 'Beastmen' }, -- PLD
    ['Shisox Widebrow']       = { name = 'S.Widebrow',     groupId = 156, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SAM
    ['Slinkix Trufflesniff']  = { name = 'S.Trufflesniff', groupId = 155, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- RNG
    ['Swypestix Tigershins']  = { name = 'S.Tigershins',   groupId = 145, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.NIN,    skillList = 5013, aiType = 'Beastmen' }, -- NIN
    ['Tocktix Thinlids']      = { name = 'T.Thinlids',     groupId = 150, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.DRK,    skillList = 5013, aiType = 'Beastmen' }, -- DRK
    ['Whistix Toadthroat']    = { name = 'W.Toadthroat',   groupId = 154, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4004, spellList = spellLists.BRD,    skillList = 5013, aiType = 'Beastmen' }, -- BRD

    -- Goblin NMs: Dynamis - Buburimu
    ['Gosspix Blabberlips']   = { name = 'G.Blabberlips',   groupId = 24, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4084, spellList = spellLists.RDM, skillList = 5013, aiType = 'Beastmen' }, -- RDM
    ['Shamblix Rottenheart']  = { name = 'S.Rottenheart',   groupId = 16, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4084, spellList = spellLists.DRK, skillList = 5013, aiType = 'Beastmen' }, -- DRK
    ['Woodnix Shrillwhistle'] = { name = 'W.Shrillwhistle', groupId = 6,  groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4084, spellList = spellLists.NONE, skillList = 5013, aiType = 'Beastmen' }, -- BST

    -- Goblin NMs: Dynamis - Jeuno
    ['Bandrix Rockjaw']        = { name = 'B.Rockjaw',       groupId = 32, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.PLD,    skillList = 5013, aiType = 'Beastmen' }, -- THF
    ['Buffrix Eargone']        = { name = 'B.Eargone',       groupId = 33, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.PLD,    skillList = 5013, aiType = 'Beastmen' }, -- PLD
    ['Cloktix Longnail']       = { name = 'C.Longnail',      groupId = 51, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.DRK,    skillList = 5013, aiType = 'Beastmen' }, -- DRK
    ['Elixmix Hooknose']       = { name = 'E.Hooknose',      groupId = 31, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.WHM,    skillList = 5013, aiType = 'Beastmen' }, -- WHM
    ['Gabblox Magpietongue']   = { name = 'G.Magpietongue',  groupId = 11, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.RDM,    skillList = 5013, aiType = 'Beastmen' }, -- RDM
    ['Hermitrix Toothrot']     = { name = 'H.Toothrot',      groupId = 27, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.BLM, skillList = 5013, aiType = 'Beastmen' }, -- BLM
    ['Humnox Drumbelly']       = { name = 'H.Drumbelly',     groupId = 34, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.BRD,    skillList = 5013, aiType = 'Beastmen' }, -- BRD
    ['Lurklox Dhalmelneck']    = { name = 'L.Dhalmelneck',   groupId = 36, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- RNG
    ['Morgmox Moldnoggin']     = { name = 'M.Moldnoggin',    groupId = 29, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SMN
    ['Sparkspox Sweatbrow']    = { name = 'S.Sweatbrow',     groupId = 30, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- WAR
    ['Ticktox Beadyeyes']      = { name = 'T.Beadyeyes',     groupId = 35, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.DRK,    skillList = 5013, aiType = 'Beastmen' }, -- DRK
    ['Trailblix Goatmug']      = { name = 'T.Goatmug',       groupId = 37, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- BST
    ['Tufflix Loglimbs']       = { name = 'T.Loglimbs',      groupId = 21, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.PLD,    skillList = 5013, aiType = 'Beastmen' }, -- PLD
    ['Wyrmwix Snakespecs']     = { name = 'W.Snakespecs',    groupId = 28, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- DRG
    ['Karashix Swollenskull']  = { name = 'K.Swollenskull',  groupId = 39, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SAM
    ['Kikklix Longlegs']       = { name = 'K.Longlegs',      groupId = 38, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- MNK
    ['Rutrix Hamgams']         = { name = 'R.Hamgams',       groupId = 40, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- BST
    ['Snypestix Eaglebeak']    = { name = 'S.Eaglebeak',     groupId = 41, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NIN,    skillList = 5013, aiType = 'Beastmen' }, -- NIN
    ['Mortilox Wartpaws']      = { name = 'M.Wartpaws',      groupId = 52, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SMN
    ['Jabkix Pigeonpecs']      = { name = 'J.Pigeonpecs',    groupId = 24, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- MNK
    ['Smeltix Thickhide']      = { name = 'S.Thickhide',     groupId = 23, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- WAR
    ['Wasabix Callusdigit']    = { name = 'W.Callusdigit',   groupId = 25, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- SAM
    ['Anvilix Sootwrists']     = { name = 'A.Sootwrists',    groupId = 42, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- WAR
    ['Blazox Boneybod']        = { name = 'B.Boneybod',      groupId = 49, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- BST
    ['Bootrix Jaggedelbow']    = { name = 'B.Jaggedelbow',   groupId = 43, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- MNK
    ['Distilix Stickytoes']    = { name = 'D.Stickytoes',    groupId = 45, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.WHM,    skillList = 5013, aiType = 'Beastmen' }, -- WHM
    ['Eremix Snottynostril']   = { name = 'E.Snottynostril', groupId = 46, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.BLM, skillList = 5013, aiType = 'Beastmen' }, -- BLM
    ['Jabbrox Grannyguise']    = { name = 'J.Grannyguise',   groupId = 47, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.RDM,    skillList = 5013, aiType = 'Beastmen' }, -- RDM
    ['Mobpix Mucousmouth']     = { name = 'M.Mucousmouth',   groupId = 44, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- THF
    ['Prowlox Barrelbelly']    = { name = 'P.Barrelbelly',   groupId = 50, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NONE,    skillList = 5013, aiType = 'Beastmen' }, -- RNG
    ['Scruffix Shaggychest']   = { name = 'S.Shaggychest',   groupId = 48, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.PLD,    skillList = 5013, aiType = 'Beastmen' }, -- PLD
    ['Slystix Megapeepers']    = { name = 'S.Megapeepers',   groupId = 53, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.NIN,    skillList = 5013, aiType = 'Beastmen' }, -- NIN
    ['Tymexox Ninefingers']    = { name = 'T.Ninefingers',   groupId = 54, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4002, spellList = spellLists.DRK,    skillList = 5013, aiType = 'Beastmen' }, -- DRK

    -- Orc NMs: Dynamis - Beaucedine
    ['Cobraclaw Buchzvotch']   = { name = 'C.Buchzvotch', groupId = 65, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- MNK
    ['Deathcaller Bidfbid']    = { name = 'D.Bidfbid',    groupId = 73, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- SMN
    ['Drakefeast Wubmfub']     = { name = 'D.Wubmfub',    groupId = 88, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- DRG
    ['Elvaanlopper Grokdok']   = { name = 'E.Grokdok',    groupId = 82, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- RNG
    ['Galkarider Retzpratz']   = { name = 'G.Retzpratz',  groupId = 71, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- RNG
    ['Heavymail Djidzbad']     = { name = 'H.Djidzbad',   groupId = 80, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.PLD,    skillList = 5012, aiType = 'Beastmen' }, -- PLD
    ['Humegutter Adzjbadj']    = { name = 'H.Adzjbadj',   groupId = 60, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- WAR
    ['Jeunoraider Gepkzip']    = { name = 'J.Gepkzip',    groupId = 63, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NIN,    skillList = 5012, aiType = 'Beastmen' }, -- NIN
    ['Lockbuster Zapdjipp']    = { name = 'L.Zapdjipp',   groupId = 79, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- THF
    ['Mithraslaver Debhabob']  = { name = 'M.Debhabob',   groupId = 85, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- BST
    ['Skinmask Ugghfogg']      = { name = 'S.Ugghfogg',   groupId = 83, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.DRK,    skillList = 5012, aiType = 'Beastmen' }, -- DRK
    ['Spinalsucker Galflmall'] = { name = 'S.Galflmall',  groupId = 73, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.RDM,    skillList = 5012, aiType = 'Beastmen' }, -- RDM
    ['Taruroaster Biggsjig']   = { name = 'T.Biggsjig',   groupId = 84, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.BLM, skillList = 5012, aiType = 'Beastmen' }, -- BLM
    ['Ultrasonic Zeknajak']    = { name = 'U.Zeknajak',   groupId = 87, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.BRD,    skillList = 5012, aiType = 'Beastmen' }, -- BRD
    ['Wraithdancer Gidbnod']   = { name = 'W.Gidbnod',    groupId = 63, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4010, spellList = spellLists.WHM,    skillList = 5012, aiType = 'Beastmen' }, -- WHM

    -- Orc NMs: Dynamis - Buburimu
    ['Elvaansticker Bxafraff'] = { name = 'E.Bxafraff', groupId = 35, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4019, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- DRG
    ['Flamecaller Zoeqdoq']    = { name = 'F.Zoeqdoq',  groupId = 34, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4019, spellList = spellLists.BLM, skillList = 5012, aiType = 'Beastmen' }, -- BLM
    ['Hamfist Gukhbuk']        = { name = 'H.Gukhbuk',  groupId = 46, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4019, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- MNK
    ['Lyncean Juwgneg']        = { name = 'L.Juvgneg',  groupId = 47, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4019, spellList = spellLists.NONE,    skillList = 5012, aiType = 'Beastmen' }, -- RNG

    -- Orc NMs: Dynamis - San d'Oria
    ['Wyrmgnasher Bjakdek']     = { name = 'W.Bjakdek',    groupId = 25, groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4092, spellList = spellLists.NONE, skillList = 5012, aiType = 'Beastmen' }, -- DRG
    ['Reapertongue Gadgquok']   = { name = 'R.Gadgquok',   groupId = 23, groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4092, spellList = spellLists.NONE, skillList = 5012, aiType = 'Beastmen' }, -- SMN
    ['Voidstreaker Butchnotch'] = { name = 'V.Butchnotch', groupId = 26, groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4092, spellList = spellLists.NIN, skillList = 5012, aiType = 'Beastmen' }, -- NIN
    ['Battlechoir Gitchfotch']  = { name = 'B.Gitchfotch', groupId = 2,  groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4092, spellList = spellLists.BRD, skillList = 5012, aiType = 'Beastmen' }, -- BRD
    ['Soulsender Fugbrag']      = { name = 'S.Fugbrag',    groupId = 3,  groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4092, spellList = spellLists.BRD, skillList = 5012, aiType = 'Beastmen' }, -- BRD

    -- Quadav NMs: Dynamis - Beaucedine
    ["Be'Zhe Keeprazer"]    = { name = 'B.Keeprazer',    groupId = 53, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- SMN
    ["De'Bho Pyrohand"]     = { name = 'D.Pyrohand',     groupId = 43, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.BLM, skillList = 5011, aiType = 'Beastmen' }, -- BLM
    ["Ga'Fho Venomtouch"]   = { name = 'G.Venomtouch',   groupId = 39, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.RDM,    skillList = 5011, aiType = 'Beastmen' }, -- WHM
    ["Go'Tyo Magenapper"]   = { name = 'G.Magenapper',   groupId = 44, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- DRG
    ["Gu'Khu Dukesniper"]   = { name = 'G.Dukesniper',   groupId = 50, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- RNG
    ["Gu'Nha Wallstormer"]  = { name = 'G.Wallstormer',  groupId = 24, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- WAR
    ["Ji'Fhu Infiltrator"]  = { name = 'J.Infiltrator',  groupId = 37, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- THF
    ["Ji'Khu Towercleaver"] = { name = 'J.Towercleaver', groupId = 51, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- SAM
    ["Mi'Rhe Whisperblade"] = { name = 'M.Whisperblade', groupId = 52, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NIN,    skillList = 5011, aiType = 'Beastmen' }, -- NIN
    ["Mu'Gha Legionkiller"] = { name = 'M.Legionkiller', groupId = 47, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.PLD,    skillList = 5011, aiType = 'Beastmen' }, -- PLD
    ["Na'Hya Floodmaker"]   = { name = 'N.Floodmaker',   groupId = 28, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.RDM,    skillList = 5011, aiType = 'Beastmen' }, -- RDM
    ["Nu'Bhi Spiraleye"]    = { name = 'N.Spiraleye',    groupId = 41, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.BRD,    skillList = 5011, aiType = 'Beastmen' }, -- BRD
    ["So'Gho Adderhandler"] = { name = 'S.Adderhandler', groupId = 48, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- BST
    ["So'Zho Metalbender"]  = { name = 'S.Metalbender',  groupId = 46, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- MNK
    ["Ta'Hyu Gallanthunter"] = { name = 'T.Gallanthunter', groupId = 40, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4007, spellList = spellLists.DRK, skillList = 5011, aiType = 'Beastmen' }, -- DRK

    -- Quadav NMs: Dynamis - Buburimu
    ["Gi'Bhe Flesheater"]    = { name = 'G.Flesheater',    groupId = 57, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4088, spellList = spellLists.WHM, skillList = 5011, aiType = 'Beastmen' }, -- WHM
    ["Qu'Pho Bloodspiller"]  = { name = 'Q.Bloodspiller',  groupId = 56, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4088, spellList = spellLists.NONE, skillList = 5011, aiType = 'Beastmen' }, -- WAR
    ["Te'Zha Ironclad"]      = { name = 'T.Ironclad',      groupId = 69, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4088, spellList = spellLists.PLD, skillList = 5011, aiType = 'Beastmen' }, -- PLD
    ["Va'Rhu Bodysnatcher"]  = { name = 'V.Bodysnatcher',  groupId = 68, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4088, spellList = spellLists.NONE, skillList = 5011, aiType = 'Beastmen' }, -- THF

    -- Quadav NMs: Dynamis - Bastok
    ["Aa'Nyu Dismantler"]     = { name = 'A.Dismantler',     groupId = 40, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.DRK,    skillList = 5011, aiType = 'Beastmen' }, -- DRK
    ["Gu'Nhi Noondozer"]      = { name = 'G.Noondozer',      groupId = 53, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- SMN
    ["Be'Ebo Tortoisedriver"] = { name = 'B.Tortoisedriver', groupId = 48, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- BST
    ["Gi'Pha Manameister"]    = { name = 'G.Manameister',    groupId = 43, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.BLM, skillList = 5011, aiType = 'Beastmen' }, -- BLM
    ["Ko'Dho Cannonball"]     = { name = 'K.Cannonball',     groupId = 46, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' }, -- MNK
    ["Ze'Vho Fallsplitter"]   = { name = 'Z.Fallsplitter',   groupId = 40, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.DRK,    skillList = 5011, aiType = 'Beastmen' }, -- DRK
    ['Effigy Shield PLD']     = { name = 'Effigy Shield',    groupId = 30, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.PLD,    skillList = 5011, aiType = 'Beastmen' },
    ['Effigy Shield NIN']     = { name = 'Effigy Shield',    groupId = 32, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.NIN,    skillList = 5011, aiType = 'Beastmen' },
    ['Effigy Shield BRD']     = { name = 'Effigy Shield',    groupId = 23, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.BRD,    skillList = 5011, aiType = 'Beastmen' },
    ['Effigy Shield DRK']     = { name = 'Effigy Shield',    groupId = 38, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.DRK,    skillList = 5011, aiType = 'Beastmen' },
    ['Effigy Shield SAM']     = { name = 'Effigy Shield',    groupId = 31, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4090, spellList = spellLists.NONE,    skillList = 5011, aiType = 'Beastmen' },

    -- Yagudo NMs: Dynamis - Beaucedine
    ['Bhuu Wjato the Firepool']   = { name = 'B.Firepool',    groupId = 106, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.BLM, skillList = 5014, aiType = 'Beastmen' }, -- BLM
    ['Caa Xaza the Madpiercer']   = { name = 'C.Madpiercer',  groupId = 107, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.RDM,    skillList = 5014, aiType = 'Beastmen' }, -- RDM
    ['Foo Peku the Bloodcloak']   = { name = 'F.Bloodcloak',  groupId = 94,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- WAR
    ['Guu Waji the Preacher']     = { name = 'G.Preacher',    groupId = 113, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.PLD,    skillList = 5014, aiType = 'Beastmen' }, -- PLD
    ['Hee Mida the Meticulous']   = { name = 'H.Meticulous',  groupId = 120, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- RNG
    ['Knii Hoqo the Bisector']    = { name = 'K.Bisector',    groupId = 121, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- SAM
    ['Koo Saxu the Everfast']     = { name = 'K.Everfast',    groupId = 102, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.WHM,    skillList = 5014, aiType = 'Beastmen' }, -- WHM
    ['Kuu Xuka the Nimble']       = { name = 'K.Nimble',      groupId = 115, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NIN,    skillList = 5014, aiType = 'Beastmen' }, -- NIN
    ['Maa Zaua the Wyrmkeeper']   = { name = 'M.Wyrmkeeper',  groupId = 109, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- DRG
    ['Nee Huxa the Judgemental']  = { name = 'N.Judgemental', groupId = 114, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.DRK,    skillList = 5014, aiType = 'Beastmen' }, -- DRK
    ['Puu Timu the Phantasmal']   = { name = 'P.Phantasmal',  groupId = 122, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- SMN
    ['Ryy Qihi the Idolrobber']   = { name = 'R.Idolrobber',  groupId = 110, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- THF
    ['Soo Jopo the Fiendking']    = { name = 'S.Fiendking',   groupId = 116, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- BST
    ['Xaa Chau the Roctalon']     = { name = 'X.Roctalon',    groupId = 97,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- MNK
    ['Xhoo Fuza the Sublime']     = { name = 'X.Sublime',     groupId = 119, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4008, spellList = spellLists.BRD,    skillList = 5014, aiType = 'Beastmen' }, -- BRD

    -- Yagudo NMs: Dynamis - Buburimu
    ['Baa Dava the Bibliophage']  = { name = 'B.Bibliophage', groupId = 91, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4058, spellList = spellLists.NONE, skillList = 5014, aiType = 'Beastmen' }, -- SMN
    ['Doo Peku the Fleetfoot']    = { name = 'D.Fleetfoot',  groupId = 115, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4058, spellList = spellLists.NIN, skillList = 5014, aiType = 'Beastmen' }, -- NIN
    ['Koo Rahi the Levinblade']   = { name = 'K.Levinblade', groupId = 121, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4058, spellList = spellLists.NONE, skillList = 5014, aiType = 'Beastmen' }, -- SAM
    ['Ree Nata the Melomanic']    = { name = 'R.Melomanic',  groupId = 119, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4058, spellList = spellLists.BRD, skillList = 5014, aiType = 'Beastmen' }, -- BRD

    -- Yagudo NMs: Dynamis - Windurst
    ['Xoo Kaza the Solemn']       = { name = 'X.Solemn',       groupId = 27, groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.BLM,     skillList = 5014, aiType = 'Beastmen' }, -- BLM
    ['Haa Pevi the Stentorian']   = { name = 'H.Stentorian',   groupId = 24, groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- SMN
    ['Wuu Qoho the Razorclaw']    = { name = 'W.Razorclaw',    groupId = 26, groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.NONE,    skillList = 5014, aiType = 'Beastmen' }, -- MNK
    ['Loo Hepe the Eyepiercer']   = { name = 'L.Eyepiercer',   groupId = 25, groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.RDM,     skillList = 5014, aiType = 'Beastmen' }, -- RDM
    ['Muu Febi the Steadfast']    = { name = 'Muu.Steadfast',  groupId = 3,  groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.PLD,     skillList = 5014, aiType = 'Beastmen' }, -- PLD
    ['Maa Febi the Steadfast']    = { name = 'Maa.Steadfast',  groupId = 2,  groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4027, spellList = spellLists.PLD,     skillList = 5014, aiType = 'Beastmen' }, -- PLD

    -- Kindred NMs: Dynamis - Xarcabard
    ['Count Zaebos']      = { name = 'C.Zaebos',    groupId = 51, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4013, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- WAR
    ['Duke Berith']       = { name = 'D.Berith',    groupId = 47, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4015, spellList = spellLists.RDM,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- RDM
    ['Marquis Decarabia'] = { name = 'M.Decarabia', groupId = 21, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4030, spellList = spellLists.BRD,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- BRD
    ['Duke Gomory']       = { name = 'D.Gomory',    groupId = 39, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4016, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- MNK
    ['Marquis Andras']    = { name = 'M.Andras',    groupId = 54, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4028, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- BST
    ['Prince Seere']      = { name = 'P.Seere',     groupId = 43, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4056, spellList = spellLists.WHM,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- WHM
    ['Duke Scox']         = { name = 'D.Scox',      groupId = 57, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4017, spellList = spellLists.DRK,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- DRK
    ['Marquis Gamygyn']   = { name = 'M.Gamygyn',   groupId = 65, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4031, spellList = spellLists.NIN,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- NIN
    ['Marquis Orias']     = { name = 'M.Orias',     groupId = 46, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4033, spellList = spellLists.BLM,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- BLM
    ['Count Raum']        = { name = 'C.Raum',      groupId = 42, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4011, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- THF
    ['Marquis Nebiros']   = { name = 'M.Nebiros',   groupId = 67, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4032, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- SMN
    ['Marquis Sabnak']    = { name = 'M.Sabnak',    groupId = 49, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4034, spellList = spellLists.PLD,     skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- PLD
    ['Count Vine']        = { name = 'C.Vine',      groupId = 62, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4012, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- SAM
    ['King Zagan']        = { name = 'K.Zagan',     groupId = 60, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4026, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- DRG
    ['Marquis Cimeries']  = { name = 'M.Cimeries',  groupId = 56, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4029, spellList = spellLists.NONE,    skillList = mobSkillLists.KINDRED, aiType = 'XarcNM' }, -- RNG

    -- Hydra NMs: Dynamis - Beaucedine
    ['Dagourmarche'] = { name = 'Dagourmarche', groupId = 10, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4014,  spellList = spellLists.NONE,    skillList = mobSkillLists.HYDRA, aiType = 'Dagourmarche' }, -- DRG/BST/SMN
    ['Goublefaupe']  = { name = 'Goublefaupe',  groupId = 6,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4022, spellList = spellLists.GOUBLEFAUPE, skillList = mobSkillLists.HYDRA, aiType = 'Goublefaupe' },  -- WAR/PLD/RDM
    ['Mildaunegeux'] = { name = 'Mildaunegeux', groupId = 8,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4035, spellList = spellLists.NIN,    skillList = mobSkillLists.HYDRA, aiType = 'Mildaunegeux' }, -- MNK/THF/NIN
    ['Quiebitiel']   = { name = 'Quiebitiel',   groupId = 7,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4057, spellList = spellLists.QUIEBITIEL, skillList = mobSkillLists.HYDRA, aiType = 'Quiebitiel' },   -- WHM/BLM/BRD
    ['Velosareon']   = { name = 'Velosareon',   groupId = 9,  groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4083, spellList = spellLists.DRK,    skillList = mobSkillLists.HYDRA, aiType = 'Velosareon' },   -- RNG/SAM/DRK

    -- Megabosses (city zones)
    ["Gu'Dha Effigy"]        = { name = "Gu'Dha Effigy",   groupId = 1, groupZoneId = xi.zone.DYNAMIS_BASTOK, dropId = 4089, spellList = spellLists.NONE,  skillList = mobSkillLists.QUADAV_STATUE, aiType = 'Statue Megaboss' }, -- Bastok
    ['Goblin Golem']         = { name = 'Goblin Golem',    groupId = 1, groupZoneId = xi.zone.DYNAMIS_JEUNO, dropId = 4020, spellList = spellLists.GOBLIN_GOLEM, skillList = mobSkillLists.GOBLIN_STATUE, aiType = 'Statue Megaboss' }, -- Jeuno
    ["Overlord's Tombstone"] = { name = 'O. Tombstone',    groupId = 1, groupZoneId = xi.zone.DYNAMIS_SAN_DORIA, dropId = 4055, spellList = spellLists.OVERLORDS_TOMBSTONE, skillList = mobSkillLists.ORC_STATUE, aiType = 'Statue Megaboss' }, -- San d'Oria
    ['Tzee Xicu Manifest']   = { name = 'Tzee Xicu Mani.', groupId = 1, groupZoneId = xi.zone.DYNAMIS_WINDURST, dropId = 4060, spellList = spellLists.TZEE_XICU, skillList = mobSkillLists.YAGUDO_STATUE, aiType = 'Statue Megaboss' }, -- Windurst

    -- Dynamis - Xarcabard non-beastmen
    ['Animated Hammer']     = { name = 'A.Hammer',    groupId = 81, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3248, spellList = spellLists.NONE, skillList = 9,  aiType = 'Animated Weapon' },
    ['Animated Staff']      = { name = 'A.Staff',     groupId = 87, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3249, spellList = spellLists.NONE, skillList = 23, aiType = 'Animated Weapon' },
    ['Animated Longsword']  = { name = 'A.Longsword', groupId = 84, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3240, spellList = spellLists.NONE, skillList = 24, aiType = 'Animated Weapon' },
    ['Animated Tabar']      = { name = 'A.Tabar',     groupId = 88, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3242, spellList = spellLists.NONE, skillList = 8,  aiType = 'Animated Weapon' },
    ['Animated Great Axe']  = { name = 'A.Great Axe', groupId = 80, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3243, spellList = spellLists.NONE, skillList = 12, aiType = 'Animated Weapon' },
    ['Animated Claymore']   = { name = 'A.Claymore',  groupId = 78, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3241, spellList = spellLists.NONE, skillList = 14, aiType = 'Animated Weapon' },
    ['Animated Spear']      = { name = 'A.Spear',     groupId = 86, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3245, spellList = spellLists.NONE, skillList = 19, aiType = 'Animated Weapon' },
    ['Animated Scythe']     = { name = 'A.Scythe',    groupId = 85, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3244, spellList = spellLists.NONE, skillList = 20, aiType = 'Animated Weapon' },
    ['Animated Kunai']      = { name = 'A.Kunai',     groupId = 83, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3246, spellList = spellLists.NONE, skillList = 17, aiType = 'Animated Weapon' },
    ['Animated Tachi']      = { name = 'A.Tachi',     groupId = 89, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3247, spellList = spellLists.NONE, skillList = 13, aiType = 'Animated Weapon' },
    ['Animated Dagger']     = { name = 'A.Dagger',    groupId = 79, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3239, spellList = spellLists.NONE, skillList = 11, aiType = 'Animated Weapon' },
    ['Animated Knuckles']   = { name = 'A.Knuckles',  groupId = 82, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3238, spellList = spellLists.NONE, skillList = 15, aiType = 'Animated Weapon' },
    ['Animated Longbow']    = { name = 'A.Longbow',   groupId = 11, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3250, spellList = spellLists.NONE, skillList = 7,  aiType = 'Animated Weapon' },
    ['Animated Gun']        = { name = 'A.Gun',       groupId = 12, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3252, spellList = spellLists.NONE, skillList = 18, aiType = 'Animated Weapon' },
    ['Animated Horn']       = { name = 'A.Horn',      groupId = 13, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3251, spellList = spellLists.NONE, skillList = 16, aiType = 'Animated Weapon' },
    ['Animated Shield']     = { name = 'A.Shield',    groupId = 14, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 3253, spellList = spellLists.NONE, skillList = 21, aiType = 'Animated Weapon' },
    ['Satellite Hammer']    = { name = 'S.Hammer',    groupId = 81, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 9,  aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Staff']     = { name = 'S.Staff',     groupId = 87, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 23, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Longsword'] = { name = 'S.Longsword', groupId = 84, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 24, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Tabar']     = { name = 'S.Tabar',     groupId = 88, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 8,  aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Great Axe'] = { name = 'S.Great Axe', groupId = 80, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 12, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Claymore']  = { name = 'S.Claymore',  groupId = 78, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 14, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Spear']     = { name = 'S.Spear',     groupId = 86, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 19, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Scythe']    = { name = 'S.Scythe',    groupId = 85, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 20, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Kunai']     = { name = 'S.Kunai',     groupId = 83, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 17, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Tachi']     = { name = 'S.Tachi',     groupId = 89, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 13, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Dagger']    = { name = 'S.Dagger',    groupId = 79, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 11, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Knuckles']  = { name = 'S.Knuckles',  groupId = 82, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 15, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Longbow']   = { name = 'S.Longbow',   groupId = 11, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 7,  aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Gun']       = { name = 'S.Gun',       groupId = 12, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 18, aiType = 'Satellite Weapon', flags = 5251 },
    ['Satellite Horn']      = { name = 'S.Horn',      groupId = 13, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 16, aiType = 'Satellite Weapon', flags = 5763 },
    ['Satellite Shield']    = { name = 'S.Shield',    groupId = 14, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 21, aiType = 'Satellite Weapon', flags = 5251 },
    ['Ying']                = { name = 'Ying',         groupId = 2, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,   spellList = spellLists.NONE,  skillList = mobSkillLists.DRAGON,  aiType = 'Ying', flags = 159 },
    ['Yang']                = { name = 'Yang',         groupId = 3, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,   spellList = spellLists.NONE,  skillList = mobSkillLists.DRAGON,  aiType = 'Yang', flags = 159 },
    ['Dynamis Lord']        = { name = 'Dynamis Lord', groupId = 1, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 4018, spellList = spellLists.DYNAMIS_LORD, skillList = 361, aiType = 'Dynamis Lord', flags = 135 },

    -- Dynamis - Beaucedine non-beastmen
    ['Angra Mainyu']       = { name = 'Angra Mainyu',  groupId = 1,   groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4094, spellList = spellLists.BLM, skillList = mobSkillLists.VANGUARD_EYE,  aiType = 'Angra Mainyu' },
    ['Fire Pukis']         = { name = 'Fire Pukis',    groupId = 2,   groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,    spellList = spellLists.NONE,    skillList = mobSkillLists.DRAGON, aiType = 'Pukis' },
    ['Wind Pukis']         = { name = 'Wind Pukis',    groupId = 2,   groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,    spellList = spellLists.NONE,    skillList = mobSkillLists.DRAGON, aiType = 'Pukis' },
    ['Petro Pukis']        = { name = 'Petro Pukis',   groupId = 2,   groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,    spellList = spellLists.NONE,    skillList = mobSkillLists.DRAGON, aiType = 'Pukis' },
    ['Poison Pukis']       = { name = 'Poison Pukis',  groupId = 2,   groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0,    spellList = spellLists.NONE,    skillList = mobSkillLists.DRAGON, aiType = 'Pukis' },
    ['Dynamis Statue']     = { name = 'D. Statue',     groupId = 199, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4021, spellList = spellLists.BEASTMEN_WHM, skillList = mobSkillLists.GOBLIN_STATUE, aiType = 'Enabled Auto Attack' },
    ['Dynamis Tombstone']  = { name = 'D. Tombstone',  groupId = 201, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4059, spellList = spellLists.BLM, skillList = mobSkillLists.ORC_STATUE, aiType = 'Enabled Auto Attack' },
    ['Dynamis Effigy']     = { name = 'D. Effigy',     groupId = 200, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4000,   spellList = spellLists.NONE,    skillList = mobSkillLists.QUADAV_STATUE, aiType = 'Enabled Auto Attack' },
    ['Dynamis Icon']       = { name = 'D. Icon',       groupId = 198, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 4005,  spellList = spellLists.BLM, skillList = mobSkillLists.YAGUDO_STATUE, aiType = 'Enabled Auto Attack' },

    -- Dynamis - Buburimu non-beastmen
    ['Aitvaras']           = { name = 'Aitvaras',    groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5008, aiType = 'Buburimu Dragon' },
    ['Alklha']             = { name = 'Alklha',      groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5006, aiType = 'Buburimu Dragon' },
    ['Barong']             = { name = 'Barong',      groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5004, aiType = 'Buburimu Dragon' },
    ['Basilic']            = { name = 'Basilic',     groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5007, aiType = 'Buburimu Dragon' },
    ['Jurik']              = { name = 'Jurik',       groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5003, aiType = 'Buburimu Dragon' },
    ['Koschei']            = { name = 'Koschei',     groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5009, aiType = 'Buburimu Dragon' },
    ['Stihi']              = { name = 'Stihi',       groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5001, aiType = 'Buburimu Dragon' },
    ['Stollenwurm']        = { name = 'Stollenwurm', groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5010, aiType = 'Buburimu Dragon' },
    ['Tarasca']            = { name = 'Tarasca',     groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5005, aiType = 'Buburimu Dragon' },
    ['Vishap']             = { name = 'Vishap',      groupId = 105, groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4006, spellList = spellLists.NONE, skillList = 5002, aiType = 'Buburimu Dragon' },
    ['Apocalyptic Beast']  = { name = 'Apoc. Beast', groupId = 1,   groupZoneId = xi.zone.DYNAMIS_BUBURIMU, dropId = 4003, spellList = spellLists.NONE, skillList = 0,    aiType = 'Apocalyptic Beast' },

    -- Dynamis - Valkurm
    ['Dragontrap_1']       = { name = 'Dragontrap',    groupId = 63, groupZoneId = xi.zone.NYZUL_ISLE, dropId = 4091, spellList = spellLists.NONE, skillList = 114,  aiType = 'No Auto Attack' },
    ['Dragontrap_2']       = { name = 'Dragontrap',    groupId = 63, groupZoneId = xi.zone.NYZUL_ISLE, dropId = 4091, spellList = spellLists.NONE, skillList = 114,  aiType = 'No Auto Attack' },
    ['Dragontrap_3']       = { name = 'Dragontrap',    groupId = 63, groupZoneId = xi.zone.NYZUL_ISLE, dropId = 4091, spellList = spellLists.NONE, skillList = 114,  aiType = 'No Auto Attack' },
    ['Fairy Ring']         = { name = 'Fairy Ring',    groupId = 10, groupZoneId = xi.zone.DYNAMIS_VALKURM, dropId = 4091, spellList = spellLists.NONE, skillList = 116,  aiType = 'Fairy Ring' },
    ["Nant'ina"]           = { name = "Nant'ina",      groupId = 8,  groupZoneId = xi.zone.DYNAMIS_VALKURM, dropId = 4091, spellList = spellLists.NONE, skillList = 5000, aiType = "Nant'ina" },
    ['Stcemqestcint']      = { name = 'Stcemqestcint', groupId = 6,  groupZoneId = xi.zone.DYNAMIS_VALKURM, dropId = 4091, spellList = spellLists.NONE, skillList = 245,  aiType = 'No Auto Attack' },
    ['Nightmare Morbol']   = { name = 'N. Morbol',     groupId = 33, groupZoneId = xi.zone.LA_VAULE_S, dropId = 0,    spellList = spellLists.NONE, skillList = 186,  aiType = 'Nightmare Morbol' },
    ['Cirrate Christelle'] = { name = 'C. Christelle', groupId = 1,  groupZoneId = xi.zone.DYNAMIS_VALKURM, dropId = 4009,  spellList = spellLists.NONE, skillList = 0,    aiType = 'Cirrate Christelle' },

    -- Dynamis - Qufim non-beastmen
    ['Scolopendra']        = { name = 'Scolopendra', groupId = 76, groupZoneId = xi.zone.DYNAMIS_QUFIM, dropId = 4093, spellList = spellLists.NONE, skillList = 218, aiType = 'Enabled Auto Attack' },
    ['Suttung']            = { name = 'Suttung',     groupId = 85, groupZoneId = xi.zone.DYNAMIS_QUFIM, dropId = 4093, spellList = spellLists.NONE, skillList = 135, aiType = 'Enabled Auto Attack' },
    ['Stringes']           = { name = 'Stringes',    groupId = 79, groupZoneId = xi.zone.DYNAMIS_QUFIM, dropId = 4093, spellList = spellLists.NONE, skillList = 46,  aiType = 'Enabled Auto Attack' },
    ['Antaeus']            = { name = 'Antaeus',     groupId = 1,  groupZoneId = xi.zone.DYNAMIS_QUFIM, dropId = 4001,  spellList = spellLists.NONE, skillList = 126, aiType = 'Antaeus' },

    -- Dynamis - Tavnazia non-beastmen
    ['Nightmare Antlion']  = { name = 'N. Antlion',  groupId = 64, groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = spellLists.NONE,    skillList = 4074, aiType = 'Nightmare Antlion' },
    -- No spell data exists for this NM in either source; NONE until it is written.
    ['Nightmare Worm']     = { name = 'N. Worm',     groupId = 7,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 4054, spellList = spellLists.NONE, skillList = 4081, aiType = 'Nightmare Worm' },
    ['Umbral Diabolos']    = { name = 'U. Diabolos', groupId = 4,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = nil,  skillList = nil,  aiType = 'Umbral Diabolos' },
    ['Diabolos Club']      = { name = 'D. Club',     groupId = 4,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = spellLists.DIABOLOS_CLUB,  skillList = 4084, aiType = 'Diabolos Club' },
    ['Diabolos Diamond']   = { name = 'D. Diamond',  groupId = 3,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = spellLists.DIABOLOS_DIAMOND,  skillList = 4082, aiType = 'Diabolos Diamond' },
    ['Diabolos Heart']     = { name = 'D. Heart',    groupId = 2,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = spellLists.DIABOLOS_HEART,  skillList = 4086, aiType = 'Diabolos Heart' },
    ['Diabolos Spade']     = { name = 'D. Spade',    groupId = 1,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = nil,  skillList = 4085, aiType = 'Diabolos Spade' },
    ['Diabolos Shard']     = { name = 'D. Shard',    groupId = 5,  groupZoneId = xi.zone.DYNAMIS_TAVNAZIA, dropId = 0,    spellList = nil,  skillList = 4087, aiType = 'Diabolos Shard' },
}

-----------------------------------
-- BST / DRG / SMN pets
-----------------------------------
-- pets[job][parent's family] = { normal = entry, nm = { [parent's name] = entry } }

lookups.pets =
{
    [xi.job.BST] =
    {
        [family.GOBLIN] =
        {
            normal = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
            nm = -- Armored goblin NMs share the Goblin family in this repo
            {
                ['Trailblix Goatmug']     = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
                ['Rutrix Hamgams']        = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
                ['Blazox Boneybod']       = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
                ['Routsix Rubbertendon']  = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
                ['Blazax Boneybad']       = { name = 'V. Slime', groupId = 130, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
                ['Woodnix Shrillwhistle'] = { name = 'W. Slime', groupId = 7,   groupZoneId = xi.zone.DYNAMIS_BUBURIMU,  dropId = 0, spellList = spellLists.VANGUARD_SLIME, skillList = 229 },
            },
        },
        [family.ORC] =
        {
            normal = { name = 'V. Hecteyes', groupId = 77, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_HECTEYES, skillList = 139 },
            nm =
            {
                ['Mithraslaver Debhabob'] = { name = 'V. Hecteyes', groupId = 77, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_HECTEYES, skillList = 139 },
            },
        },
        [family.QUADAV] =
        {
            normal = { name = 'V. Scorpion', groupId = 22, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SCORPION, skillList = 217 },
            nm =
            {
                ["So'Gho Adderhandler"]   = { name = 'V. Scorpion', groupId = 22, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SCORPION, skillList = 217 },
                ["Be'Ebo Tortoisedriver"] = { name = 'V. Scorpion', groupId = 22, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_SCORPION, skillList = 217 },
            },
        },
        [family.DEMON] =
        {
            normal = { name = 'K. Vouivre', groupId = 18, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 267 },
            nm =
            {
                ['Marquis Andras'] = { name = 'A. Vouivre', groupId = 55, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 267 },
            },
        },
        [family.FOMOR] =
        {
            normal = { name = 'H. Hound', groupId = 169, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 143 },
            nm =
            {
                ['Dagourmarche'] = { name = 'D. Hound', groupId = 169, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 143 },
            },
        },
        [family.YAGUDO] =
        {
            normal = { name = 'V. Crow', groupId = 100, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_CROW, skillList = 55 },
            nm =
            {
                ['Soo Jopo the Fiendking'] = { name = 'V. Crow', groupId = 100, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.VANGUARD_CROW, skillList = 55 },
            },
        },
    },
    [xi.job.DRG] =
    {
        [family.GOBLIN] =
        {
            normal = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm = -- Armored goblin NMs share the Goblin family in this repo
            {
                ['Draklix Scalecrust'] = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
                ['Wyrmwix Snakespecs'] = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.ORC] =
        {
            normal = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ['Elvaansticker Bxafraff'] = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
                ['Wyrmgnasher Bjakdek']    = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
                ['Drakefeast Wubmfub']     = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.QUADAV] =
        {
            normal = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ["Go'Tyo Magenapper"] = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.DEMON] =
        {
            normal = { name = 'K. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ['King Zagan'] = { name = "Zagan's Wyvern", groupId = 61, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.FOMOR] =
        {
            normal = { name = 'H. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ['Dagourmarche'] = { name = 'D. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.YAGUDO] =
        {
            normal = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ['Maa Zaua the Wyrmkeeper'] = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
        [family.DRAGON] =
        {
            normal = { name = 'V. Wyvern', groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            nm =
            {
                ['Apocalyptic Beast'] = { name = "Dragon's Wyvern", groupId = 27, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = 714 },
            },
        },
    },
    [xi.job.SMN] =
    {
        [family.GOBLIN] =
        {
            normal = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm = -- Armored goblin NMs share the Goblin family in this repo
            {
                ['Morblox Chubbychin'] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ['Morgmox Moldnoggin'] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ['Mortilox Wartpaws']  = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.ORC] =
        {
            normal = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm =
            {
                ['Deathcaller Bidfbid']    = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ['Reapertongue Gadgquok']  = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.QUADAV] =
        {
            normal = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm =
            {
                ["Be'Zhe Keeprazer"] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ["Gu'Nhi Noondozer"] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.DEMON] =
        {
            normal = { name = 'K. Avatar', groupId = 25, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm =
            {
                ['Marquis Nebiros'] = { name = "Nebiros' Avatar", groupId = 68, groupZoneId = xi.zone.DYNAMIS_XARCABARD, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.FOMOR] =
        {
            normal = { name = 'H. Avatar', groupId = 177, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm =
            {
                ['Dagourmarche'] = { name = 'D. Avatar', groupId = 177, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.YAGUDO] =
        {
            normal = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            nm =
            {
                ['Baa Dava the Bibliophage'] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ['Puu Timu the Phantasmal'] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
                ['Haa Pevi the Stentorian'] = { name = 'V. Avatar', groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
        [family.DRAGON] =
        {
            nm =
            {
                ['Apocalyptic Beast'] = { name = "Dragon's Avatar", groupId = 36, groupZoneId = xi.zone.DYNAMIS_BEAUCEDINE, dropId = 0, spellList = spellLists.NONE, skillList = mobSkillLists.AVATAR },
            },
        },
    },
}

-----------------------------------
-- Stats data
-----------------------------------

-- Two-hour abilities per main job for normal mobs. RNG uses the
-- family-specific Eagle Eye Shot from familyEES below.
lookups.jobSpecials =
{
    [xi.job.WAR] = { id = xi.mobSkill.MIGHTY_STRIKES_1, hppMin = 55,  hppMax = 80 },
    [xi.job.MNK] = { id = xi.mobSkill.HUNDRED_FISTS_1,  hppMin = 55,  hppMax = 70 },
    [xi.job.WHM] = { id = xi.mobSkill.BENEDICTION_1,    hppMin = 40,  hppMax = 60 },
    [xi.job.BLM] = { id = xi.mobSkill.MANAFONT_1,       hppMin = 55,  hppMax = 80 },
    [xi.job.RDM] = { id = xi.mobSkill.CHAINSPELL_1,     hppMin = 55,  hppMax = 80 },
    [xi.job.THF] = { id = xi.mobSkill.PERFECT_DODGE_1,  hppMin = 55,  hppMax = 75 },
    [xi.job.PLD] = { id = xi.mobSkill.INVINCIBLE_1,     hppMin = 55,  hppMax = 75 },
    [xi.job.DRK] = { id = xi.mobSkill.BLOOD_WEAPON_1,   hppMin = 55,  hppMax = 75 },
    [xi.job.BRD] = { id = xi.mobSkill.SOUL_VOICE_1,     hppMin = 55,  hppMax = 80 },
    [xi.job.RNG] = { useFamilyEES = true,               hppMin = 55,  hppMax = 75 },
    [xi.job.SAM] = { id = xi.mobSkill.MEIKYO_SHISUI_1,  hppMin = 55,  hppMax = 80 },
    [xi.job.NIN] = { id = xi.mobSkill.MIJIN_GAKURE_1,   hppMin = 25,  hppMax = 35 },
    -- DRG wyverns spawn via spawnDynamicPet on engage; no Call Wyvern skill,
    -- which would hit the base pet path and fail on dynamic entities.
}

-- Families this module spawns that use an EES special.
lookups.familyEES =
{
    [family.GOBLIN] = xi.mobSkill.EES_GOBLIN,
    [family.ORC]    = xi.mobSkill.EES_ORC,
    [family.QUADAV] = xi.mobSkill.EES_QUADAV,
    [family.YAGUDO] = xi.mobSkill.EES_YAGUDO,
    [family.DEMON]  = xi.mobSkill.EES_KINDRED,
    [family.FOMOR]  = xi.mobSkill.EES_SHADE,
}

-- NIN/RNG mobs of these families use a special ranged skill.
lookups.rangedSpecialSkills =
{
    [family.QUADAV]  = 1123, -- Hecatomb Wave (Quadav)
    [family.DEMON] = 1146, -- Hecatomb Wave (Kindred)
}

-- Magic defense bonus overrides by family.
lookups.mdbOverrides =
{
    [family.WYVERN_PET] = 100,
    [family.HECTEYES]   = 100,
    [family.ORC]        = 100,
}

lookups.mdbSpeciesOverrides =
{
}
