CREATE DATABASE  IF NOT EXISTS `dental_clinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dental_clinic`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: dental_clinic
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Temporary view structure for view `active_appointments`
--

DROP TABLE IF EXISTS `active_appointments`;
/*!50001 DROP VIEW IF EXISTS `active_appointments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `active_appointments` AS SELECT 
 1 AS `appointment_id`,
 1 AS `patient_id`,
 1 AS `dentist_id`,
 1 AS `appointment_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `appointment_logs`
--

DROP TABLE IF EXISTS `appointment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `old_status` varchar(20) DEFAULT NULL,
  `new_status` varchar(20) DEFAULT NULL,
  `log_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_logs`
--

LOCK TABLES `appointment_logs` WRITE;
/*!40000 ALTER TABLE `appointment_logs` DISABLE KEYS */;
INSERT INTO `appointment_logs` VALUES (1,1,'Inserted','Scheduled','Scheduled','2025-02-10 02:00:00'),(2,2,'Inserted','Completed ','Completed','2025-02-12 06:30:00'),(3,3,'Inserted','Canceled','Cancelled','2025-02-14 01:00:00'),(4,4,'Inserted','Scheduled','Scheduled','2025-02-16 03:00:00'),(5,5,'Inserted','Completed','Completed','2025-02-18 08:30:00'),(6,6,'Inserted','Scheduled','Scheduled','2025-02-20 00:00:00'),(7,7,'Inserted','Completed','Completed','2025-02-22 02:00:00'),(8,8,'Inserted','Scheduled','Scheduled','2025-02-24 05:30:00'),(9,9,'Inserted','Canceled ','Cancelled','2025-02-26 04:00:00'),(10,10,'Inserted','Completed ','Scheduled','2025-02-28 07:00:00'),(11,3,'Deleted','Cancelled',NULL,'2025-03-18 12:13:00'),(14,11,'Inserted',NULL,'Scheduled','2025-03-24 00:42:16'),(15,12,'Inserted',NULL,'Completed','2025-03-24 00:42:16'),(16,13,'Inserted',NULL,'Scheduled','2025-03-24 00:42:16'),(17,5,'Updated','Completed','Cancelled','2025-03-24 02:41:15'),(18,14,'Inserted',NULL,'Scheduled','2025-03-24 04:18:20'),(19,14,'Updated','Scheduled','Completed','2025-03-24 04:19:29'),(20,13,'Updated','Scheduled','Cancelled','2025-03-24 04:24:56'),(21,11,'Updated','Scheduled','Completed','2025-03-24 04:27:16'),(22,11,'Updated','Completed','Completed','2025-03-24 04:27:19'),(23,4,'Updated','Scheduled','Cancelled','2025-03-24 04:28:44'),(24,8,'Updated','Scheduled','Cancelled','2025-03-24 04:33:38'),(25,11,'Updated','Completed','Cancelled','2025-03-24 04:38:08'),(26,1,'Updated','Scheduled','Cancelled','2025-03-24 04:38:49'),(27,6,'Updated','Scheduled','Cancelled','2025-04-03 09:11:00'),(28,10,'Updated','Scheduled','Cancelled','2025-04-03 09:11:00'),(29,1,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(30,1,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(31,4,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(32,4,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(33,5,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(34,5,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(35,6,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(36,6,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(37,8,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(38,8,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(39,9,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(40,9,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(41,10,'Cancelled','Cancelled','Cancelled','2025-04-04 10:30:18'),(42,10,'Deleted','Cancelled',NULL,'2025-04-04 10:30:18'),(43,17,'Inserted',NULL,'Scheduled','2025-05-13 18:58:33'),(44,18,'Inserted',NULL,'Scheduled','2025-05-13 18:59:08'),(45,17,'Deleted','Scheduled',NULL,'2025-05-13 19:06:13'),(46,18,'Updated','Scheduled','Scheduled','2025-05-14 20:44:55'),(47,18,'Updated','Scheduled','Completed','2025-05-14 20:46:16'),(48,26,'Inserted',NULL,'Scheduled','2025-05-14 20:57:11'),(49,26,'Deleted','Scheduled',NULL,'2025-05-14 20:57:30'),(50,27,'Inserted',NULL,'Scheduled','2025-05-15 03:56:43'),(51,28,'Inserted',NULL,'Scheduled','2025-05-15 05:52:49'),(52,28,'Deleted','Scheduled',NULL,'2025-05-15 05:53:07'),(53,27,'Updated','Scheduled','Scheduled','2025-05-15 05:53:58'),(54,29,'Inserted',NULL,'Scheduled','2025-05-15 06:12:46'),(55,27,'Updated','Scheduled','Scheduled','2025-05-15 06:13:34'),(56,30,'Inserted',NULL,'Scheduled','2025-05-15 14:20:58'),(57,18,'Updated','Completed','Completed','2025-05-15 14:21:01'),(58,30,'Updated','Scheduled','Scheduled','2025-05-15 14:22:23'),(59,31,'Inserted',NULL,'Scheduled','2025-05-15 14:25:20'),(60,31,'Updated','Scheduled','Cancelled','2025-05-15 14:25:55'),(61,31,'Cancelled','Cancelled','Cancelled','2025-05-15 14:26:18'),(62,31,'Deleted','Cancelled',NULL,'2025-05-15 14:26:18');
/*!40000 ALTER TABLE `appointment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_treatments`
--

DROP TABLE IF EXISTS `appointment_treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_treatments` (
  `appointment_treatment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `treatment_id` int DEFAULT NULL,
  PRIMARY KEY (`appointment_treatment_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `treatment_id` (`treatment_id`),
  CONSTRAINT `appointment_treatments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointment_treatments_ibfk_2` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`treatment_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_treatments`
--

LOCK TABLES `appointment_treatments` WRITE;
/*!40000 ALTER TABLE `appointment_treatments` DISABLE KEYS */;
INSERT INTO `appointment_treatments` VALUES (2,2,5),(7,7,3);
/*!40000 ALTER TABLE `appointment_treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `dentist_id` int DEFAULT NULL,
  `appointment_date` datetime NOT NULL,
  `status` enum('Scheduled','Completed','Cancelled') NOT NULL DEFAULT 'Scheduled',
  `notes` text,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `dentist_id` (`dentist_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`dentist_id`) REFERENCES `dentists` (`dentist_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (2,2,7,'2025-02-12 14:30:00','Completed','Teeth whitening procedure.'),(7,7,12,'2025-02-22 10:00:00','Completed','Filling and cleaning.'),(11,11,6,'2025-03-31 13:00:00','Cancelled','Cleaning'),(12,12,6,'2025-03-21 07:00:00','Completed','Cleaning'),(13,13,7,'2025-03-30 08:00:00','Cancelled','Cleaning'),(18,17,12,'2025-05-15 00:00:00','Completed','Whitening'),(27,17,7,'2025-05-15 00:00:00','Scheduled','Cleaning'),(29,17,7,'2025-05-15 00:00:00','Scheduled','Cleaning'),(30,17,6,'2025-05-15 00:00:00','Scheduled','cleaning');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_appointment_insert` BEFORE INSERT ON `appointments` FOR EACH ROW BEGIN
    IF NEW.status IS NULL THEN
        SET NEW.status = 'Scheduled';  
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_appointment_insert` AFTER INSERT ON `appointments` FOR EACH ROW BEGIN
    INSERT INTO appointment_logs (appointment_id, action, new_status)
    VALUES (NEW.appointment_id, 'Inserted', NEW.status);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_appointment_update` BEFORE UPDATE ON `appointments` FOR EACH ROW BEGIN
    IF OLD.status = 'Cancelled' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot update a cancelled appointment';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_appointment_update` AFTER UPDATE ON `appointments` FOR EACH ROW BEGIN
    INSERT INTO appointment_logs (appointment_id, action, old_status, new_status, log_timestamp)
    VALUES (NEW.appointment_id, 'Updated', OLD.status, NEW.status, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_appointment_delete` BEFORE DELETE ON `appointments` FOR EACH ROW BEGIN
    IF OLD.status = 'Cancelled' THEN
    
        INSERT INTO appointment_logs (appointment_id, action, old_status, new_status, log_timestamp)
        VALUES (OLD.appointment_id, 'Cancelled', OLD.status, 'Cancelled', NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_appointment_delete` AFTER DELETE ON `appointments` FOR EACH ROW BEGIN
    INSERT INTO appointment_logs (appointment_id, action, old_status)
    VALUES (OLD.appointment_id, 'Deleted', OLD.status);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `dentist_contact_info`
--

DROP TABLE IF EXISTS `dentist_contact_info`;
/*!50001 DROP VIEW IF EXISTS `dentist_contact_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dentist_contact_info` AS SELECT 
 1 AS `dentist_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `specialization_id`,
 1 AS `phone`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dentist_helpers`
--

DROP TABLE IF EXISTS `dentist_helpers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dentist_helpers` (
  `dentist_helper_id` int NOT NULL AUTO_INCREMENT,
  `dentist_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`dentist_helper_id`),
  KEY `dentist_id` (`dentist_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `dentist_helpers_ibfk_1` FOREIGN KEY (`dentist_id`) REFERENCES `dentists` (`dentist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dentist_helpers_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentist_helpers`
--

LOCK TABLES `dentist_helpers` WRITE;
/*!40000 ALTER TABLE `dentist_helpers` DISABLE KEYS */;
INSERT INTO `dentist_helpers` VALUES (16,6,1),(17,7,2),(18,8,3),(19,9,4),(20,10,5),(21,11,6),(22,12,7),(23,13,8),(24,14,9),(25,15,10);
/*!40000 ALTER TABLE `dentist_helpers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dentist_specialization_count`
--

DROP TABLE IF EXISTS `dentist_specialization_count`;
/*!50001 DROP VIEW IF EXISTS `dentist_specialization_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dentist_specialization_count` AS SELECT 
 1 AS `specialization_name`,
 1 AS `total_dentists`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dentists`
--

DROP TABLE IF EXISTS `dentists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dentists` (
  `dentist_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `specialization_id` int DEFAULT NULL,
  PRIMARY KEY (`dentist_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_specialization` (`specialization_id`),
  CONSTRAINT `fk_specialization` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`specialization_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentists`
--

LOCK TABLES `dentists` WRITE;
/*!40000 ALTER TABLE `dentists` DISABLE KEYS */;
INSERT INTO `dentists` VALUES (6,'Zaro','Quintanilla','09917768905','lordZaroQ@email.com',1),(7,'Malbs','Colarina','09211112222','MalbsColar@email.com',2),(8,'Chad','Bilan','09234567890','BilanChad@email.com',3),(9,'Onins','Naje','09433334444','oninsmigs@email.com',4),(10,'Laine','Bertiz','09345678901','LaineB@email.com',5),(11,'Sarah','Abane','09655556666','sarahA@email.com',6),(12,'Karl','Devera','09456789012','DeveraK@email.com',7),(13,'Drib','Ataiza','09766667777','AtaizaD@email.com',8),(14,'Mar','Perez','09567890123','Mar.Perez@email.com',9),(15,'Dar','Mendina','09877778888','daMendina@email.com',10),(16,'yan','marbella','12367891238','yan@gmail.com',1),(17,'rix','rapadas','123t5678412','rix@gmail.com',2),(18,'potch','mark','12345678905','Potch@gmail.com',3),(19,'jp','pee','12355678902','jpee@gmail.com',4),(20,'lao','mark','12345678903','Lao@gmail.com',5),(21,'sige','sigepa','12358589944','sigesige@gmail.com',2),(22,'Lord','Quintanilla','09917723205','lzfaq@email.com',1),(23,'wiwowru','wqeuqwio','12938765129','wowowie@gmail.com',1),(24,'sigelang','sigesige','091234567890','sigelang@gmail.com',1),(25,'wow','wow','32173812881','wowowieiqweu@gmail.com',2),(26,'chad','092391939','lanbi','chad@gmail.com',2),(28,'lancelance','0912356782','david','lancers@gmail.com',2);
/*!40000 ALTER TABLE `dentists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patient_treatment_history`
--

DROP TABLE IF EXISTS `patient_treatment_history`;
/*!50001 DROP VIEW IF EXISTS `patient_treatment_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_treatment_history` AS SELECT 
 1 AS `patient_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `appointment_date`,
 1 AS `treatment_name`,
 1 AS `cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (2,'Maria','Reyes','1990-04-10','Female','09221234567','mariareyes@email.com','5678 Bonifacio St, Quezon City, Philippines',''),(3,'Ana','Santos','1987-02-25','Female','09331234567','anasantos@email.com','9101 Rizal St, Makati, Philippines',''),(4,'Carlos','Lopez','1978-09-03','Male','09441234567','carloslopez@email.com','1122 Quezon St, Pasig, Philippines',''),(5,'Liza','Mendoza','1993-11-30','Female','09551234567','lizamendoza@email.com','2233 Luna St, Taguig, Philippines',''),(6,'Rafael','Pérez','1980-07-19','Male','09661234567','rafaelperez@email.com','3344 Sampaguita St, Davao, Philippines',''),(7,'Carmen','Diaz','1995-12-04','Female','09771234567','carmendiaz@email.com','4455 Bayani St, Cebu, Philippines',''),(9,'Isabel','Torres','1989-08-09','Female','09991234567','isabeltorres@email.com','6677 Balagtas St, Iloilo, Philippines',''),(10,'Juan','Dela Cruz','1991-03-17','Male','09102345678','juandelacruz@email.com','7788 Taal St, Batangas, Philippines',''),(11,'wow','wew','2004-12-01','Male','09237812123','wow@gmail.com','wowStreet',''),(12,'zaro','quintanilla','2002-11-07','Male','09917768905','zaro@gmail.com','Sanroque Legazpi City ',''),(13,'Richard','Bilan','2003-02-04','Male','09123123122','chad@gmail.com','Camalig Daraga Albay',''),(14,'Malbert','Colarina ','2004-09-25','Male','09123123123','Malbs@gmail.com','Ems bario Legazpi City',''),(17,'lordee','quintanilla','2002-11-07','Male','09123091239','zaroist@gmail.com','San Roque Legazpi City','233bf906fe92ac551f86d51ebf2099df0a4d4c5609f178352e58ceb6e0203d2d'),(18,'malby','cola','2004-09-25','Male','012391231212','malby@gmail.com','tiwi','82cad61d2da5e3091b9bfe53a4cf2cf02ea79d4d364fb5c6a2d7fd7ac4de5db8');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `payment_summary`
--

DROP TABLE IF EXISTS `payment_summary`;
/*!50001 DROP VIEW IF EXISTS `payment_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_summary` AS SELECT 
 1 AS `payment_id`,
 1 AS `appointment_id`,
 1 AS `patient_first_name`,
 1 AS `patient_last_name`,
 1 AS `dentist_first_name`,
 1 AS `dentist_last_name`,
 1 AS `amount_paid`,
 1 AS `payment_date`,
 1 AS `formatted_payment_method`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_method` enum('Cash','Credit Card') NOT NULL,
  `dentist_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `fk_payments_dentist` (`dentist_id`),
  CONSTRAINT `fk_payments_dentist` FOREIGN KEY (`dentist_id`) REFERENCES `dentists` (`dentist_id`) ON DELETE CASCADE,
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,2,2500.00,'2025-02-12 15:00:00','Credit Card',7),(7,7,2000.00,'2025-02-22 14:00:00','Credit Card',12);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specializations`
--

DROP TABLE IF EXISTS `specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specializations` (
  `specialization_id` int NOT NULL AUTO_INCREMENT,
  `specialization_name` varchar(100) NOT NULL,
  PRIMARY KEY (`specialization_id`),
  UNIQUE KEY `specialization_name` (`specialization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializations`
--

LOCK TABLES `specializations` WRITE;
/*!40000 ALTER TABLE `specializations` DISABLE KEYS */;
INSERT INTO `specializations` VALUES (8,'Cosmetic Dentist'),(3,'Endodontist'),(7,'General Dentist'),(10,'Geriatric Dentist'),(9,'Maxillofacial Surgeon'),(6,'Oral Surgeon'),(1,'Orthodontist'),(4,'Pediatric Dentist'),(2,'Periodontist'),(5,'Prosthodontist');
/*!40000 ALTER TABLE `specializations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Ana','Mendoza','09171234560','anamendoza@email.com'),(2,'Jose','Santos','09221234561','josesantos@email.com'),(3,'Maria','Reyes','09331234562','mariareyes@email.com'),(4,'Carlos','Garcia','09441234563','carlosgarcia@email.com'),(5,'Isabel','Lopez','09551234564','isabellopez@email.com'),(6,'Rafael','Pérez','09661234565','rafaelperez@email.com'),(7,'Lucia','Torres','09771234566','lucia@email.com'),(8,'Antonio','Martinez','09881234567','antonio@email.com'),(9,'Emilio','Diaz','09991234568','emilio@email.com'),(10,'Carmen','Dela Cruz','09102345679','carmendela@email.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatments` (
  `treatment_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`treatment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (1,'Tooth Extraction','The removal of a tooth from its socket in the bone.',1500.00),(2,'Dental Cleaning','A professional cleaning of the teeth to remove plaque and tartar.',1000.00),(3,'Fillings','A treatment used to fill cavities in teeth caused by decay.',1200.00),(4,'Root Canal','A procedure to treat infection at the center of a tooth.',3500.00),(5,'Teeth Whitening','A cosmetic dental procedure to lighten the color of the teeth.',2500.00),(6,'Braces','Dental appliances used to straighten or align teeth.',15000.00),(7,'Dentures','Removable false teeth used to replace missing teeth.',8000.00),(8,'Crowns','A dental cap that covers a tooth to restore its shape and size.',4000.00),(9,'Veneers','Thin layers of porcelain or composite resin placed on the surface of the teeth.',5000.00),(10,'Dental Implants','A permanent fixture placed into the jawbone to replace a missing tooth.',20000.00);
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dental_clinic'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `auto_cancel_old_appointments` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `auto_cancel_old_appointments` ON SCHEDULE EVERY 2 DAY STARTS '2025-04-04 18:33:17' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    UPDATE appointments
    SET status = 'Cancelled'
    WHERE status = 'Scheduled' 
    AND appointment_date < NOW() - INTERVAL 2 DAY;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'dental_clinic'
--
/*!50003 DROP FUNCTION IF EXISTS `CountAppointmentsForDentist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CountAppointmentsForDentist`(dentistID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE totalAppointments INT DEFAULT 0;

    -- Count the total number of appointments for the given dentist
    SELECT COUNT(*) INTO totalAppointments 
    FROM appointments 
    WHERE dentist_id = dentistID;

    RETURN totalAppointments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CountAppointmentsForPatient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CountAppointmentsForPatient`(patientID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE totalAppointments INT DEFAULT 0;


    SELECT COUNT(*) INTO totalAppointments 
    FROM appointments 
    WHERE patient_id = patientID;

    RETURN totalAppointments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FormatPaymentMethod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FormatPaymentMethod`(paymentMethod VARCHAR(50)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE formattedMethod VARCHAR(100);

    SET formattedMethod = 
        CASE 
            WHEN paymentMethod = 'Credit Card' THEN 'Credit Card - Online'
            WHEN paymentMethod = 'Cash' THEN 'Cash - In Clinic'
            ELSE 'Other Payment Method'
        END;

    RETURN formattedMethod;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetDentistSpecialization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetDentistSpecialization`(dentistID INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE specializationName VARCHAR(100);

    -- Set a default value in case no specialization is found
    SET specializationName = 'Unknown';

    -- Retrieve the specialization name
    SELECT s.specialization_name 
    INTO specializationName 
    FROM specializations s
    JOIN dentists d ON d.specialization_id = s.specialization_id
    WHERE d.dentist_id = dentistID
    LIMIT 1; -- Ensure only one row is returned

    RETURN specializationName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalPayments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalPayments`(dentistID INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE totalEarnings DECIMAL(10,2) DEFAULT 0.00;

    -- Assign SUM result to totalEarnings, using IFNULL to handle NULL cases
    SELECT IFNULL(SUM(amount_paid), 0.00) INTO totalEarnings
    FROM payments
    WHERE dentist_id = dentistID;

    RETURN totalEarnings;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountDentists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountDentists`()
BEGIN

    SELECT COUNT(*) AS total_dentists FROM dentists;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountPatients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountPatients`()
BEGIN
   
    SELECT COUNT(*) AS total_patients FROM patients;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDentistSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDentistSummary`(IN dentistID INT)
BEGIN
    SELECT 
        d.dentist_id,
        d.first_name,
        d.last_name,
        CountAppointmentsForDentist(d.dentist_id) AS total_appointments,
        GetTotalPayments(d.dentist_id) AS total_earnings
    FROM dentists d
    WHERE d.dentist_id = dentistID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPatientDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPatientDetails`(IN patientID INT)
BEGIN
    SELECT 
        a.appointment_id,
        d.first_name AS dentist_first_name,
        d.last_name AS dentist_last_name,
        GetDentistSpecialization(d.dentist_id) AS dentist_specialization,
        GetAppointmentCount(a.patient_id) AS total_appointments
    FROM appointments a
    JOIN dentists d ON a.dentist_id = d.dentist_id
    WHERE a.patient_id = patientID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTotalAmountPaid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalAmountPaid`(OUT totalAmount DECIMAL(10,2))
BEGIN
    SELECT SUM(amount_paid) INTO totalAmount
    FROM payments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListScheduledAppointments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListScheduledAppointments`()
BEGIN
    SELECT appointment_id AS "Appointment ID", 
           patient_id AS "Patient ID", 
           dentist_id AS "Dentist ID", 
           appointment_date AS "Appointment Date"
    FROM appointments 
    WHERE status = 'Scheduled';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `active_appointments`
--

/*!50001 DROP VIEW IF EXISTS `active_appointments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_appointments` AS select `appointments`.`appointment_id` AS `appointment_id`,`appointments`.`patient_id` AS `patient_id`,`appointments`.`dentist_id` AS `dentist_id`,`appointments`.`appointment_date` AS `appointment_date`,`appointments`.`status` AS `status` from `appointments` where (`appointments`.`status` = 'Scheduled') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dentist_contact_info`
--

/*!50001 DROP VIEW IF EXISTS `dentist_contact_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dentist_contact_info` AS select `dentists`.`dentist_id` AS `dentist_id`,`dentists`.`first_name` AS `first_name`,`dentists`.`last_name` AS `last_name`,`dentists`.`specialization_id` AS `specialization_id`,`dentists`.`phone` AS `phone`,`dentists`.`email` AS `email` from `dentists` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dentist_specialization_count`
--

/*!50001 DROP VIEW IF EXISTS `dentist_specialization_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dentist_specialization_count` AS select `s`.`specialization_name` AS `specialization_name`,count(`d`.`dentist_id`) AS `total_dentists` from (`specializations` `s` left join `dentists` `d` on((`s`.`specialization_id` = `d`.`specialization_id`))) group by `s`.`specialization_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patient_treatment_history`
--

/*!50001 DROP VIEW IF EXISTS `patient_treatment_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_treatment_history` AS select `p`.`patient_id` AS `patient_id`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`a`.`appointment_date` AS `appointment_date`,`t`.`name` AS `treatment_name`,`t`.`cost` AS `cost` from (((`patients` `p` join `appointments` `a` on((`p`.`patient_id` = `a`.`patient_id`))) join `appointment_treatments` `at` on((`a`.`appointment_id` = `at`.`appointment_id`))) join `treatments` `t` on((`at`.`treatment_id` = `t`.`treatment_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_summary`
--

/*!50001 DROP VIEW IF EXISTS `payment_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_summary` AS select `p`.`payment_id` AS `payment_id`,`a`.`appointment_id` AS `appointment_id`,`pat`.`first_name` AS `patient_first_name`,`pat`.`last_name` AS `patient_last_name`,`d`.`first_name` AS `dentist_first_name`,`d`.`last_name` AS `dentist_last_name`,`p`.`amount_paid` AS `amount_paid`,`p`.`payment_date` AS `payment_date`,`FormatPaymentMethod`(`p`.`payment_method`) AS `formatted_payment_method` from (((`payments` `p` join `appointments` `a` on((`p`.`appointment_id` = `a`.`appointment_id`))) join `patients` `pat` on((`a`.`patient_id` = `pat`.`patient_id`))) left join `dentists` `d` on((`a`.`dentist_id` = `d`.`dentist_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 21:09:47
