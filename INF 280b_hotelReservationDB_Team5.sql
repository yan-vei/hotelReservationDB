CREATE DATABASE  IF NOT EXISTS `hotelreservation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotelreservation`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotelreservation
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guest_id` int NOT NULL,
  `reservation_id` int DEFAULT NULL,
  `SSN` int DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `mid_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`guest_id`),
  KEY `reservation_id_idx` (`reservation_id`),
  CONSTRAINT `reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,3,123456789,'Yana','G','Veitsman','359879421464','28 West Bow Ridge Road\nMilford, MA 01757'),(2,4,851037747,'Anton','B','Johnson','359862143878','7675 8th Lane\nMaspeth, NY 11378'),(3,5,586792236,'Alex','V','Sherman','359895557980','178 Shadow Brook St.\nKings Mountain, NC 28086'),(4,6,421754475,'Maxim','S','Howells','359895551698','473 Park St.\nWestfield, MA 01085'),(5,7,993646297,'Viktor','C','Warner','359485553468','701 Lake St.\nDunedin, FL 34698'),(6,8,787485092,'John','T','King','359988555596','52 Ridge Lane\nTupelo, MS 38801'),(7,9,334332905,'Donald','U','Bright','359875553926','72 Indian Summer Rd.\nGreat Falls, MT 59404'),(8,1,145788693,'John','E','Brown','359431278845','43 Pensville Avenue'),(9,11,935610572,'Marta','K','Walton','359127845123','7549 Arnold St.\nCamp Hill, PA 17011'),(10,12,954457400,'Vyara','E','Torres','359464009845','9372 Harvey St.\nOrange, NJ 07050'),(11,13,110641190,'Dimitar','R','Flowers','359890045331','90 Peg Shop Ave.\nEdison, NJ 08817'),(12,14,473092582,'Eleonora','M','Morley','359321544895','72 Queen St.\nOxnard, CA 93035'),(13,15,775600136,'Viktoriya','Z','Bate','359775544902','41 Old Longbranch Street\nJenison, MI 49428'),(14,10,253988365,'Antoana','A','Dalby','359008888323','647 Sunbeam Avenue\nSylvania, OH 43560'),(15,2,628111637,'Mariya','P','Pugh','359231345895','39 Saxton Drive\nBethlehem, PA 18015');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_type`
--

