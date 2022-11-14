-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: spam_filter_db
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `spam_filter_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `spam_filter_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `spam_filter_db`;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` longtext,
  `sent_date` varchar(555) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (1,'ivo@hotmail.com','tstapko@tvz.hr','penis','test'),(2,'tea@yahoo.co.uk','mhadinovic@tvz.hr',' coconut','2017-08-14T15:03:57.154Z'),(3,'marko@gmail.com','tstapko@tvz.hr',' legit legit tarriff tarriff fake fake tarriff tarriff fake','2008-01-06T22:39:51.188Z'),(4,'filip@anonmail.co','fturkovic@tvz.hr',' fake fake','2005-07-09T06:45:39.039Z'),(5,'marko@gmail.com','fsolinko@tvz.hr',' fake tarriff','2018-06-28T15:39:12.983Z'),(6,'tea@yahoo.co.uk','tstapko@tvz.hr',' coconut tarriff tarriff tarriff tarriff coconut coconut fake legit','2018-01-31T11:39:42.306Z'),(7,'ivo@hotmail.com','tstapko@tvz.hr',' coconut legit tarriff fake fake fake fake','2008-02-21T21:52:44.178Z'),(8,'tea@yahoo.co.uk','tstapko@tvz.hr',' coconut tarriff fake coconut legit tarriff','2004-07-07T14:27:21.303Z'),(9,'ivo@hotmail.com','fsolinko@tvz.hr',' fake fake coconut','2010-09-05T06:12:37.202Z'),(10,'filip@anonmail.co','fsolinko@tvz.hr',' legit tarriff fake legit tarriff tarriff legit','2017-09-22T10:48:28.425Z'),(11,'ivo@hotmail.com','fsolinko@tvz.hr',' coconut fake coconut legit legit tarriff','2005-10-22T10:32:27.655Z'),(12,'ivo@hotmail.com','mhadinovic@tvz.hr',' legit tarriff','2013-11-14T12:24:40.391Z'),(13,'filip@anonmail.co','fsolinko@tvz.hr',' legit fake legit fake tarriff tarriff fake tarriff','2001-11-30T11:23:49.560Z'),(14,'ivo@hotmail.com','tstapko@tvz.hr',' coconut','2005-11-15T04:52:34.887Z'),(15,'tea@yahoo.co.uk','mhadinovic@tvz.hr',' legit fake tarriff tarriff coconut legit tarriff fake legit tarriff coconut fake legit coconut coconut legit fake tarriff fake legit fake fake tarriff tarriff fake coconut coconut legit coconut fake fake tarriff coconut fake fake legit tarriff coconut tarriff coconut tarriff tarriff legit tarriff tarriff coconut tarriff legit coconut tarriff coconut fake fake tarriff legit legit fake coconut','2010-03-16T21:35:18.354Z'),(16,'tea@yahoo.co.uk','tstapko@tvz.hr',' fake legit fake coconut fake fake fake tarriff tarriff tarriff coconut coconut tarriff legit coconut tarriff legit tarriff fake fake coconut legit fake tarriff legit tarriff legit tarriff tarriff legit coconut fake fake fake coconut legit tarriff tarriff tarriff coconut legit legit tarriff legit tarriff coconut tarriff fake fake coconut coconut legit coconut fake coconut legit coconut tarriff tarriff coconut coconut coconut coconut coconut fake fake tarriff tarriff legit fake fake legit coconut coconut tarriff fake coconut fake legit legit legit legit legit tarriff fake legit fake legit coconut legit legit coconut coconut','2001-08-28T19:49:07.253Z'),(17,'marko@gmail.com','fsolinko@tvz.hr',' fake fake legit tarriff legit tarriff tarriff legit fake coconut fake fake legit legit coconut coconut legit legit coconut fake coconut coconut legit legit tarriff tarriff legit legit tarriff coconut fake legit tarriff coconut coconut fake coconut legit fake fake legit coconut coconut tarriff legit legit legit legit fake legit coconut fake coconut legit fake tarriff fake legit coconut legit tarriff legit tarriff coconut coconut tarriff coconut fake legit legit tarriff coconut fake coconut coconut tarriff coconut fake coconut tarriff tarriff fake coconut coconut coconut legit fake fake legit fake tarriff tarriff fake fake','2015-12-20T18:48:18.854Z'),(18,'tea@yahoo.co.uk','fsolinko@tvz.hr',' legit coconut legit coconut legit fake legit legit coconut tarriff tarriff fake coconut coconut coconut coconut coconut tarriff coconut legit fake legit fake tarriff coconut coconut fake coconut legit fake fake legit','2008-09-04T12:54:37.756Z'),(19,'marko@gmail.com','tstapko@tvz.hr',' tarriff tarriff coconut tarriff coconut legit legit fake fake tarriff coconut fake legit coconut tarriff legit fake coconut fake legit coconut legit coconut tarriff coconut fake coconut fake fake coconut coconut coconut fake fake tarriff coconut tarriff legit fake','2002-08-07T11:32:11.084Z');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tstapko@tvz.hr','Tea','Stapko'),(2,'fturkovic@tvz.hr','Filip','Turkovic'),(3,'mhadinovic@tvz.hr','Marko','Hadinovic'),(4,'fsolinko@tvz.hr','Filip','Solinko');
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

-- Dump completed on 2022-11-06 23:21:27
