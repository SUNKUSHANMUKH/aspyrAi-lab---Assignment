-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `opt_address`
--

DROP TABLE IF EXISTS `opt_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opt_address` (
  `Add_ID` int NOT NULL,
  `Add_Line1` varchar(255) DEFAULT NULL,
  `Add_Line2` varchar(255) DEFAULT NULL,
  `Add_City` varchar(100) DEFAULT NULL,
  `Add_State` int DEFAULT NULL,
  `Add_Zip` varchar(10) DEFAULT NULL,
  `Add_PartyID` int DEFAULT NULL,
  PRIMARY KEY (`Add_ID`),
  KEY `FK_SYS_State` (`Add_State`),
  KEY `FK_OPT_Party` (`Add_PartyID`),
  CONSTRAINT `FK_OPT_Party` FOREIGN KEY (`Add_PartyID`) REFERENCES `opt_party` (`PTY_ID`),
  CONSTRAINT `FK_SYS_State` FOREIGN KEY (`Add_State`) REFERENCES `sys_state` (`Stt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opt_address`
--

LOCK TABLES `opt_address` WRITE;
/*!40000 ALTER TABLE `opt_address` DISABLE KEYS */;
INSERT INTO `opt_address` VALUES (1,'123 Main St','','Los Angeles',1,'90001',1),(2,'456 Elm St','Apt 3','Houston',2,'77001',2),(3,'789 Maple Ave','Suite 100','New York',3,'10001',3);
/*!40000 ALTER TABLE `opt_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 18:13:57
