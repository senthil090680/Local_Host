-- MySQL dump 10.13  Distrib 5.5.8, for Win32 (x86)
--
-- Host: localhost    Database: host
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `access` char(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (7,'admin','admin','','admin@gmail.com','','0000-00-00 00:00:00'),(140,'SENTL','sentl','sentl','sentl@tts-consulting.in','General','0000-00-00 00:00:00'),(139,'KUMARS','kumars','kumars','kumars@tts-consulting.in','General','0000-00-00 00:00:00'),(19,'meena','123','123','me.smeena@gmail.com','Admin','0000-00-00 00:00:00'),(34,'SATHEESH','host2343','host2343','SatheeshS@tts-consulting.in','Admin','0000-00-00 00:00:00'),(35,'VIVEKANAND','vivekanand','vivek123','vivekanandm@tts-consulting.in','General','0000-00-00 00:00:00'),(6,'kumar','sdf','','kumar@gmail.com','General','0000-00-00 00:00:00'),(137,'SATHEESHS','host123','host123','satheeshs@tts-consulting.in','General','0000-00-00 00:00:00'),(138,'ANUP','anup','anup','anup@tts-consulting.in','General','0000-00-00 00:00:00'),(141,'DON','don','don','don@tts-consulting.in','General','0000-00-00 00:00:00'),(142,'VIVEK_NEW','asdf','asdf','vie@vie.com','General','0000-00-00 00:00:00'),(143,'AA','123','123','Aa@gmail.com','General','0000-00-00 00:00:00'),(144,'ANANDK','ak','ak','AnandK@email.com','General','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `admin_insert` BEFORE INSERT ON `admin`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'admin' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `admin_update` BEFORE UPDATE ON `admin`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'admin' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `admin_delete` BEFORE DELETE ON `admin`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'admin' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `asm_sp`
--

DROP TABLE IF EXISTS `asm_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asm_sp` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `DSR_Code` varchar(10) NOT NULL,
  `DSRName` char(20) NOT NULL,
  `Contact_Number` int(10) NOT NULL,
  `email_id` varchar(10) NOT NULL,
  `RSM` varchar(50) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asm_sp`
--

LOCK TABLES `asm_sp` WRITE;
/*!40000 ALTER TABLE `asm_sp` DISABLE KEYS */;
INSERT INTO `asm_sp` VALUES (1,'2013-08-01','ASM001','san',2147483647,'san@gamil.','1','2013-07-25 11:52:52'),(2,'2013-08-01','ASM002','venu',2147483647,'venu@gmail','2','2013-08-06 07:18:31'),(3,'2013-08-01','ASM003','umar',2147483647,'umar@gmail','3','2013-08-06 07:19:02'),(4,'2013-08-01','ASM004','omin',2147483647,'omin@gmail','4','2013-08-06 07:19:28');
/*!40000 ALTER TABLE `asm_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_information`
--

DROP TABLE IF EXISTS `base_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_information` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(50) NOT NULL,
  `KD_Name` varchar(50) NOT NULL,
  `Base_IP` varchar(50) NOT NULL,
  `Base_Url` varchar(50) NOT NULL,
  `base_id` varchar(50) DEFAULT NULL,
  `Host_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_information`
--

LOCK TABLES `base_information` WRITE;
/*!40000 ALTER TABLE `base_information` DISABLE KEYS */;
INSERT INTO `base_information` VALUES (1,'A001','Al Mubarak Ventures','localhost','Base1',NULL,NULL),(2,'KD001','Direct to Retail','localhost','Base',NULL,NULL);
/*!40000 ALTER TABLE `base_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'chennai','2013-08-06 07:04:10');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `principal` varchar(50) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Oval',NULL,'0000-00-00 00:00:00'),(3,'Huggie',NULL,'0000-00-00 00:00:00'),(5,'Mcvitties',NULL,'0000-00-00 00:00:00'),(6,'Dabure',NULL,'0000-00-00 00:00:00'),(7,'vatika',NULL,'0000-00-00 00:00:00'),(8,'Vitamilk',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `brand_insert` BEFORE INSERT ON `brand`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'brand' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `brand_update` BEFORE UPDATE ON `brand`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'brand' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `brandtrigger` AFTER UPDATE ON `brand`
 FOR EACH ROW BEGIN
 UPDATE product  SET brand = NEW.brand  WHERE brand = OLD.brand;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `brand_delete` BEFORE DELETE ON `brand`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'brand' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category1`
--

DROP TABLE IF EXISTS `category1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category1` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category1` char(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category1`
--

LOCK TABLES `category1` WRITE;
/*!40000 ALTER TABLE `category1` DISABLE KEYS */;
INSERT INTO `category1` VALUES (14,'Single Branch','0000-00-00 00:00:00'),(15,'Multi Branch','0000-00-00 00:00:00'),(16,'Multi City','0000-00-00 00:00:00'),(17,'Multi National','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `category1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category1_insert` BEFORE INSERT ON `category1`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category1' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category1_update` BEFORE UPDATE ON `category1`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category1' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category1_delete` BEFORE DELETE ON `category1`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category1' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category2`
--

DROP TABLE IF EXISTS `category2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category2` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category2` char(30) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category2`
--

LOCK TABLES `category2` WRITE;
/*!40000 ALTER TABLE `category2` DISABLE KEYS */;
/*!40000 ALTER TABLE `category2` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category2_insert` BEFORE INSERT ON `category2`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category2' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category2_update` BEFORE UPDATE ON `category2`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category2' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category2_delete` BEFORE DELETE ON `category2`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category2' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category3`
--

DROP TABLE IF EXISTS `category3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category3` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category3` char(30) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category3`
--

LOCK TABLES `category3` WRITE;
/*!40000 ALTER TABLE `category3` DISABLE KEYS */;
/*!40000 ALTER TABLE `category3` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category3_insert` BEFORE INSERT ON `category3`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category3' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category3_update` BEFORE UPDATE ON `category3`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category3' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `category3_delete` BEFORE DELETE ON `category3`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'category3' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `state_id` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (11,'Maryland','29','0000-00-00 00:00:00'),(12,'Akute','39','0000-00-00 00:00:00'),(16,'city','35','2013-06-07 04:35:42'),(17,'citynewst','40','2013-06-11 05:21:54');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `city_insert` BEFORE INSERT ON `city`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'city' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `city_update` BEFORE UPDATE ON `city`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'city' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `city_delete` BEFORE DELETE ON `city`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'city' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `coverage_target_setting`
--

DROP TABLE IF EXISTS `coverage_target_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coverage_target_setting` (
  `id` double DEFAULT NULL,
  `KD_Code` varchar(50) DEFAULT NULL,
  `SR_Code` varchar(50) DEFAULT NULL,
  `coverage_percent` varchar(50) DEFAULT NULL,
  `effective_percent` varchar(50) DEFAULT NULL,
  `productive_percent` varchar(50) DEFAULT NULL,
  `cov_visit` varchar(50) DEFAULT NULL,
  `prod_visit` varchar(50) DEFAULT NULL,
  `eff_visit` varchar(50) DEFAULT NULL,
  `cov_status` varchar(50) DEFAULT NULL,
  `prod_status` varchar(50) DEFAULT NULL,
  `eff_status` varchar(50) DEFAULT NULL,
  `monthval` varchar(50) DEFAULT NULL,
  `yearval` varchar(50) DEFAULT NULL,
  `tgtTypeCov` enum('0','1') DEFAULT NULL,
  `tgtTypeProd` enum('0','1') DEFAULT NULL,
  `tgtTypeEff` enum('0','1') DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coverage_target_setting`
--

LOCK TABLES `coverage_target_setting` WRITE;
/*!40000 ALTER TABLE `coverage_target_setting` DISABLE KEYS */;
INSERT INTO `coverage_target_setting` VALUES (1,'KD001','DSR001','20','40','30','50','60','70','10','5','5','7','2013','1','1','0','2013-08-08 20:56:37','2013-08-08 21:00:32'),(26,'KD001','DSR001','30','0','0','50','80','60','5','10','5','2','2013','0','0','0','2013-08-29 14:40:21',NULL),(27,'KD001','DSR002','0','0','0','60','902','60','10','10','5','7','2013','0','0','0','2013-08-29 14:40:21','2013-08-29 15:35:24'),(28,'KD001','DSR001','0','60','70','10','20','30','','5','','6','2013','1','1','1','2013-08-29 14:43:12',NULL),(29,'KD001','DSR002','99','0','80','45','55','65','5','5','10','6','2013','0','0','0','2013-08-29 14:43:12','2013-08-29 15:37:01');
/*!40000 ALTER TABLE `coverage_target_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `currency` varchar(50) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Naira','currency.gif','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `currency_insert` BEFORE INSERT ON `currency`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'currency' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `currency_update` BEFORE UPDATE ON `currency`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'currency' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `currency_delete` BEFORE DELETE ON `currency`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'currency' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KD_Name` char(20) NOT NULL,
  `customer_code` char(20) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `AddressLine1` varchar(50) NOT NULL,
  `AddressLine2` varchar(50) NOT NULL,
  `AddressLine3` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `PostCode` varchar(20) NOT NULL,
  `GPS` char(20) NOT NULL,
  `contactperson` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `Alternatecontactperson` varchar(50) NOT NULL,
  `Alternatecontactnumber` varchar(50) NOT NULL,
  `route` char(20) NOT NULL,
  `Alternateroute` char(20) NOT NULL,
  `DSR_Code` char(20) NOT NULL,
  `DSRName` char(20) NOT NULL,
  `category1` varchar(50) NOT NULL,
  `category2` varchar(50) NOT NULL,
  `category3` varchar(50) NOT NULL,
  `miscellaneous_caption` varchar(10) DEFAULT NULL,
  `miscellaneous_data` varchar(10) DEFAULT NULL,
  `customer_type` varchar(50) NOT NULL,
  `Barcode` varchar(50) NOT NULL,
  `DiscountEligibility` enum('Yes','No') NOT NULL,
  `Max_Discount` bigint(20) NOT NULL,
  `sequence_number` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'KD001','Direct to Retail','CUS001','JOHN','OGBA','','','OGBA','Lagos','LAGOS','OGBA','AGEGE','700001','1234567890','kumar','','','','RR001','','DSR001','EMMA','Ovaltine','Ovaltine','Ovaltine',NULL,NULL,'6','0987654321','Yes',10,'1','2013-06-09 08:43:16'),(2,'KD001','Direct to Retail','CUS002','kumar','xcvxc','vcxv','cxvcx','OGBA','Lagos','LAGOS','OGBA','AGEGE','xcvxcv','cxvcxv','cxv','xcvxc','vcxvxc','xcvcx','RR002','xcxv','DSR002','EMMA','Ovaltine','Ovaltine','Ovaltine',NULL,NULL,'5','cxvcxv','Yes',0,'cxvc','2013-06-09 08:43:36'),(3,'KD002','Al Mubarak Ventures','CUS003','ramki','zxczxc','zxcxz','czx','OGBA','Lagos','LGAOS','OGBA','AGEGE','xzcxz','zxczxc','zxczx','czxc','zxcxz','cxzc','RR001','xzczx','DSR003','EMMA','Ovaltine','Ovaltine','Ovaltine',NULL,NULL,'4','zcxzcz','',0,'zcxzc','2013-06-09 08:24:42'),(4,'KD003','rama','CUS004','Malar','','','','','','','','','','','','','','','RR003','','DSR004','','','','',NULL,NULL,'3','','',0,'','2013-08-02 06:37:20');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_outstanding`
--

DROP TABLE IF EXISTS `customer_outstanding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_outstanding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `DSR_Code` varchar(50) DEFAULT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `DateValue` datetime DEFAULT NULL,
  `monthval` varchar(50) DEFAULT NULL,
  `yearval` varchar(50) DEFAULT NULL,
  `total_due` varchar(50) DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_outstanding`
--

LOCK TABLES `customer_outstanding` WRITE;
/*!40000 ALTER TABLE `customer_outstanding` DISABLE KEYS */;
INSERT INTO `customer_outstanding` VALUES (1,'KD001','DSR001','CUS001','2013-07-29 21:45:14','6','2013','200.00',NULL,NULL),(2,'KD002','DSR001','CUS002','2013-07-29 21:45:14','6','2013','400.00',NULL,NULL),(3,'KD001','DSR001','CUS003','2013-07-29 21:45:14','6','2013','300.00',NULL,NULL);
/*!40000 ALTER TABLE `customer_outstanding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (3,'Modern Trade','0000-00-00 00:00:00'),(4,'A Stores','0000-00-00 00:00:00'),(5,'B Stores','0000-00-00 00:00:00'),(6,'C Stores','0000-00-00 00:00:00'),(7,'Specialized Stores','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_visit_tracking`
--

DROP TABLE IF EXISTS `customer_visit_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_visit_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(10) DEFAULT NULL,
  `DSR_Code` varchar(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Sequence_Number` decimal(3,0) DEFAULT NULL,
  `Customer_Code` varchar(6) DEFAULT NULL,
  `Check_In_time` varchar(4) DEFAULT NULL,
  `Checkin_GPS` varchar(30) DEFAULT NULL,
  `Check_Out_time` varchar(4) DEFAULT NULL,
  `Checkout_GPS` varchar(30) DEFAULT NULL,
  `check_out_id` decimal(2,0) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_visit_tracking`
--

LOCK TABLES `customer_visit_tracking` WRITE;
/*!40000 ALTER TABLE `customer_visit_tracking` DISABLE KEYS */;
INSERT INTO `customer_visit_tracking` VALUES (1,'KD001','BR001','2013-05-24',999,'CU0012','','','','',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customer_visit_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customertype_product`
--

DROP TABLE IF EXISTS `customertype_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customertype_product` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(50) NOT NULL,
  `UOM1` varchar(50) NOT NULL,
  `Product_id` int(50) DEFAULT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(50) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `principal` varchar(10) DEFAULT NULL,
  `Effective_date` date NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertype_product`
--

LOCK TABLES `customertype_product` WRITE;
/*!40000 ALTER TABLE `customertype_product` DISABLE KEYS */;
INSERT INTO `customertype_product` VALUES (11,'3','Pieces',52,'FDABFAD007','Ovaltine T Shirts','3','1','0000-00-00','2013-08-12 07:06:26'),(12,'4','Pieces',25,'FDABFAD001','Ovaltine Tins','4','2','0000-00-00','2013-08-12 07:06:39'),(13,'5','Pieces',27,'FDABFAD003','Proactive','5','3','0000-00-00','2013-08-12 07:07:03');
/*!40000 ALTER TABLE `customertype_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycle_flag`
--

DROP TABLE IF EXISTS `cycle_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cycle_flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `dsr_id` varchar(100) DEFAULT NULL,
  `cycle_start_flag` enum('1','0') NOT NULL,
  `cycle_start_date` datetime NOT NULL,
  `cycle_end_flag` enum('1','0') NOT NULL,
  `cycle_end_date` datetime NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycle_flag`
--

LOCK TABLES `cycle_flag` WRITE;
/*!40000 ALTER TABLE `cycle_flag` DISABLE KEYS */;
INSERT INTO `cycle_flag` VALUES (92,'KD001','1','0','2013-10-11 17:20:20','1','2013-11-07 16:25:19','2013-11-07 10:55:53'),(93,'KD001','1','0','2013-10-15 19:03:33','0','0000-00-00 00:00:00','2013-10-22 09:07:07'),(94,'KD001','1','0','2013-10-22 11:51:40','0','0000-00-00 00:00:00','2013-10-22 06:21:40'),(95,'KD001','1','1','2013-10-23 13:36:46','0','2013-11-12 20:43:58','2013-11-12 15:18:13'),(96,'KD001','1','0','2013-10-24 10:43:27','0','0000-00-00 00:00:00','2013-10-24 05:13:27'),(97,'KD001','1','0','2013-10-25 15:18:23','0','0000-00-00 00:00:00','2013-10-25 09:48:23'),(98,'KD001','1','0','2013-11-05 18:01:30','0','0000-00-00 00:00:00','2013-11-05 12:31:30'),(99,'KD001','1','0','2013-11-06 12:13:28','0','0000-00-00 00:00:00','2013-11-06 06:43:28'),(100,'KD001','1','0','2013-11-07 18:21:06','0','0000-00-00 00:00:00','2013-11-07 12:51:06'),(101,'KD001','1','0','2013-11-08 15:23:27','0','0000-00-00 00:00:00','2013-11-08 09:53:27'),(102,'KD001','1','0','2013-11-13 17:15:27','0','0000-00-00 00:00:00','2013-11-13 11:45:27'),(103,'KD001','1','0','2013-11-19 12:18:25','0','0000-00-00 00:00:00','2013-11-19 06:48:25'),(104,'KD001','1','0','2013-11-20 14:41:56','0','0000-00-00 00:00:00','2013-11-20 09:11:56');
/*!40000 ALTER TABLE `cycle_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_configuration`
--

DROP TABLE IF EXISTS `data_transfer_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_configuration` (
  `CONFIGURATION_ID` int(11) NOT NULL,
  `TRANSFER_NAME` varchar(32) NOT NULL,
  `DOWNLOAD_TYPE` varchar(32) NOT NULL,
  `FREQUENCY` varchar(10) NOT NULL,
  `END_TIME` varchar(10) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_configuration`
--

LOCK TABLES `data_transfer_configuration` WRITE;
/*!40000 ALTER TABLE `data_transfer_configuration` DISABLE KEYS */;
INSERT INTO `data_transfer_configuration` VALUES (2,'Upload from Base','ondemand','weekly','TUE','2013-05-15 15:39:51','2013-05-15 15:39:52','admin','2013-05-15 15:39:52','admin'),(1,'Download to Base','auto','2Hours','','0000-00-00 00:00:00','2013-05-31 09:24:51','admin','2013-05-31 09:24:51','admin');
/*!40000 ALTER TABLE `data_transfer_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_process`
--

DROP TABLE IF EXISTS `data_transfer_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_process` (
  `PROCESS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BASE_PROCESS_ID` int(11) NOT NULL,
  `STATUS` varchar(32) NOT NULL,
  `START_DATE_TIME` datetime NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CREATE_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATE_BY` varchar(32) NOT NULL,
  PRIMARY KEY (`PROCESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_process`
--

LOCK TABLES `data_transfer_process` WRITE;
/*!40000 ALTER TABLE `data_transfer_process` DISABLE KEYS */;
INSERT INTO `data_transfer_process` VALUES (1,1,'Completed Succesfully','2013-06-15 16:27:34','2013-06-15 16:27:34','admin','2013-06-15 16:27:34','admin'),(2,1,'Completed Succesfully','2013-06-15 16:56:27','2013-06-15 16:56:27','admin','2013-06-15 16:56:27','admin'),(3,2,'Completed Succesfully','2013-06-15 17:03:00','2013-06-15 17:03:00','admin','2013-06-15 17:03:00','admin'),(4,2,'Completed Succesfully','2013-06-15 17:08:04','2013-06-15 17:08:04','admin','2013-06-15 17:08:04','admin'),(5,1,'Completed Succesfully','2013-08-02 14:23:26','2013-08-02 14:23:26','admin','2013-08-02 14:23:26','admin'),(6,1,'Completed Succesfully','2013-08-02 14:26:37','2013-08-02 14:26:37','admin','2013-08-02 14:26:37','admin'),(7,1,'Completed Succesfully','2013-09-05 11:43:42','2013-09-05 11:43:42','admin','2013-09-05 11:43:42','admin'),(8,1,'Completed Succesfully','2013-09-05 11:48:40','2013-09-05 11:48:40','admin','2013-09-05 11:48:40','admin'),(9,2,'Completed Succesfully','2013-09-17 14:09:30','2013-09-17 14:09:30','admin','2013-09-17 14:09:30','admin');
/*!40000 ALTER TABLE `data_transfer_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_table`
--

DROP TABLE IF EXISTS `data_transfer_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_table` (
  `TRANSFER_NAME` varchar(32) NOT NULL,
  `TABLE_NAME` varchar(32) NOT NULL,
  `ACTIVE_FLAG` varchar(5) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `KD_SPECIFIC` varchar(5) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(32) NOT NULL,
  `TABLE_UPDATED_ON` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_table`
--

LOCK TABLES `data_transfer_table` WRITE;
/*!40000 ALTER TABLE `data_transfer_table` DISABLE KEYS */;
INSERT INTO `data_transfer_table` VALUES ('download','brand','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-11-28 20:27:16'),('download','category1','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-06-11 10:54:23'),('download','city','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-07-06 04:25:17'),('download','currency','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('download','customer_type','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('download','customertype_product','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('download','feedback_type','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('download','kd','Y','slu','Y','2013-06-09 20:28:52','admin','2013-06-11 14:33:56','admin','0000-00-00 00:00:00'),('download','lga','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-07-06 04:57:23'),('download','location','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-07-06 05:18:27'),('download','parameters','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-06-16 19:46:24'),('download','price_master','Y','slu','Y','2013-06-09 20:28:52','admin','2013-06-11 14:34:10','admin','0000-00-00 00:00:00'),('download','product_scheme_master','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-08-20 17:55:06'),('download','product_type','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('download','province','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-07-06 03:19:38'),('download','sales_representative','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2013-07-11 13:51:43'),('download','state','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','2014-01-03 19:07:46'),('download','uom','Y','full','N','2013-06-09 20:28:52','admin','2013-06-09 20:28:52','admin','0000-00-00 00:00:00'),('upload','customer','Y','full','Y','2013-06-11 15:11:28','admin','2013-06-11 19:17:48','admin','0000-00-00 00:00:00'),('upload','dsr','Y','full','N','2013-06-11 15:11:28','admin','2013-06-11 15:11:28','admin','0000-00-00 00:00:00'),('upload','route_master','Y','full','N','2013-06-11 15:11:28','admin','2013-06-11 15:11:28','admin','0000-00-00 00:00:00'),('upload','vehicle_master','Y','full','N','2013-06-11 15:11:28','admin','2013-06-11 15:11:28','admin','0000-00-00 00:00:00'),('download','device_master','Y','full','N','2013-06-11 15:11:54','admin','2013-06-11 15:11:54','admin','0000-00-00 00:00:00'),('upload','device_master','Y','full','N','2013-06-11 19:14:24','admin','2013-06-11 19:14:24','admin','0000-00-00 00:00:00'),('download','asm_sp','Y','full','N','2013-08-02 15:08:12','admin','2013-08-02 15:08:12','admin','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `data_transfer_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_table_col`
--

DROP TABLE IF EXISTS `data_transfer_table_col`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_table_col` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(32) NOT NULL,
  `PROCESS` varchar(32) NOT NULL,
  `COLUMN_NAME` varchar(32) NOT NULL,
  `ACTIVE` varchar(2) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_table_col`
--

LOCK TABLES `data_transfer_table_col` WRITE;
/*!40000 ALTER TABLE `data_transfer_table_col` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_transfer_table_col` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_transaction`
--

DROP TABLE IF EXISTS `data_transfer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_transaction` (
  `TRANSFER_DTL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRANSFER_HDR_ID` int(11) NOT NULL,
  `TABLE_NAME` varchar(32) NOT NULL,
  `STATUS` varchar(32) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(32) NOT NULL,
  PRIMARY KEY (`TRANSFER_DTL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_transaction`
--

LOCK TABLES `data_transfer_transaction` WRITE;
/*!40000 ALTER TABLE `data_transfer_transaction` DISABLE KEYS */;
INSERT INTO `data_transfer_transaction` VALUES (1,7,'customer','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(2,7,'dsr','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(3,7,'route_master','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(4,7,'vehicle_master','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(5,7,'device_master','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(6,9,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(7,9,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(8,9,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(9,9,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(10,9,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(11,9,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(12,9,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(13,9,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(14,9,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(15,9,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(16,9,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(17,9,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(18,9,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(19,9,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(20,9,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(21,9,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(22,9,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(23,9,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(24,9,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(25,9,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','0000-00-00 00:00:00','admin'),(26,10,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(27,10,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(28,10,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(29,10,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(30,10,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(31,10,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(32,10,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(33,10,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(34,10,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(35,10,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(36,10,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(37,10,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(38,10,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(39,10,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(40,10,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(41,10,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(42,10,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(43,10,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(44,10,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(45,10,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','0000-00-00 00:00:00','admin'),(46,11,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(47,11,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(48,11,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(49,11,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(50,11,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(51,11,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(52,11,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(53,11,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(54,11,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(55,11,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(56,11,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(57,11,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(58,11,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(59,11,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(60,11,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(61,11,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(62,11,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(63,11,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(64,11,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(65,11,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','0000-00-00 00:00:00','admin'),(66,12,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(67,12,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(68,12,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(69,12,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(70,12,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(71,12,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(72,12,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(73,12,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(74,12,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(75,12,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(76,12,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(77,12,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(78,12,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(79,12,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(80,12,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(81,12,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(82,12,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(83,12,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(84,12,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(85,12,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','0000-00-00 00:00:00','admin'),(86,13,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(87,13,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(88,13,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(89,13,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(90,13,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(91,13,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(92,13,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(93,13,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(94,13,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(95,13,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(96,13,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(97,13,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(98,13,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(99,13,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(100,13,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(101,13,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(102,13,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(103,13,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(104,13,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(105,13,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','0000-00-00 00:00:00','admin'),(106,14,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(107,14,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(108,14,'city','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(109,14,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(110,14,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(111,14,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(112,14,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(113,14,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(114,14,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(115,14,'location','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(116,14,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(117,14,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(118,14,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(119,14,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(120,14,'province','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(121,14,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(122,14,'state','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(123,14,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(124,14,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(125,14,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','0000-00-00 00:00:00','admin'),(126,15,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(127,15,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(128,15,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(129,15,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(130,15,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(131,15,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(132,15,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(133,15,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(134,15,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(135,15,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(136,15,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(137,15,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(138,15,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(139,15,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(140,15,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(141,15,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(142,15,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(143,15,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(144,15,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(145,15,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','0000-00-00 00:00:00','admin'),(146,16,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(147,16,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(148,16,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(149,16,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(150,16,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(151,16,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(152,16,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(153,16,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(154,16,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(155,16,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(156,16,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(157,16,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(158,16,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(159,16,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(160,16,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(161,16,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(162,16,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(163,16,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(164,16,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(165,16,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','0000-00-00 00:00:00','admin'),(166,17,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(167,17,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(168,17,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(169,17,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(170,17,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(171,17,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(172,17,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(173,17,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(174,17,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(175,17,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(176,17,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(177,17,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(178,17,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(179,17,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(180,17,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(181,17,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(182,17,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(183,17,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(184,17,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(185,17,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','0000-00-00 00:00:00','admin'),(186,18,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(187,18,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(188,18,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(189,18,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(190,18,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(191,18,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(192,18,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(193,18,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(194,18,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(195,18,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(196,18,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(197,18,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(198,18,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(199,18,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(200,18,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(201,18,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(202,18,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(203,18,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(204,18,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(205,18,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','0000-00-00 00:00:00','admin'),(206,19,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(207,19,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(208,19,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(209,19,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(210,19,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(211,19,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(212,19,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(213,19,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(214,19,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(215,19,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(216,19,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(217,19,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(218,19,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(219,19,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(220,19,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(221,19,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(222,19,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(223,19,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(224,19,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(225,19,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','0000-00-00 00:00:00','admin'),(226,20,'brand','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(227,20,'category1','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(228,20,'city','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(229,20,'currency','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(230,20,'customer_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(231,20,'customertype_product','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(232,20,'feedback_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(233,20,'kd','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(234,20,'lga','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(235,20,'location','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(236,20,'parameters','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(237,20,'price_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(238,20,'product_scheme_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(239,20,'product_type','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(240,20,'province','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(241,20,'sales_representative','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(242,20,'state','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(243,20,'uom','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(244,20,'device_master','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(245,20,'asm_sp','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','0000-00-00 00:00:00','admin'),(246,21,'customer','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:34','admin'),(247,21,'dsr','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:37','admin'),(248,21,'route_master','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:39','admin'),(249,21,'vehicle_master','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:41','admin'),(250,21,'device_master','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:43','admin'),(251,22,'customer','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:47','admin'),(252,22,'dsr','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:49','admin'),(253,22,'route_master','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:51','admin'),(254,22,'vehicle_master','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:53','admin'),(255,22,'device_master','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:55','admin'),(256,23,'customer','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:09:59','admin'),(257,23,'dsr','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:10:01','admin'),(258,23,'route_master','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:10:03','admin'),(259,23,'vehicle_master','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:10:05','admin'),(260,23,'device_master','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:10:07','admin');
/*!40000 ALTER TABLE `data_transfer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_transfer_transaction_hdr`
--

DROP TABLE IF EXISTS `data_transfer_transaction_hdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transfer_transaction_hdr` (
  `TRANSFER_HDR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROCESS_ID` int(11) NOT NULL,
  `TRANSFER_NAME` varchar(32) NOT NULL,
  `SOURCE` varchar(32) NOT NULL,
  `DESTINATION` varchar(32) NOT NULL,
  `START_DATE_TIME` datetime NOT NULL,
  `END_DATE_TIME` datetime NOT NULL,
  `STATUS` varchar(32) NOT NULL,
  `CREATION_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(32) NOT NULL,
  `LAST_UPDATE_DATE` datetime NOT NULL,
  `LAST_UPDATED_BY` varchar(32) NOT NULL,
  PRIMARY KEY (`TRANSFER_HDR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_transfer_transaction_hdr`
--

LOCK TABLES `data_transfer_transaction_hdr` WRITE;
/*!40000 ALTER TABLE `data_transfer_transaction_hdr` DISABLE KEYS */;
INSERT INTO `data_transfer_transaction_hdr` VALUES (1,1,'Download to Base','Host','KD001','2013-06-15 16:27:34','2013-06-15 16:27:34','Completed','2013-06-15 16:27:34','admin','2013-06-15 16:27:34','admin'),(3,2,'Download to Base','Host','KD001','2013-06-15 16:56:27','2013-06-15 16:56:27','','2013-06-15 16:56:27','admin','2013-06-15 16:56:27','admin'),(5,3,'Upload from Base','KD001','Host','2013-06-15 17:03:00','2013-06-15 17:03:00','Completed','2013-06-15 17:03:00','admin','2013-06-15 17:03:00','admin'),(6,3,'Upload from Base','A001','Host','2013-06-15 17:03:01','2013-06-15 17:03:01','Completed','2013-06-15 17:03:01','admin','2013-06-15 17:03:01','admin'),(7,4,'Upload from Base','KD001','Host','2013-06-15 17:08:04','2013-06-15 17:08:05','Completed','2013-06-15 17:08:04','admin','2013-06-15 17:08:05','admin'),(8,4,'Upload from Base','A001','Host','2013-06-15 17:08:05','2013-06-15 17:08:05','Completed','2013-06-15 17:08:05','admin','2013-06-15 17:08:05','admin'),(9,5,'Download to Base','Host','KD001','2013-08-02 14:23:26','2013-08-02 14:23:28','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:23:26','admin','2013-08-02 14:23:28','admin'),(10,5,'Download to Base','Host','KD002','2013-08-02 14:24:09','2013-08-02 14:24:11','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:09','admin','2013-08-02 14:24:11','admin'),(11,5,'Download to Base','Host','KD003','2013-08-02 14:24:51','2013-08-02 14:24:53','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:24:51','admin','2013-08-02 14:24:53','admin'),(12,6,'Download to Base','Host','KD001','2013-08-02 14:26:37','2013-08-02 14:26:39','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:26:37','admin','2013-08-02 14:26:39','admin'),(13,6,'Download to Base','Host','KD002','2013-08-02 14:27:20','2013-08-02 14:27:22','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:27:20','admin','2013-08-02 14:27:22','admin'),(14,6,'Download to Base','Host','KD003','2013-08-02 14:28:02','2013-08-02 14:28:04','<?xml version=\"1.0\" encoding=\"IS','2013-08-02 14:28:02','admin','2013-08-02 14:28:04','admin'),(15,7,'Download to Base','Host','KD001','2013-09-05 11:43:42','2013-09-05 11:43:44','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:43:42','admin','2013-09-05 11:43:44','admin'),(16,7,'Download to Base','Host','KD002','2013-09-05 11:44:25','2013-09-05 11:44:27','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:44:25','admin','2013-09-05 11:44:27','admin'),(17,7,'Download to Base','Host','KD003','2013-09-05 11:45:08','2013-09-05 11:45:10','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:45:08','admin','2013-09-05 11:45:10','admin'),(18,8,'Download to Base','Host','KD001','2013-09-05 11:48:40','2013-09-05 11:48:42','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:48:40','admin','2013-09-05 11:48:42','admin'),(19,8,'Download to Base','Host','KD002','2013-09-05 11:49:22','2013-09-05 11:49:24','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:49:22','admin','2013-09-05 11:49:24','admin'),(20,8,'Download to Base','Host','KD003','2013-09-05 11:50:05','2013-09-05 11:50:07','<?xml version=\"1.0\" encoding=\"IS','2013-09-05 11:50:05','admin','2013-09-05 11:50:07','admin'),(21,9,'Upload from Base','KD001','Host','2013-09-17 14:09:30','2013-09-17 14:09:32','Completed','2013-09-17 14:09:30','admin','2013-09-17 14:09:32','admin'),(22,9,'Upload from Base','KD002','Host','2013-09-17 14:09:43','2013-09-17 14:09:45','Completed','2013-09-17 14:09:43','admin','2013-09-17 14:09:45','admin'),(23,9,'Upload from Base','KD003','Host','2013-09-17 14:09:55','2013-09-17 14:09:57','Completed','2013-09-17 14:09:55','admin','2013-09-17 14:09:57','admin');
/*!40000 ALTER TABLE `data_transfer_transaction_hdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_data_view`
--

DROP TABLE IF EXISTS `device_data_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_data_view` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) DEFAULT NULL,
  `device_id` char(20) DEFAULT NULL,
  `dsr_id` varchar(50) DEFAULT NULL,
  `Salesperson_id` varchar(20) DEFAULT NULL,
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL,
  `SKU_stock` varchar(50) DEFAULT NULL,
  `UOM_Stock` varchar(50) DEFAULT NULL,
  `stock_qty` char(20) DEFAULT NULL,
  `stock_price` float DEFAULT NULL,
  `stock_value` float DEFAULT NULL,
  `Return_quantity` varchar(50) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `collections` varchar(50) DEFAULT NULL,
  `SKU_sale` char(20) DEFAULT NULL,
  `UOM_Sale` varchar(50) DEFAULT NULL,
  `customer_code` char(20) DEFAULT NULL,
  `transactiontype` varchar(50) DEFAULT NULL,
  `sale_qty` varchar(50) DEFAULT NULL,
  `sale_price` float DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `visits` varchar(50) DEFAULT NULL,
  `invoices` varchar(50) DEFAULT NULL,
  `SKU_products` varchar(50) DEFAULT NULL,
  `dropsize` varchar(50) DEFAULT NULL,
  `basketsize` varchar(50) DEFAULT NULL,
  `totalinvoicelineitems` varchar(50) DEFAULT NULL,
  `feedback_type` varchar(50) DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_data_view`
--

LOCK TABLES `device_data_view` WRITE;
/*!40000 ALTER TABLE `device_data_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_data_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_master`
--

DROP TABLE IF EXISTS `device_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_master` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KD_Name` char(20) NOT NULL,
  `device_code` char(50) NOT NULL,
  `device_description` varchar(50) NOT NULL,
  `device_serial_number` varchar(50) NOT NULL,
  `device_call_no` char(20) NOT NULL,
  `KD_public_ip` varchar(50) NOT NULL,
  `KD_private_ip` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_master`
--

LOCK TABLES `device_master` WRITE;
/*!40000 ALTER TABLE `device_master` DISABLE KEYS */;
INSERT INTO `device_master` VALUES (1,'B12','Bolarwina','DV001','test device','SD11N111','565612','test123','test123','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `device_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsr`
--

DROP TABLE IF EXISTS `dsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `DSRName` varchar(50) NOT NULL,
  `Contact_Number` varchar(50) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `ASM` varchar(50) NOT NULL,
  `RSM` varchar(20) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsr`
--

LOCK TABLES `dsr` WRITE;
/*!40000 ALTER TABLE `dsr` DISABLE KEYS */;
INSERT INTO `dsr` VALUES (1,'KD001','DSR001','Rajeeve','9876543212','rajeeve@gmail.com','1','1','2013-07-25 13:01:43'),(2,'KD001','DSR002','Mahik','9800078000','mahik@gmail.com','2','2','2013-07-25 12:30:00'),(3,'KD002','DSR003','Ukesh','9700098000','umar@gmail.com','3','3','2013-08-02 05:50:14'),(4,'KD002','DSR004','Viki','9600094000','viki@gmail.com','4','4','2013-08-02 06:48:12');
/*!40000 ALTER TABLE `dsr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsr_metrics`
--

DROP TABLE IF EXISTS `dsr_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsr_metrics` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Device_Code` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `visit_Count` decimal(5,0) NOT NULL,
  `Invoice_Count` decimal(5,0) NOT NULL,
  `effective_Count` decimal(5,0) DEFAULT NULL,
  `productive_Count` decimal(5,0) DEFAULT NULL,
  `Invoice_Line_Count` decimal(5,0) NOT NULL,
  `Currency` varchar(50) NOT NULL,
  `Total_Sale_Value` decimal(20,0) NOT NULL,
  `Drop_Size_Value` decimal(20,0) NOT NULL,
  `Basket_Size_Value` decimal(20,0) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsr_metrics`
--

LOCK TABLES `dsr_metrics` WRITE;
/*!40000 ALTER TABLE `dsr_metrics` DISABLE KEYS */;
INSERT INTO `dsr_metrics` VALUES (1,'KD001','DSR001','DV001','2013-07-18',5,10,3,7,20,'Naira',1000,50,60,'0000-00-00 00:00:00'),(2,'KD001','DSR001','DV001','2013-07-17',10,10,10,10,30,'Naira',2000,40,80,'2013-07-29 23:11:03'),(3,'KD001','DSR001','DV001','2013-07-10',4,4,2,2,10,'Naira',500,10,10,'2013-07-29 23:11:40'),(4,'KD001','DSR002','DV001','2013-07-07',5,5,7,7,10,'Naira',400,10,20,'2013-07-29 23:12:19'),(5,'KD001','DSR002','DV001','2013-07-06',6,6,8,8,20,'Naira',300,50,30,'2013-07-29 23:12:50'),(6,'KD002','DSR007','DV001','2013-07-06',8,8,10,10,30,'Naira',400,20,20,'2013-07-29 23:13:59'),(7,'KD002','DSR007','DV001','2013-07-08',4,4,6,6,20,'Naira',200,10,10,'2013-07-29 23:13:54'),(8,'KD002','DSR008','DV001','2013-07-01',9,8,12,12,50,'Naira',500,60,60,'2013-07-29 23:16:53'),(9,'KD003','DSR009','DV001','2013-07-08',4,4,5,6,10,'Naira',600,10,20,'2013-07-29 23:17:31'),(10,'KD003','DSR010','DV001','2013-07-06',5,5,6,6,70,'Naira',500,20,30,'2013-07-29 23:18:03'),(11,'KD003','DSR009','DV001','2013-07-04',6,6,9,9,20,'Naira',400,30,30,'2013-07-29 23:18:30');
/*!40000 ALTER TABLE `dsr_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_message`
--

DROP TABLE IF EXISTS `error_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_message` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `error_code` varchar(50) NOT NULL,
  `error_msg` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `error_type` varchar(50) NOT NULL,
  `active_flag` varchar(50) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_message`
--

LOCK TABLES `error_message` WRITE;
/*!40000 ALTER TABLE `error_message` DISABLE KEYS */;
INSERT INTO `error_message` VALUES (1,'0001','Data Entered Successfully','Data Entered Successfully','Information','Yes','2013-04-22 22:40:39','0000-00-00 00:00:00'),(2,'0002','Data Updated Successfully','Data Updated Successfully','Information','Yes','2013-04-20 20:46:05','0000-00-00 00:00:00'),(3,'0003','Data Deleted Successfully','Data Deleted Successfully','Information','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(4,'0004','No Data found for the search Criteria','No Data found for the search Criteria','Warning','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(5,'0005','Confirm Save','Confirm Save','Warning','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(6,'0006','Old Password entered is wrong','Old Password entered is wrong','Error','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(7,'0007','New & Confirm Passwords Must Be The Same','New & Confirm Passwords Must Be The Same','Error','Yes','2013-05-08 09:03:06','0000-00-00 00:00:00'),(8,'0008','User Name/ Password Entered is wrong','User Name/ Password Entered is wrong','Error','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(9,'0009','Please enter all mandatory (*) data','Please enter all mandatory (*) data','Error','Yes','2013-05-08 07:09:17','0000-00-00 00:00:00'),(10,'1000','Confirm Delete','Confirm Delete','Warning','Yes','2013-04-20 20:44:32','0000-00-00 00:00:00'),(11,'0011','Invalid Email ID','Invalid Email ID','Error','Yes','2013-04-21 18:58:04','0000-00-00 00:00:00'),(12,'0012','Email ID does not exist','Email ID does not exist','Warning','Yes','2013-04-21 18:50:48','0000-00-00 00:00:00'),(13,'0013','User Name Does Not Exist','User Name Does Not Exist','Warning','Yes','2013-05-08 09:01:40','0000-00-00 00:00:00'),(14,'0014','Your Password Has Been Sent To Your Registered Email ID','Your Password Has Been Sent To Your Registered Email ID','Success','Yes','2013-05-08 09:47:10','0000-00-00 00:00:00'),(15,'0015','User And / Or Email Already Exists','User And / Or Email Already Exists','Error','Yes','2013-05-08 09:04:16','0000-00-00 00:00:00'),(16,'0016','Please Enter The Text in the Image Correctly','Please Enter The Text in the Image Correctly.','Error','Yes','2013-04-21 19:37:37','0000-00-00 00:00:00'),(17,'0017','You Have Registered Successfully','You Have Registered Successfully','Information','Yes','2013-04-21 21:12:30','0000-00-00 00:00:00'),(18,'0018','Data Already Exists','Data Already Exists','Information','Yes','2013-04-21 21:12:30','0000-00-00 00:00:00'),(19,'0019','Province is assigned to State','Province is assigned to State','Information','Yes','2013-04-28 04:57:29','0000-00-00 00:00:00'),(20,'0020','State is assigned to city','State is assigned to city','Error','Yes','2013-04-26 16:23:47','0000-00-00 00:00:00'),(21,'0021','City is assigned to LGA','City is assigned to LGA','Error','Yes','2013-04-26 16:41:27','0000-00-00 00:00:00'),(22,'0022','LGA is assigned to Location','LGA is assigned to Location','Error','Yes','2013-04-26 16:42:08','0000-00-00 00:00:00'),(23,'0023','\'Cannot Delete\'Province is assigned to Customer','\'Cannot Delete\'Province is assigned to Customer','Information','Yes','2013-04-29 06:12:48','0000-00-00 00:00:00'),(24,'0024','\'Cannot Delete\'State is assigned to Customer','\'Cannot Delete\'State is assigned to Customer ','Information','Yes','2013-04-29 08:00:45','0000-00-00 00:00:00'),(25,'0025','\'Cannot Delete\'State is assigned to DSR','\'Cannot Delete\'State is assigned to DSR','Information','Yes','2013-04-29 08:00:45','0000-00-00 00:00:00'),(26,'0026','\'Cannot Delete\'City is assigned to Customer','\'Cannot Delete\'City is assigned to Customer','Information','Yes','2013-05-02 15:23:16','0000-00-00 00:00:00'),(27,'0027','\'Cannot Delete\'City is assigned to DSR','\'Cannot Delete\'City is assigned to DSR','Information','Yes','2013-04-29 08:00:45','0000-00-00 00:00:00'),(28,'0028','\'Cannot Delete\'City is assigned to KD','\'Cannot Delete\'City is assigned to KD','Information','Yes','2013-04-29 08:00:45','0000-00-00 00:00:00'),(29,'0029','Your password has been changed successfully','Your password has been changed successfully','Information','Yes','2013-04-29 11:39:32','0000-00-00 00:00:00'),(30,'0030','\'Cannot Delete\' Location is assigned to Route','\'Cannot Delete\' Location is assigned to Route','Information','Yes','2013-04-29 11:25:45','0000-00-00 00:00:00'),(31,'0031','\'Cannot Delete\' LGA is mapped to Customer','\'Cannot Delete\' LGA is mapped to Customer','Information','Yes','2013-04-30 19:21:59','0000-00-00 00:00:00'),(32,'0032','\'Cannot Delete\' Category1 is mapped to Customer','\'Cannot Delete\' Category1 is mapped to Customer','Information','Yes','2013-04-29 11:25:45','0000-00-00 00:00:00'),(33,'0033','\'Cannot Delete\' Category2 is mapped to Customer','\'Cannot Delete\' Category2 is mapped to Customer','Information','Yes','2013-04-30 19:06:19','0000-00-00 00:00:00'),(34,'0034','\'Cannot Delete\' Category3 is mapped to Customer','\'Cannot Delete\' Category3 is mapped to Customer','Information','Yes','2013-04-30 19:06:30','0000-00-00 00:00:00'),(35,'0035','\'Cannot Delete\' CustomerType is mapped to Customer','\'Cannot Delete\' CustomerType  is mapped to Customer','Information','Yes','2013-04-30 19:06:42','0000-00-00 00:00:00'),(36,'0036','\'Cannot Delete\' ProductType is mapped to Customer','\'Cannot Delete\' ProductType  is mapped to Customer','Information','Yes','2013-04-30 19:06:53','0000-00-00 00:00:00'),(37,'0037','\'Cannot Delete\' SR is mapped to DSR','\'Cannot Delete\' SR  is mapped to DSR','Information','Yes','2013-04-30 19:07:05','0000-00-00 00:00:00'),(38,'0038','\'Cannot Delete\' KD Category is mapped to KD','\'Cannot Delete\' KD Category is mapped to KD','inormation','Yes','2013-05-01 01:09:16','0000-00-00 00:00:00'),(39,'0039','\'Cannot Delete\' KD Category is mapped to KD Product','\'Cannot Delete\' KD Category is mapped to KD Product','Information','Yes','2013-05-01 01:10:04','0000-00-00 00:00:00'),(40,'0040','\'Cannot Delete\' KD Category is mapped to Price','\'Cannot Delete\' KD Category is mapped to Price','Information','Yes','2013-05-01 01:10:42','0000-00-00 00:00:00'),(41,'0041','\'Cannot Delete\' KD Category is mapped to Product Scheme','\'Cannot Delete\' KD Category is mapped to Product Scheme','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(42,'0042','\'Cannot Delete\' Location is mapped to Route','\'Cannot Delete\' Location is mapped to Route','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(43,'0043','\'Cannot Delete\' Product is mapped to KD Product','\'Cannot Delete\' Product is mapped to KD Product','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(44,'0044','\'Cannot Delete\' Product is mapped to Product Scheme','\'Cannot Delete\' Product is mapped to Product Scheme','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(45,'0045','\'Cannot Delete\' Product is mapped to Price','\'Cannot Delete\' Product is mapped to Price','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(46,'0046','\'Cannot Delete\' KD  is mapped to KD Product','\'Cannot Delete\' KD  is mapped to KD Product','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(47,'0047','\'Cannot Delete\' KD  is mapped to Device','\'Cannot Delete\' KD  is mapped to Device','Information','Yes','2013-05-01 01:11:44','0000-00-00 00:00:00'),(48,'0048','\'Cannot Delete\' KD  is mapped to DSR','\'Cannot Delete\' KD  is mapped to DSR','Information','Yes','2013-05-02 05:34:29','0000-00-00 00:00:00'),(49,'0049','\'Cannot Delete\' SR  is mapped to DSR','\'Cannot Delete\' SR is mapped to DSR','Information','Yes','2013-05-02 05:34:29','0000-00-00 00:00:00'),(50,'0050','Cannot Delete SKU is mapped to Device Transactions','Cannot Delete\' SKU Code is mapped to Device Transactions','error','yes','2013-05-02 00:33:53','0000-00-00 00:00:00'),(51,'0051','SKU is already exist','SKU is already exist','error','Yes','2013-05-02 08:35:57','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `error_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Transaction_Number` varchar(22) NOT NULL,
  `Feedback_type` varchar(50) NOT NULL,
  `Feedback_Serial` int(10) NOT NULL,
  `Feedback` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'KD001','DSR001','2013-06-15','4522','9',4588,'This is a good product for me'),(2,'KD001','DSR001','2013-06-15','455','10',5001,'This is a good quality in good condition');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_type`
--

DROP TABLE IF EXISTS `feedback_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `feedback_type` char(30) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_type`
--

LOCK TABLES `feedback_type` WRITE;
/*!40000 ALTER TABLE `feedback_type` DISABLE KEYS */;
INSERT INTO `feedback_type` VALUES (9,'Complaints:Pricing','0000-00-00 00:00:00'),(10,'Complaints:Promotion','0000-00-00 00:00:00'),(11,'Complaints:Parallels','0000-00-00 00:00:00'),(12,'Complaints:Service','0000-00-00 00:00:00'),(13,'Complaints:Stores','0000-00-00 00:00:00'),(14,'Customer Suggestion','0000-00-00 00:00:00'),(15,'SR Suggestion','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `feedback_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `feedback_type_insert` BEFORE INSERT ON `feedback_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'feedback_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `feedback_type_update` BEFORE UPDATE ON `feedback_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'feedback_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `feedback_type_delete` BEFORE DELETE ON `feedback_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'feedback_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `host_information`
--

DROP TABLE IF EXISTS `host_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_information` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Host_id` varchar(50) DEFAULT NULL,
  `Host_IP` varchar(50) NOT NULL,
  `Host_Url` varchar(50) NOT NULL,
  `branch_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_information`
--

LOCK TABLES `host_information` WRITE;
/*!40000 ALTER TABLE `host_information` DISABLE KEYS */;
INSERT INTO `host_information` VALUES (1,NULL,'localhost','Host',NULL);
/*!40000 ALTER TABLE `host_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kd`
--

DROP TABLE IF EXISTS `kd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kd` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `KD_Name` varchar(50) NOT NULL,
  `Address_Line_1` varchar(50) NOT NULL,
  `Address_Line_2` varchar(50) NOT NULL,
  `Address_Line_3` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Pin` varchar(50) NOT NULL,
  `Contact_Person` varchar(50) NOT NULL,
  `Contact_Number` varchar(50) NOT NULL,
  `Email_ID` varchar(50) NOT NULL,
  `kd_category` varchar(50) NOT NULL,
  `kd_analysis` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kd`
--

LOCK TABLES `kd` WRITE;
/*!40000 ALTER TABLE `kd` DISABLE KEYS */;
INSERT INTO `kd` VALUES (15,'KD001','Direct to Retail',' ',' ',' ','',' ','DTR','8012345367','dtr@gmail.com','Upcountry KDs',NULL,'localhost','0000-00-00 00:00:00'),(16,'KD002','Al Mubarak Ventures',' ',' ',' ','Akute',' ','Mubarak','8156565623','Mubarak@gmail.com','Upcountry KDs',NULL,'','0000-00-00 00:00:00'),(17,'KD003','Nigerian KD','','','','Nuga','','DMR','9000050000','dmr@gmail.com','Down Country KDs',NULL,'localhost','2013-08-20 15:07:45');
/*!40000 ALTER TABLE `kd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kd_category`
--

DROP TABLE IF EXISTS `kd_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kd_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `kd_category` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kd_category`
--

LOCK TABLES `kd_category` WRITE;
/*!40000 ALTER TABLE `kd_category` DISABLE KEYS */;
INSERT INTO `kd_category` VALUES (26,'All KDs','0000-00-00 00:00:00'),(27,'Upcountry KDs','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `kd_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kd_category_insert` BEFORE INSERT ON `kd_category`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'kd_category' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kd_category_update` BEFORE UPDATE ON `kd_category`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'kd_category' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kd_category_delete` BEFORE DELETE ON `kd_category`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'kd_category' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kd_product`
--

DROP TABLE IF EXISTS `kd_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kd_product` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `kd_category` varchar(50) NOT NULL,
  `UOM1` varchar(50) NOT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(50) NOT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Effective_date` date NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kd_product`
--

LOCK TABLES `kd_product` WRITE;
/*!40000 ALTER TABLE `kd_product` DISABLE KEYS */;
INSERT INTO `kd_product` VALUES (2,'KD001','All KDs','Pieces','FDDFMB0007','Mcvities Digestive Mini Pack 40gmx120',NULL,'0000-00-00','2013-06-10 10:54:49'),(3,'KD001','All KDs','Pieces','FDABFBV002','Ovaltine 400g Tins',NULL,'0000-00-00','2013-06-10 10:54:49'),(4,'A001','Upcountry KDs','Pieces','FDCHIP0001','7Days Croissant 42X85gm Chocolate Flavour',NULL,'0000-00-00','2013-06-10 10:55:14'),(5,'A001','Upcountry KDs','Pieces','FDACGL0001','DABUR GLUCOSE 450gmx24',NULL,'0000-00-00','2013-06-10 10:55:14'),(6,'A001','Upcountry KDs','Pieces','FDABFBV002','Ovaltine 400g Tins',NULL,'0000-00-00','2013-06-10 10:55:14');
/*!40000 ALTER TABLE `kd_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kdanalysis`
--

DROP TABLE IF EXISTS `kdanalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kdanalysis` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kdanalysis` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kdanalysis`
--

LOCK TABLES `kdanalysis` WRITE;
/*!40000 ALTER TABLE `kdanalysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `kdanalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kdprice`
--

DROP TABLE IF EXISTS `kdprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kdprice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kdprice` varchar(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kdprice`
--

LOCK TABLES `kdprice` WRITE;
/*!40000 ALTER TABLE `kdprice` DISABLE KEYS */;
INSERT INTO `kdprice` VALUES (1,'price1','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `kdprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kdscheme`
--

DROP TABLE IF EXISTS `kdscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kdscheme` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `SchemeType` varchar(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kdscheme`
--

LOCK TABLES `kdscheme` WRITE;
/*!40000 ALTER TABLE `kdscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `kdscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lga`
--

DROP TABLE IF EXISTS `lga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lga` varchar(50) NOT NULL,
  `city_id` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lga`
--

LOCK TABLES `lga` WRITE;
/*!40000 ALTER TABLE `lga` DISABLE KEYS */;
INSERT INTO `lga` VALUES (6,'IFO','17','0000-00-00 00:00:00'),(7,'Kosefe','11','0000-00-00 00:00:00'),(8,'Somolu','12','0000-00-00 00:00:00'),(12,'Lagos Island','12','0000-00-00 00:00:00'),(13,'Lagos Mainland','Undefined','0000-00-00 00:00:00'),(14,'Mushin','Undefined','0000-00-00 00:00:00'),(15,'Ibjeu','11','0000-00-00 00:00:00'),(16,'lga1','Undefined','2013-06-07 04:39:31'),(17,'lgatest','Undefined','2013-06-11 05:22:40');
/*!40000 ALTER TABLE `lga` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lga_insert` BEFORE INSERT ON `lga`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'lga' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lga_update` BEFORE UPDATE ON `lga`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'lga' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lga_delete` BEFORE DELETE ON `lga`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'lga' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL,
  `lga_id` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (15,'Ikeja','13','0000-00-00 00:00:00'),(16,'Lekki','16','0000-00-00 00:00:00'),(17,'Victoria Island','15','0000-00-00 00:00:00'),(18,'loctest','12','2013-06-11 05:23:19');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `location_insert` BEFORE INSERT ON `location`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'location' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `location_update` BEFORE UPDATE ON `location`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'location' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `location_delete` BEFORE DELETE ON `location`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'location' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `opening_stock_update`
--

DROP TABLE IF EXISTS `opening_stock_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opening_stock_update` (
  `id` double DEFAULT NULL,
  `KD_Code` varchar(60) DEFAULT NULL,
  `Product_code` varchar(60) DEFAULT NULL,
  `Product_description` blob,
  `UOM1` varchar(150) DEFAULT NULL,
  `TransactionType` varchar(150) DEFAULT NULL,
  `TransactionNo` varchar(150) DEFAULT NULL,
  `TransactionQty` double DEFAULT NULL,
  `BalanceQty` varchar(150) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `StockDateTime` datetime DEFAULT NULL,
  `UpdatedDateTime` datetime DEFAULT NULL,
  `AddedFirstTime` varchar(3) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opening_stock_update`
--

LOCK TABLES `opening_stock_update` WRITE;
/*!40000 ALTER TABLE `opening_stock_update` DISABLE KEYS */;
INSERT INTO `opening_stock_update` VALUES (2,'KD001','FDABFAD002','Ovaltine 400g Tins','Pieces','OpeningStock','10001',6500,'6500','2013-06-15','2013-06-15 21:09:39',NULL,'D','2013-08-09 13:39:16'),(6,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','OpeningStock','10001',5500,'5500','2013-06-15','2013-06-15 21:09:30',NULL,'D','2013-08-09 13:38:23'),(7,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','OpeningStock','10001',1000,'1000','2013-06-15','2013-06-15 21:09:48',NULL,'D','2013-08-09 13:39:01'),(21,'KD001','FDABFAD003',NULL,'Pieces','Receipts','6777',450,'1450','2013-06-15','2013-06-15 21:33:22',NULL,'Y','2013-08-09 13:39:03'),(22,'KD001','FDABFAD001',NULL,'Pieces','Receipts','6777',600,'1900','2013-06-15','2013-06-15 21:33:22',NULL,'Y','2013-08-09 13:38:23'),(23,'KD001','FDABFAD002',NULL,'Pieces','Receipts','6777',500,'2400','2013-06-15','2013-06-15 21:33:22',NULL,'Y','2013-08-09 13:39:17'),(25,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','Issues','ISS15',-500,'800','2013-06-15','2013-06-15 23:19:42',NULL,'Y','2013-08-09 13:39:03'),(26,'KD001','FDABFAD002','Ovaltine 400g Tins','Pieces','Issues','ISS15',-1000,'6000','2013-06-15','2013-06-15 23:19:42',NULL,'Y','2013-08-09 13:39:17'),(27,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','Issues','ISS15',-3000,'3100','2013-06-15','2013-06-15 23:19:42',NULL,'Y','2013-08-09 13:38:23'),(28,'KD001','FDABFAD001',NULL,'Pieces','Adjustment','5343',-500,'2600','2013-06-15','2013-06-15 23:21:30',NULL,'Y','2013-08-09 13:38:23'),(29,'KD001','FDABFAD001',NULL,'Pieces','Receipts','3534',450,'3050','2013-06-15','2013-06-16 00:09:02',NULL,'Y','2013-08-09 13:38:23'),(30,'KD001','FDABFAD003',NULL,'Pieces','Receipts','3434',350,'1150','2013-06-16','2013-06-16 06:46:31',NULL,'Y','2013-08-09 13:39:04'),(31,'KD001','FDABFAD001',NULL,'PCS','Receipts','34343',300,'3350','2013-06-17','2013-06-17 19:09:52',NULL,'Y','2013-08-09 13:38:23'),(44,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','DSR Return','DSRETURN10001',1399,'4749','2013-06-17','2013-06-17 21:57:00',NULL,'Y','2013-08-09 13:38:23'),(45,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','DSR Return','DSRETURN10001',601,'1751','2013-06-17','2013-06-17 21:57:00',NULL,'Y','2013-08-09 13:39:04'),(46,'KD001','FDABFAD002','Ovaltine 400g Tins','Pieces','DSR Return','DSRETURN10001',700,'6700','2013-06-17','2013-06-17 21:57:00',NULL,'Y','2013-08-09 13:39:18'),(47,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','PCS','Issues','ISS16',-45,'1706','2013-06-18','2013-06-18 15:40:07',NULL,'Y','2013-08-09 13:39:05'),(48,'KD001','FDABFAD002','Ovaltine 10g tins','Pieces','OpeningStock','10001',5000,'5000','2013-06-27','2013-06-27 18:06:54',NULL,'D','2013-08-09 13:38:54'),(49,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','DSR Return','DSRETURN10001',80,'4829','2013-06-27','2013-06-27 19:28:02',NULL,'Y','2013-08-09 13:38:23'),(50,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','DSR Return','DSRETURN10001',195,'1901','2013-06-27','2013-06-27 19:28:02',NULL,'Y','2013-08-09 13:39:06'),(51,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','DSR Return','DSRETURN10001',85,'4914','2013-06-27','2013-06-27 19:35:28',NULL,'Y','2013-08-09 13:38:23'),(52,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','DSR Return','DSRETURN10001',195,'2096','2013-06-27','2013-06-27 19:35:29',NULL,'Y','2013-08-09 13:39:06'),(53,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','DSR Return','DSRETURN10001',85,'4999','2013-06-27','2013-06-27 19:38:31',NULL,'Y','2013-08-09 13:38:23'),(54,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','DSR Return','DSRETURN10001',195,'2291','2013-06-27','2013-06-27 19:38:31',NULL,'Y','2013-08-09 13:39:07'),(55,'KD001','FDABFAD001','Ovaltine 500g Tins','Pieces','DSR Return','DSRETURN10001',85,'5084','2013-06-27','2013-06-27 19:40:30',NULL,'Y','2013-08-09 13:38:23'),(56,'KD001','FDABFAD003','Ovaltine 18g Sachet Hangers','Pieces','DSR Return','DSRETURN10001',195,'2486','2013-06-27','2013-06-27 19:40:31',NULL,'Y','2013-08-09 13:39:11'),(60,'KD001','FDABFAD001',NULL,'PCS','Adjustment','KD001ADJ001',550,'5138','2013-07-08','2013-07-08 16:38:30',NULL,'Y','2013-08-09 13:38:23'),(61,'KD001','FDABFAD002',NULL,'PCS','Receipts','KD001STR10000',200,'5200','2013-07-09','2013-07-09 14:34:36',NULL,'Y','2013-08-09 13:38:56'),(62,'KD001','FDABFAD001',NULL,'PCS','Receipts','KD001STR10001',500,'5638','2013-07-10','2013-07-10 12:53:20',NULL,'Y','2013-08-09 13:38:23'),(63,'KD001','FDABFAD001',NULL,'PCS','Receipts','KD001STR10002',1,'5639','2013-07-11','2013-07-11 03:44:44',NULL,'Y','2013-08-09 13:38:23');
/*!40000 ALTER TABLE `opening_stock_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displaydateformat` varchar(30) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `Transfer_Frequency` varchar(30) NOT NULL,
  `Start_time` time NOT NULL,
  `End_time` time NOT NULL,
  `batchctrl` char(20) NOT NULL,
  `Focus_item_stock` varchar(30) NOT NULL,
  `Customer_Sign` varchar(30) NOT NULL,
  `Permit_Return` varchar(30) NOT NULL,
  `Trans_Reprint` varchar(30) NOT NULL,
  `Tran_copies` varchar(50) NOT NULL,
  `Data_Transfer` varchar(30) NOT NULL,
  `Data_sync_freq` int(10) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameters`
--

LOCK TABLES `parameters` WRITE;
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
INSERT INTO `parameters` VALUES (1,'D-M-Y','Naira','','00:00:00','00:00:00','OFF','0','0','0','0','1','0',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parameters_insert` BEFORE INSERT ON `parameters`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'parameters' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parameters_update` BEFORE UPDATE ON `parameters`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'parameters' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `parameters_delete` BEFORE DELETE ON `parameters`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'parameters' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `price_master`
--

DROP TABLE IF EXISTS `price_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `kd_category` varchar(50) NOT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(50) NOT NULL,
  `UOM1` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Effective_date` date NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_master`
--

LOCK TABLES `price_master` WRITE;
/*!40000 ALTER TABLE `price_master` DISABLE KEYS */;
INSERT INTO `price_master` VALUES (1,'KD001','All KDs','FDGSSAD013','Vitamilk Danglers','Pieces','2','2013-07-23','2013-07-23 13:04:39'),(2,'KD001','All KDs','FDDFMB0007','Mcvities Digestive Mini Pack 40gmx120','Pieces','3','2013-07-23','2013-07-23 13:04:39'),(3,'KD001','All KDs','FDABFBV002','Ovaltine 400g Tins','Pieces','3','2013-07-23','2013-07-23 13:04:39'),(4,'A001','Upcountry KDs','FDCHIP0001','7Days Croissant 42X85gm Chocolate Flavour','Pieces','4','2013-07-23','2013-07-23 13:05:08'),(5,'A001','Upcountry KDs','FDACGL0001','DABUR GLUCOSE 450gmx24','Pieces','5','2013-07-23','2013-07-23 13:05:08'),(6,'A001','Upcountry KDs','FDABFBV002','Ovaltine 400g Tins','Pieces','3','2013-07-23','2013-07-23 13:05:08');
/*!40000 ALTER TABLE `price_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal`
--

DROP TABLE IF EXISTS `principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal`
--

LOCK TABLES `principal` WRITE;
/*!40000 ALTER TABLE `principal` DISABLE KEYS */;
INSERT INTO `principal` VALUES (1,'principal2','0000-00-00 00:00:00'),(2,'principal3','0000-00-00 00:00:00'),(3,'principal1','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Product_code` char(30) NOT NULL,
  `Product_description1` varchar(150) NOT NULL,
  `Product_description_length` varchar(29) NOT NULL,
  `UOM1` varchar(10) NOT NULL,
  `UOM2` varchar(10) NOT NULL,
  `UOM_Conversion` varchar(10) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `principal` varchar(10) NOT NULL,
  `Focus` varchar(50) NOT NULL,
  `Effective_from` date NOT NULL,
  `Effective_to` date NOT NULL,
  `batch_ctrl` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (26,'0000-00-00','FDABFAD002','Ovaltine Caps','Ovaltine C','Pieces','','12','Standard','','2','','0000-00-00','0000-00-00','OFF','3','2013-06-11 14:04:09'),(27,'0000-00-00','FDABFAD001','Ovaltine 14g','Ovaltine 14g','Pieces','','10','Standard','','2','','0000-00-00','0000-00-00','','3','2013-11-28 14:58:49'),(28,'0000-00-00','FDABFAD003','Ovaltine 500g','Ovaltine 500g','Pieces','','8','Standard','','2','','0000-00-00','0000-00-00','','1','2013-11-28 14:59:25');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_category` varchar(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'category1','0000-00-00 00:00:00'),(3,'productcat','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_scheme_master`
--

DROP TABLE IF EXISTS `product_scheme_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_scheme_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Scheme_Description` varchar(50) NOT NULL,
  `Scheme_code` varchar(20) NOT NULL,
  `SchemeType` char(10) DEFAULT NULL,
  `Header_Product_description1` varchar(50) NOT NULL,
  `Header_Product_code` char(20) NOT NULL,
  `Header_UOM` varchar(20) NOT NULL,
  `Header_Quantity` int(50) NOT NULL,
  `line_Product_Name` varchar(50) NOT NULL,
  `line_Product_Code` varchar(50) NOT NULL,
  `line_Product_UOM1` varchar(50) NOT NULL,
  `line_Product_quantity` varchar(50) NOT NULL,
  `Effective_from` date NOT NULL,
  `Effective_to` date NOT NULL,
  `rebate` int(10) DEFAULT NULL,
  `rebateunits` varchar(50) DEFAULT NULL,
  `rebatevalue` varchar(50) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_scheme_master`
--

LOCK TABLES `product_scheme_master` WRITE;
/*!40000 ALTER TABLE `product_scheme_master` DISABLE KEYS */;
INSERT INTO `product_scheme_master` VALUES (2,'Scheme1','S001',NULL,'Ovaltine Caps','FDABFAD002','',1,'Ovaltine T Shirts','FDABFAD003','','1','2013-06-08','2013-06-25',NULL,NULL,NULL,'2013-08-20 11:24:26'),(3,'Scheme1','S001',NULL,'Ovaltine Buntings','FDABFAD003','',1,'Ovaltine T Shirts','FDABFAD003','','1','2013-06-08','2013-06-25',NULL,NULL,NULL,'2013-08-20 11:24:26'),(9,'Scheme2','S002',NULL,'Ovaltine T Shirts','FDABFAD001','',1,'Ovaltine Caps','FDABFAD001','','1','2013-06-11','2013-06-14',NULL,NULL,NULL,'2013-08-20 11:24:54');
/*!40000 ALTER TABLE `product_scheme_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_scheme_master_insert` BEFORE INSERT ON `product_scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_scheme_master_update` BEFORE UPDATE ON `product_scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_scheme_master_delete` BEFORE DELETE ON `product_scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `product_type` char(30) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (7,'Standard','0000-00-00 00:00:00'),(8,'POSM','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_type_insert` BEFORE INSERT ON `product_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_type_update` BEFORE UPDATE ON `product_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_type_delete` BEFORE DELETE ON `product_type`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'product_type' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `province` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (41,'South East','0000-00-00 00:00:00'),(42,'North East','0000-00-00 00:00:00'),(45,'South West','0000-00-00 00:00:00'),(46,'North West','0000-00-00 00:00:00'),(47,'South South','0000-00-00 00:00:00'),(49,'myproses','2013-06-07 05:20:56'),(52,'setsds','2013-06-11 05:46:51');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `province_insert` BEFORE INSERT ON `province`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'province' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `province_update` BEFORE UPDATE ON `province`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'province' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `provincetrigger` AFTER UPDATE ON `province`
 FOR EACH ROW BEGIN
    UPDATE state SET province_id = NEW.province WHERE province_id = OLD.province;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `province_delete` BEFORE DELETE ON `province`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'province' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `route_master`
--

DROP TABLE IF EXISTS `route_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_master` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KD_Name` char(20) NOT NULL,
  `route` varchar(50) NOT NULL,
  `route_desc` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `route_map` varchar(50) NOT NULL,
  `route_distance` varchar(50) NOT NULL,
  `customer_count` int(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_master`
--

LOCK TABLES `route_master` WRITE;
/*!40000 ALTER TABLE `route_master` DISABLE KEYS */;
INSERT INTO `route_master` VALUES (1,'DIRECT TO RETAIL','DIRECT TO RETAIL','RR001','Route1','OGBA','','30 KM',0,'2013-06-07 15:45:06');
/*!40000 ALTER TABLE `route_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routemonthplan`
--

DROP TABLE IF EXISTS `routemonthplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routemonthplan` (
  `id` double DEFAULT NULL,
  `KD_Code` varchar(150) DEFAULT NULL,
  `DSR_Code` varchar(150) DEFAULT NULL,
  `day1` varchar(150) DEFAULT NULL,
  `day2` varchar(150) DEFAULT NULL,
  `day3` varchar(150) DEFAULT NULL,
  `day4` varchar(150) DEFAULT NULL,
  `day5` varchar(150) DEFAULT NULL,
  `day6` varchar(150) DEFAULT NULL,
  `day7` varchar(150) DEFAULT NULL,
  `day8` varchar(150) DEFAULT NULL,
  `day9` varchar(150) DEFAULT NULL,
  `day10` varchar(150) DEFAULT NULL,
  `day11` varchar(150) DEFAULT NULL,
  `day12` varchar(150) DEFAULT NULL,
  `day13` varchar(150) DEFAULT NULL,
  `day14` varchar(150) DEFAULT NULL,
  `day15` varchar(150) DEFAULT NULL,
  `day16` varchar(150) DEFAULT NULL,
  `day17` varchar(150) DEFAULT NULL,
  `day18` varchar(150) DEFAULT NULL,
  `day19` varchar(150) DEFAULT NULL,
  `day20` varchar(150) DEFAULT NULL,
  `day21` varchar(150) DEFAULT NULL,
  `day22` varchar(150) DEFAULT NULL,
  `day23` varchar(150) DEFAULT NULL,
  `day24` varchar(150) DEFAULT NULL,
  `day25` varchar(150) DEFAULT NULL,
  `day26` varchar(150) DEFAULT NULL,
  `day27` varchar(150) DEFAULT NULL,
  `day28` varchar(150) DEFAULT NULL,
  `day29` varchar(150) DEFAULT NULL,
  `day30` varchar(150) DEFAULT NULL,
  `day31` varchar(150) DEFAULT NULL,
  `copiedfrom` varchar(150) DEFAULT NULL,
  `route_mon` varchar(150) DEFAULT NULL,
  `route_tue` varchar(150) DEFAULT NULL,
  `route_wed` varchar(150) DEFAULT NULL,
  `route_thu` varchar(150) DEFAULT NULL,
  `route_fri` varchar(150) DEFAULT NULL,
  `route_sat` varchar(150) DEFAULT NULL,
  `routemonth` varchar(150) DEFAULT NULL,
  `routeyear` varchar(150) DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routemonthplan`
--

LOCK TABLES `routemonthplan` WRITE;
/*!40000 ALTER TABLE `routemonthplan` DISABLE KEYS */;
INSERT INTO `routemonthplan` VALUES (2,'KD001','DSR001','RR001','RR002','RR003','RR002','RR001','',NULL,'RR001','RR002','RR003','RR002','RR001','',NULL,'RR001','RR002','RR003','RR002','RR001','',NULL,'RR001','RR002','RR003','RR002','RR001','',NULL,'RR001','RR002','RR003','master','RR002','RR003','RR001','RR002','RR003','RR001','4','2013','2013-07-05 20:27:40','2013-07-08 13:10:24','0000-00-00 00:00:00'),(8,'KD001','DSR001','RR001','RR002','RR003','RR002','RR001','RR003',NULL,'RR001','RR002','RR003','RR002','RR001','RR003',NULL,'RR001','RR002','RR003','RR002','RR001','RR003',NULL,'RR001','RR002','RR003','RR002','RR001','RR003',NULL,'RR001','RR002','RR003','4-2013','RR002','RR003','RR001','RR002','RR003','RR001','6','2013','2013-07-08 10:45:13','2013-07-08 13:10:24','0000-00-00 00:00:00'),(9,'KD001','DSR001','RR001','RR001','RR002','RR002','RR002','RR003',NULL,'RR003','RR003','RR001','RR003','RR003','RR001',NULL,'RR003','RR003','RR001','RR003','RR003','RR001',NULL,'RR003','RR003','RR001','RR003','RR003','RR001',NULL,'RR003','RR003','RR001','manual','RR003','RR003','RR001','RR003','RR003','RR001','5','2013','2013-07-08 13:00:19','2013-07-08 13:15:09','0000-00-00 00:00:00'),(11,'KD001','DSR001','RR001','RR001','RR002','RR002','RR003','RR003',NULL,'RR001','RR003','RR002','RR003','RR003','RR003',NULL,'RR003','RR003','RR002','RR003','RR003','RR003',NULL,'RR003','RR003','RR002','RR003','RR003','RR003',NULL,'RR003','RR003','RR002','master','RR003','RR003','RR002','RR003','RR003','RR003','7','2013','2013-07-08 14:38:37','2013-07-15 12:20:34','0000-00-00 00:00:00'),(15,'KD002','DSR007','RR001','RR002','RR002','RR001','RR001','RR002',NULL,'RR001','RR002','RR002','RR001','RR001','RR002',NULL,'RR001','RR002','RR002','RR001','RR001','RR002',NULL,'RR001','RR002','RR002','RR001','RR001','RR002',NULL,'RR001','RR002','RR002','master','RR001','RR002','RR002','RR001','RR001','RR002','7','2013','2013-07-29 17:23:08',NULL,'0000-00-00 00:00:00'),(16,'KD002','DSR008','RR001','RR004','RR001','RR004','RR004','RR001',NULL,'RR001','RR004','RR001','RR004','RR004','RR001',NULL,'RR001','RR004','RR001','RR004','RR004','RR001',NULL,'RR001','RR004','RR001','RR004','RR004','RR001',NULL,'RR001','RR004','RR001','master','RR001','RR004','RR001','RR004','RR004','RR001','7','2013','2013-07-29 17:23:21',NULL,'0000-00-00 00:00:00'),(17,'KD003','DSR009','RR002','RR003','RR003','RR002','RR002','RR003',NULL,'RR002','RR003','RR003','RR002','RR002','RR003',NULL,'RR002','RR003','RR003','RR002','RR002','RR003',NULL,'RR002','RR003','RR003','RR002','RR002','RR003',NULL,'RR002','RR003','RR003','master','RR002','RR003','RR003','RR002','RR002','RR003','7','2013','2013-07-29 17:23:31',NULL,'0000-00-00 00:00:00'),(18,'KD003','DSR010','RR004','RR001','RR001','RR004','RR001','RR004',NULL,'RR004','RR001','RR001','RR004','RR001','RR004',NULL,'RR004','RR001','RR001','RR004','RR001','RR004',NULL,'RR004','RR001','RR001','RR004','RR001','RR004',NULL,'RR004','RR001','RR001','master','RR004','RR001','RR001','RR004','RR001','RR004','7','2013','2013-07-29 17:23:42',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `routemonthplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsm_sp`
--

DROP TABLE IF EXISTS `rsm_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsm_sp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `DSR_Code` varchar(10) NOT NULL,
  `DSRName` varchar(50) NOT NULL,
  `Contact_Number` int(20) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `branch_id` varchar(20) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsm_sp`
--

LOCK TABLES `rsm_sp` WRITE;
/*!40000 ALTER TABLE `rsm_sp` DISABLE KEYS */;
INSERT INTO `rsm_sp` VALUES (1,'0000-00-00','RSM001','sundar',987654321,'sundar@gmail.com','1','2013-08-06 07:05:58'),(2,'2013-08-01','RSM002','kumar',2147483647,'kumar@gmail.com','2','2013-08-06 07:06:55'),(3,'2013-08-05','RSM003','velu',2147483647,'velu@gmail.com','3','2013-08-06 07:16:04'),(4,'2013-08-02','RSM004','lino',2147483647,'lino@gmail.com','4','2013-08-06 07:17:13');
/*!40000 ALTER TABLE `rsm_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_and_collection`
--

DROP TABLE IF EXISTS `sale_and_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_and_collection` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `DSR_Code` varchar(50) DEFAULT NULL,
  `device_code` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `cycle_start_flag` enum('yes','no') DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `total_sale_value` varchar(50) DEFAULT NULL,
  `total_collection_value` varchar(50) DEFAULT NULL,
  `cycle_end_flag` enum('yes','no') DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_and_collection`
--

LOCK TABLES `sale_and_collection` WRITE;
/*!40000 ALTER TABLE `sale_and_collection` DISABLE KEYS */;
INSERT INTO `sale_and_collection` VALUES (1,'KD001','DSR001','DV001','2013-06-08','yes','Naira','50','50','yes','2013-06-11 16:22:37'),(2,'KD001','DSR001','DV001','2013-06-09','yes','Naira','60','60','yes','2013-06-11 16:22:37'),(3,'KD001','DSR001','DV001','2013-06-10','yes','Naira','80','80','yes','2013-06-11 16:22:37'),(4,'KD001','DSR001','DV001','2013-06-11','yes','Naira','90','90','yes','2013-06-11 16:22:37'),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-06-11 16:21:33');
/*!40000 ALTER TABLE `sale_and_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_list`
--

DROP TABLE IF EXISTS `sales_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_list` (
  `id` double DEFAULT NULL,
  `KD_Code` varchar(150) DEFAULT NULL,
  `DSR_Code` varchar(150) DEFAULT NULL,
  `DateValue` datetime DEFAULT NULL,
  `monthyear` varchar(150) DEFAULT NULL,
  `route_id` double DEFAULT NULL,
  `customer_id` varchar(150) DEFAULT NULL,
  `Product_code` varchar(150) DEFAULT NULL,
  `quantity` varchar(150) DEFAULT NULL,
  `rateval` varchar(150) DEFAULT NULL,
  `valueval` varchar(150) DEFAULT NULL,
  `transtype` varchar(150) DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_list`
--

LOCK TABLES `sales_list` WRITE;
/*!40000 ALTER TABLE `sales_list` DISABLE KEYS */;
INSERT INTO `sales_list` VALUES (8,'KD001','DSR001','2013-07-08 20:01:20','4-2013',7,'CUS001','FDABFAD001','10','30','300','2','2013-07-08 20:01:20','2013-09-16 12:04:25'),(12,'KD001','DSR001','2013-07-09 11:19:35','6-2013',7,'CUS001','FDABFAD002','10','20','200','2','2013-07-09 11:19:35','2013-09-16 12:05:31'),(13,'KD001','DSR001','2013-07-09 11:19:36','5-2013',7,'CUS001','FDABFAD001','10','20','200','2','2013-07-09 11:19:36','2013-09-16 12:09:17'),(16,'KD001','DSR001','2013-07-09 11:20:14','5-2013',7,'CUS002','FDABFAD001','10','20','200','2','2013-07-09 11:20:14','2013-09-16 12:23:18'),(18,'KD001','DSR002','2013-07-09 11:20:45','4-2013',7,'CUS001','FDABFAD001','10','30','300','2','2013-07-09 11:20:45','2013-09-16 12:12:54'),(19,'KD001','DSR002','2013-07-09 11:20:46','4-2013',7,'CUS001','FDABFAD001','10','20','200','2','2013-07-09 11:20:46','2013-09-16 12:12:56'),(20,'KD001','DSR002','2013-07-09 11:21:42','5-2013',7,'CU0012','FDABFAD001','10','20','200','2','2013-07-09 11:21:42','0000-00-00 00:00:00'),(21,'KD001','DSR002','2013-07-09 11:22:13','5-2013',7,'CU0012','FDABFAD001','10','20','200','2','2013-07-09 11:22:13','0000-00-00 00:00:00'),(22,'KD002','DSR007','2013-07-09 11:22:18','5-2013',7,'CU007','FDABFAD001','10','20','200','2','2013-07-09 11:22:18','0000-00-00 00:00:00'),(26,'KD002','DSR007','2013-07-09 11:22:31','5-2013',7,'CU007','FDABFAD001','10','30','300','2','2013-07-09 11:22:31','0000-00-00 00:00:00'),(35,'KD002','DSR007','2013-07-09 11:24:10','4-2013',7,'CU008','FDABFBV002','10','40','400','2','2013-07-09 11:24:10','0000-00-00 00:00:00'),(36,'KD002','DSR007','2013-07-09 11:24:20','4-2013',7,'CU008','FDABFBV002','10','10','100','2','2013-07-09 11:24:20','0000-00-00 00:00:00'),(37,'KD001','DSR001','0000-00-00 00:00:00','4-2013',7,'CU005','FDABFBV002','10','10','100','2','2013-07-09 11:24:21','0000-00-00 00:00:00'),(38,'KD002','DSR008','2013-07-09 11:24:30','5-2013',7,'CU010','FDABFBV002','10','10','100','2','2013-07-09 11:24:30','0000-00-00 00:00:00'),(39,'KD002','DSR008','2013-07-09 11:24:31','5-2013',7,'CU010','FDABFBV002','10','10','100','2','2013-07-09 11:24:31','0000-00-00 00:00:00'),(40,'KD002','DSR008','2013-07-09 11:24:31','6-2013',7,'CU010','FDABFAD007','10','10','100','2','2013-07-09 11:24:31','0000-00-00 00:00:00'),(41,'KD003','DSR009','2013-07-09 11:24:31','5-2013',7,'CU003','FDABFBV002','10','10','100','2','2013-07-09 11:24:31','0000-00-00 00:00:00'),(50,'KD003','DSR009','2013-07-09 11:25:12','5-2013',7,'CU003','FDABFAD007','10','20','200','2','2013-07-09 11:25:12','0000-00-00 00:00:00'),(56,'KD003','DSR009','2013-07-09 11:25:47','6-2013',7,'CU003','FDABFBV002','10','60','600','2','2013-07-09 11:25:47','0000-00-00 00:00:00'),(57,'KD003','DSR009','2013-07-09 11:25:47','6-2013',7,'CU003','FDABFBV002','10','60','600','2','2013-07-09 11:25:47','0000-00-00 00:00:00'),(58,'KD003','DSR009','2013-07-09 11:25:48','4-2013',7,'CU003','FDABFBV002','80','60','600','2','2013-07-09 11:25:48','0000-00-00 00:00:00'),(66,'KD003','DSR009','2013-07-09 11:26:26','4-2013',7,'CU003','FDABFAD004','10','60','600','3','2013-07-09 11:26:26','0000-00-00 00:00:00'),(67,'KD003','DSR010','2013-07-09 11:26:30','6-2013',7,'CU013','FDABFAD004','10','60','600','2','2013-07-09 11:26:30','0000-00-00 00:00:00'),(68,'KD003','DSR010','2013-07-09 11:26:30','6-2013',7,'CU013','FDABFAD004','10','60','600','2','2013-07-09 11:26:30','0000-00-00 00:00:00'),(70,'KD003','DSR010','2013-07-09 11:26:40','5-2013',7,'CU013','FDABFAD004','10','60','600','2','2013-07-09 11:26:40','0000-00-00 00:00:00'),(71,'KD003','DSR010','2013-07-09 11:26:44','5-2013',7,'CU013','FDABFAD004','10','60','600','2','2013-07-09 11:26:44','0000-00-00 00:00:00'),(72,'KD003','DSR010','2013-07-09 11:26:44','4-2013',7,'CU013','FDABFAD004','10','60','600','2','2013-07-09 11:26:44','0000-00-00 00:00:00'),(84,'KD003','DSR010','2013-07-09 11:27:17','4-2013',7,'CU013','FDABFAD004','10','30','300','2','2013-07-09 11:27:17','0000-00-00 00:00:00'),(87,'KD001','DSR001','2013-07-09 11:27:24','4-2013',7,'CU0012','FDABFAD004','10','30','300','2','2013-07-09 11:27:24','0000-00-00 00:00:00'),(88,'KD001','DSR001','2013-07-09 11:27:24','4-2013',7,'CU0012','FDABFAD004','10','30','300','2','2013-07-09 11:27:24','0000-00-00 00:00:00'),(106,'KD001','DSR002','2013-07-09 11:28:17','6-2013',7,'CU001','FDABFAD007','10','50','500','2','2013-07-09 11:28:17','0000-00-00 00:00:00'),(107,'KD001','DSR002','2013-07-09 11:28:25','6-2013',7,'CU001','FDABFAD007','10','10','100','2','2013-07-09 11:28:25','0000-00-00 00:00:00'),(108,'KD002','DSR007','2013-07-09 11:28:25','6-2013',7,'CU007','FDABFAD007','90','10','100','2','2013-07-09 11:28:25','0000-00-00 00:00:00'),(109,'KD002','DSR007','2013-07-09 11:28:31','6-2013',7,'CU008','FDABFAD007','10','10','100','2','2013-07-09 11:28:31','0000-00-00 00:00:00'),(110,'KD002','DSR008','2013-07-09 11:28:31','4-2013',7,'CU010','FDABFAD007','10','10','100','2','2013-07-09 11:28:31','0000-00-00 00:00:00'),(111,'KD002','DSR008','2013-07-09 11:28:32','6-2013',7,'CU010','FDABFAD007','10','10','100','2','2013-07-09 11:28:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sales_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_representative`
--

DROP TABLE IF EXISTS `sales_representative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_representative` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Salesperson_id` varchar(20) NOT NULL,
  `salesperson_name` varchar(150) NOT NULL,
  `salesperson_email_id` varchar(150) NOT NULL,
  `salesperson_cont_num` varchar(150) NOT NULL,
  `role` varchar(10) NOT NULL,
  `supervisorasm` varchar(10) NOT NULL,
  `supervisorsr` varchar(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_representative`
--

LOCK TABLES `sales_representative` WRITE;
/*!40000 ALTER TABLE `sales_representative` DISABLE KEYS */;
INSERT INTO `sales_representative` VALUES (1,'SR001','raju','raju@gmail.com','87654321','RSM','','','2013-07-11 08:21:43');
/*!40000 ALTER TABLE `sales_representative` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sales_representative_insert` BEFORE INSERT ON `sales_representative`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'sales_representative' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sales_representative_update` BEFORE UPDATE ON `sales_representative`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'sales_representative' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sales_representative_delete` BEFORE DELETE ON `sales_representative`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'sales_representative' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scheme_master`
--

DROP TABLE IF EXISTS `scheme_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Scheme_code` varchar(20) NOT NULL,
  `Scheme_Description` varchar(150) NOT NULL,
  `Effective_from` date NOT NULL,
  `Effective_to` date NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_master`
--

LOCK TABLES `scheme_master` WRITE;
/*!40000 ALTER TABLE `scheme_master` DISABLE KEYS */;
INSERT INTO `scheme_master` VALUES (1,'S001','Scheme1','2013-06-08','2013-06-25','2013-06-08 10:02:04'),(3,'S002','Scheme2','2013-06-11','2013-06-14','2013-06-11 06:34:35');
/*!40000 ALTER TABLE `scheme_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheme_master_insert` BEFORE INSERT ON `scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheme_master_update` BEFORE UPDATE ON `scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `scheme_master_delete` BEFORE DELETE ON `scheme_master`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'scheme_master' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sr`
--

DROP TABLE IF EXISTS `sr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `SR_Name` varchar(50) DEFAULT NULL,
  `SR_Code` varchar(50) DEFAULT NULL,
  `Contact_Number` int(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `ASM` varchar(50) DEFAULT NULL,
  `RSM` varchar(50) DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sr`
--

LOCK TABLES `sr` WRITE;
/*!40000 ALTER TABLE `sr` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sr_incentive`
--

DROP TABLE IF EXISTS `sr_incentive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sr_incentive` (
  `id` double NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `DSR_Code` varchar(50) DEFAULT NULL,
  `monthval` varchar(50) DEFAULT NULL,
  `yearval` varchar(50) DEFAULT NULL,
  `Product_id` varchar(50) DEFAULT NULL,
  `target_units` int(11) DEFAULT NULL,
  `target_naira` int(11) DEFAULT NULL,
  `targetFlag` enum('0','1') DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sr_incentive`
--

LOCK TABLES `sr_incentive` WRITE;
/*!40000 ALTER TABLE `sr_incentive` DISABLE KEYS */;
INSERT INTO `sr_incentive` VALUES (1,'KD001','DSR001','7','2013','25',1500,2,'1','2013-08-08 21:13:12',NULL),(2,'KD001','DSR001','7','2013','26',1500,4,'1','2013-08-08 21:13:12',NULL),(3,'KD001','DSR001','7','2013','27',5,6,'0','2013-08-08 21:13:12',NULL),(4,'KD001','DSR002','7','2013','25',1500,21,'1','2013-08-08 21:13:12','2013-08-08 22:08:08'),(5,'KD001','DSR002','7','2013','26',22,23,'0','2013-08-08 21:13:12','2013-08-08 22:08:08'),(6,'KD001','DSR002','7','2013','27',24,25,'0','2013-08-08 21:13:12','2013-08-08 22:08:08'),(13,'KD001','DSR002','7','2013','25',30,7,'1','2013-08-28 17:42:29','2013-08-29 16:23:47'),(14,'KD001','DSR002','8','2013','26',0,8,'1','2013-08-28 17:43:05','2013-08-29 16:23:47'),(15,'KD001','DSR002','8','2013','27',0,9,'1','2013-08-28 17:43:05','2013-08-29 16:23:47'),(28,'KD001','DSR001','8','2013','25',0,1,'1','2013-08-29 16:14:54','2013-08-29 16:15:18'),(29,'KD001','DSR001','8','2013','26',0,2,'1','2013-08-29 16:15:18',NULL),(30,'KD001','DSR001','8','2013','27',0,3,'1','2013-08-29 16:15:18',NULL);
/*!40000 ALTER TABLE `sr_incentive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srbrand_incentive`
--

DROP TABLE IF EXISTS `srbrand_incentive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srbrand_incentive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `DSR_Code` varchar(50) DEFAULT NULL,
  `monthval` varchar(50) DEFAULT NULL,
  `yearval` varchar(50) DEFAULT NULL,
  `Brand_id` varchar(50) DEFAULT NULL,
  `target_units` int(11) DEFAULT NULL,
  `target_naira` int(11) DEFAULT NULL,
  `targetFlag` enum('0','1') DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srbrand_incentive`
--

LOCK TABLES `srbrand_incentive` WRITE;
/*!40000 ALTER TABLE `srbrand_incentive` DISABLE KEYS */;
INSERT INTO `srbrand_incentive` VALUES (1,'KD001','DSR001','6','2013','1',5,200,'0','2013-11-10 15:20:15',NULL,'2013-11-27 07:48:12'),(2,'KD001','DSR001','6','2013','3',5,400,'1','2013-11-15 15:20:15',NULL,'2013-11-27 07:48:41');
/*!40000 ALTER TABLE `srbrand_incentive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) NOT NULL,
  `province_id` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (29,'Abuja','45','2013-06-07 04:23:35'),(35,'states','46','2013-06-07 05:21:19'),(36,'samplesta','42','2013-06-11 05:18:49'),(38,'statesets','49','2013-06-11 05:47:00'),(39,'statenews','49','2013-07-05 21:31:45'),(40,'sample','47','2013-07-05 21:44:50'),(41,'state2','45','2013-07-05 21:45:19'),(42,'state 23','45','2014-01-03 13:36:57'),(43,'sdere','42','2014-01-03 13:37:46');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `state_insert` BEFORE INSERT ON `state`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'state' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `state_update` BEFORE UPDATE ON `state`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'state' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `state_delete` BEFORE DELETE ON `state`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'state' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stock_receipts`
--

DROP TABLE IF EXISTS `stock_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_receipts` (
  `id` double DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `KD_Code` varchar(60) DEFAULT NULL,
  `Transaction_number` varchar(300) DEFAULT NULL,
  `supplier_inv_no` varchar(150) DEFAULT NULL,
  `supplier_category` varchar(150) DEFAULT NULL,
  `supplier_name` varchar(150) DEFAULT NULL,
  `line_number` varchar(150) DEFAULT NULL,
  `Product_code` varchar(150) DEFAULT NULL,
  `Product_name` blob,
  `UOM` varchar(150) DEFAULT NULL,
  `quantity` varchar(150) DEFAULT NULL,
  `opening_id` double DEFAULT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_receipts`
--

LOCK TABLES `stock_receipts` WRITE;
/*!40000 ALTER TABLE `stock_receipts` DISABLE KEYS */;
INSERT INTO `stock_receipts` VALUES (9,'2013-06-15','KD001','6777','8001','Fareast','Fareast','1','FDABFAD007','Ovaltine 18g Sachet Hangers','Pieces','450',21,'2013-07-09 11:33:09'),(10,'2013-06-15','KD001','6777','84001','Fareast','Fareast','1','FDABFAD001','Ovaltine 500g Tins','Pieces','600',22,'2013-07-08 10:48:51'),(11,'2013-06-15','KD001','6777','8000','Fareast','Fareast','1','FDABFBV002','Ovaltine 400g Tins','Pieces','500',23,'2013-07-08 10:49:12'),(12,'2013-06-15','KD001','3534',NULL,'Fareast','Fareast','1','FDABFAD001','Ovaltine 500g Tins','Pieces','450',29,'2013-06-15 18:39:02'),(13,'2013-06-16','KD001','3434',NULL,'Fareast','Fareast','1','FDABFAD007','Ovaltine 18g Sachet Hangers','Pieces','350',30,'2013-06-16 01:16:31'),(14,'2013-06-17','KD001','34343',NULL,'Fareast','Fareast','1','FDABFAD001','Ovaltine 500g Tins','PCS','300',31,'2013-07-10 07:59:48'),(18,'2013-07-09','KD001','KD001STR10000','8007','Fareast','Fareast','1','FDABFAD004','Ovaltine 10g Tins','PCS','200',61,'2013-07-09 09:04:36'),(19,'2013-07-10','KD001','KD001STR10001','85001','othersuppliers','Orange Cap','1','FDABFAD001','Ovaltine 500g Tins','PCS','500',62,'2013-07-10 07:23:20'),(20,'2013-07-11','KD001','KD001STR10002','1234','Fareast','Fareast','1','FDABFAD001','Ovaltine 500g Tins','PCS','1',63,'2013-07-10 22:14:44');
/*!40000 ALTER TABLE `stock_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_setting`
--

DROP TABLE IF EXISTS `target_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) DEFAULT NULL,
  `rsm_id` varchar(50) DEFAULT NULL,
  `asm_id` varchar(50) DEFAULT NULL,
  `SR_Code` varchar(50) DEFAULT NULL,
  `brand_id` varchar(50) DEFAULT NULL,
  `Product_id` varchar(50) DEFAULT NULL,
  `target_units` varchar(50) DEFAULT NULL,
  `target_naira` varchar(50) DEFAULT NULL,
  `insertdatetime` datetime DEFAULT NULL,
  `updatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_setting`
--

LOCK TABLES `target_setting` WRITE;
/*!40000 ALTER TABLE `target_setting` DISABLE KEYS */;
INSERT INTO `target_setting` VALUES (1,'KD001','1','1','DSR001','2','31','10','10','2013-07-23 19:18:31','2013-07-23 19:32:54'),(2,'KD001','1','1','DSR001','1','28','30','30','2013-07-23 19:18:31','2013-07-23 19:32:54'),(3,'KD001','1','1','DSR001','1','32','20','20','2013-07-23 19:18:50','2013-07-23 19:32:54'),(4,'KD001','2','2','DSR002','2','31','10','10','2013-07-23 19:32:54',NULL),(5,'KD001','2','2','DSR002','1','28','10','10','2013-07-23 19:32:54',NULL),(6,'KD001','2','2','DSR002','1','32','20','20','2013-07-23 19:32:54',NULL),(7,'KD002','3','3','DSR007','2','31','10','10','2013-07-23 20:33:17',NULL),(8,'KD002','3','3','DSR007','1','28','20','20','2013-07-23 20:33:17',NULL),(9,'KD002','3','3','DSR007','1','32','10','10','2013-07-23 20:33:17',NULL),(10,'KD002','4','4','DSR008','2','31','10','10','2013-07-23 20:33:17',NULL),(11,'KD002','4','4','DSR008','1','28','10','10','2013-07-23 20:33:17',NULL),(12,'KD002','4','4','DSR008','1','32','20','20','2013-07-23 20:33:17',NULL),(13,'KD003','5','5','DSR009','2','31','10','10','2013-07-23 20:33:17',NULL),(14,'KD003','5','5','DSR009','1','28','20','20','2013-07-23 20:33:17',NULL),(15,'KD003','5','5','DSR009','1','32','10','10','2013-07-23 20:33:17',NULL),(16,'KD003','6','6','DSR010','2','31','20','20','2013-07-23 20:33:17',NULL),(17,'KD003','6','6','DSR010','1','28','10','10','2013-07-23 20:33:17',NULL),(18,'KD003','6','6','DSR010','1','32','10','10','2013-07-23 20:33:17',NULL);
/*!40000 ALTER TABLE `target_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_type`
--

DROP TABLE IF EXISTS `trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_type` (
  `id` double DEFAULT NULL,
  `trans_type` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_type`
--

LOCK TABLES `trans_type` WRITE;
/*!40000 ALTER TABLE `trans_type` DISABLE KEYS */;
INSERT INTO `trans_type` VALUES (1,'No Sales'),(2,'Sales'),(3,'Cancelled'),(4,'Return'),(5,'Receipt');
/*!40000 ALTER TABLE `trans_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_hdr`
--

DROP TABLE IF EXISTS `transaction_hdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_hdr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `device_code` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(50) NOT NULL,
  `Customer_code` varchar(50) NOT NULL,
  `Transaction_type` int(10) NOT NULL,
  `Transaction_Number` varchar(22) NOT NULL,
  `transaction_Reference_Number` varchar(22) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `Product_Line_count` decimal(3,0) NOT NULL,
  `Transaction_Value` decimal(20,2) NOT NULL,
  `Discount` varchar(50) NOT NULL,
  `Discount_Value` decimal(20,2) NOT NULL,
  `Net_Sale_value` decimal(20,2) NOT NULL,
  `Collection_Value` decimal(20,2) NOT NULL,
  `Balance_Due_Value` decimal(20,2) NOT NULL,
  `Shop_Image` varchar(50) NOT NULL,
  `Image_Capture` varchar(50) NOT NULL,
  `Signature_Image` varchar(50) NOT NULL,
  `return_reason` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_hdr`
--

LOCK TABLES `transaction_hdr` WRITE;
/*!40000 ALTER TABLE `transaction_hdr` DISABLE KEYS */;
INSERT INTO `transaction_hdr` VALUES (1,'KD001','DSR001','DV001','2013-06-01','14:12:00','','CUS001',2,'DSR001080420131','0','Naira',6,31724.00,'',0.00,31724.00,450.00,100.00,'','','',0),(2,'KD001','DSR001','DV001','2013-06-15','09:42:00','','CUS001',3,'DSR001080420132','0','Naira',5,4781.00,'',0.00,4781.00,450.00,200.00,'','','',0),(3,'KD001','DSR001','DV001','2013-06-25','14:45:00','','CUS002',2,'DSR001080420133','0','Naira',5,2400.00,'',0.00,2400.00,350.00,400.00,'','','',0),(4,'KD001','DSR001','DV001','2013-06-20','16:25:00','','CUS003',2,'DSR001080420134','DSR001080420133','Naira',3,0.00,'',0.00,900.00,850.00,50.00,'','','',0),(5,'KD001','DSR001','DV001','2013-06-09','10:25:00','','CUS001',2,'DSR001230920131','0','Naira',4,3580.00,'',0.00,50.00,40.00,10.00,'','','',2),(6,'KD001','DSR001','DV001','2013-06-04','11:12:00','','CUS004',2,'DSR001230920132','0','Naira',6,20653.00,'',0.00,500.00,400.00,100.00,'','','3_Sign.bmp',0),(7,'KD001','DSR001','DV001','2013-06-06','14:12:18','','CUS004',2,'DSR001230920133','0','Naira',4,7356.00,'',0.00,400.00,300.00,100.00,'','','2_Sign.bmp',0),(8,'KD001','DSR001','DV001','2013-06-18','15:14:12','','CUS001',4,'DSR001240920131','0','Naira',0,0.00,'',0.00,600.00,500.00,100.00,'','','',0),(9,'KD001','DSR001','DV001','2013-06-24','12:00:30','','CUS002',5,'DSR001240920132','','Naira',0,0.00,'',0.00,0.00,1000.00,0.00,'','','',0);
/*!40000 ALTER TABLE `transaction_hdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_line`
--

DROP TABLE IF EXISTS `transaction_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_line` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Transaction_type` int(10) NOT NULL,
  `Transaction_Number` varchar(22) NOT NULL,
  `Transaction_Line_Number` decimal(3,0) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `UOM` varchar(20) NOT NULL,
  `Focus_Flag` int(10) NOT NULL,
  `POSM_Flag` int(10) NOT NULL,
  `Customer_Stock_Check` int(10) NOT NULL,
  `Customer_Stock_quantity` decimal(5,0) NOT NULL,
  `Scheme_Flag` int(20) NOT NULL,
  `Scheme_Code` varchar(50) NOT NULL,
  `Product_Scheme_Flag` int(10) NOT NULL,
  `Order_quantity` decimal(5,0) NOT NULL,
  `Sold_quantity` decimal(5,0) NOT NULL,
  `Price` decimal(9,2) NOT NULL,
  `Value` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_line`
--

LOCK TABLES `transaction_line` WRITE;
/*!40000 ALTER TABLE `transaction_line` DISABLE KEYS */;
INSERT INTO `transaction_line` VALUES (1,'KD001','DSR001',2,'DSR001080420131',1,'FDABFAD001','PCS',1,0,1,100,0,'',0,0,30,2000.00,60000.00),(2,'KD001','DSR001',2,'DSR001080420132',1,'FDABFAD002','PCS',1,0,0,0,1,'S001',0,0,10,100.00,1000.00),(3,'KD001','DSR001',2,'DSR001080420132',2,'FDABFAD001','PCS',1,1,0,0,0,'S001',1,0,100,0.00,0.00),(4,'KD001','DSR001',2,'DSR001080420132',3,'FDABFAD003','PCS',1,1,0,0,0,'S001',1,0,200,0.00,0.00),(5,'KD001','DSR001',2,'DSR001080420132',4,'0','1',0,1,0,0,0,'S001',0,0,0,0.00,-200.00),(6,'KD001','DSR001',2,'DSR001230920132',1,'FDABFAD002','PCS',1,1,0,0,1,'S002',0,0,10,200.00,2000.00),(7,'KD001','DSR001',2,'DSR001230920132',2,'FDABFAD002','PCS',1,1,0,0,0,'S002',1,0,40,0.00,0.00),(8,'KD001','DSR001',2,'DSR001230920132',3,'FDABFAD001','PCS',1,1,0,0,0,'S002',1,0,50,0.00,0.00),(9,'KD001','DSR001',2,'DSR001230920132',4,'0','1',0,0,0,0,0,'S002',0,0,0,0.00,-500.00),(10,'KD001','DSR001',2,'DSR001230920133',1,'FDABFAD003','PCS',0,1,0,0,1,'S002',0,0,10,200.00,2000.00),(11,'KD001','DSR001',2,'DSR001230920133',2,'FDABFAD002','PCS',1,1,0,0,0,'S002',1,0,40,0.00,0.00),(12,'KD001','DSR001',2,'DSR001230920133',3,'FDABFAD001','PCS',1,1,0,0,0,'S002',1,0,50,0.00,0.00),(13,'KD001','DSR001',2,'DSR001230920133',4,'0','1',0,0,0,0,0,'S002',0,0,0,0.00,-500.00),(14,'KD001','DSR001',2,'DSR001230920133',5,'FDABFAD002','PCS',0,0,0,0,0,'',0,0,20,100.00,2000.00),(15,'KD001','DSR001',2,'DSR001230920133',6,'FDABFAD003','PCS',0,0,0,0,0,'',0,0,10,100.00,1000.00);
/*!40000 ALTER TABLE `transaction_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_return_batch`
--

DROP TABLE IF EXISTS `transaction_return_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_return_batch` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Transaction_Number` varchar(22) NOT NULL,
  `Transaction_line_Number` decimal(10,0) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `UOM` varchar(10) NOT NULL,
  `Batch_Number` varchar(50) NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Return_quantity` decimal(5,0) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_return_batch`
--

LOCK TABLES `transaction_return_batch` WRITE;
/*!40000 ALTER TABLE `transaction_return_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_return_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_return_line`
--

DROP TABLE IF EXISTS `transaction_return_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_return_line` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(10) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Transaction_Number` varchar(22) NOT NULL,
  `Transaction_Line_Number` decimal(3,0) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `UOM` varchar(3) NOT NULL,
  `Reurn_quantity` decimal(5,0) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_return_line`
--

LOCK TABLES `transaction_return_line` WRITE;
/*!40000 ALTER TABLE `transaction_return_line` DISABLE KEYS */;
INSERT INTO `transaction_return_line` VALUES (1,'KD001','DSR001','DSR001240920131',1,'FDABFAD002','PCS',20,'2013-11-28 07:50:16'),(2,'KD003','DSR004','DSR001240920131',2,'FDABFAD001','PCS',60,'2013-11-28 07:50:18');
/*!40000 ALTER TABLE `transaction_return_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UOM_code` char(20) NOT NULL,
  `UOM_description` varchar(150) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (1,'PCS','Pieces','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uom_insert` BEFORE INSERT ON `uom`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'uom' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uom_update` BEFORE UPDATE ON `uom`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'uom' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uom_delete` BEFORE DELETE ON `uom`
 FOR EACH ROW UPDATE data_transfer_table SET TABLE_UPDATED_ON = NOW( ) WHERE TABLE_NAME =  'uom' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `uom2`
--

DROP TABLE IF EXISTS `uom2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `UOM2` varchar(10) NOT NULL,
  `UOM2_Description` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom2`
--

LOCK TABLES `uom2` WRITE;
/*!40000 ALTER TABLE `uom2` DISABLE KEYS */;
INSERT INTO `uom2` VALUES (1,'cart','cartons','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `uom2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_conversion`
--

DROP TABLE IF EXISTS `uom_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_conversion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uom` varchar(10) NOT NULL,
  `uom2` varchar(10) NOT NULL,
  `uom_conversion` varchar(10) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_conversion`
--

LOCK TABLES `uom_conversion` WRITE;
/*!40000 ALTER TABLE `uom_conversion` DISABLE KEYS */;
INSERT INTO `uom_conversion` VALUES (1,'PCS','CT','1','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `uom_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_master`
--

DROP TABLE IF EXISTS `vehicle_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_master` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KD_Name` char(20) NOT NULL,
  `vehicle_code` varchar(50) NOT NULL,
  `vehicle_desc` varchar(150) NOT NULL,
  `vehicle_reg_no` varchar(50) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_master`
--

LOCK TABLES `vehicle_master` WRITE;
/*!40000 ALTER TABLE `vehicle_master` DISABLE KEYS */;
INSERT INTO `vehicle_master` VALUES (1,'KD001','BOLARINWA','TEMP01','Tempo','TWR2345','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `vehicle_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_stock`
--

DROP TABLE IF EXISTS `vehicle_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_stock` (
  `id` double DEFAULT NULL,
  `KD_Code` varchar(150) DEFAULT NULL,
  `DSR_Code` varchar(150) DEFAULT NULL,
  `Device_Code` varchar(150) DEFAULT NULL,
  `Vehicle_Code` varchar(150) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Cycle_Start_Flag` double DEFAULT NULL,
  `Product_Code` varchar(150) DEFAULT NULL,
  `UOM` varchar(30) DEFAULT NULL,
  `Loaded_quantity` decimal(6,0) DEFAULT NULL,
  `Sold_quantity` decimal(6,0) DEFAULT NULL,
  `Return_quantity` decimal(6,0) DEFAULT NULL,
  `Stock_quantity` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_stock`
--

LOCK TABLES `vehicle_stock` WRITE;
/*!40000 ALTER TABLE `vehicle_stock` DISABLE KEYS */;
INSERT INTO `vehicle_stock` VALUES (1,'KD001','DSR001','DV001','TEMP01','2013-06-15 00:00:00',0,'FDABFAD002','Pieces',500,400,100,200),(2,'KD001','DSR001','DV001','TEMP01','2013-06-15 00:00:00',0,'FDABFAD001','Pieces',600,400,300,500),(3,'KD001','DSR001','DV001','TEMP01','2013-06-16 00:00:00',0,'FDABFAD001','Pieces',400,300,100,200),(4,'KD001','DSR001','DV001','TEMP01','2013-06-16 00:00:00',0,'FDABFAD003','Pieces',800,400,100,500),(5,'KD001','DSR001','DV001','TEMP01','2013-06-14 00:00:00',1,'FDABFAD002','Pieces',100,50,100,150),(6,'KD001','DSR001','DV001','TEMP01','2013-06-14 00:00:00',1,'FDABFAD001','Pieces',300,100,200,400),(7,'KD001','DSR001','DV001','VEH1000','2013-06-27 00:00:00',1,'FDABFAD001','PCS',500,400,0,100),(8,'KD001','DSR001','DV001','VEH1000','2013-06-27 00:00:00',1,'FDABFAD002','PCS',1200,1000,0,200);
/*!40000 ALTER TABLE `vehicle_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_stock_batch`
--

DROP TABLE IF EXISTS `vehicle_stock_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_stock_batch` (
  `id` int(50) NOT NULL,
  `KD_Code` varchar(50) NOT NULL,
  `DSR_Code` varchar(50) NOT NULL,
  `Device_Code` varchar(50) NOT NULL,
  `Vehicle_Code` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `UOM` varchar(50) NOT NULL,
  `Batch` varchar(50) NOT NULL,
  `Expiry` varchar(10) NOT NULL,
  `Stock_Quantity` decimal(5,0) NOT NULL,
  `AUDIT_DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_stock_batch`
--

LOCK TABLES `vehicle_stock_batch` WRITE;
/*!40000 ALTER TABLE `vehicle_stock_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_stock_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'host'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-24 14:37:37
