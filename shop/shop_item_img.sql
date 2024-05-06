-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
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
-- Table structure for table `item_img`
--

DROP TABLE IF EXISTS `item_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_img` (
  `item_img_id` bigint NOT NULL,
  `reg_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `ori_img_name` varchar(255) DEFAULT NULL,
  `repimg_yn` varchar(255) DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`item_img_id`),
  KEY `FKdd5u08y3ap4c46ayrqjf8g88m` (`item_id`),
  CONSTRAINT `FKdd5u08y3ap4c46ayrqjf8g88m` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_img`
--

LOCK TABLES `item_img` WRITE;
/*!40000 ALTER TABLE `item_img` DISABLE KEYS */;
INSERT INTO `item_img` VALUES (21,'2022-12-09 17:06:04.172322','2022-12-09 17:06:04.172322','taeeyoul@sk.com','taeeyoul@sk.com','c9cb28cb-00ac-425a-9b55-53276e83c537.jpg','/images/item/c9cb28cb-00ac-425a-9b55-53276e83c537.jpg','청바지.jpg','Y',20),(22,'2022-12-09 17:06:04.179323','2022-12-09 17:06:04.179323','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',20),(23,'2022-12-09 17:06:04.184322','2022-12-09 17:06:04.184322','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',20),(24,'2022-12-09 17:06:04.189320','2022-12-09 17:06:04.189320','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',20),(25,'2022-12-09 17:06:04.195319','2022-12-09 17:06:04.195319','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',20),(33,'2022-12-10 04:08:13.173701','2022-12-10 04:08:13.173701','taeeyoul@sk.com','taeeyoul@sk.com','1a50b9b7-8b0f-4da6-a75a-f94e50fd1591.jpg','/images/item/1a50b9b7-8b0f-4da6-a75a-f94e50fd1591.jpg','청바지2.jpg','Y',32),(34,'2022-12-10 04:08:13.179705','2022-12-10 04:08:13.179705','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',32),(35,'2022-12-10 04:08:13.185703','2022-12-10 04:08:13.185703','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',32),(36,'2022-12-10 04:08:13.191710','2022-12-10 04:08:13.191710','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',32),(37,'2022-12-10 04:08:13.197709','2022-12-10 04:08:13.197709','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',32),(51,'2022-12-10 04:17:04.351437','2022-12-10 04:17:04.351437','taeeyoul@sk.com','taeeyoul@sk.com','221bdf1c-4f45-49e8-951a-27aac15ab8b5.jpg','/images/item/221bdf1c-4f45-49e8-951a-27aac15ab8b5.jpg','셔츠.jpg','Y',50),(52,'2022-12-10 04:17:04.357443','2022-12-10 04:17:04.357443','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',50),(53,'2022-12-10 04:17:04.363958','2022-12-10 04:17:04.363958','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',50),(54,'2022-12-10 04:17:04.369952','2022-12-10 04:17:04.369952','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',50),(55,'2022-12-10 04:17:04.376463','2022-12-10 04:17:04.376463','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',50),(57,'2022-12-11 06:57:37.770231','2022-12-11 06:57:37.770231','taeeyoul@sk.com','taeeyoul@sk.com','4763944a-5511-49bb-95fe-8fee45ce1275.png','/images/item/4763944a-5511-49bb-95fe-8fee45ce1275.png','MSI-PRO-B670M-A-WIFI.png','Y',56),(58,'2022-12-11 06:57:37.778230','2022-12-11 06:57:37.778230','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',56),(59,'2022-12-11 06:57:37.784229','2022-12-11 06:57:37.784229','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',56),(60,'2022-12-11 06:57:37.792230','2022-12-11 06:57:37.792230','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',56),(61,'2022-12-11 06:57:37.799228','2022-12-11 06:57:37.799228','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',56),(63,'2022-12-11 06:59:04.239389','2022-12-11 06:59:04.239389','taeeyoul@sk.com','taeeyoul@sk.com','3a5eb82c-6ac4-4a6e-90a9-d131a1274ed2.jpg','/images/item/3a5eb82c-6ac4-4a6e-90a9-d131a1274ed2.jpg','i5-13600KF.jpg','Y',62),(64,'2022-12-11 06:59:04.245390','2022-12-11 06:59:04.245390','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',62),(65,'2022-12-11 06:59:04.250388','2022-12-11 06:59:04.250388','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',62),(66,'2022-12-11 06:59:04.257392','2022-12-11 06:59:04.257392','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',62),(67,'2022-12-11 06:59:04.263394','2022-12-11 06:59:04.263394','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',62),(69,'2022-12-11 07:02:12.140308','2022-12-11 07:02:12.140308','taeeyoul@sk.com','taeeyoul@sk.com','d968617f-3524-49fd-aaad-106f17a4889f.jpg','/images/item/d968617f-3524-49fd-aaad-106f17a4889f.jpg','삼성전자-DDR5-4800.jpg','Y',68),(70,'2022-12-11 07:02:12.145309','2022-12-11 07:02:12.145309','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',68),(71,'2022-12-11 07:02:12.150308','2022-12-11 07:02:12.150308','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',68),(72,'2022-12-11 07:02:12.155316','2022-12-11 07:02:12.155316','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',68),(73,'2022-12-11 07:02:12.160310','2022-12-11 07:02:12.160310','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',68),(75,'2022-12-11 07:05:13.217950','2022-12-11 07:05:13.217950','taeeyoul@sk.com','taeeyoul@sk.com','b5c3ed3d-c348-4b3d-9a6f-6e94973b9299.jpg','/images/item/b5c3ed3d-c348-4b3d-9a6f-6e94973b9299.jpg','P41-NVMe-M.2-SSD(1TB).jpg','Y',74),(76,'2022-12-11 07:05:13.223949','2022-12-11 07:05:13.223949','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',74),(77,'2022-12-11 07:05:13.227947','2022-12-11 07:05:13.227947','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',74),(78,'2022-12-11 07:05:13.231950','2022-12-11 07:05:13.231950','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',74),(79,'2022-12-11 07:05:13.236946','2022-12-11 07:05:13.236946','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',74),(87,'2022-12-11 07:10:54.075849','2022-12-11 07:10:54.075849','taeeyoul@sk.com','taeeyoul@sk.com','332d0b94-17d8-4df0-9511-d448b93f76cd.jpg','/images/item/332d0b94-17d8-4df0-9511-d448b93f76cd.jpg','마이크로닉스-EM1-Woofer.jpg','Y',86),(88,'2022-12-11 07:10:54.081850','2022-12-11 07:10:54.081850','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',86),(89,'2022-12-11 07:10:54.085852','2022-12-11 07:10:54.085852','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',86),(90,'2022-12-11 07:10:54.090853','2022-12-11 07:10:54.090853','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',86),(91,'2022-12-11 07:10:54.094856','2022-12-11 07:10:54.094856','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',86),(93,'2022-12-11 07:14:08.263959','2022-12-11 07:14:08.263959','taeeyoul@sk.com','taeeyoul@sk.com','bef7f6d8-8c2c-4808-a2e4-8691cb939f7d.jpg','/images/item/bef7f6d8-8c2c-4808-a2e4-8691cb939f7d.jpg','MSI-MPG-A750GF-화이트-Full-Modular-80-PLUS-Gold.jpg','Y',92),(94,'2022-12-11 07:14:08.268959','2022-12-11 07:14:08.268959','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',92),(95,'2022-12-11 07:14:08.272982','2022-12-11 07:14:08.272982','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',92),(96,'2022-12-11 07:14:08.276977','2022-12-11 07:14:08.276977','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',92),(97,'2022-12-11 07:14:08.280961','2022-12-11 07:14:08.280961','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',92),(99,'2022-12-11 07:17:22.045605','2022-12-11 07:17:22.045605','taeeyoul@sk.com','taeeyoul@sk.com','30007b42-6714-41b3-a85c-a21884ea5ed1.png','/images/item/30007b42-6714-41b3-a85c-a21884ea5ed1.png','MSI GeForce RTX™ 3060 GAMING X 12.png','Y',98),(100,'2022-12-11 07:17:22.050682','2022-12-11 07:17:22.050682','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',98),(101,'2022-12-11 07:17:22.054713','2022-12-11 07:17:22.054713','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',98),(102,'2022-12-11 07:17:22.060226','2022-12-11 07:17:22.060226','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',98),(103,'2022-12-11 07:17:22.064230','2022-12-11 07:17:22.064230','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',98),(159,'2022-12-13 12:32:18.818127','2022-12-13 12:32:18.818127','taeeyoul@sk.com','taeeyoul@sk.com','ad8ea067-7c33-4fd5-b129-7dffc0d4aca1.png','/images/item/ad8ea067-7c33-4fd5-b129-7dffc0d4aca1.png','mx-keys-graphite.png','Y',158),(160,'2022-12-13 12:32:18.825647','2022-12-13 12:32:18.825647','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',158),(161,'2022-12-13 12:32:18.832651','2022-12-13 12:32:18.832651','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',158),(162,'2022-12-13 12:32:18.839731','2022-12-13 12:32:18.839731','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',158),(163,'2022-12-13 12:32:18.845791','2022-12-13 12:32:18.845791','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',158),(166,'2022-12-13 12:42:59.565657','2022-12-13 12:42:59.565657','taeeyoul@sk.com','taeeyoul@sk.com','4b2777b2-45ac-4665-8df8-c195077dc7c6.jpg','/images/item/4b2777b2-45ac-4665-8df8-c195077dc7c6.jpg','로지텍-MX-Anywhere-3.jpg','Y',165),(167,'2022-12-13 12:42:59.572651','2022-12-13 12:42:59.572651','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',165),(168,'2022-12-13 12:42:59.580651','2022-12-13 12:42:59.580651','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',165),(169,'2022-12-13 12:42:59.587655','2022-12-13 12:42:59.587655','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',165),(170,'2022-12-13 12:42:59.594649','2022-12-13 12:42:59.594649','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',165),(173,'2022-12-13 12:50:42.354951','2022-12-13 12:50:42.354951','taeeyoul@sk.com','taeeyoul@sk.com','0c1a699d-ae0f-4da2-97b5-52233240674a.jpg','/images/item/0c1a699d-ae0f-4da2-97b5-52233240674a.jpg','삼성전자-오디세이-G5-C27G54T.jpg','Y',172),(174,'2022-12-13 12:50:42.362460','2022-12-13 12:50:42.362460','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',172),(175,'2022-12-13 12:50:42.369980','2022-12-13 12:50:42.369980','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',172),(176,'2022-12-13 12:50:42.376977','2022-12-13 12:50:42.376977','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',172),(177,'2022-12-13 12:50:42.383492','2022-12-13 12:50:42.383492','taeeyoul@sk.com','taeeyoul@sk.com','','','','N',172);
/*!40000 ALTER TABLE `item_img` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 21:59:27
