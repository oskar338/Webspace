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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVERRANK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('Robin','$2y$10$UAAQXs4RO2Zq5auHOGdxKe4bUzbTJxBw34A33gFrQEouXjxvlog.a',1,NULL),('sexykati','$2y$10$YF6XTPK35lc2DN1ULswYDOZTCInxyv9Cex2rixq9iZivJCLqo91JK',2,NULL),('camper27','$2y$10$n2AcdrRUnFX8zHGWCLrpLu0baFgy.hQI2U88MGK4FduUHFDXZP5rq',3,NULL),('oskar','$2y$10$H1xIJTnsYd1Eu4gwF2WJ4OHP.vMmhHJj1Q1weDeB9N.r9MFdxMW9.',4,'2');
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (36,'IMG-64105b9a7c9468.21612900.jpeg'),(37,'IMG-64105baca87051.65637523.jpeg'),(42,'IMG-64105e03065090.75265935.jpeg'),(49,'IMG-6413759588d476.96272294.jpeg'),(54,'IMG-64138bf1b27e32.60477400.jpeg'),(57,'IMG-641448d8f08335.43355844.jpeg'),(63,'IMG-6414f4ac215630.81827062.jpeg'),(65,'IMG-6415b5325d6db6.17532086.jpeg'),(66,'IMG-6415b550993a30.86784340.jpeg'),(68,'IMG-6415eafdc11755.80877604.jpeg'),(71,'IMG-6418a97344e4f9.15659251.jpg'),(73,'IMG-641f2df8e8ed47.26611288.jpeg'),(74,'IMG-641f2e1aec6744.45713667.jpeg'),(75,'IMG-641f2e29ae88c2.84363381.jpeg'),(76,'IMG-641f2e5d0a3ef2.65386786.jpeg'),(77,'IMG-641f2e89edba54.44178282.jpeg'),(78,'IMG-641f2ec4d83409.20190060.jpeg'),(79,'IMG-641f2f205bd551.92341933.jpeg'),(80,'IMG-641f2f5a50a718.49204753.jpeg'),(81,'IMG-641f2f88ba4e43.23474264.jpeg'),(82,'IMG-641f2fd8929987.95396162.jpeg'),(83,'IMG-641f3010724026.11827835.jpeg'),(84,'IMG-641f30a96dde41.98011911.jpeg'),(86,'IMG-642181259ca792.57520151.jpg'),(87,'IMG-6421814f97e470.15925054.jpg'),(88,'IMG-64218289c4cf67.22642055.jpg'),(91,'IMG-642182e25e4215.11645158.jpg'),(94,'IMG-642183f1edc430.12837769.jpg'),(95,'IMG-642184199dcc11.16115322.jpg'),(96,'IMG-64218473629047.63966882.jpg'),(97,'IMG-642185b1b758d8.64206887.png'),(98,'IMG-642186e64df5e6.47187948.jpeg'),(99,'IMG-642186f4ec2767.63664340.jpeg'),(100,'IMG-642187107d2360.17689899.jpeg'),(101,'IMG-6421872a5ef6a3.42028909.jpeg'),(102,'IMG-6422942f3ec4a4.48658734.jpg'),(103,'IMG-6422943d6d5957.17258075.jpg'),(104,'IMG-64229496063d53.30504995.jpg'),(107,'IMG-642582c9efb756.95655404.jpeg'),(108,'IMG-6442efc93bbb62.04243449.jpeg'),(110,'IMG-6442f00f5e69b0.87021995.jpeg'),(111,'IMG-644e29d7dda801.10762801.jpeg'),(115,'IMG-645bf25ce1a9f7.30946437.png'),(116,'IMG-645bf4d875c8e9.33860240.jpg'),(118,'IMG-6461342614d938.99409599.jpeg'),(120,'IMG-6463c50b07b9a3.94645063.jpg'),(121,'IMG-6463c519c471f2.34225477.jpg'),(122,'IMG-6463c5221b8ef9.83581583.jpg'),(124,'IMG-6463c5487ed0c1.12824685.jpg'),(125,'IMG-6463c5664fe105.08004820.jpg'),(126,'IMG-6463c57eb70fd9.02062931.jpg'),(127,'IMG-6463c5a3359287.19975920.jpg'),(128,'IMG-6463c5b5034d91.09874490.jpg'),(130,'IMG-646780104041b2.06580713.jpeg'),(131,'IMG-64678010532d89.70961301.jpeg'),(138,'IMG-648b51cbb20be8.22013157.jpeg'),(139,'IMG-648b51dee1f246.78383289.jpeg'),(140,'IMG-648b51ee7d84d2.90452733.jpeg'),(141,'IMG-6496e8214cba09.13167146.png'),(142,'IMG-64b0382a542230.55608306.jpeg'),(143,'IMG-64ba68c9d0bb96.31153141.jpeg'),(144,'IMG-64cec326042a31.15176594.jpeg'),(145,'IMG-64cec3364da204.39292537.jpeg'),(147,'IMG-64cec34f75c507.87417915.jpeg'),(148,'IMG-64cec36c4a0bf2.31254564.jpeg'),(149,'IMG-64cec37ede7889.52571707.jpeg'),(151,'IMG-64cec3ac82afd6.36531602.jpeg'),(152,'IMG-64cec3d3d8bae1.20105651.jpeg'),(153,'IMG-64cec4f142af21.14558757.jpeg'),(154,'IMG-64cec50464a674.18793362.jpeg'),(155,'IMG-64cec520084752.58971554.jpeg'),(157,'IMG-64cec58b3e60d3.56763325.jpeg'),(158,'IMG-64cec5a863e754.41904165.jpeg'),(161,'IMG-64d002c54543a8.71770894.jpeg'),(162,'IMG-64d00313497806.04604282.jpeg'),(163,'IMG-64dbc219748aa8.19199785.jpg'),(164,'IMG-64dbc2344a9b16.89469769.jpeg'),(165,'IMG-64dbc2357086d4.79858611.jpg'),(166,'IMG-64dbc24ce31084.91856704.png'),(167,'IMG-64dbc252aa4b78.87400134.jpg'),(168,'IMG-64dbc2f222e4d8.50716863.png'),(169,'IMG-64e4ce887a6f18.68443686.jpg'),(170,'IMG-64e4d6b08d57b9.86412083.jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (8,'video-645bf1be2f9e54.38443309.mp4'),(9,'video-645bf4ec13a425.43387532.mp4'),(11,'video-645bf58502ca40.18304556.mp4'),(12,'video-645bf61f1e76e9.67574154.mp4'),(13,'video-645bf6d4725d21.45031316.mp4'),(14,'video-645bf6e3e92c91.84694452.mp4'),(16,'video-645bf7fca46013.04553491.mp4'),(18,'video-645bf875164a56.59712375.mp4'),(19,'video-645bf8adecad13.40570843.mp4'),(20,'video-645bf95b919859.80568294.mp4'),(25,'video-64b03802388a08.56220200.mp4'),(26,'video-64ba68f160f550.25094749.mp4'),(27,'video-64ba69210f3661.92239345.mov'),(28,'video-64ba6936aa7a37.62577254.mp4'),(29,'video-64c43e3246d659.09944022.mp4'),(30,'video-64c43e4bb7dd84.39845428.mp4'),(31,'video-64c65ad1d4bf36.44476818.mov'),(32,'video-64cec496455213.82887797.mp4'),(33,'video-64cec4c85cf3c6.94859356.mp4'),(34,'video-64cfa9b2125f31.37241776.mp4'),(35,'video-64dbc183930ed0.90543110.mp4'),(36,'video-64dbc325cf4ad6.70269188.mp4'),(37,'video-64dbc35a826b39.84047028.mp4'),(38,'video-64dbc374257943.08551797.mov');
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

-- Dump completed on 2023-08-31  0:28:01