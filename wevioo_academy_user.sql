-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wevioo_academy
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_learner` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) DEFAULT NULL,
  `cin` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `exit_date` datetime DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `training_name` varchar(255) DEFAULT NULL,
  `graduate_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr5ncp4osxrhowo345j0i3nsrb` (`graduate_id`),
  KEY `FK6iba98lx96y1gpj6rkfm2onnt` (`group_id`),
  KEY `FKedcidd96ni90dbm8rohugqguq` (`training_id`),
  CONSTRAINT `FK6iba98lx96y1gpj6rkfm2onnt` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`),
  CONSTRAINT `FKedcidd96ni90dbm8rohugqguq` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FKr5ncp4osxrhowo345j0i3nsrb` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`graduate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('user',1,'Admin1',0,'admin@gmail.com','','Admin1','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OZz80wXDrKDMacktYr8pq3j0X6HO75Fm','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('user',2,'Moniteur',0,'monitor@gmail.com','','Moniteur','$2a$12$LtbYtEzOBdnsiD/E9Wtj2ORwgBVmcpP/Q3QQyNze8q97hatu5ZcG6','monitor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('user',3,'Moniteur',0,'hamdi.ali.enicar@gmail.com','','Moniteur','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OpavQRSsjVSVr.jqcbnVtoUc/QC4bpgG','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('user',4,'ali',0,'ha@gmail.com','','hamdi','$2a$12$LtbYtEzOBdnsiD/E9Wtj2Oh8Sg6SafvSF5K7uOoh1xqUmnV1XHdB6','ha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('learner',7,'eazea',29898,'hazam@gmail.com','','zzze','','eazeazzze',NULL,'9999-09-09 01:00:00',NULL,NULL,NULL,89889,0,0,NULL,NULL,NULL,NULL),('learner',8,'aa',2514,'hamdymooraly@gmail.com','','25','','aa25',NULL,'2020-02-02 01:00:00',NULL,NULL,NULL,254,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 14:26:52
