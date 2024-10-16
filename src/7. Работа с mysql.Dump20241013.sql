-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: human_friends
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
-- Table structure for table `all_animals`
--

DROP TABLE IF EXISTS `all_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_animals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `command` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `equids` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `dwarf` varchar(45) DEFAULT NULL,
  `coat_color` varchar(45) DEFAULT NULL,
  `breed` varchar(45) DEFAULT NULL,
  `cheek_size` varchar(45) DEFAULT NULL,
  `Age_in_month` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_animals`
--

LOCK TABLES `all_animals` WRITE;
/*!40000 ALTER TABLE `all_animals` DISABLE KEYS */;
INSERT INTO `all_animals` VALUES (1,'persik','2021-09-10','Sit, Pounce, Scratch','cat',NULL,'anton',NULL,NULL,'white-black-orange',NULL,NULL,NULL),(2,'oliver','2022-06-30','Meow, Scratch, Jump','cat',NULL,'Justin',NULL,NULL,'black',NULL,NULL,27),(3,'whiskers','2019-05-15','Sit, Pounce','cat',NULL,'Justin',NULL,NULL,'chocolate',NULL,NULL,NULL),(4,'smudge','2020-02-20','Sit, Pounce, Scratch','cat',NULL,'richard',NULL,NULL,'faun',NULL,NULL,NULL),(5,'bella','2019-11-11','Sit, Stay, Roll','dog',NULL,'paul',NULL,NULL,NULL,'border collie',NULL,NULL),(6,'fido','2022-05-17','Sit, Stay, Fetch','dog',NULL,'fred',NULL,NULL,NULL,'beagle',NULL,28),(10,'buddy','2023-11-03','Sit, Paw, Bark','dog',NULL,'james',NULL,NULL,NULL,'schnauzer',NULL,NULL),(11,'hammy','2021-03-10','Roll, Hide','hamster',NULL,'piter',NULL,NULL,NULL,NULL,'small',NULL),(12,'peanut','2023-08-01','Roll, Spin','hamster',NULL,'julia',NULL,NULL,NULL,NULL,'big',14),(13,'thunder','2015-07-21','Trot, Canter, Gallop','horse','yes',NULL,'175',NULL,NULL,NULL,NULL,NULL),(14,'storm','2014-05-05','Trot, Canter','horse','yes',NULL,'160',NULL,NULL,NULL,NULL,NULL),(15,'blaze ','2016-02-26','Trot, Jump, Gallop','horse','yes',NULL,'173',NULL,NULL,NULL,NULL,NULL),(16,'eeyore','2017-09-18','Walk, Carry Load, Bray','donkey','yes',NULL,NULL,'no',NULL,NULL,NULL,NULL),(17,'burro','2019-01-23','Walk, Bray, Kick','donkey','yes',NULL,NULL,'yes',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `all_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `command` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'persik','2021-09-10','Sit, Pounce, Scratch','cat'),(2,'oliver','2022-06-30','Meow, Scratch, Jump','cat'),(3,'whiskers','2019-05-15','Sit, Pounce','cat'),(4,'smudge','2020-02-20','Sit, Pounce, Scratch','cat'),(5,'bella','2019-11-11','Sit, Stay, Roll','dog'),(6,'fido','2022-05-17','Sit, Stay, Fetch','dog'),(10,'buddy','2023-11-03','Sit, Paw, Bark','dog'),(11,'hammy','2021-03-10','Roll, Hide','hamster'),(12,'peanut','2023-08-01','Roll, Spin','hamster'),(13,'thunder','2015-07-21','Trot, Canter, Gallop','horse'),(14,'storm','2014-05-05','Trot, Canter','horse'),(15,'blaze ','2016-02-26','Trot, Jump, Gallop','horse'),(16,'eeyore','2017-09-18','Walk, Carry Load, Bray','donkey'),(17,'burro','2019-01-23','Walk, Bray, Kick','donkey');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camels`
--

DROP TABLE IF EXISTS `camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camels` (
  `animals_id` int NOT NULL,
  `number_of_humps` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camels`
--

LOCK TABLES `camels` WRITE;
/*!40000 ALTER TABLE `camels` DISABLE KEYS */;
/*!40000 ALTER TABLE `camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `animals_id` int NOT NULL,
  `coat_color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'white-black-orange'),(2,'black'),(3,'chocolate'),(4,'faun');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `animals_id` int NOT NULL,
  `breed` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (5,'border collie'),(6,'beagle'),(10,'schnauzer');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donkeys`
--

DROP TABLE IF EXISTS `donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donkeys` (
  `animals_id` int NOT NULL,
  `dwarf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donkeys`
--

LOCK TABLES `donkeys` WRITE;
/*!40000 ALTER TABLE `donkeys` DISABLE KEYS */;
INSERT INTO `donkeys` VALUES (16,'no'),(17,'yes');
/*!40000 ALTER TABLE `donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamsters`
--

DROP TABLE IF EXISTS `hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hamsters` (
  `animals_id` int NOT NULL,
  `cheek_size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamsters`
--

LOCK TABLES `hamsters` WRITE;
/*!40000 ALTER TABLE `hamsters` DISABLE KEYS */;
INSERT INTO `hamsters` VALUES (11,'small'),(12,'big');
/*!40000 ALTER TABLE `hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `animals_id` int NOT NULL,
  `height` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (13,'175'),(14,'160'),(15,'173');
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses_donkeys`
--

DROP TABLE IF EXISTS `horses_donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses_donkeys` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `command` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `equids` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `dwarf` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses_donkeys`
--

LOCK TABLES `horses_donkeys` WRITE;
/*!40000 ALTER TABLE `horses_donkeys` DISABLE KEYS */;
INSERT INTO `horses_donkeys` VALUES (13,'thunder','2015-07-21','Trot, Canter, Gallop','horse','yes','175',NULL),(14,'storm','2014-05-05','Trot, Canter','horse','yes','160',NULL),(15,'blaze ','2016-02-26','Trot, Jump, Gallop','horse','yes','173',NULL),(16,'eeyore','2017-09-18','Walk, Carry Load, Bray','donkey','yes',NULL,'no'),(17,'burro','2019-01-23','Walk, Bray, Kick','donkey','yes',NULL,'yes');
/*!40000 ALTER TABLE `horses_donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_animals`
--

DROP TABLE IF EXISTS `pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pack_animals` (
  `animals_id` int NOT NULL,
  `equids` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_animals`
--

LOCK TABLES `pack_animals` WRITE;
/*!40000 ALTER TABLE `pack_animals` DISABLE KEYS */;
INSERT INTO `pack_animals` VALUES (13,'yes'),(14,'yes'),(15,'yes'),(16,'yes'),(17,'yes');
/*!40000 ALTER TABLE `pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `animals_id` int NOT NULL,
  `owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animals_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'anton'),(2,'Justin'),(3,'Justin'),(4,'richard'),(5,'paul'),(6,'fred'),(10,'james'),(11,'piter'),(12,'julia');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `young_animals`
--

DROP TABLE IF EXISTS `young_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `young_animals` (
  `id` int NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Command` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `Age_in_month` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `young_animals`
--

LOCK TABLES `young_animals` WRITE;
/*!40000 ALTER TABLE `young_animals` DISABLE KEYS */;
INSERT INTO `young_animals` VALUES (2,'oliver','2022-06-30','Meow, Scratch, Jump','cat',27),(6,'fido','2022-05-17','Sit, Stay, Fetch','dog',28),(12,'peanut','2023-08-01','Roll, Spin','hamster',14);
/*!40000 ALTER TABLE `young_animals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-13 21:06:11
