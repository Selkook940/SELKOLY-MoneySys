-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: qbcore_b3654a
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `arac_limitleri`
--

DROP TABLE IF EXISTS `arac_limitleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arac_limitleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arac_limitleri`
--

LOCK TABLES `arac_limitleri` WRITE;
/*!40000 ALTER TABLE `arac_limitleri` DISABLE KEYS */;
INSERT INTO `arac_limitleri` VALUES (43,'sf90an',450,'2026-04-28 17:14:26','2026-04-28 17:14:26'),(44,'sf90',400,'2026-04-28 17:14:50','2026-04-28 17:14:53'),(46,'aventsvjr',380,'2026-04-29 18:38:11','2026-04-29 18:38:11'),(47,'sian',360,'2026-04-30 19:20:31','2026-04-30 19:20:31'),(48,'sto21',350,'2026-04-30 19:20:48','2026-04-30 19:20:48'),(49,'feno26sx',330,'2026-04-30 19:21:12','2026-04-30 19:21:12'),(50,'torofeo',300,'2026-04-30 19:21:29','2026-04-30 19:21:29'),(51,'venatusc',300,'2026-04-30 19:21:49','2026-04-30 19:21:49'),(52,'senna',400,'2026-04-30 19:22:00','2026-04-30 19:22:00'),(53,'720ss',380,'2026-04-30 19:22:12','2026-04-30 19:22:34'),(55,'mcst',360,'2026-04-30 19:22:38','2026-04-30 19:22:38'),(56,'f8spider',360,'2026-04-30 19:22:58','2026-04-30 19:22:58'),(57,'296gts',380,'2026-04-30 19:24:21','2026-04-30 19:24:21'),(58,'ferrarif50',340,'2026-04-30 19:24:38','2026-04-30 19:24:38'),(59,'812mansory',400,'2026-04-30 19:24:52','2026-04-30 19:24:52'),(60,'m5',350,'2026-04-30 19:25:07','2026-04-30 19:25:07'),(61,'f82',370,'2026-04-30 19:25:17','2026-04-30 19:25:17'),(62,'m5g60',340,'2026-04-30 19:25:37','2026-04-30 19:25:37'),(63,'w463a1',330,'2026-04-30 19:27:48','2026-04-30 19:27:48'),(64,'s500w223',330,'2026-04-30 19:28:09','2026-04-30 19:28:09'),(65,'chg',500,'2026-05-03 14:12:11','2026-05-03 14:12:11'),(66,'e63b',280,'2026-05-03 14:14:57','2026-05-03 14:15:04'),(68,'nbtem25',330,'2026-05-03 14:21:54','2026-05-03 14:21:54'),(69,'mustangspec5',330,'2026-05-03 14:48:15','2026-05-03 14:48:15'),(70,'sf90s',400,'2026-05-08 17:36:00','2026-05-08 17:36:00'),(71,'revuelto',400,'2026-05-09 09:54:22','2026-05-09 09:54:22'),(73,'jesko',500,'2026-05-09 12:30:15','2026-05-09 12:30:15'),(74,'rocket',350,'2026-05-09 13:03:00','2026-05-09 13:03:00'),(75,'sl63amg22',300,'2026-05-09 13:10:00','2026-05-09 13:10:00'),(76,'b63s',300,'2026-05-13 21:57:48','2026-05-13 21:57:48'),(77,'audiq523',300,'2026-05-30 13:01:04','2026-05-30 13:01:04'),(78,'r820',330,'2026-05-30 13:07:11','2026-05-30 13:07:11'),(79,'rs322',280,'2026-05-30 13:07:32','2026-05-30 13:07:32'),(80,'rs6avant20',330,'2026-05-30 13:11:02','2026-05-30 13:11:02'),(81,'rs6c8',330,'2026-05-30 13:11:15','2026-05-30 13:11:15'),(82,'rs721',330,'2026-05-30 13:11:29','2026-05-30 13:11:29'),(83,'rsq8m',280,'2026-05-30 13:16:39','2026-05-30 13:16:39'),(84,'bmci',330,'2026-05-30 13:23:59','2026-05-30 13:23:59'),(85,'21ltz',350,'2026-05-30 13:25:03','2026-05-30 13:25:03'),(86,'rs6+',300,'2026-05-30 13:25:36','2026-05-30 13:25:36'),(87,'amgone',350,'2026-05-30 13:29:18','2026-05-30 13:29:18'),(88,'mers63c',300,'2026-05-30 13:38:26','2026-05-30 13:38:26'),(89,'c63w205',300,'2026-05-30 13:41:32','2026-05-30 13:41:32'),(90,'glc63sx',280,'2026-05-30 13:47:51','2026-05-30 13:47:51'),(91,'19s650',250,'2026-05-30 13:52:13','2026-05-30 13:52:17'),(93,'gl_mansoryurus',350,'2026-05-30 13:55:28','2026-05-30 13:55:28'),(94,'buggy',470,'2026-05-30 13:57:56','2026-05-30 13:57:56'),(95,'supersport',420,'2026-05-30 14:03:10','2026-05-30 14:34:53'),(97,'redeye',350,'2026-05-30 14:41:28','2026-05-30 14:41:28'),(98,'nh2r',400,'2026-05-30 14:41:41','2026-05-30 14:41:41'),(99,'nismo20',350,'2026-05-30 14:41:59','2026-05-30 14:41:59');
/*!40000 ALTER TABLE `arac_limitleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banandkick`
--

DROP TABLE IF EXISTS `banandkick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banandkick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banlanan` varchar(50) NOT NULL DEFAULT '0',
  `banlayan` varchar(50) NOT NULL DEFAULT '0',
  `steam` varchar(50) DEFAULT 'N/A',
  `license` varchar(50) DEFAULT 'N/A',
  `discord` varchar(50) DEFAULT 'N/A',
  `fivem` varchar(50) DEFAULT 'N/A',
  `ip` varchar(50) DEFAULT 'N/A',
  `type` varchar(20) NOT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banandkick`
--

LOCK TABLES `banandkick` WRITE;
/*!40000 ALTER TABLE `banandkick` DISABLE KEYS */;
INSERT INTO `banandkick` VALUES (1,'0','0','steam:11000014a8245e2','license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','699598318107623446','2','26.220.141.157','unban','asdas','2026-05-30 12:00:53');
/*!40000 ALTER TABLE `banandkick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transactions`
--

DROP TABLE IF EXISTS `bank_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam_hex` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `target_account` varchar(50) DEFAULT NULL,
  `target_name` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transactions`
--

LOCK TABLES `bank_transactions` WRITE;
/*!40000 ALTER TABLE `bank_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_bans`
--

DROP TABLE IF EXISTS `chat_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_bans` (
  `identifier` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `strikes` int(11) NOT NULL DEFAULT 0,
  `permanent` tinyint(1) NOT NULL DEFAULT 0,
  `expires_at` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `idx_active` (`active`),
  KEY `idx_expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_bans`
--

LOCK TABLES `chat_bans` WRITE;
/*!40000 ALTER TABLE `chat_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_logs`
--

DROP TABLE IF EXISTS `chat_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `role` varchar(32) NOT NULL DEFAULT 'user',
  `message` text NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  `block_reason` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_identifier` (`identifier`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_logs`
--

LOCK TABLES `chat_logs` WRITE;
/*!40000 ALTER TABLE `chat_logs` DISABLE KEYS */;
INSERT INTO `chat_logs` VALUES (85,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778759898),(86,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','maraba',0,NULL,1778759900),(87,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','maraba',0,NULL,1778759924),(88,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778759942),(89,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asd',0,NULL,1778759950),(90,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778760630),(91,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778760937),(92,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778761980),(93,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778761982),(94,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','merhaabar',0,NULL,1778762024),(95,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','t',0,NULL,1778762447),(96,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1778762664),(97,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','sdl',0,NULL,1778763078),(98,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','maraba',0,NULL,1778763080),(99,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','saddlmasd',0,NULL,1778763081),(100,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','azra',0,NULL,1778763082),(101,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','maraba',0,NULL,1779023438),(102,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','m',0,NULL,1779023497),(103,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','porno',0,NULL,1779023502),(104,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',0,NULL,1779023506),(105,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','sex',0,NULL,1779023508),(106,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',0,NULL,1779023510),(107,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',1,'Muted for 300 seconds',1779023512),(108,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',1,'Muted for 300 seconds',1779023537),(109,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',1,'Muted / Banned',1779023538),(110,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','31',1,'Muted / Banned',1779023540),(111,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','porno',0,NULL,1779023546),(112,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','porno',1,'Muted for 300 seconds',1779023548),(113,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','2w',0,NULL,1779023574),(114,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','w',0,NULL,1779023576),(115,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted for 300 seconds',1779023577),(116,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted for 300 seconds',1779023591),(117,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','sa',1,'Muted / Banned',1779023593),(118,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023599),(119,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','s',1,'Muted / Banned',1779023633),(120,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','s',1,'Muted / Banned',1779023635),(121,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','q',1,'Muted / Banned',1779023636),(122,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023637),(123,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023638),(124,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','wt',1,'Muted / Banned',1779023639),(125,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023639),(126,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023639),(127,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','wt',1,'Muted / Banned',1779023640),(128,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1779023643),(129,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023645),(130,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023646),(131,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023647),(132,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','porno',1,'Muted / Banned',1779023649),(133,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','porno',1,'Muted / Banned',1779023652),(134,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','a',1,'Muted / Banned',1779023654),(135,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','qw',0,NULL,1779023656),(136,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','w',0,NULL,1779023658),(137,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted for 300 seconds',1779023659),(138,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023660),(139,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023674),(140,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023676),(141,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023677),(142,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023677),(143,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023678),(144,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdojkıasndıkoasü',0,NULL,1779023678),(145,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted for 300 seconds',1779023690),(146,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023691),(147,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023692),(148,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023692),(149,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023692),(150,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023693),(151,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023693),(152,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023693),(153,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','staff','tw',0,NULL,1779023694),(154,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted for 300 seconds',1779023694),(155,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','t',1,'Muted / Banned',1779023694),(156,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023695),(157,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','t',1,'Muted / Banned',1779023695),(158,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023695),(159,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','t',1,'Muted / Banned',1779023696),(160,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','t',1,'Muted / Banned',1779023696),(161,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023697),(162,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',1,'Muted / Banned',1779023697),(163,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted / Banned',1779023697),(164,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted for 300 seconds',1779023698),(165,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',1,'Muted for 300 seconds',1779023701),(166,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','staff','w',0,NULL,1779023712),(167,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',0,NULL,1779023720),(168,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',0,NULL,1779023722),(169,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',0,NULL,1779023723),(170,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','wt',0,NULL,1779023724),(171,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023724),(172,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023724),(173,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','twtw',0,NULL,1779023725),(174,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023725),(175,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023725),(176,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023726),(177,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023726),(178,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023726),(179,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023727),(180,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','wt',0,NULL,1779023727),(181,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023727),(182,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023727),(183,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','tw',0,NULL,1779023728),(184,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdasdsa',0,NULL,1779023729),(185,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','default','w',0,NULL,1779023738),(186,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 2] maraba',0,NULL,1779023743),(187,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','dm','[DM -> 1] 31',0,NULL,1779023754),(188,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 2] asd',0,NULL,1779023757),(189,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 1] asdşas',0,NULL,1779023769),(190,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 1] asdas',0,NULL,1779023772),(191,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','dm','[DM -> 1] götümü siken yok mu',0,NULL,1779023775),(192,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 2] asd',0,NULL,1779023793),(193,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','dm','[DM -> 2] asdas',0,NULL,1779023796),(194,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','dm','[DM -> 1] 31',0,NULL,1779023817),(195,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','aspodnasıpodnas',0,NULL,1779026874),(196,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdasd',0,NULL,1779028218),(197,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','asdasd',0,NULL,1779194707),(198,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','police','maraba',0,NULL,1779274004),(199,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','police','asdasdas',0,NULL,1779274037),(200,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','police','as',0,NULL,1779274048),(201,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','police','s',0,NULL,1779274050),(202,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','s',1,'Muted for 300 seconds',1779274051),(203,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','police','mireba',0,NULL,1779274065),(204,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','w',0,NULL,1779283552),(205,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','police','PİÇ',0,NULL,1779283557),(206,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','&',0,NULL,1779730737),(207,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','a',0,NULL,1779730740),(208,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','maraba',0,NULL,1779730742),(209,'license:3110ec0bc1cefb58665e9df31d6fa093856d1dc9','Ballas X Soyhan','default','sa',0,NULL,1779731694),(210,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','default','as kral',0,NULL,1779731700);
/*!40000 ALTER TABLE `chat_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL,
  `category_logo` text DEFAULT NULL,
  `car_name` varchar(128) NOT NULL,
  `model` varchar(64) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `required_rank` varchar(32) DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT 0,
  `limited` tinyint(1) NOT NULL DEFAULT 0,
  `max_speed` int(11) DEFAULT NULL,
  `accel` int(11) DEFAULT NULL,
  `brake` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `gears` int(11) DEFAULT NULL,
  `drive_type` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (207,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Sian','sian',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Revuelto','Revuelto',3000000,79,1,'staff',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Huracan STO','sto21',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Aventador SVJ','aventsvjr',3000000,80,1,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Feno 26 SX','feno26sx',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Chevrolet','https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Chevrolet-logo.png/3840px-Chevrolet-logo.png','C8','c8inter',500000,80,1,'police',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','GT63 Unmarked','zm_rocket900',10000000,80,1,'police',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Mansory Huracan','torofeo',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Mansory Urus','venatusc',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'McLaren','https://upload.wikimedia.org/wikipedia/commons/2/20/McLaren_Racing_logo.png','Senna','senna',20000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'McLaren','https://upload.wikimedia.org/wikipedia/commons/2/20/McLaren_Racing_logo.png','720ss','720ss',1000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'McLaren','https://upload.wikimedia.org/wikipedia/commons/2/20/McLaren_Racing_logo.png','Mcst','mcst',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Koenigsegg','https://upload.wikimedia.org/wikipedia/commons/a/a7/Koenigsegg_logotype2014.png','Jesko','Jesko',0,80,1,'founder',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Ferrari','https://www.freepnglogos.com/uploads/lamborghini-logo-png/lamborghini-logo-drawing-download-best-lamborghini-14.png','F8 Spider','f8spider',12000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Ferrari','https://www.freepnglogos.com/uploads/lamborghini-logo-png/lamborghini-logo-drawing-download-best-lamborghini-14.png','296 GTS','296gts',12000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Ferrari','https://www.freepnglogos.com/uploads/lamborghini-logo-png/lamborghini-logo-drawing-download-best-lamborghini-14.png','F50','ferrarif50',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Ferrari','https://www.freepnglogos.com/uploads/lamborghini-logo-png/lamborghini-logo-drawing-download-best-lamborghini-14.png','812 Mansory','812mansory',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Ferrari','https://www.freepnglogos.com/uploads/lamborghini-logo-png/lamborghini-logo-drawing-download-best-lamborghini-14.png','SF 90 Bodykit','sf90an',16000000,80,1,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Bmw','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/3840px-BMW_logo_%28gray%29.svg.png','M5','bmci',300000,79,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'Bmw','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/3840px-BMW_logo_%28gray%29.svg.png','M5 G60','m5g60',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','G63 AMG ','w463a1',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','s500w223','s500w223',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','GT63 AMG','rocket',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','SL 63 AMG','sl63amg22',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','B 63 S','b63s',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','C63 w205','c63w205',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','E 63 B','e63b',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','glc63sx','glc63sx',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','S63 AMG','mers63c',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','S650','19s650',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'Mercedes','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg/960px-Mercedes-Benz_Star_%281969-1986%2C_2025-%29.svg.png','AMGONE','amgone',3000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','R8','r820',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','rs6','rs6+',3000000,80,1,'staff',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','RSQ8M','RSQ8M',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','audiq523','audiq523',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','RS3','rs322',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','RS6 C8','rs6c8',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','RS7','rs721',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Audi','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Audi-Logo_2016.svg/1920px-Audi-Logo_2016.svg.png','RS6 Avant20','rs6avant20',300000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','Redeye','redeye',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Rolls Royce','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Rolls_royce_motorcars_logo.svg/1920px-Rolls_royce_motorcars_logo.svg.png','Coastline','Coastline',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Rolls Royce','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Rolls_royce_motorcars_logo.svg/1920px-Rolls_royce_motorcars_logo.svg.png','Dawn','dawn',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Buggati','https://upload.wikimedia.org/wikipedia/commons/a/a9/Bugatti_Logo.png','La Voiture Noir','buggy',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'Buggati','https://upload.wikimedia.org/wikipedia/commons/a/a9/Bugatti_Logo.png','Chiron','chg',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Buggati','https://upload.wikimedia.org/wikipedia/commons/a/a9/Bugatti_Logo.png','Veyron','supersport',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Maserati','https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Maserati_logo_2.svg/1920px-Maserati_logo_2.svg.png','mlmansory','mlmansory',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Kawasaki','https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Kawasaki-logo.svg/3840px-Kawasaki-logo.svg.png','Ninja H2R','nh2r',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Ford','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Ford_logo_flat.svg/1920px-Ford_logo_flat.svg.png','mustangspec5','mustangspec5',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Ford','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Ford_logo_flat.svg/1920px-Ford_logo_flat.svg.png','velociraptor','velociraptor',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Nissan','https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Nissan_2020_logo.svg/960px-Nissan_2020_logo.svg.png','GTR R35 Nismo','nismo20',13000000,80,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Gta V','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/250px-Rockstar_Games_Logo.svg.png','vpdeitym','vpdeitym',1000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Gta V','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/250px-Rockstar_Games_Logo.svg.png','police','police',170000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Gta V','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/250px-Rockstar_Games_Logo.svg.png','police2','police2',300000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Chevrolet','https://upload.wikimedia.org/wikipedia/en/thumb/b/bd/Chevrolet_%28logo%29.svg/1920px-Chevrolet_%28logo%29.svg.png','21ltz','21ltz',500000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Chevrolet','https://upload.wikimedia.org/wikipedia/en/thumb/b/bd/Chevrolet_%28logo%29.svg/1920px-Chevrolet_%28logo%29.svg.png','23tahoesjpd','23tahoesjpd',500000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'McLaren','https://upload.wikimedia.org/wikipedia/commons/2/20/McLaren_Racing_logo.png','GL_720sWB','GL_720sWB',14000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Bmw','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/3840px-BMW_logo_%28gray%29.svg.png','GL_330iwb','GL_330iwb',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Bmw','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/3840px-BMW_logo_%28gray%29.svg.png','GL_m2','GL_m2',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Bmw','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/3840px-BMW_logo_%28gray%29.svg.png','GL_M3Adro','GL_M3Adro',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','aspdbenton','aspdbenton',13000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','aspa46','aspa46',13000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','asp21dur','asp21dur',13000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','asp18dur','asp18dur',13000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','GL_ChgrRealistic','GL_ChgrRealistic',13000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,'Ford','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Ford_logo_flat.svg/1920px-Ford_logo_flat.svg.png','asp16fpiu','asp16fpiu',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,'Ford','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Ford_logo_flat.svg/1920px-Ford_logo_flat.svg.png','16fpiusjpd','16fpiusjpd',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,'Lamborghini','https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1280px-Lamborghini_Logo.svg.png','Mansory Urus','gl_mansoryurus',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,'Buggati','https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/2022_Bugatti_wordmark.svg/1920px-2022_Bugatti_wordmark.svg.png','GL_Chiron','GL_Chiron',8000000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,'Gta V','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/250px-Rockstar_Games_Logo.svg.png','Volatus','volatus',30000000,80,1,'helicopter',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,'Gta V','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Rockstar_Games_Logo.svg/250px-Rockstar_Games_Logo.svg.png','Ambulance','ambulance',100000,80,1,'ems',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,'Dodge','https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Dodge_black_logo.svg/1920px-Dodge_black_logo.svg.png','Charger','nFORCE18CHRG',500000,80,1,'police',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_robbery`
--

DROP TABLE IF EXISTS `home_robbery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_robbery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `coords` longtext NOT NULL,
  `heading` float NOT NULL DEFAULT 0,
  `shellIndex` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_robbery`
--

LOCK TABLES `home_robbery` WRITE;
/*!40000 ALTER TABLE `home_robbery` DISABLE KEYS */;
INSERT INTO `home_robbery` VALUES (1,'ev 1','{\"y\":-729.5867919921875,\"z\":57.806640625,\"x\":996.8043823242188}',130.394,1),(2,'ev 2','{\"z\":58.2109375,\"y\":-716.2153930664063,\"x\":979.2131958007813}',136.063,1),(4,'ev 3','{\"z\":58.4805908203125,\"y\":-701.4329833984375,\"x\":970.8131713867188}',158.74,1),(5,'ev 4','{\"z\":58.4468994140625,\"y\":-669.9033203125,\"x\":959.9736328125}',121.89,1),(6,'ev 5','{\"z\":58.6153564453125,\"y\":-653.3538208007813,\"x\":943.1736450195313}',36.8504,1),(7,'ev 6','{\"z\":58.227783203125,\"y\":-639.7186889648438,\"x\":928.8263549804688}',130.394,1),(8,'ev 7','{\"z\":58.4468994140625,\"y\":-615.5472412109375,\"x\":903.032958984375}',53.8583,1),(9,'ev 8','{\"z\":58.4300537109375,\"y\":-608.3076782226563,\"x\":886.997802734375}',144.567,1),(10,'ev 9','{\"z\":58.1435546875,\"y\":-583.5692138671875,\"x\":861.89013671875}',189.921,1),(11,'ev 10','{\"z\":57.991943359375,\"y\":-562.6813354492188,\"x\":843.876953125}',14.1732,1),(12,'ev 11','{\"z\":57.924560546875,\"y\":-532.6945190429688,\"x\":850.2593383789063}',85.0394,1),(13,'ev 12','{\"z\":57.7054443359375,\"y\":-509.1033020019531,\"x\":861.4549560546875}',48.189,1),(14,'ev 13','{\"z\":58.076171875,\"y\":-498.01318359375,\"x\":878.3208618164063}',39.685,1),(15,'ev 14','{\"z\":59.4241943359375,\"y\":-489.4153747558594,\"x\":906.4219970703125}',22.6772,1),(16,'ev 15','{\"z\":61.075439453125,\"y\":-477.75823974609377,\"x\":921.9560546875}',22.6772,1),(17,'ev 16','{\"z\":61.5472412109375,\"y\":-462.975830078125,\"x\":944.2944946289063}',314.646,1),(18,'ev 17','{\"z\":62.77734375,\"y\":-451.6483459472656,\"x\":967.3714599609375}',31.1811,1),(19,'ev 18','{\"z\":64.041015625,\"y\":-433.081298828125,\"x\":987.3626098632813}',31.1811,1),(20,'ev 19','{\"z\":65.3385009765625,\"y\":-423.3890075683594,\"x\":1010.3604736328125}',133.228,1),(21,'ev 20','{\"z\":66.3326416015625,\"y\":-408.4879150390625,\"x\":1028.6241455078126}',36.8504,1),(22,'ev 21','{\"z\":68.2197265625,\"y\":-378.1054992675781,\"x\":1060.6285400390626}',45.3543,1),(23,'ev 22','{\"z\":68.9443359375,\"y\":-391.26593017578127,\"x\":1114.15380859375}',255.118,1),(24,'ev 23','{\"z\":67.5457763671875,\"y\":-411.3494567871094,\"x\":1100.769287109375}',269.291,1),(25,'ev 24','{\"z\":67.78173828125,\"y\":-438.6593322753906,\"x\":1099.5560302734376}',172.913,1),(26,'ev 25','{\"z\":67.3099365234375,\"y\":-464.4791259765625,\"x\":1098.4879150390626}',323.15,1),(27,'ev 26','{\"z\":65.6585693359375,\"y\":-484.1802062988281,\"x\":1090.4703369140626}',257.953,1),(28,'ev 27','{\"z\":66.248291015625,\"y\":-448.8923034667969,\"x\":1056.052734375}',158.74,1),(29,'ev 28','{\"z\":64.2938232421875,\"y\":-470.4791259765625,\"x\":1051.054931640625}',93.5433,1),(30,'ev 29','{\"z\":64.2769775390625,\"y\":-498.1186828613281,\"x\":1046.13623046875}',155.906,1),(31,'ev 30','{\"z\":60.9912109375,\"y\":-510.8703308105469,\"x\":1006.4044189453125}',311.811,1),(32,'ev 31','{\"z\":60.6878662109375,\"y\":-525.6395874023438,\"x\":988.04833984375}',25.5118,1),(33,'ev 32','{\"z\":59.7105712890625,\"y\":-541.97802734375,\"x\":965.1824340820313}',34.0157,1),(34,'ev 33','{\"z\":58.3626708984375,\"y\":-569.5911865234375,\"x\":919.8197631835938}',28.3465,1),(35,'ev 34','{\"z\":58.4974365234375,\"y\":-540.8175659179688,\"x\":893.2483520507813}',286.299,1),(36,'ev 35','{\"z\":59.778076171875,\"y\":-525.982421875,\"x\":924.5274658203125}',212.598,1),(37,'ev 36','{\"z\":60.772216796875,\"y\":-519.1516723632813,\"x\":945.8505249023438}',76.5354,1),(38,'ev 37','{\"z\":62.136962890625,\"y\":-502.4043884277344,\"x\":969.5867919921875}',260.787,1),(39,'ev 38','{\"z\":64.4959716796875,\"y\":-469.3582458496094,\"x\":1014.06591796875}',272.126,1),(40,'ev 39','{\"z\":69.6182861328125,\"y\":-557.6703491210938,\"x\":1204.892333984375}',289.134,1),(41,'ev 40','{\"z\":69.129638671875,\"y\":-575.7626342773438,\"x\":1200.6988525390626}',325.984,1),(42,'ev 41','{\"z\":68.05126953125,\"y\":-598.5362548828125,\"x\":1203.6131591796876}',0,1),(43,'ev 42','{\"z\":66.4000244140625,\"y\":-620.3735961914063,\"x\":1207.3978271484376}',246.614,1),(44,'ev 43','{\"z\":63.5018310546875,\"y\":-669.2571411132813,\"x\":1221.4417724609376}',198.425,1),(45,'ev 44','{\"z\":61.09228515625,\"y\":-689.4725341796875,\"x\":1220.756103515625}',198.425,1),(46,'ev 45','{\"z\":60.940673828125,\"y\":-725.3406372070313,\"x\":1229.5780029296876}',277.795,1),(47,'ev 46','{\"z\":64.900390625,\"y\":-702.7648315429688,\"x\":1264.800048828125}',62.3622,1),(48,'ev 47','{\"z\":66.029296875,\"y\":-683.5384521484375,\"x\":1270.905517578125}',187.087,1),(49,'ev 48','{\"z\":68.11865234375,\"y\":-648.6461181640625,\"x\":1265.6439208984376}',204.094,1),(50,'ev 49','{\"z\":69.5677490234375,\"y\":-620.8483276367188,\"x\":1251.085693359375}',31.1811,1),(51,'ev 50','{\"z\":69.77001953125,\"y\":-601.89892578125,\"x\":1240.6021728515626}',90.7087,1),(52,'ev 51','{\"z\":69.6519775390625,\"y\":-566.4395751953125,\"x\":1241.4725341796876}',141.732,1),(53,'ev 52','{\"z\":69.3487548828125,\"y\":-515.7098999023438,\"x\":1250.835205078125}',82.2047,1),(54,'ev 53','{\"z\":69.90478515625,\"y\":-494.32086181640627,\"x\":1251.4813232421876}',76.5354,1),(55,'ev 54','{\"z\":70.17431640625,\"y\":-480.1714172363281,\"x\":1259.5780029296876}',124.724,1),(56,'ev 55','{\"z\":70.5113525390625,\"y\":-458.1494445800781,\"x\":1265.7362060546876}',96.3779,1),(57,'ev 56','{\"z\":70.005859375,\"y\":-429.9560546875,\"x\":1262.3736572265626}',113.386,1),(58,'ev 57','{\"z\":71.4549560546875,\"y\":-527.3802490234375,\"x\":1302.989013671875}',342.992,1),(59,'ev 58','{\"z\":72.4322509765625,\"y\":-535.6219482421875,\"x\":1328.795654296875}',158.74,1),(60,'ev 59','{\"z\":73.88134765625,\"y\":-546.8307495117188,\"x\":1348.4307861328126}',337.323,1),(61,'ev 60','{\"z\":74.6732177734375,\"y\":-555.7714233398438,\"x\":1373.2484130859376}',260.787,1),(62,'ev 61','{\"z\":74.4879150390625,\"y\":-569.3538208007813,\"x\":1388.927490234375}',300.472,1),(63,'ev 62','{\"z\":74.4710693359375,\"y\":-593.4593505859375,\"x\":1386.2373046875}',232.441,1),(64,'ev 63','{\"z\":74.7069091796875,\"y\":-606.6065673828125,\"x\":1367.195556640625}',274.961,1),(65,'ev 64','{\"z\":74.6900634765625,\"y\":-597.2571411132813,\"x\":1341.3363037109376}',62.3622,1),(66,'ev 65','{\"z\":73.240966796875,\"y\":-583.1604614257813,\"x\":1323.3758544921876}',161.575,1),(67,'ev 66','{\"z\":71.7244873046875,\"y\":-574.2461547851563,\"x\":1301.076904296875}',164.409,1);
/*!40000 ALTER TABLE `home_robbery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meth_state`
--

DROP TABLE IF EXISTS `meth_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meth_state` (
  `steam_hex` varchar(60) NOT NULL,
  `karavan_durum` tinyint(4) NOT NULL DEFAULT 0,
  `malzeme_miktar` tinyint(4) NOT NULL DEFAULT 0,
  `meth_miktar` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`steam_hex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meth_state`
--

LOCK TABLES `meth_state` WRITE;
/*!40000 ALTER TABLE `meth_state` DISABLE KEYS */;
INSERT INTO `meth_state` VALUES ('steam:11000014782e184',1,5,0),('steam:11000014a8245e2',1,4,18);
/*!40000 ALTER TABLE `meth_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiye_spawn`
--

DROP TABLE IF EXISTS `modifiye_spawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modifiye_spawn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_identifier` varchar(64) NOT NULL,
  `player_name` varchar(64) NOT NULL,
  `owner_name` varchar(255) NOT NULL DEFAULT '',
  `vehicle_model` varchar(64) NOT NULL,
  `vehicle_plate` varchar(20) NOT NULL DEFAULT '',
  `mods` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `plate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_vehicle` (`owner_identifier`,`vehicle_model`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiye_spawn`
--

LOCK TABLES `modifiye_spawn` WRITE;
/*!40000 ALTER TABLE `modifiye_spawn` DISABLE KEYS */;
INSERT INTO `modifiye_spawn` VALUES (137,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','AVENTSVJR','MELEGIM','{\"primary\":30,\"wheel\":39,\"secondary\":134,\"xenonStock\":true,\"mods\":{\"39\":-1,\"29\":-1,\"37\":-1,\"27\":-1,\"45\":-1,\"35\":-1,\"43\":-1,\"33\":-1,\"23\":-1,\"41\":-1,\"25\":-1,\"15\":3,\"28\":-1,\"38\":-1,\"1\":-1,\"0\":-1,\"3\":-1,\"2\":-1,\"5\":-1,\"4\":-1,\"13\":2,\"40\":-1,\"30\":-1,\"16\":4,\"36\":-1,\"26\":-1,\"34\":-1,\"10\":-1,\"32\":-1,\"42\":-1,\"12\":2,\"46\":-1,\"14\":-1,\"24\":-1,\"7\":-1,\"6\":-1,\"9\":-1,\"8\":-1,\"48\":-1,\"11\":3,\"31\":-1,\"44\":-1},\"wheels\":{\"currentType\":7,\"current\":-1,\"rearCurrent\":-1},\"windowTint\":1,\"pearl\":27,\"headlights\":1,\"xenonColorIndex\":255,\"livery\":{\"type\":\"mod\",\"current\":-1,\"count\":0},\"turbo\":1}','2026-04-30 19:12:38','2026-05-12 15:55:32',''),(138,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','jesko','TAVSANIM','{\"headlights\":false,\"pearl\":54,\"turbo\":1,\"wheels\":{\"rearCurrent\":-1,\"currentType\":7,\"current\":-1},\"wheel\":156,\"mods\":{\"11\":3,\"41\":-1,\"31\":-1,\"1\":-1,\"2\":-1,\"0\":-1,\"16\":4,\"26\":-1,\"14\":-1,\"24\":-1,\"28\":-1,\"38\":-1,\"48\":-1,\"34\":-1,\"44\":-1,\"36\":-1,\"46\":-1,\"12\":2,\"10\":-1,\"42\":-1,\"30\":-1,\"40\":-1,\"32\":-1,\"9\":-1,\"6\":-1,\"27\":-1,\"25\":-1,\"15\":3,\"23\":-1,\"8\":-1,\"5\":-1,\"29\":-1,\"3\":-1,\"4\":-1,\"37\":-1,\"39\":-1,\"7\":-1,\"13\":2,\"43\":-1,\"33\":-1,\"45\":-1,\"35\":-1},\"primary\":66,\"livery\":{\"count\":15,\"current\":13,\"type\":\"old\"},\"xenonColor\":{\"r\":255,\"g\":255,\"b\":255},\"windowTint\":-1,\"secondary\":0}','2026-05-09 17:26:39','2026-05-17 13:20:45',''),(140,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','sf90an','AZRA','{\"primary\":0,\"secondary\":8,\"headlights\":1,\"wheel\":0,\"xenonStock\":true,\"turbo\":1,\"windowTint\":1,\"xenonColorIndex\":255,\"mods\":{\"27\":-1,\"29\":-1,\"25\":-1,\"15\":3,\"33\":-1,\"23\":-1,\"13\":2,\"41\":-1,\"43\":-1,\"45\":-1,\"35\":-1,\"37\":-1,\"26\":-1,\"11\":3,\"16\":4,\"31\":-1,\"14\":-1,\"39\":-1,\"10\":-1,\"30\":-1,\"3\":-1,\"2\":-1,\"9\":-1,\"0\":-1,\"4\":-1,\"6\":-1,\"28\":-1,\"38\":-1,\"48\":-1,\"24\":-1,\"7\":-1,\"32\":-1,\"5\":-1,\"12\":2,\"40\":-1,\"1\":-1,\"42\":-1,\"8\":-1,\"34\":-1,\"44\":-1,\"36\":-1,\"46\":-1},\"wheels\":{\"currentType\":8,\"rearCurrent\":-1,\"current\":-1},\"pearl\":51,\"livery\":{\"count\":1,\"type\":\"old\",\"current\":0}}','2026-05-12 12:40:24','2026-05-12 16:46:18',''),(141,'steam:11000014a8245e2','','Zerqᴳˢ','sf90an','azra','{\"primary\":0,\"wheel\":0,\"secondary\":8,\"xenonStock\":true,\"mods\":{\"39\":-1,\"29\":-1,\"37\":-1,\"27\":-1,\"45\":-1,\"35\":-1,\"43\":-1,\"33\":-1,\"23\":-1,\"41\":-1,\"25\":-1,\"15\":3,\"28\":-1,\"38\":-1,\"1\":-1,\"0\":-1,\"3\":-1,\"2\":-1,\"5\":-1,\"4\":-1,\"26\":-1,\"11\":3,\"31\":-1,\"16\":4,\"48\":-1,\"13\":2,\"34\":-1,\"10\":-1,\"32\":-1,\"42\":-1,\"40\":-1,\"36\":-1,\"14\":-1,\"24\":-1,\"7\":-1,\"6\":-1,\"9\":-1,\"8\":-1,\"46\":-1,\"44\":-1,\"12\":2,\"30\":-1},\"headlights\":1,\"windowTint\":1,\"wheels\":{\"currentType\":8,\"current\":-1,\"rearCurrent\":-1},\"xenonColorIndex\":255,\"pearl\":51,\"livery\":{\"type\":\"old\",\"current\":0,\"count\":1},\"turbo\":1}','2026-05-12 12:40:24','2026-05-12 16:46:18',''),(142,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','INFERNUS','01PLZ264','{\"pearl\":29,\"secondary\":29,\"primary\":48,\"wheels\":{\"currentType\":7,\"current\":-1,\"rearCurrent\":-1},\"headlights\":1,\"windowTint\":1,\"xenonStock\":true,\"turbo\":1,\"wheel\":139,\"mods\":{\"41\":-1,\"31\":-1,\"45\":-1,\"35\":-1,\"25\":-1,\"15\":3,\"9\":-1,\"8\":-1,\"7\":-1,\"6\":-1,\"11\":3,\"1\":-1,\"0\":-1,\"5\":-1,\"4\":-1,\"3\":-1,\"2\":-1,\"46\":-1,\"48\":-1,\"40\":-1,\"24\":-1,\"30\":-1,\"12\":2,\"44\":-1,\"32\":-1,\"42\":-1,\"34\":-1,\"33\":-1,\"23\":-1,\"16\":4,\"13\":2,\"10\":-1,\"43\":-1,\"14\":-1,\"27\":-1,\"37\":-1,\"29\":-1,\"39\":-1,\"28\":-1,\"38\":-1,\"26\":-1,\"36\":-1},\"xenonColorIndex\":255,\"livery\":{\"current\":-1,\"type\":\"mod\",\"count\":0}}','2026-05-13 12:00:21','2026-05-13 12:00:21',''),(143,'steam:11000014a8245e2','','Zerqᴳˢ','infernus','01plz264','{\"pearl\":29,\"secondary\":29,\"xenonColorIndex\":255,\"headlights\":1,\"wheels\":{\"current\":-1,\"rearCurrent\":-1,\"currentType\":7},\"xenonStock\":true,\"livery\":{\"current\":-1,\"type\":\"mod\",\"count\":0},\"wheel\":139,\"turbo\":1,\"windowTint\":1,\"mods\":{\"38\":-1,\"46\":-1,\"36\":-1,\"48\":-1,\"42\":-1,\"32\":-1,\"44\":-1,\"12\":2,\"10\":-1,\"30\":-1,\"16\":4,\"9\":-1,\"6\":-1,\"5\":-1,\"8\":-1,\"7\":-1,\"2\":-1,\"1\":-1,\"4\":-1,\"3\":-1,\"0\":-1,\"39\":-1,\"45\":-1,\"37\":-1,\"25\":-1,\"35\":-1,\"31\":-1,\"41\":-1,\"33\":-1,\"43\":-1,\"24\":-1,\"15\":3,\"34\":-1,\"26\":-1,\"28\":-1,\"29\":-1,\"14\":-1,\"23\":-1,\"11\":3,\"13\":2,\"27\":-1,\"40\":-1},\"primary\":48}','2026-05-13 12:00:21','2026-05-13 12:00:21',''),(144,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','SIAN','NQZRJ64P','{\"mods\":{\"45\":-1,\"35\":-1,\"39\":-1,\"29\":-1,\"27\":-1,\"25\":-1,\"15\":-1,\"13\":-1,\"11\":-1,\"31\":-1,\"43\":-1,\"33\":-1,\"41\":-1,\"9\":-1,\"7\":-1,\"8\":-1,\"5\":-1,\"6\":-1,\"3\":-1,\"4\":-1,\"1\":-1,\"2\":-1,\"24\":-1,\"0\":-1,\"23\":-1,\"37\":-1,\"36\":-1,\"46\":-1,\"38\":-1,\"48\":-1,\"40\":-1,\"28\":-1,\"16\":-1,\"26\":-1,\"30\":-1,\"14\":-1,\"10\":-1,\"12\":-1,\"44\":-1,\"32\":-1,\"42\":-1,\"34\":-1},\"turbo\":false,\"secondary\":112,\"headlights\":false,\"xenonColor\":{\"g\":255,\"b\":255,\"r\":255},\"wheel\":27,\"wheels\":{\"currentType\":7,\"rearCurrent\":-1,\"current\":-1},\"livery\":{\"count\":0,\"current\":-1,\"type\":\"mod\"},\"windowTint\":-1,\"primary\":34,\"pearl\":30}','2026-05-17 13:19:03','2026-05-17 13:19:03',''),(145,'steam:11000014a8245e2','','Zerqᴳˢ','sian','nqzrj64p','{\"headlights\":false,\"pearl\":30,\"turbo\":false,\"wheels\":{\"rearCurrent\":-1,\"currentType\":7,\"current\":-1},\"wheel\":27,\"mods\":{\"11\":-1,\"41\":-1,\"31\":-1,\"1\":-1,\"2\":-1,\"0\":-1,\"16\":-1,\"26\":-1,\"14\":-1,\"24\":-1,\"28\":-1,\"38\":-1,\"48\":-1,\"34\":-1,\"44\":-1,\"36\":-1,\"46\":-1,\"12\":-1,\"10\":-1,\"42\":-1,\"30\":-1,\"40\":-1,\"32\":-1,\"9\":-1,\"6\":-1,\"27\":-1,\"25\":-1,\"15\":-1,\"23\":-1,\"8\":-1,\"5\":-1,\"29\":-1,\"3\":-1,\"4\":-1,\"37\":-1,\"39\":-1,\"7\":-1,\"13\":-1,\"43\":-1,\"33\":-1,\"45\":-1,\"35\":-1},\"primary\":34,\"livery\":{\"count\":0,\"current\":-1,\"type\":\"mod\"},\"xenonColor\":{\"r\":255,\"g\":255,\"b\":255},\"windowTint\":-1,\"secondary\":112}','2026-05-17 13:19:03','2026-05-17 13:19:03',''),(146,'license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı','CağKebabcısı','SIAN','NQZRJ64P','{\"pearl\":30,\"secondary\":112,\"wheels\":{\"currentType\":7,\"rearCurrent\":-1,\"current\":-1},\"livery\":{\"count\":0,\"current\":-1,\"type\":\"mod\"},\"xenonColor\":{\"b\":255,\"g\":255,\"r\":255},\"mods\":{\"25\":-1,\"15\":-1,\"23\":-1,\"13\":-1,\"31\":-1,\"11\":-1,\"1\":-1,\"0\":-1,\"40\":-1,\"32\":-1,\"42\":-1,\"34\":-1,\"44\":-1,\"16\":-1,\"26\":-1,\"36\":-1,\"46\":-1,\"38\":-1,\"9\":-1,\"8\":-1,\"12\":-1,\"6\":-1,\"14\":-1,\"30\":-1,\"48\":-1,\"10\":-1,\"28\":-1,\"24\":-1,\"7\":-1,\"41\":-1,\"43\":-1,\"33\":-1,\"45\":-1,\"35\":-1,\"5\":-1,\"4\":-1,\"3\":-1,\"2\":-1,\"37\":-1,\"27\":-1,\"39\":-1,\"29\":-1},\"primary\":34,\"headlights\":false,\"turbo\":false,\"wheel\":27,\"windowTint\":-1}','2026-05-17 13:19:06','2026-05-17 13:19:55',''),(147,'steam:11000010aa7aa4e','','CağKebabcısı','sian','nqzrj64p','{\"headlights\":false,\"pearl\":30,\"mods\":{\"11\":-1,\"41\":-1,\"31\":-1,\"1\":-1,\"2\":-1,\"0\":-1,\"16\":-1,\"26\":-1,\"14\":-1,\"24\":-1,\"28\":-1,\"38\":-1,\"48\":-1,\"34\":-1,\"44\":-1,\"36\":-1,\"46\":-1,\"12\":-1,\"10\":-1,\"42\":-1,\"30\":-1,\"40\":-1,\"32\":-1,\"13\":-1,\"25\":-1,\"23\":-1,\"9\":-1,\"15\":-1,\"7\":-1,\"8\":-1,\"39\":-1,\"6\":-1,\"37\":-1,\"4\":-1,\"3\":-1,\"29\":-1,\"27\":-1,\"5\":-1,\"43\":-1,\"33\":-1,\"45\":-1,\"35\":-1},\"wheels\":{\"rearCurrent\":-1,\"currentType\":7,\"current\":-1},\"turbo\":false,\"livery\":{\"count\":0,\"current\":-1,\"type\":\"mod\"},\"primary\":34,\"wheel\":27,\"xenonColor\":{\"r\":255,\"g\":255,\"b\":255},\"windowTint\":-1,\"secondary\":112}','2026-05-17 13:19:06','2026-05-17 13:19:55',''),(148,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','C8','MLG9N2LO','{\"primary\":42,\"windowTint\":1,\"turbo\":1,\"xenonColorIndex\":255,\"livery\":{\"count\":0,\"type\":\"mod\",\"current\":-1},\"pearl\":0,\"secondary\":0,\"mods\":{\"14\":-1,\"16\":-1,\"12\":-1,\"36\":-1,\"32\":-1,\"44\":-1,\"34\":-1,\"24\":-1,\"4\":-1,\"5\":-1,\"2\":-1,\"3\":-1,\"8\":-1,\"9\":-1,\"6\":-1,\"7\":-1,\"0\":-1,\"1\":-1,\"10\":-1,\"39\":-1,\"15\":-1,\"37\":-1,\"13\":-1,\"45\":-1,\"33\":-1,\"43\":-1,\"35\":-1,\"30\":-1,\"38\":-1,\"29\":-1,\"40\":-1,\"27\":-1,\"41\":-1,\"42\":-1,\"11\":-1,\"26\":-1,\"28\":-1,\"31\":-1,\"25\":-1,\"23\":-1,\"48\":-1,\"46\":-1},\"headlights\":1,\"xenonStock\":true,\"wheels\":{\"rearCurrent\":-1,\"currentType\":7,\"current\":-1},\"wheel\":0}','2026-05-20 14:56:42','2026-05-20 14:57:09',''),(149,'steam:11000014a8245e2','','Zerqᴳˢ','c8','mlg9n2lo','{\"wheel\":0,\"primary\":42,\"livery\":{\"type\":\"mod\",\"current\":-1,\"count\":0},\"pearl\":0,\"secondary\":0,\"windowTint\":1,\"turbo\":1,\"mods\":{\"16\":-1,\"44\":-1,\"14\":-1,\"46\":-1,\"40\":-1,\"32\":-1,\"42\":-1,\"30\":-1,\"28\":-1,\"38\":-1,\"48\":-1,\"37\":-1,\"10\":-1,\"26\":-1,\"12\":-1,\"27\":-1,\"41\":-1,\"2\":-1,\"45\":-1,\"0\":-1,\"25\":-1,\"15\":-1,\"33\":-1,\"23\":-1,\"7\":-1,\"43\":-1,\"9\":-1,\"8\":-1,\"34\":-1,\"3\":-1,\"39\":-1,\"29\":-1,\"13\":-1,\"11\":-1,\"31\":-1,\"35\":-1,\"6\":-1,\"4\":-1,\"5\":-1,\"24\":-1,\"36\":-1,\"1\":-1},\"wheels\":{\"rearCurrent\":-1,\"current\":-1,\"currentType\":7},\"xenonStock\":true,\"headlights\":1,\"xenonColorIndex\":255}','2026-05-20 14:56:42','2026-05-20 14:57:09',''),(150,'license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ','Zerqᴳˢ','nFORCE18CHR','06ICD599','{\"windowTint\":-1,\"wheels\":{\"rearCurrent\":-1,\"current\":-1,\"currentType\":0},\"turbo\":false,\"primary\":0,\"livery\":{\"current\":0,\"count\":2,\"type\":\"old\"},\"secondary\":0,\"xenonColor\":{\"g\":255,\"b\":255,\"r\":255},\"headlights\":false,\"pearl\":0,\"mods\":{\"7\":-1,\"8\":-1,\"9\":0,\"3\":-1,\"4\":-1,\"5\":0,\"6\":0,\"45\":-1,\"27\":-1,\"39\":-1,\"41\":-1,\"23\":-1,\"13\":-1,\"25\":-1,\"15\":-1,\"11\":-1,\"0\":-1,\"1\":0,\"2\":0,\"28\":-1,\"38\":-1,\"34\":-1,\"44\":-1,\"14\":-1,\"24\":-1,\"48\":-1,\"26\":-1,\"40\":-1,\"32\":-1,\"42\":-1,\"30\":-1,\"10\":-1,\"36\":-1,\"12\":-1,\"46\":-1,\"33\":-1,\"37\":-1,\"31\":-1,\"35\":-1,\"43\":-1,\"29\":-1,\"16\":-1},\"wheel\":0}','2026-05-30 11:21:09','2026-05-30 11:21:09',''),(151,'steam:11000014a8245e2','','Zerqᴳˢ','nforce18chr','06icd599','{\"windowTint\":-1,\"primary\":0,\"secondary\":0,\"wheel\":0,\"headlights\":false,\"turbo\":false,\"xenonColor\":{\"r\":255,\"g\":255,\"b\":255},\"mods\":{\"16\":-1,\"26\":-1,\"44\":-1,\"28\":-1,\"10\":-1,\"30\":-1,\"40\":-1,\"38\":-1,\"48\":-1,\"36\":-1,\"14\":-1,\"25\":-1,\"23\":-1,\"31\":-1,\"43\":-1,\"39\":-1,\"29\":-1,\"32\":-1,\"42\":-1,\"34\":-1,\"12\":-1,\"15\":-1,\"11\":-1,\"37\":-1,\"45\":-1,\"35\":-1,\"9\":0,\"13\":-1,\"24\":-1,\"27\":-1,\"5\":0,\"6\":0,\"7\":-1,\"8\":-1,\"1\":0,\"2\":0,\"3\":-1,\"4\":-1,\"33\":-1,\"41\":-1,\"46\":-1,\"0\":-1},\"wheels\":{\"currentType\":0,\"current\":-1,\"rearCurrent\":-1},\"livery\":{\"count\":2,\"current\":0,\"type\":\"old\"},\"pearl\":0}','2026-05-30 11:21:09','2026-05-30 11:21:09','');
/*!40000 ALTER TABLE `modifiye_spawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owned_vehicles` (
  `owner` varchar(50) DEFAULT NULL,
  `plate` varchar(12) DEFAULT NULL,
  `vehicle` text DEFAULT NULL,
  `stored` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_vehicles`
--

LOCK TABLES `owned_vehicles` WRITE;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` VALUES ('steam:11000014a8245e2','AZRA','{\"model\":\"sf90an\"}',1),('steam:11000014a8245e2','MELEGIM','{\"model\":\"aventsvjr\"}',1),('steam:11000014a8245e2','TAVSANIM','{\"model\":\"Jesko\"}',1),('steam:11000014a8245e2','asdas','{\"model\":\"c8inter\"}',1),('steam:11000014a8245e2','E4R9MG9F','{\"model\":\"bmci\"}',1),('steam:11000014a8245e2','CWTVEF7Z','{\"model\":\"Revuelto\"}',1);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_appearance`
--

DROP TABLE IF EXISTS `player_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_appearance` (
  `identifier` varchar(50) NOT NULL,
  `skin` longtext NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_appearance`
--

LOCK TABLES `player_appearance` WRITE;
/*!40000 ALTER TABLE `player_appearance` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_appearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_hack_devices`
--

DROP TABLE IF EXISTS `player_hack_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_hack_devices` (
  `identifier` varchar(50) NOT NULL,
  `hack_count` int(11) DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_hack_devices`
--

LOCK TABLES `player_hack_devices` WRITE;
/*!40000 ALTER TABLE `player_hack_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_hack_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_inventory`
--

DROP TABLE IF EXISTS `player_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_inventory` (
  `steam_hex` varchar(50) NOT NULL,
  `medkit` int(11) DEFAULT 0,
  `armor` int(11) DEFAULT 0,
  `bandage` int(11) DEFAULT 0,
  `repairkit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`steam_hex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_inventory`
--

LOCK TABLES `player_inventory` WRITE;
/*!40000 ALTER TABLE `player_inventory` DISABLE KEYS */;
INSERT INTO `player_inventory` VALUES ('steam:11000010aa7aa4e',0,0,0,0),('steam:11000014782e184',2,0,0,0),('steam:11000014a8245e2',2,1,10,5);
/*!40000 ALTER TABLE `player_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_money`
--

DROP TABLE IF EXISTS `player_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_money` (
  `steam_hex` varchar(50) DEFAULT NULL,
  `cash` bigint(20) DEFAULT NULL,
  `bank` bigint(20) DEFAULT NULL,
  `bank_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_money`
--

LOCK TABLES `player_money` WRITE;
/*!40000 ALTER TABLE `player_money` DISABLE KEYS */;
INSERT INTO `player_money` VALUES ('steam:11000014a8245e2',219441499,26700000,783028),('steam:11000010aa7aa4e',267000000,205400000,203578),('steam:11000014782e184',219451499,267000000,849509);
/*!40000 ALTER TABLE `player_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_positions`
--

DROP TABLE IF EXISTS `player_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_positions` (
  `identifier` varchar(50) NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_positions`
--

LOCK TABLES `player_positions` WRITE;
/*!40000 ALTER TABLE `player_positions` DISABLE KEYS */;
INSERT INTO `player_positions` VALUES ('license:3110ec0bc1cefb58665e9df31d6fa093856d1dc9','{\"heading\":195.84536743164063,\"x\":1372.0806884765626,\"y\":3598.536865234375,\"z\":34.37739562988281}'),('license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','{\"y\":-1097.1873779296876,\"z\":26.42239952087402,\"heading\":168.169677734375,\"x\":-56.85922241210937}'),('license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','{\"z\":26.42237091064453,\"heading\":31.7672119140625,\"x\":-60.18705368041992,\"y\":-1096.738525390625}'),('steam:11000010aa7aa4e','{\"y\":-1094.927490234375,\"z\":26.4322509765625,\"heading\":291.968505859375,\"x\":-54.11867523193359}'),('steam:11000014782e184','{\"y\":3598.536376953125,\"z\":34.3685302734375,\"heading\":198.42520141601563,\"x\":1372.07470703125}'),('steam:11000014a8245e2','{\"x\":-44.00439453125,\"y\":-1097.010986328125,\"z\":27.797119140625,\"heading\":87.87401580810547}');
/*!40000 ALTER TABLE `player_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_shop`
--

DROP TABLE IF EXISTS `police_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL COMMENT 'Oyuncu identifier (steam/license)',
  `plate` varchar(8) NOT NULL COMMENT 'Araç plakası',
  `vehicle` longtext NOT NULL COMMENT 'Araç özellikleri (JSON: {model: "model_adi"})',
  `stored` tinyint(1) DEFAULT 1 COMMENT 'Araç garajda mı? (1: evet, 0: hayır)',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Oluşturulma tarihi',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_shop`
--

LOCK TABLES `police_shop` WRITE;
/*!40000 ALTER TABLE `police_shop` DISABLE KEYS */;
INSERT INTO `police_shop` VALUES (34,'steam:11000014a8245e2','MELEğIM','{\"model\":\"GL_M3Adro\"}',1,'2026-04-28 16:29:05'),(35,'steam:11000014a8245e2','MFINDT68','{\"model\":\"police2\"}',1,'2026-04-28 17:31:47'),(36,'steam:11000010aa7aa4e','65N0TJPA','{\"model\":\"GL_M3Adro\"}',1,'2026-05-09 13:33:13'),(37,'steam:11000010aa7aa4e','R83EO85T','{\"model\":\"GL_330iwb\"}',1,'2026-05-09 13:33:19');
/*!40000 ALTER TABLE `police_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_test`
--

DROP TABLE IF EXISTS `police_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_test` (
  `identifier` varchar(64) NOT NULL,
  `passed` tinyint(1) DEFAULT 0,
  `last_failed_at` datetime DEFAULT NULL,
  `passed2` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_test`
--

LOCK TABLES `police_test` WRITE;
/*!40000 ALTER TABLE `police_test` DISABLE KEYS */;
INSERT INTO `police_test` VALUES ('steam:11000010aa7aa4e',1,NULL,1),('steam:11000014782e184',1,NULL,1),('steam:11000014a8245e2',1,NULL,1);
/*!40000 ALTER TABLE `police_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_weaponshop`
--

DROP TABLE IF EXISTS `police_weaponshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_weaponshop` (
  `identifier` varchar(64) NOT NULL,
  `steam_name` varchar(255) DEFAULT NULL,
  `weapon` varchar(64) NOT NULL,
  `components` longtext DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `purchased_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identifier`,`weapon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_weaponshop`
--

LOCK TABLES `police_weaponshop` WRITE;
/*!40000 ALTER TABLE `police_weaponshop` DISABLE KEYS */;
INSERT INTO `police_weaponshop` VALUES ('steam:11000014782e184','Ballas X Soyhan','WEAPON_ADVANCEDRIFLE','[]',NULL,10000000,'2026-05-25 17:52:06'),('steam:11000014782e184','Ballas X Soyhan','WEAPON_COMBATPISTOL','[]',NULL,300000,'2026-05-25 17:52:03'),('steam:11000014782e184','Ballas X Soyhan','WEAPON_HEAVYSNIPER','[]',NULL,30000000,'2026-05-25 17:52:09'),('steam:11000014782e184','Ballas X Soyhan','WEAPON_PUMPSHOTGUN','[]',NULL,7000000,'2026-05-25 17:42:47'),('steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_ADVANCEDRIFLE','[\"COMPONENT_ADVANCEDRIFLE_CLIP_02\"]',NULL,10500000,'2026-04-28 16:27:03'),('steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_PUMPSHOTGUN','[]',NULL,7000000,'2026-04-28 16:27:17'),('steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_SMG','[\"COMPONENT_SMG_CLIP_03\",\"COMPONENT_AT_AR_FLSH\",\"COMPONENT_AT_SCOPE_MACRO_02\"]',NULL,97100,'2026-04-29 19:01:44');
/*!40000 ALTER TABLE `police_weaponshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvp_inventory`
--

DROP TABLE IF EXISTS `pvp_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_inventory` (
  `identifier` varchar(128) NOT NULL,
  `data` longtext DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvp_inventory`
--

LOCK TABLES `pvp_inventory` WRITE;
/*!40000 ALTER TABLE `pvp_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvp_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvp_money`
--

DROP TABLE IF EXISTS `pvp_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_money` (
  `identifier` varchar(128) NOT NULL,
  `money` int(11) DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvp_money`
--

LOCK TABLES `pvp_money` WRITE;
/*!40000 ALTER TABLE `pvp_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvp_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvp_weaponshop`
--

DROP TABLE IF EXISTS `pvp_weaponshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_weaponshop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(128) NOT NULL,
  `steam_name` varchar(128) DEFAULT NULL,
  `weapon` varchar(128) NOT NULL,
  `components` longtext DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `purchased_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_weapon` (`identifier`,`weapon`,`components`(255),`skin`(255)),
  KEY `identifier` (`identifier`),
  KEY `idx_identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvp_weaponshop`
--

LOCK TABLES `pvp_weaponshop` WRITE;
/*!40000 ALTER TABLE `pvp_weaponshop` DISABLE KEYS */;
INSERT INTO `pvp_weaponshop` VALUES (35,'steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_CARBINERIFLE','[]',NULL,2500000,'2026-04-28 16:26:15'),(36,'steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_PISTOL50','[]',NULL,10000000,'2026-04-28 17:32:45'),(37,'steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_PISTOL','[]',NULL,0,'2026-04-28 17:36:45'),(38,'steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_ASSAULTRIFLE','[]',NULL,280000,'2026-04-28 17:37:03'),(39,'steam:11000014a8245e2','SELKOOKᴳˢ','WEAPON_MICROSMG','[]',NULL,400000,'2026-04-28 17:37:21'),(40,'steam:11000014782e184','Ballas X Soyhan','WEAPON_PISTOL','[]',NULL,0,'2026-05-25 17:35:41'),(41,'steam:11000014782e184','Ballas X Soyhan','WEAPON_HEAVYPISTOL','[]',NULL,90000,'2026-05-25 17:38:54');
/*!40000 ALTER TABLE `pvp_weaponshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_extra`
--

DROP TABLE IF EXISTS `vehicle_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(64) NOT NULL,
  `identifier` varchar(128) NOT NULL,
  `extras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extras`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_extra`
--

LOCK TABLES `vehicle_extra` WRITE;
/*!40000 ALTER TABLE `vehicle_extra` DISABLE KEYS */;
INSERT INTO `vehicle_extra` VALUES (175,'MELE ZIM','steam:11000014a8245e2','{\"1\":true,\"8\":true,\"7\":true,\"6\":true,\"5\":true,\"3\":true,\"2\":true}'),(182,'AZRA','steam:11000014a8245e2','{\"1\":true,\"2\":true}'),(184,'MELEGIM','steam:11000014a8245e2','{\"1\":true,\"2\":true}'),(186,'PD259','steam:11000014a8245e2','{\"3\":true,\"2\":true,\"1\":true,\"4\":true}');
/*!40000 ALTER TABLE `vehicle_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yetkililer`
--

DROP TABLE IF EXISTS `yetkililer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yetkililer` (
  `identifier` varchar(64) NOT NULL,
  `fivem_isim` varchar(64) DEFAULT NULL,
  `yetki_seviyesi` int(11) DEFAULT NULL,
  `yetki_ismi` varchar(16) DEFAULT NULL,
  `discord_id` varchar(32) DEFAULT NULL,
  `steam_hex` varchar(32) DEFAULT NULL,
  `fivem_id` varchar(16) DEFAULT NULL,
  `license` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yetkililer`
--

LOCK TABLES `yetkililer` WRITE;
/*!40000 ALTER TABLE `yetkililer` DISABLE KEYS */;
INSERT INTO `yetkililer` VALUES ('license:3110ec0bc1cefb58665e9df31d6fa093856d1dc9','Ballas X Soyhan',2,'admin','821425111839932428','steam:11000014782e184','2','license:3110ec0bc1cefb58665e9df31d6fa093856d1dc9'),('license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d','Zerqᴳˢ',3,'founder','699598318107623446','steam:11000014a8245e2','4','license:a1e45612f8ac3de051e26aa33d2a2a0cf46f8e0d'),('license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5','CağKebabcısı',3,'founder','956573701531385976','steam:11000010aa7aa4e','2','license:b2202aae15aaa65342ddfe6fe473b45ae37b2fb5');
/*!40000 ALTER TABLE `yetkililer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-30 17:48:04
