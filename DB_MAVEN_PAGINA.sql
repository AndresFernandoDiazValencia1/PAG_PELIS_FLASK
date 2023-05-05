-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: maven_pag
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nando','n@gmail.com',348),(2,'lugar ','jk@gmail.com',221),(3,'tiempo ','ft@gmail.com',879),(4,'julio vel','fe@gmail.com',666),(5,'julio vel','fe@gmail.com',666),(6,'sara','s@gmail.com',332),(7,'cate','ca@gmail.com',451),(8,'andrea','an@gmail.com',40000),(9,'andrea re','anre@gmail.com',2245),(10,'buena ','bu@mail.com',43),(11,'kilos ','fgeneralt@gmail.com',557),(12,'kilos ','fgeneralt@gmail.com',557),(13,'usted ','tzonast@gmail.com',21),(14,'usted ','tzonast@gmail.com',21),(15,'usted ','tzonast@gmail.com',21),(16,'usted ','tzonast@gmail.com',21),(17,'usted ','tzonast@gmail.com',21),(18,'usted ','tzonast@gmail.com',21),(19,'usted ','tzonast@gmail.com',21),(20,'usted ','tzonast@gmail.com',21),(21,'usted ','tzonast@gmail.com',21),(22,'usted ','tzonast@gmail.com',21),(23,'usted ','tzonast@gmail.com',21),(24,'usted ','tzonast@gmail.com',21),(25,'fey','dg@gyuuu',441),(26,'fey','dg@gyuuu',441),(27,'gisel','gi@gyhhh',532),(28,'esteban','ytss@hyis',663),(29,'yo ','h@yooo',431),(30,'yo ','h@yooo',431),(31,'maria','mg@mtoo',411),(32,'maria','mg@mtoo',411),(33,'maria','mg@mtoo',411),(34,'lolita ','lo@gmail',6666),(35,'nandito','nn@gmm',551),(36,'eli gy','gy@eee',781),(37,'dani','d@dan',690),(38,'tylerys','t@gty',33),(39,'gaia','g@hk',23),(40,'holy','h@gho',5324),(41,'lia','l@lia',216),(42,'diana','d@gmgg',681),(43,'alexa','al@gmhh',344),(44,'tyler rey','r@gmail',531),(45,'tyler rey','r@gmail',531),(46,'de noche ','nc@ggg',78),(47,'kate','k@gty',677),(48,'beny','be@gbe',556),(49,'delia','de@gmm',777);
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

-- Dump completed on 2023-05-05 18:29:02
