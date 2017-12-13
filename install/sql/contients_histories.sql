-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ratiar
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

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
-- Table structure for table `contients_histories`
--

DROP TABLE IF EXISTS `contients_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contients_histories` (
  `historyid` mediumint(128) NOT NULL AUTO_INCREMENT,
  `typal` enum('cycle','business','offset','day','week','month','quarter','year') NOT NULL DEFAULT 'cycle',
  `contientid` int(4) NOT NULL DEFAULT '0',
  `typal_start` int(11) NOT NULL DEFAULT '0',
  `typal_end` int(11) NOT NULL DEFAULT '0',
  `typal_seconds` int(11) NOT NULL DEFAULT '0',
  `rata_exchange` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_average` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_stdev` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_pips` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_direction` enum('up','down','even') NOT NULL DEFAULT 'even',
  `count_ups` mediumint(21) NOT NULL DEFAULT '0',
  `count_downs` mediumint(21) NOT NULL DEFAULT '0',
  `count_evens` mediumint(21) NOT NULL DEFAULT '0',
  `rata_exchange_previous` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_average_previous` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_stdev_previous` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_pips_previous` float(44,30) NOT NULL DEFAULT '0.000000000000000000000000000000',
  `rata_direction_previous` enum('up','down','even') NOT NULL DEFAULT 'even',
  `count_ups_previous` mediumint(21) NOT NULL DEFAULT '0',
  `count_downs_previous` mediumint(21) NOT NULL DEFAULT '0',
  `count_evens_previous` mediumint(21) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`historyid`),
  KEY `SEARCHING` (`typal`,`contientid`,`typal_end`,`typal_start`,`typal_seconds`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contients_histories`
--

LOCK TABLES `contients_histories` WRITE;
/*!40000 ALTER TABLE `contients_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `contients_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14  0:50:46