DROP TABLE IF EXISTS `guest_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_type` (
  `guest_type_id` int NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`guest_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_type`
--

LOCK TABLES `guest_type` WRITE;
/*!40000 ALTER TABLE `guest_type` DISABLE KEYS */;
INSERT INTO `guest_type` VALUES (1,'agency'),(2,'individual'),(3,'group');
/*!40000 ALTER TABLE `guest_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotel_id` int NOT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Pacific View','669 Oak Drive\nFreehold, NJ 07728'),(2,'Allegra','8806 North Newbridge \nWaukegan, IL 60085'),(3,'Fenix','43 Myers Ave.\nHolbrook, NY 11741'),(4,'Anchor','513 Foster Ave.\nMooresville, NC 28115'),(5,'Storm','7761 Bowman St.\nGrand Island, NE 68801');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_plan`
--

DROP TABLE IF EXISTS `meal_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meal_plan` (
  `meal_plan_id` int NOT NULL,
  `plan_desc` mediumtext,
  `plan_price` float DEFAULT NULL,
  PRIMARY KEY (`meal_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_plan`
--

LOCK TABLES `meal_plan` WRITE;
/*!40000 ALTER TABLE `meal_plan` DISABLE KEYS */;
INSERT INTO `meal_plan` VALUES (1,'Only breakfast (English)',15),(2,'Breakfast and supper',20),(3,'Breakfast, supper and dinner',30),(4,'3 meals per day and alcohol ',40),(5,'Breakfast and dinner',24),(6,'Dinner and supper',25),(7,'Vegetarian breakfast',10),(8,'Vegeterian supper',15),(9,'Vegeterian dinner',20),(10,'3 vegeterian meals ',30);
/*!40000 ALTER TABLE `meal_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `parking_id` int NOT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `parking_number` int DEFAULT NULL,
  PRIMARY KEY (`parking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,'2020-11-02','2020-11-04','Main entrance',114),(2,'2020-11-02','2020-11-05','Entrance B',115),(3,'2020-11-02','2020-11-06','Main entrance',102),(4,'2020-11-03','2020-11-05','Entrance D',103),(5,'2020-11-03','2020-11-05','VIP entrance',178),(6,'2020-11-04','2020-11-05','Entrance D',189),(7,'2020-11-04','2020-11-07','Main entrance',156),(8,'2020-11-04','2020-11-07','Entrance B',167),(9,'2020-11-04','2020-11-06','Main entrance',143),(10,'2020-11-04','2020-11-05','Main entrance',120),(11,'2020-11-04','2020-11-07','Entrance B',137),(12,'2020-11-04','2020-11-07','VIP entrance',200),(13,'2020-11-05','2020-11-07','Main entrance',145),(14,'2020-11-05','2020-11-06','Main entrance',777),(15,'2020-11-05','2020-11-07','Main entrance',795);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `method` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2020-11-02 00:00:00','card',300),(2,'2020-11-03 14:40:00','card',300),(3,'2020-11-03 15:30:00','cash',300),(4,'2020-11-03 17:30:00','card',400),(5,'2020-11-04 10:30:00','card',400),(6,'2020-11-05 11:30:00','cash',300),(7,'2020-11-05 11:40:00','card',450),(8,'2020-11-05 13:30:00','card',450),(9,'2020-11-05 13:37:00','cash',450),(10,'2020-11-05 13:39:00','card',350),(11,'2020-11-05 18:30:00','card',350),(12,'2020-11-05 19:47:00','cash',800),(13,'2020-11-06 17:42:00','card',800),(14,'2020-11-07 20:00:00','card',800),(15,'2020-11-07 23:30:00','cash',800);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `rate_id` int NOT NULL,
  `rate_decimal` float DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,300),(2,400),(3,450),(4,800),(5,350);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionists`
--

DROP TABLE IF EXISTS `receptionists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptionists` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `employee_phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionists`
--

LOCK TABLES `receptionists` WRITE;
/*!40000 ALTER TABLE `receptionists` DISABLE KEYS */;
INSERT INTO `receptionists` VALUES (1,'Yana Veitsman','359879414464'),(2,'Sufyan Kirk','359567889747'),(3,'Tolga Golden','359718603546'),(4,'Alysia Colon','359355712237'),(5,'Rachael Hebert','359168901455'),(6,'Lila Waller','359877314412'),(7,'Clodagh Boyle','359806356001'),(8,'Vienna Correa','359229253476'),(9,'Falak Cotton','359115853970');
/*!40000 ALTER TABLE `receptionists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `guest_id` int DEFAULT NULL,
  `guest_type_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `meal_plan_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `parking_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `room_id_idx` (`room_id`),
  KEY `guest_type_id_idx` (`guest_type_id`),
  KEY `employee_id_idx` (`employee_id`),
  KEY `meal_plan_id_idx` (`meal_plan_id`),
  KEY `payment_id_idx` (`payment_id`),
  KEY `parking_id_idx` (`parking_id`),
  KEY `guest_idx` (`guest_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `receptionists` (`employee_id`),
  CONSTRAINT `guest` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `guest_type_id` FOREIGN KEY (`guest_type_id`) REFERENCES `guest_type` (`guest_type_id`),
  CONSTRAINT `meal_plan_id` FOREIGN KEY (`meal_plan_id`) REFERENCES `meal_plan` (`meal_plan_id`),
  CONSTRAINT `parking_id` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`parking_id`),
  CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,15,1,1,2,1,1,1,'2020-11-03','2020-11-06'),(2,14,1,2,1,3,2,2,'2020-11-03','2020-11-09'),(3,13,2,3,3,5,3,3,'2020-11-03','2020-11-07'),(4,12,3,4,5,3,4,4,'2020-11-03','2020-11-07'),(5,11,3,5,3,3,5,5,'2020-11-04','2020-11-05'),(6,10,3,6,1,2,6,6,'2020-11-04','2020-11-05'),(7,9,1,7,9,10,7,7,'2020-11-04','2020-11-07'),(8,8,1,8,9,9,8,8,'2020-11-04','2020-11-07'),(9,7,2,9,1,1,9,9,'2020-11-04','2020-11-06'),(10,6,2,10,8,8,10,10,'2020-11-04','2020-11-06'),(11,5,2,11,7,7,11,11,'2020-11-05','2020-11-06'),(12,4,2,12,4,4,12,12,'2020-11-05','2020-11-08'),(13,3,2,13,2,2,13,13,'2020-11-05','2020-11-07'),(14,2,2,14,4,10,14,14,'2020-11-06','2020-11-07'),(15,1,1,15,3,3,15,15,'2020-11-06','2020-11-08');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `guest_id` int DEFAULT NULL,
  `rate_id` int DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `room_number` int DEFAULT NULL,
  `availability` tinyint DEFAULT NULL,
  `room_desc` mediumtext,
  PRIMARY KEY (`room_id`),
  KEY `hotel_id_idx` (`hotel_id`),
  KEY `guest_id_idx` (`guest_id`),
  KEY `rate_id_idx` (`rate_id`),
  CONSTRAINT `guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  CONSTRAINT `rate_id` FOREIGN KEY (`rate_id`) REFERENCES `rates` (`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,1,1,1101,0,'15m^2, with AC and shower'),(2,2,1,2,1102,0,'15m^2, with AC and shower'),(3,3,1,3,1103,0,'15m^2, with AC and shower'),(4,4,2,5,1104,0,'30m^2, with AC , shower, king size bed, 40 TV'),(5,5,2,5,1105,0,'30m^2, with AC , shower, king size bed, 40 TV'),(6,6,1,4,1106,0,'15m^2, with AC and shower'),(7,7,3,2,1107,0,'35m^2, with AC , shower, 2 king size beds, 40 TV, small swimming pool'),(8,8,3,1,1108,0,'35m^2, with AC , shower, 2 king size beds, 40 TV, small swimming pool'),(9,9,3,2,1109,0,'35m^2, with AC , shower, 2 king size beds, 40 TV, small swimming pool'),(10,10,5,4,1110,0,'20m^2, with AC and shower'),(11,11,5,3,1111,0,'20m^2, with AC and shower'),(12,12,4,5,1112,0,'private villa '),(13,13,4,1,1113,0,'private villa '),(14,14,4,2,1114,0,'private villa '),(15,15,4,4,1115,0,'private villa '),(16,NULL,4,1,1116,1,'private villa '),(17,NULL,1,3,1117,1,'20m^2, with AC and shower');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hotelreservation'
--

--
-- Dumping routines for database 'hotelreservation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 19:21:13
