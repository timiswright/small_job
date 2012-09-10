# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: NENYL
# Generation Time: 2012-09-10 09:20:00 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table gameweek
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameweek`;

CREATE TABLE `gameweek` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `game_date` date DEFAULT NULL,
  `game_type` varchar(50) DEFAULT 'League',
  `game_division` varchar(50) DEFAULT NULL,
  `game_age` varchar(50) DEFAULT NULL,
  `home_team_id` int(11) DEFAULT NULL,
  `home_team_score` int(11) DEFAULT NULL,
  `away_team_id` int(11) DEFAULT NULL,
  `away_team_score` int(11) DEFAULT NULL,
  `referee` varchar(100) DEFAULT NULL,
  `referee_mark` int(3) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `gameweek` WRITE;
/*!40000 ALTER TABLE `gameweek` DISABLE KEYS */;

INSERT INTO `gameweek` (`id`, `game_date`, `game_type`, `game_division`, `game_age`, `home_team_id`, `home_team_score`, `away_team_id`, `away_team_score`, `referee`, `referee_mark`, `manager_id`, `team_id`)
VALUES
	(1,'2012-09-08','League','Division 1','Under 11\'s',1,3,4,0,'Mr Smith',99,1,1);

/*!40000 ALTER TABLE `gameweek` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gameweek_players
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameweek_players`;

CREATE TABLE `gameweek_players` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gameweek_id` int(11) DEFAULT NULL,
  `players_id` int(11) DEFAULT NULL,
  `players_goals_scored` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `gameweek_players` WRITE;
/*!40000 ALTER TABLE `gameweek_players` DISABLE KEYS */;

INSERT INTO `gameweek_players` (`id`, `gameweek_id`, `players_id`, `players_goals_scored`)
VALUES
	(1,1,1,1),
	(2,1,2,0),
	(3,1,3,0),
	(4,1,4,2);

/*!40000 ALTER TABLE `gameweek_players` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table managers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `managers`;

CREATE TABLE `managers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;

INSERT INTO `managers` (`id`, `name`)
VALUES
	(1,'Mr Savage');

/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table players
# ------------------------------------------------------------

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player_name` varchar(255) DEFAULT NULL,
  `shirt_no` int(11) DEFAULT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;

INSERT INTO `players` (`id`, `player_name`, `shirt_no`, `reg_no`, `dob`)
VALUES
	(1,'Brennan Jones',8,1966,'2001-10-25'),
	(2,'Nat James',11,9850,'2002-05-15'),
	(3,'Jake Bright',16,9901,'2002-06-20'),
	(4,'Simon Woodrow',5,156,'2001-10-10');

/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teams
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) DEFAULT NULL,
  `team_age` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;

INSERT INTO `teams` (`id`, `team_name`, `team_age`, `manager_id`)
VALUES
	(1,'The Crabs',11,1),
	(2,'East Coast',11,NULL),
	(3,'The Tigers',11,NULL),
	(4,'North Reds',11,NULL),
	(5,'Old Rovers',11,NULL),
	(6,'New City',11,NULL);

/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
