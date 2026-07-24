-- --------------------------------------------------------------------
--                    Era Dynamis instance tracking                   --
--                                                                    --
-- Used by the era Dynamis C++ module (dynamis_functions.cpp) to      --
-- persist instances, their registered participants and (eventually)  --
-- alive-mob snapshots across server restarts.                        --
-- --------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `dynamis_instances` (
  `instanceid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `zoneid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `charid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`instanceid`, `zoneid`),
  INDEX (`zoneid`, `charid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `dynamis_participants` (
  `instanceid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `charid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`instanceid`, `charid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `dynamis_instance_state` (
  `instanceid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobindex` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`instanceid`, `mobindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
