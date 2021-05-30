-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: it635project
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allquests`
--
CREATE DATABASE it635project;
USE it635project;
DROP TABLE IF EXISTS `allquests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allquests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `giver` varchar(30) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `q_desc` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  `q_ownerid` int(11) DEFAULT NULL,
  `istaken` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allquests`
--

LOCK TABLES `allquests` WRITE;
/*!40000 ALTER TABLE `allquests` DISABLE KEYS */;
INSERT INTO `allquests` VALUES (1,'Mervin','New Jersey','gather','Buy me some Macdonalds','5 dollars',1,1),(2,'Mervin','New Jersey','gather','Buy me some Burgerking','10 dollars',0,0),(26,'Volkmar','Castle Lothern','combat','The local militia has put up a quest to join them in subjugating some monsters.','1 rare sword',1,1),(27,'Volkmar','Carroburg','gather','The local alchemist has requested a group of adventurers to gather him 30 bundles of heartgrass.','2000 gold',1,1),(31,'Varnak','Castle Lothern','combat','A cryptic merchant seeks a company of adventurers to rescue the lady Azas from the brigands at this location.','2000 gold',NULL,0),(32,'Alarielle','Caledor','scouting','The military has requested the help of adventurers to scout out a newly discovered ruins around this location.','10000 gold',NULL,0),(33,'Teclis','Caledor','escort','A frantic aristocrat seeks a company of adventurers to escort a caravan of exotic goods safely to this city.','20000 gold',NULL,0),(34,'Alice','Castle Couronne','escort','A noblewoman seeks a company of adventurers to escort a powerful arcane device safely to this location.','2500 gold',NULL,0),(35,'Felix','Salzenmund','escort','A frantic aristocrat seeks a company of adventurers to escort a caravan of exotic goods safely to this city.','1 legendary sword',NULL,0);
/*!40000 ALTER TABLE `allquests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_quests`
--

DROP TABLE IF EXISTS `open_quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_quests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `giver` varchar(30) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `q_desc` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_quests`
--

LOCK TABLES `open_quests` WRITE;
/*!40000 ALTER TABLE `open_quests` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questdesc`
--

DROP TABLE IF EXISTS `questdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questdesc` (
  `type` varchar(50) DEFAULT NULL,
  `q_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questdesc`
--

LOCK TABLES `questdesc` WRITE;
/*!40000 ALTER TABLE `questdesc` DISABLE KEYS */;
INSERT INTO `questdesc` VALUES ('escort','A frantic aristocrat seeks a company of adventurers to escort a caravan of exotic goods safely to this city.'),('escort','A noblewoman seeks a company of adventurers to escort a powerful arcane device safely to this location.'),('gather','The local alchemist has requested a group of adventurers to gather him 30 bundles of heartgrass.'),('gather','The local baker has put up a quest to bring him 3 sacks of grain.'),('combat','The local militia has put up a quest to join them in subjugating some monsters.'),('scouting','The military has requested the help of adventurers to scout out a newly discovered ruins around this location.'),('combat','A cryptic merchant seeks a company of adventurers to rescue the lady Azas from the brigands at this location.');
/*!40000 ALTER TABLE `questdesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questgiver`
--

DROP TABLE IF EXISTS `questgiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questgiver` (
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questgiver`
--

LOCK TABLES `questgiver` WRITE;
/*!40000 ALTER TABLE `questgiver` DISABLE KEYS */;
INSERT INTO `questgiver` VALUES ('Gosa'),('Franz'),('Tyrion'),('Leon'),('Varnak'),('Alice'),('Kurt'),('Volkmar'),('Balthasar'),('Felix'),('Ludwig'),('Alarielle'),('Teclis'),('Fay'),('Louen');
/*!40000 ALTER TABLE `questgiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questlocation`
--

DROP TABLE IF EXISTS `questlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questlocation` (
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questlocation`
--

LOCK TABLES `questlocation` WRITE;
/*!40000 ALTER TABLE `questlocation` DISABLE KEYS */;
INSERT INTO `questlocation` VALUES ('Altdorf'),('Middenheim'),('Saints Haven'),('Marienburg'),('Castle Artois'),('Bastonne'),('Castle Couronne'),('Gisoreux'),('Castle Montfort'),('Castle Lothern'),('Ellyrion'),('Avelorn'),('Caledor'),('Carroburg'),('Nuln'),('Talabheim'),('Salzenmund');
/*!40000 ALTER TABLE `questlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questrewards`
--

DROP TABLE IF EXISTS `questrewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questrewards` (
  `type` varchar(30) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questrewards`
--

LOCK TABLES `questrewards` WRITE;
/*!40000 ALTER TABLE `questrewards` DISABLE KEYS */;
INSERT INTO `questrewards` VALUES ('normal sword',1),('rare sword',1),('epic sword',1),('legendary sword',1),('legendary helmet',1),('legendary armor',1),('normal armor',1),('rare armor',1),('gold',1000),('gold',2000),('gold',5000),('gold',10000),('gold',15000),('gold',2500),('gold',20000);
/*!40000 ALTER TABLE `questrewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rewards` (
  `Gold_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` VALUES (1000),(2000),(3000),(5000),(15000),(10000);
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
CREATE USER 'mervin'@'%' IDENTIFIED BY '1234';
GRANT ALL ON it635project.* TO 'mervin'@'%';

FLUSH PRIVILEGES;
--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('mb535','1234',1),('mervin','1111',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10  3:55:31