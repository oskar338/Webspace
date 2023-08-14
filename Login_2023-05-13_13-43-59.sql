-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Login
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `TOKEN` varchar(255) DEFAULT NULL,
  `SERVERRANK` int(11) NOT NULL,
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('Robin','$2y$10$UAAQXs4RO2Zq5auHOGdxKe4bUzbTJxBw34A33gFrQEouXjxvlog.a',NULL,NULL,0),('oskar','$2y$10$y53.Ibj9juL8uXOqdGD.m.eYmwZurU0KtdcEAgs9thB5wExL.Xr5u',NULL,NULL,0),('Marf','$2y$10$/vQLyqOBXY.nNJI84bpY8eR.ks5aKezihkG7Iup2ZB4IeMahZdpYS',NULL,NULL,0),('sexykati','$2y$10$YF6XTPK35lc2DN1ULswYDOZTCInxyv9Cex2rixq9iZivJCLqo91JK',NULL,NULL,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (36,'IMG-64105b9a7c9468.21612900.jpeg'),(37,'IMG-64105baca87051.65637523.jpeg'),(42,'IMG-64105e03065090.75265935.jpeg'),(49,'IMG-6413759588d476.96272294.jpeg'),(54,'IMG-64138bf1b27e32.60477400.jpeg'),(57,'IMG-641448d8f08335.43355844.jpeg'),(62,'IMG-6414f492d8ed44.27698298.jpeg'),(63,'IMG-6414f4ac215630.81827062.jpeg'),(65,'IMG-6415b5325d6db6.17532086.jpeg'),(66,'IMG-6415b550993a30.86784340.jpeg'),(68,'IMG-6415eafdc11755.80877604.jpeg'),(71,'IMG-6418a97344e4f9.15659251.jpg'),(73,'IMG-641f2df8e8ed47.26611288.jpeg'),(74,'IMG-641f2e1aec6744.45713667.jpeg'),(75,'IMG-641f2e29ae88c2.84363381.jpeg'),(76,'IMG-641f2e5d0a3ef2.65386786.jpeg'),(77,'IMG-641f2e89edba54.44178282.jpeg'),(78,'IMG-641f2ec4d83409.20190060.jpeg'),(79,'IMG-641f2f205bd551.92341933.jpeg'),(80,'IMG-641f2f5a50a718.49204753.jpeg'),(81,'IMG-641f2f88ba4e43.23474264.jpeg'),(82,'IMG-641f2fd8929987.95396162.jpeg'),(83,'IMG-641f3010724026.11827835.jpeg'),(84,'IMG-641f30a96dde41.98011911.jpeg'),(85,'IMG-641f316f437f69.32521816.jpeg'),(86,'IMG-642181259ca792.57520151.jpg'),(87,'IMG-6421814f97e470.15925054.jpg'),(88,'IMG-64218289c4cf67.22642055.jpg'),(91,'IMG-642182e25e4215.11645158.jpg'),(94,'IMG-642183f1edc430.12837769.jpg'),(95,'IMG-642184199dcc11.16115322.jpg'),(96,'IMG-64218473629047.63966882.jpg'),(97,'IMG-642185b1b758d8.64206887.png'),(98,'IMG-642186e64df5e6.47187948.jpeg'),(99,'IMG-642186f4ec2767.63664340.jpeg'),(100,'IMG-642187107d2360.17689899.jpeg'),(101,'IMG-6421872a5ef6a3.42028909.jpeg'),(102,'IMG-6422942f3ec4a4.48658734.jpg'),(103,'IMG-6422943d6d5957.17258075.jpg'),(104,'IMG-64229496063d53.30504995.jpg'),(107,'IMG-642582c9efb756.95655404.jpeg'),(108,'IMG-6442efc93bbb62.04243449.jpeg'),(109,'IMG-6442efdb33ec14.18104027.jpeg'),(110,'IMG-6442f00f5e69b0.87021995.jpeg'),(111,'IMG-644e29d7dda801.10762801.jpeg'),(115,'IMG-645bf25ce1a9f7.30946437.png'),(116,'IMG-645bf4d875c8e9.33860240.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (8,'video-645bf1be2f9e54.38443309.mp4'),(9,'video-645bf4ec13a425.43387532.mp4'),(11,'video-645bf58502ca40.18304556.mp4'),(12,'video-645bf61f1e76e9.67574154.mp4'),(13,'video-645bf6d4725d21.45031316.mp4'),(14,'video-645bf6e3e92c91.84694452.mp4'),(16,'video-645bf7fca46013.04553491.mp4'),(18,'video-645bf875164a56.59712375.mp4'),(19,'video-645bf8adecad13.40570843.mp4'),(20,'video-645bf95b919859.80568294.mp4');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Login'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-13 13:44:09
