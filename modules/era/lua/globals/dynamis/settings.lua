-----------------------------------
-- Era Dynamis - internal settings
--
-- Mechanics constants for the era Dynamis module. Player-facing entry
-- rules live in settings/main.lua instead: DYNA_LEVEL_MIN,
-- BETWEEN_2DYNA_WAIT_TIME and FREE_COP_DYNAMIS.
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

xi.dynamis.settings =
{
    HOURGLASS_ENTRY = false,

    -- Instance timing
    START_MINUTES              = 60,  -- Fresh instance duration, in minutes
    TAVNAZIA_START_MINUTES     = 15,  -- Dynamis - Tavnazia fresh instance duration, in minutes
    TAVNAZIA_TIME_EXTENSION    = 30,  -- Minutes granted per Dynamis - Tavnazia time extension
    RESERVATION_CANCEL_MINUTES = 180, -- Minutes quoted in the registration cutscene before an unused reservation lapses

    -- Zone upkeep
    HOURGLASS_CHECK_INTERVAL = 5,   -- Seconds between hourglass validity checks per player
    SNAPSHOT_INTERVAL        = 30,  -- Seconds between instance snapshots (for !restoredyna)
    CLEANUP_COOLDOWN         = 0,   -- Seconds the entry zone stays locked after an instance is torn down
    STALE_ENTRY_GRACE        = 120, -- Seconds after registration before an empty recorded instance counts as stale

    -- Dreamlands
    SJ_RESTRICTION          = false, -- Wipe buffs and lock subjob on dreamland entry
    SJ_RESTRICTION_DURATION = 18000, -- Seconds; effectively lasts the whole instance (5 hours)
    TAVNAZIA_TE_MUSIC       = 227,   -- Music played after a Tavnazia time extension
}
