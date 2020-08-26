CREATE DATABASE  IF NOT EXISTS `spring_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_ru_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spring_db`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `fac`
--

DROP TABLE IF EXISTS `fac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fac` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac`
--

LOCK TABLES `fac` WRITE;
/*!40000 ALTER TABLE `fac` DISABLE KEYS */;
INSERT INTO `fac` VALUES (1,'MEX'),(2,'STT'),(3,'VSS'),(4,'JSP'),(5,'TGV');
/*!40000 ALTER TABLE `fac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Яблоко',2),(2,'Вишня',3),(3,'Слива',4),(4,'Дыня',1),(5,'Соль',44),(6,'Вода',3),(7,'Воздух',3),(8,'Вата',1),(9,'Дрова',34);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoping`
--

DROP TABLE IF EXISTS `shoping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoping` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `prod_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_idx` (`user_id`),
  KEY `fk_prod_idx` (`prod_id`),
  CONSTRAINT `fk_prod` FOREIGN KEY (`prod_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoping`
--

LOCK TABLES `shoping` WRITE;
/*!40000 ALTER TABLE `shoping` DISABLE KEYS */;
INSERT INTO `shoping` VALUES (1,1,2),(2,1,4),(3,2,3),(4,2,4),(5,3,1),(6,5,6),(7,6,4),(8,5,7),(9,2,4),(10,4,1),(11,2,3),(12,1,6),(13,2,3);
/*!40000 ALTER TABLE `shoping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  `fac_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fac_idx` (`fac_id`),
  CONSTRAINT `fk_fac` FOREIGN KEY (`fac_id`) REFERENCES `fac` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud`
--

LOCK TABLES `stud` WRITE;
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` VALUES (31,'Андрей',1),(32,'Михаил',2),(33,'Сергей',1),(34,'Дмитрий',2),(35,'Василий',3),(36,'Евгений',4),(37,'Олег',1),(38,'Петр',2),(39,'Георгий',3),(40,'Олеся',3),(41,'Мария',2),(42,'Оксана',1),(43,'Ольга',2),(44,'Валентина',4),(45,'Катерина',1);
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_ru_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'NJ'),(2,'Михаил'),(3,'Сергей'),(4,'Василий'),(5,'Дмитрий'),(6,'Егор'),(7,'Nikola'),(8,'Nikola'),(9,'Nikola3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_product`
--

DROP TABLE IF EXISTS `user_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_product` (
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  KEY `p` (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_ru_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product`
--

LOCK TABLES `user_product` WRITE;
/*!40000 ALTER TABLE `user_product` DISABLE KEYS */;
INSERT INTO `user_product` VALUES (1,1),(1,2),(2,1),(2,2),(2,4),(2,5);
/*!40000 ALTER TABLE `user_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'spring_db'
--

--
-- Dumping routines for database 'spring_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-26  0:09:28
