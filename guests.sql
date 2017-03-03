akalaj@fortress:~$ mysqldump kalaj guests
-- MySQL dump 10.13  Distrib 5.6.23-72.1, for Linux (x86_64)
--
-- Host: localhost    Database: kalaj
-- ------------------------------------------------------
-- Server version	5.6.23-72.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location` enum('Arizona','Washington','California','Michigan') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `closeness` enum('Friend','Family','Pal','Relative','Guest') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `number_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (26,'Abby Lynch','Arizona','Friend'),(7,'Alex Jarson','Arizona','Friend'),(9,'Andrew Jarson','Arizona','Friend'),(16,'Andrew Pickering','Arizona','Friend'),(19,'Ariel Fan','Arizona','Friend'),(30,'Blake Rankin','Arizona','Friend'),(28,'Brandon Jaffe','Arizona','Friend'),(27,'Brett Thomas','Arizona','Friend'),(33,'Brock Wilson','Arizona','Friend'),(35,'Bryan O\'Neal','Arizona','Friend'),(2,'Carson Lewis','Arizona','Friend'),(32,'Celeste Cesario','Arizona','Friend'),(5,'Cody Libetreu','Arizona','Friend'),(24,'Dimitriy Goldman','Arizona','Friend'),(8,'Erica Jarson','Arizona','Friend'),(15,'GF Barnett','Arizona','Friend'),(3,'Hannah Evans','Arizona','Friend'),(14,'Jes Barnett','Arizona','Friend'),(31,'John Cesario','Arizona','Friend'),(21,'Joslyn Berry','Arizona','Friend'),(18,'Kamal Linear','Arizona','Friend'),(6,'Kelly Blue','Arizona','Friend'),(13,'Manuel Nappa','Arizona','Guest'),(23,'Matt Loberg','Arizona','Friend'),(20,'Max Barker','Arizona','Friend'),(34,'MrsBrock Wilson','Arizona','Friend'),(12,'Natalie Nappa','Arizona','Guest'),(10,'Nick Nappa','Arizona','Friend'),(29,'Phil Yoon','Arizona','Friend'),(22,'Ryan Rouseau','Arizona','Friend'),(11,'Steve Nappa','Arizona','Friend'),(17,'Tara Kerege','Arizona','Friend'),(25,'Thomas Moore','Arizona','Friend'),(1,'Zach Evans','Arizona','Friend');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-02 18:07:22
