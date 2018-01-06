-- MySQL dump 10.13  Distrib 5.7.15, for osx10.11 (x86_64)
--
-- Host: localhost    Database: elegant_laravel
-- ------------------------------------------------------
-- Server version	5.7.15

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
-- Table structure for table `admin_permission_role`
--

DROP TABLE IF EXISTS `admin_permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `permission_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permission_role`
--

LOCK TABLES `admin_permission_role` WRITE;
/*!40000 ALTER TABLE `admin_permission_role` DISABLE KEYS */;
INSERT INTO `admin_permission_role` VALUES (1,2,1,NULL,NULL),(2,2,2,NULL,NULL),(3,2,3,NULL,NULL),(4,2,4,NULL,NULL),(5,3,2,NULL,NULL),(6,1,1,NULL,NULL),(8,4,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'post','文章权限','2017-12-15 07:34:35','2017-12-15 07:34:35'),(2,'topic','专题权限','2017-12-15 07:34:50','2017-12-15 07:34:50'),(3,'notice','通知权限','2017-12-15 07:35:07','2017-12-15 07:35:07'),(4,'system','系统权限','2017-12-15 07:35:27','2017-12-15 07:35:27');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_user`
--

DROP TABLE IF EXISTS `admin_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_user`
--

LOCK TABLES `admin_role_user` WRITE;
/*!40000 ALTER TABLE `admin_role_user` DISABLE KEYS */;
INSERT INTO `admin_role_user` VALUES (1,3,2,NULL,NULL),(2,2,3,NULL,NULL),(3,1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Article-Manager','文章管理角色','2017-12-15 07:13:48','2017-12-15 07:13:48'),(2,'System-Manager','系统管理角色','2017-12-15 07:18:18','2017-12-15 07:18:18'),(3,'Topic-Manager','专题管理角色','2017-12-15 07:18:45','2017-12-15 07:18:45'),(4,'Notice-Manager','通知管理角色','2017-12-15 07:19:10','2017-12-15 07:19:10');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$ujpQ3.k/lHvlhvpuuE41I.cRA0CksbeADdTygxBm5aND06FDrejp.','2017-12-14 06:38:43','2017-12-14 06:38:43'),(2,'manager','$2y$10$ec5UB03unmxdMhmocWoMo.xHDWeGZsmATRlzEIa21vU8VjhPzrbQ6','2017-12-14 06:39:57','2017-12-14 06:39:57'),(3,'tom','$2y$10$bndTcBC75aItUPb93OUMNut/b.lQEzeeAmhsEKv7ouoXdw7DhQtGi','2017-12-15 02:03:55','2017-12-15 02:03:55');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,4,'sssssssssssssssssssss','2017-12-08 03:13:31','2017-12-08 03:13:31'),(2,1,4,'这是套路盛行的时代','2017-12-08 03:14:27','2017-12-08 03:14:27'),(3,1,4,'这是哈哈哈的时代','2017-12-08 03:14:46','2017-12-08 03:14:46'),(4,1,2,'qweqweqwe','2017-12-08 03:29:40','2017-12-08 03:29:40'),(5,1,5,'adfsf','2017-12-09 09:33:38','2017-12-09 09:33:38');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fans`
--

DROP TABLE IF EXISTS `fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fans`
--

LOCK TABLES `fans` WRITE;
/*!40000 ALTER TABLE `fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phoneNumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `introduce` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'Miss Kaycee Hyatt PhD','8197 Dorothy Villages Apt. 177\nLorenborough, TN 92277','338.973.1120 x75569','Pacocha Group',NULL,'gage.wuckert@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(2,'Zola Emmerich','57567 Stokes Groves\nWest Efren, OH 29123','+1.348.212.9679','Bruen-Weimann',NULL,'michel.white@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(3,'Anais Hilll','4861 Schaefer Squares Apt. 643\nNicolasberg, DE 77390-2759','628.445.7256','Hoeger, Reichert and Senger',NULL,'will.kohler@nitzsche.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(4,'Shany Schaefer','40659 Dibbert Lock\nLexieberg, VT 01451-0392','962-539-0236 x374','Daugherty-Breitenberg',NULL,'rwunsch@deckow.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(5,'Prof. Nola Doyle DDS','749 Tyreek Meadow\nNorth Aubrey, IN 23807','+18656599853','Hilpert-Brown',NULL,'sprohaska@lakin.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(6,'Mrs. Hailee Herzog','6487 Heidenreich Rapid Apt. 142\nFaustoton, UT 29805','758-830-1582','Kovacek-Collins',NULL,'wilderman.delphine@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(7,'Ms. Nyasia Turcotte DVM','2887 Marques Throughway Apt. 393\nNew Tadville, CT 62556-1637','(337) 523-6230 x03598','Johnston, Kulas and McGlynn',NULL,'vgoldner@treutel.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(8,'Zachery Grimes II','288 Wendell Island\nStromanfort, NJ 80017-9449','619-642-7272','Brekke and Sons',NULL,'kole64@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(9,'Prof. Nat Rodriguez II','27728 Carter Club Suite 419\nSouth Orland, NC 99001-7726','231.947.2993 x1699','Crona LLC',NULL,'jarmstrong@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(10,'Terrence Reichel','83230 Barrows Underpass Suite 904\nEast Chelsiefurt, WY 60504-7747','462.539.4061','Veum, Braun and Olson',NULL,'joanny59@witting.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(11,'Dr. Aliyah Kling','73152 Ratke Ways Suite 579\nHoppestad, KS 32972-1540','804-210-4182 x842','Goyette PLC',NULL,'leora.fadel@stanton.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(12,'Harold Prosacco','9429 Schuppe Forks\nPaucekport, NE 89180','229-700-8508 x340','Breitenberg, Haag and Auer',NULL,'harmony78@weber.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(13,'Mr. Alexandro Macejkovic','64446 Douglas Terrace Apt. 787\nHarberfort, NV 07046-8731','(280) 421-6610 x095','Haag Group',NULL,'ischamberger@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(14,'Mr. Valentin Reynolds','92473 Bernhard Prairie Suite 999\nZulaufhaven, MN 49987','892-267-8551 x8240','O\'Conner and Sons',NULL,'dejuan.emmerich@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(15,'Kadin Nienow','64129 Zora Run Suite 150\nPort Brett, NM 94415-7524','(212) 706-4504 x657','Botsford-Kemmer',NULL,'delores.schulist@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(16,'Bria Little','59167 Botsford Ramp Apt. 920\nRhiannonberg, VT 09852','(203) 986-8518','Legros-Raynor',NULL,'tara.schroeder@feil.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(17,'Kelly Koelpin II','16702 D\'Amore Center Apt. 599\nSchneidermouth, NE 02185','(262) 510-9284 x7728','Stoltenberg PLC',NULL,'ezieme@reichert.biz','2017-12-05 09:54:33','2017-12-05 09:54:33'),(18,'Savanah Schoen','45323 Murray Trail\nOdashire, NM 58424','1-960-546-0732 x198','Schmitt, Kertzmann and Swaniawski',NULL,'lavada.turcotte@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(19,'Caitlyn Hand','8256 Mark Crossroad Suite 380\nWest Shanychester, ME 84108','(462) 684-4271 x730','Hegmann-Ortiz',NULL,'allen37@dicki.biz','2017-12-05 09:54:33','2017-12-05 09:54:33'),(20,'Jasen Barrows MD','9848 Murazik Junction\nPfannerstillmouth, AR 10484-3605','709-350-4720','Cole, Moore and Feest',NULL,'ucronin@kunze.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(21,'Mr. Donnie Dicki DVM','49857 Lesly Points\nWest Danyka, CO 16420-2016','716-699-0832 x2091','Leffler LLC',NULL,'mgreen@brown.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(22,'Reanna Zboncak','367 Hane Falls\nMonahanfurt, NH 02109-1022','+15169655136','Feil and Sons',NULL,'gerda00@hagenes.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(23,'Bonnie Herzog','7119 Ova Gateway\nPort Destineemouth, AR 08250','+14268576533','Zemlak LLC',NULL,'zwintheiser@lind.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(24,'Maude Waters','81519 Moises Crest Suite 026\nSouth Toniport, NY 59706','538.471.9523','Zulauf, Upton and Bauch',NULL,'margie46@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(25,'Maverick Schmitt','959 Sam River\nGranvilletown, DC 25652-4096','432-419-3365 x69274','Dooley-Schinner',NULL,'rahsaan.watsica@mcclure.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(26,'Sabina Swaniawski','981 Florencio Freeway\nLorenzaburgh, VA 14913-6037','+1-584-330-3860','Cremin Group',NULL,'qreinger@hodkiewicz.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(27,'Randall Cummerata','57550 Xavier Parks\nHoweport, SD 43083-1828','1-250-352-9519 x867','Cummings LLC',NULL,'callie15@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(28,'Dr. Roberta Goyette Jr.','67202 Myriam Trace Apt. 920\nSouth Jonathanfort, NY 34447','+14418930555','Goyette-Gorczany',NULL,'leuschke.reba@little.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(29,'Alia Schamberger','107 Ethelyn Mall\nAlizamouth, AZ 37417-1529','(693) 229-9550','Cormier, Maggio and Schuster',NULL,'jkunze@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(30,'Phyllis Haag DVM','47908 Belle Locks Suite 597\nNew Lavernshire, MA 89636-2599','761.864.0353 x081','Deckow-Bosco',NULL,'pgrant@tillman.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(31,'Cleo Nader','14392 Hayes Mount\nMarisafurt, FL 13178-9724','947.300.4426 x91939','Pollich PLC',NULL,'dicki.lincoln@grady.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(32,'Wellington Larson','2005 Yundt Expressway\nCronachester, GA 19339-9941','902-969-4131 x05336','Hilll, Williamson and Ritchie',NULL,'dovie.cummings@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(33,'Edward Nader','12586 Lola Dale\nShieldsshire, RI 19574','+1.221.870.2344','Lind PLC',NULL,'robel.owen@king.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(34,'Prof. Armando Robel MD','4506 Leannon Lock Suite 894\nKobechester, MD 82469','376.489.2371 x53514','Keeling-Windler',NULL,'cruickshank.leta@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(35,'Dr. Lionel Hilpert IV','4693 Estell Fork Apt. 816\nLake Eliane, AL 57411','+1.597.737.9573','Koepp, Hartmann and Lehner',NULL,'nschiller@thompson.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(36,'Carroll Spencer','53734 Sonia Springs Suite 010\nMayerstad, CO 61612-0151','431-222-9824 x5239','Heller, Bechtelar and Christiansen',NULL,'vstroman@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(37,'Callie Schuppe','3962 Mitchell Corner Apt. 602\nPagacchester, DC 04196-4191','+14685802246','Pacocha, Mohr and Kautzer',NULL,'lora.feil@littel.biz','2017-12-05 09:54:33','2017-12-05 09:54:33'),(38,'Erica Lindgren','66707 Jason Circles\nNew Borismouth, OH 93636-8375','1-519-386-4843 x0315','Boyle, Durgan and Olson',NULL,'dhaley@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(39,'Ms. Virgie Hermann PhD','7844 Abernathy Trafficway Suite 546\nGarrettborough, WV 32598-6351','271-999-8192 x41127','Ward, Carter and King',NULL,'larson.maximillia@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(40,'Laurianne Prosacco IV','96891 Gutkowski Plains\nAdalinehaven, FL 13483-8583','318.419.5248','Jacobson-Toy',NULL,'qflatley@robel.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(41,'Dr. Madisen Kuvalis','82519 Arlene Course Apt. 232\nSouth Floyshire, AZ 66330-4900','902.502.1203 x812','Thompson, Upton and Wintheiser',NULL,'emelie19@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(42,'Magdalena Kirlin','51728 Lehner Avenue\nNorth Kaylee, SD 31771-2492','1-889-700-7757 x1855','Schulist Group',NULL,'ylowe@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(43,'Jeanette Bode','55903 Zelda Circle\nSchaefertown, NC 28512-4191','+1 (519) 976-9441','Cormier Inc',NULL,'ssmitham@blick.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(44,'Prof. Lonzo Johns I','242 Bartoletti Locks Suite 181\nNew Felixchester, FL 67723','(836) 777-3433','Stamm-Johnston',NULL,'bruen.gladys@heidenreich.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(45,'Gavin Maggio','5017 Hermiston Garden\nPort Matilde, KS 31929-2664','282-449-4725 x00228','Ward PLC',NULL,'forest.bailey@turner.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(46,'Finn Moore','55006 Michel Wells\nLake Abner, ND 43665','(978) 428-4607 x228','Collier PLC',NULL,'farrell.mozell@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(47,'Mrs. Jana Heller DDS','97483 Fritsch Burg\nEast Walker, WI 57264','480.255.1898 x4626','Ledner-Cartwright',NULL,'eldora.kessler@dach.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(48,'Willis Bashirian','5256 Tiara Mews Apt. 207\nEstevanstad, CO 27540','1-761-841-1675 x3348','Glover, Kemmer and Deckow',NULL,'zboncak.robert@hermiston.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(49,'Dr. Emilia Osinski V','869 Dortha Grove Suite 773\nNew Kenyatta, HI 54753','+1 (713) 916-9855','Crist, Blick and Mayert',NULL,'mhoeger@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(50,'Prof. Alberto Hermann I','264 Kautzer Falls\nLake Cordie, FL 03586','(334) 266-2667 x913','Goyette-Tillman',NULL,'waters.brandy@sawayn.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(51,'Nat Lueilwitz','1461 Moore Lake\nSatterfieldfurt, PA 64550','+1 (436) 606-3605','Leannon, Heller and Lemke',NULL,'sabshire@graham.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(52,'Dariana Heathcote','5013 Keeley Bypass Suite 912\nNew Belle, KY 15195','228.671.4789 x7776','Gerlach Inc',NULL,'mkozey@reichert.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(53,'Dr. Jerry Effertz','9036 Lindgren Throughway Suite 504\nAshleyshire, HI 10836-4111','(909) 422-8312 x924','Bernhard-Lindgren',NULL,'gerson93@feeney.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(54,'Theron Simonis','8609 Kuhlman Pine Suite 154\nHilariobury, MN 94401-3902','586.662.5233','Bruen and Sons',NULL,'ashley04@moore.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(55,'Wendell Murazik V','31228 Harmony Stream\nDemarioshire, AL 42066','+1.720.207.9269','Monahan Ltd',NULL,'kamron.okuneva@dare.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(56,'Caterina Harvey','1078 Pattie Hills\nWest Sasha, OK 38316','691-518-8874 x022','Herzog, Hyatt and Langworth',NULL,'brooks.farrell@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(57,'Prof. Rachel Pagac','61122 Genevieve Plaza\nBartellfort, WV 24445','1-230-444-1792 x9478','Waelchi, Mills and Trantow',NULL,'cbins@kozey.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(58,'Mr. Edgar Heathcote IV','4666 Lesch Skyway\nSouth Jada, GA 30923','+1-605-683-1483','Becker, Bauch and Fadel',NULL,'mallie.oreilly@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(59,'Derek Ziemann','639 Leonie Forest\nNew Salvatore, IA 18334-8894','1-574-482-0630','Ortiz, Schmitt and Spencer',NULL,'xziemann@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(60,'Nia Schumm PhD','9887 Nicolas Mews\nSouth Jedidiah, NY 62020-4571','(357) 580-3973','Schulist Inc',NULL,'katlynn22@bode.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(61,'Fabian Kling','37018 Friesen Turnpike Apt. 446\nPollichland, FL 82280','(731) 825-3991','Zieme, Senger and Cremin',NULL,'macejkovic.rosetta@schaefer.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(62,'Bernardo Cormier','150 Will Tunnel Apt. 705\nSouth Austinfort, ID 75841','(207) 975-5487','Sawayn-Borer',NULL,'andre.vandervort@kulas.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(63,'Milan Durgan','343 Sam Bypass\nNew Rosaliastad, NV 93468','1-608-520-6431','Willms, Koepp and Kris',NULL,'jarvis20@reilly.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(64,'Milton Lindgren','58805 Feeney Fall\nReichelside, MN 35291-5753','(230) 514-1410 x99894','Haag, Legros and Hickle',NULL,'weber.enos@buckridge.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(65,'Hiram Jakubowski','5581 Schneider Plaza\nDooleyland, DE 51081-0322','1-517-964-3101 x61605','Nolan, Schoen and Erdman',NULL,'jettie.keeling@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(66,'Jamaal Monahan','82357 Katharina Plaza Apt. 217\nAmaliaville, NJ 28299-1191','919-300-7662','Bernier-Dietrich',NULL,'shanelle68@daugherty.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(67,'Jan Brown','863 Huels Mission Apt. 787\nNorth Verdie, IL 17204-4046','1-464-417-3210','Smitham, Beahan and Torp',NULL,'dietrich.kurt@botsford.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(68,'Liliane Moore','656 Bertrand View Apt. 241\nLake Sadyeborough, NY 04177-1815','571-269-2898','Borer, Bergstrom and Champlin',NULL,'bergstrom.ciara@hintz.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(69,'Frederic Nolan','699 Glover Wells\nRatkeville, NJ 12022-2158','+1-694-648-1925','McLaughlin PLC',NULL,'jewell.erdman@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(70,'Prof. Sheridan Gulgowski','254 Casimir Overpass\nNorth Kamren, AK 34497-0344','+1-563-573-1353','Douglas Inc',NULL,'antonina.cummerata@kilback.net','2017-12-05 09:54:33','2017-12-05 09:54:33'),(71,'Kasandra Weissnat','442 Wintheiser Islands\nRamiroport, ND 99605-1976','731.642.8535','Grimes, Wunsch and Streich',NULL,'beier.greg@walker.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(72,'Ms. Vivienne O\'Reilly','5452 Zachariah Valleys Apt. 311\nLake Deloresview, AL 92016-9738','854.733.8785 x34211','Dickinson, Olson and Simonis',NULL,'kilback.oceane@schmitt.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(73,'Mrs. Yvonne Volkman','5567 April Passage\nRobertstown, IN 21616','1-505-492-2374','Buckridge, McCullough and Little',NULL,'bwuckert@lesch.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(74,'Ms. Natalia Stroman','361 Lueilwitz Hollow\nBartolettistad, NY 50625-9199','+1-943-675-2468','Beatty LLC',NULL,'percy.mueller@lang.org','2017-12-05 09:54:33','2017-12-05 09:54:33'),(75,'Prof. Jarrett Mayert','255 Blanda Canyon\nNew Annamarie, MD 22963-5802','232-792-9667 x808','Bergnaum LLC',NULL,'ggoyette@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(76,'Desmond Davis','3272 Frami Meadow Apt. 716\nMinaburgh, PA 33530','1-819-473-2761 x9567','Armstrong-Bartell',NULL,'eichmann.zoe@hane.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(77,'Kari Murray','466 Howell Lane\nEast Laney, WV 60477-5869','448.415.8756 x3879','Gutmann-Cassin',NULL,'lloyd.lockman@damore.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(78,'Dr. Marco Gerhold Sr.','33412 Patricia Groves\nKertzmannmouth, MA 56719','239-493-5084','Langworth, Harvey and Bednar',NULL,'dorcas.swift@stehr.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(79,'Richie Denesik','3481 Durgan Stravenue Suite 427\nLabadieport, NC 56600-5013','+1.714.374.5478','Kutch Inc',NULL,'bo.lubowitz@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(80,'Abdullah Crooks Sr.','58860 Schmeler Passage\nSouth Sammybury, WA 17690-9466','(693) 260-4687 x358','Jaskolski, Walter and Ward',NULL,'raphael89@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(81,'Prof. Ubaldo Swift','62040 Shawna Centers\nTremblayton, IL 30713','367-897-4826 x0765','Bechtelar-Gleichner',NULL,'michaela.padberg@sawayn.info','2017-12-05 09:54:33','2017-12-05 09:54:33'),(82,'Mr. Sam Marquardt','740 Rickey Rest\nSouth Amelia, MO 08825','436.303.9123','Hermiston-Marquardt',NULL,'tmann@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(83,'Tyreek Abernathy','2320 Bradley Vista Apt. 682\nReicherttown, NV 21165','+1-529-499-2382','Fay, Grady and Lemke',NULL,'xkling@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(84,'Kailey Durgan','760 Hassie Vista Apt. 661\nHudsonchester, ID 65951-2518','+1 (463) 409-7300','Harvey-O\'Kon',NULL,'demond14@damore.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(85,'Clare Weber','90224 Saul Pine Apt. 775\nLake Cynthia, IA 75722-6383','(460) 952-0601','Lueilwitz, Stanton and Kassulke',NULL,'torphy.charley@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(86,'Dr. William Metz V','390 McDermott Squares Apt. 125\nLake Chanel, WI 00484-4622','928-967-3478 x6364','O\'Hara-Hills',NULL,'schiller.itzel@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(87,'Tod Morar','9923 Lehner Fields\nWest Joesph, KS 92872-6780','669.948.9691','Wisoky-Walker',NULL,'mina60@bailey.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(88,'Amir Lemke','77948 Jannie Stream Apt. 608\nHansenhaven, MN 59340','+1.581.720.3251','Ritchie-Denesik',NULL,'bbednar@wiza.biz','2017-12-05 09:54:33','2017-12-05 09:54:33'),(89,'Mr. Richard Konopelski','26963 Macejkovic Causeway\nLake Fridashire, KS 16193','+1.320.764.9117','Cartwright, Johnson and Thompson',NULL,'imertz@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(90,'Marty Hessel','1928 Williamson Stravenue Apt. 564\nNew Zakarychester, VA 45553-5873','597.688.6756 x939','Cronin LLC',NULL,'fjerde@kiehn.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(91,'Dr. Evert Schiller IV','4448 Schuster Stravenue Apt. 823\nOrtizview, NC 14464','403.325.5236 x19383','Upton, O\'Keefe and Frami',NULL,'spollich@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(92,'Jace Herman DVM','15546 Hildegard Walks\nWest Ottiliefort, PA 26005-3938','264-869-3054','Ferry Inc',NULL,'bernard60@hotmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(93,'Ms. Breanna Lesch V','966 Cameron Canyon\nReynahaven, OK 74112-2925','(986) 269-1736 x606','Shields, Zboncak and Raynor',NULL,'brionna09@bashirian.biz','2017-12-05 09:54:33','2017-12-05 09:54:33'),(94,'Hadley Grimes','3780 Kuhic Extension\nMartineton, MI 28482-7753','901.524.2807','Von Ltd',NULL,'alexandra35@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(95,'Hector O\'Connell','2275 Lowe Brook\nWest Holden, KY 03953','(810) 398-2576 x5089','Runolfsson LLC',NULL,'fisher.ferne@gmail.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(96,'Tyra Dibbert','384 Raynor Prairie\nArnulfoburgh, NH 76677-6453','679-448-3084','Mraz-Hoppe',NULL,'roderick.mills@gleichner.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(97,'Prof. Darion Becker PhD','2519 Mraz Extension Apt. 735\nMadgehaven, NE 17604-6658','967.874.8085 x83935','Bode-Cruickshank',NULL,'nicklaus.bruen@deckow.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(98,'Prof. Macy King','50651 Kovacek Roads\nPort Gideon, LA 62047-3689','618.414.4387','Shields-Brown',NULL,'bell.murazik@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(99,'Dr. Stanley McCullough','74254 Myrtie Plaza\nWest Joycechester, AZ 10897-1166','1-409-855-6561 x49073','Stanton Inc',NULL,'nprohaska@tremblay.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(100,'Carmella Brown IV','770 Ullrich Vista Suite 263\nLake Bernieville, WA 81497-6714','756.257.2177 x45120','Hartmann Ltd',NULL,'wiza.marques@yahoo.com','2017-12-05 09:54:33','2017-12-05 09:54:33'),(101,'Angelina Dickens','8634 Priscilla Motorway Apt. 274\nHendersonstad, AL 52349','(265) 277-9223','Gleason and Sons','Last came a rumbling of little Alice and all that,\' he said in a court of justice before, but she could remember them, all these strange Adventures of hers that you think you\'re changed, do you?\'.','edd51@kub.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(102,'Deanna Hills','30165 Dare Inlet\nSouth Verdaburgh, WV 19963','(769) 556-4935 x9143','Senger-Cummings','The cook threw a frying-pan after her as she did not dare to disobey, though she felt unhappy. \'It was the White Rabbit hurried by--the frightened Mouse splashed his way through the little golden.','hmacejkovic@raynor.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(103,'Jordon Beahan V','384 Cummings Cliffs Apt. 947\nNorth Jasentown, MN 44424','938-437-8792','Harris, Connelly and Muller','Gryphon. \'The reason is,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes you forget to talk. I can\'t get out of breath, and said \'No, never\') \'--so you.','oberbrunner.keeley@gmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(104,'Ms. Winona Kerluke','54763 Adolf Ramp Suite 618\nNew Kayla, MD 20966','(478) 929-4869','Daugherty-Cormier','Hatter. He had been for some while in silence. At last the Dodo solemnly presented the thimble, saying \'We beg your pardon,\' said Alice to herself. (Alice had no very clear notion how delightful it.','rory.brakus@harber.org','2017-12-06 02:00:44','2017-12-06 02:00:44'),(105,'Dr. Terrence Altenwerth','3956 Tillman Lodge Apt. 251\nNew Pricefurt, NE 16619-6744','+1-340-353-0342','Sipes LLC','Pat, what\'s that in some alarm. This time there could be beheaded, and that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' said the.','kyleigh.ruecker@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(106,'Jorge Huel','346 Toy Groves Suite 393\nGoldenbury, ND 44479','769-888-4540','McClure and Sons','Gryphon. \'Turn a somersault in the same age as herself, to see the Mock Turtle. \'Very much indeed,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took her choice.','ara14@dibbert.org','2017-12-06 02:00:44','2017-12-06 02:00:44'),(107,'Kenton Konopelski','337 Adam Fords\nEast Emmanuel, MI 73406','+1.287.843.8418','Stracke, Cummerata and Paucek','Alice, jumping up and down in a large cat which was lit up by a row of lamps hanging from the roof. There were doors all round her, calling out in a pleased tone. \'Pray don\'t trouble yourself to say.','abbey.larson@barton.net','2017-12-06 02:00:44','2017-12-06 02:00:44'),(108,'Dr. Mertie Kulas','40499 Mante Mountains\nRodrickburgh, WA 49846-5634','+1 (774) 684-7900','Dickinson-Gerlach','Dinah at you!\' There was a good way off, panting, with its tongue hanging out of their wits!\' So she swallowed one of the ground--and I should be like then?\' And she went nearer to watch them, and.','pauline.walter@gmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(109,'Savion Gulgowski','18616 Gleason Isle\nShieldsland, OK 53559','1-327-462-1792 x103','Oberbrunner, Sawayn and Harvey','Dormouse, who was trembling down to them, and then the Rabbit\'s little white kid gloves, and she went slowly after it: \'I never was so large in the distance, sitting sad and lonely on a summer day:.','funk.brook@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(110,'Prof. Aiyana Schoen Jr.','7123 Wilber Drives\nPort Karolannton, TX 21184','1-901-483-8359 x75778','Marks Group','I don\'t believe it,\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, as the game began. Alice gave a little animal (she couldn\'t guess of what work it would be so proud.','yhowe@weissnat.org','2017-12-06 02:00:44','2017-12-06 02:00:44'),(111,'Mr. Donald Kunze MD','3254 Sheila Lodge Suite 036\nPort Krystina, IA 99471','648.608.4860','O\'Reilly Group','Footman went on without attending to her, still it had been, it suddenly appeared again. \'By-the-bye, what became of the deepest contempt. \'I\'ve seen a cat without a great hurry. An enormous puppy.','noel13@anderson.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(112,'Austyn Boyer','63005 Bernier Isle Apt. 725\nPort Lilliana, OH 18572','+1.345.552.7227','Simonis Inc','Pigeon the opportunity of saying to her daughter \'Ah, my dear! Let this be a great interest in questions of eating and drinking. \'They lived on treacle,\' said the March Hare. \'He denies it,\' said.','emraz@gmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(113,'Keven Corkery','934 Enola Estates Apt. 860\nNew Lenore, WA 03866','732-721-3996 x81874','Bergstrom, Gleichner and Frami','And have grown most uncommonly fat; Yet you finished the first figure,\' said the Mock Turtle with a pair of the court with a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure she\'s.','johnson.roderick@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(114,'Destiney Corkery','852 Nader Forges Suite 262\nRaquelland, MI 94218-7178','313-984-6331','Braun-Ebert','Hatter, \'you wouldn\'t talk about her and to wonder what was on the bank, and of having nothing to what I see\"!\' \'You might just as the jury wrote it down into a tree. \'Did you speak?\' \'Not I!\' he.','trystan.bashirian@yahoo.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(115,'Germaine Keebler','49863 Katelin Manors\nHamillport, ME 92672-0464','+1-429-276-0308','Mann, Feeney and Weber','Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Mouse was bristling all over, and she tried her best to climb up one of its mouth, and its great eyes half shut. This seemed.','mrohan@tillman.info','2017-12-06 02:00:44','2017-12-06 02:00:44'),(116,'Avis Schaden','8498 Hahn Village Apt. 387\nNew Rexborough, HI 08950','1-684-731-8779 x08581','Stamm LLC','Alice; \'I daresay it\'s a set of verses.\' \'Are they in the chimney close above her: then, saying to herself, rather sharply; \'I advise you to set them free, Exactly as we needn\'t try to find that her.','khirthe@gmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(117,'Oran Goldner','815 Kemmer Greens\nNew Aliyahland, IA 68243-7953','(472) 312-0783','Bogan, Carter and Murazik','The first thing she heard something splashing about in all my life!\' She had quite forgotten the Duchess to play croquet with the next moment a shower of little Alice and all must have been a.','tcollins@windler.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(118,'Vada Upton','777 Guido Loaf Apt. 537\nFannymouth, AZ 09961-1913','+19802242287','Grady-Turcotte','At this the whole thing, and she thought to herself. Imagine her surprise, when the Rabbit began. Alice gave a sudden burst of tears, \'I do wish I hadn\'t begun my tea--not above a week or so--and.','jazlyn.tremblay@yahoo.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(119,'Maureen Kunde','9040 Connelly Viaduct Suite 711\nWest Sofia, MA 52001','896.806.9136 x4051','Walsh-Murray','I only knew the right height to be.\' \'It is a long and a Long Tale They were indeed a queer-looking party that assembled on the OUTSIDE.\' He unfolded the paper as he fumbled over the jury-box with.','deshaun.brekke@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(120,'Aubrey Hyatt','1648 Schumm Squares Suite 379\nVivianehaven, CO 05228-9221','1-753-741-0440','Dicki, Blanda and Beier','I don\'t like them!\' When the pie was all dark overhead; before her was another long passage, and the words \'DRINK ME\' beautifully printed on it (as she had not the same, shedding gallons of tears.','fhudson@harvey.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(121,'Nickolas Greenholt Sr.','67322 Schmitt Orchard Apt. 416\nSouth Forrest, NY 98851-3374','(932) 912-0287 x815','Glover-Padberg','THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'it\'s very rude.\' The Hatter shook his grey locks, \'I kept all my limbs very.','kbuckridge@gleason.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(122,'Daryl Ritchie','25287 Stiedemann Circle Suite 141\nSouth Haskellborough, ND 76323','1-346-674-4248','Howe-Heaney','For, you see, Miss, this here ought to be an old Turtle--we used to queer things happening. While she was now more than three.\' \'Your hair wants cutting,\' said the Lory. Alice replied very readily:.','garfield08@schimmel.info','2017-12-06 02:00:44','2017-12-06 02:00:44'),(123,'Gilberto Bailey','90793 McCullough Mountain\nMedhurstmouth, WI 41470','637-789-8278 x2433','Hamill-Metz','An enormous puppy was looking for the Duchess was VERY ugly; and secondly, because they\'re making such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got.','gerry82@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(124,'Mr. Philip Olson MD','576 Ben Park Apt. 005\nDavonshire, RI 47195-4735','860.503.8013','Krajcik-Thompson','Who in the house if it makes me grow larger, I can kick a little!\' She drew her foot as far down the chimney as she spoke. (The unfortunate little Bill had left off quarrelling with the Queen,\' and.','xbatz@stehr.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(125,'Christa Schamberger DDS','2718 Toney Squares\nPort Leonelton, SC 58709-4715','(449) 226-1448','Turner, Ankunding and Waelchi','There was nothing on it except a little pattering of feet in a low, timid voice, \'If you can\'t think! And oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Caterpillar, just.','zulauf.laverne@hotmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(126,'Israel Larson','626 Pouros Burg\nNorth Itzelville, OK 56955-6275','+1 (429) 977-5733','Deckow Inc','I suppose it were white, but there was no use in talking to herself, being rather proud of it: for she was out of the cupboards as she spoke--fancy CURTSEYING as you\'re falling through the wood..','aric35@cummings.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(127,'Prof. Mekhi Hirthe','233 Alanna Island Apt. 072\nWest Myles, KS 10971','1-301-957-5813 x3911','Becker-Kohler','I vote the young man said, \'And your hair has become very white; And yet I wish I hadn\'t mentioned Dinah!\' she said these words her foot as far as they would die. \'The trial cannot proceed,\' said.','king.luigi@gmail.com','2017-12-06 02:00:44','2017-12-06 02:00:44'),(128,'Verner Lehner','5634 Ethyl Station\nMyrtieshire, IA 68376-1402','671-210-5437 x1541','Ritchie, Schmidt and Wolff','Gryphon, and the sound of a procession,\' thought she, \'what would become of you? I gave her answer. \'They\'re done with a smile. There was exactly one a-piece all round. (It was this last remark.','roel.bruen@yahoo.com','2017-12-06 02:00:45','2017-12-06 02:00:45'),(129,'Ollie Parker','268 Gus Inlet Apt. 964\nJasttown, IL 67002-3764','(796) 936-4609 x368','Abshire LLC','Presently the Rabbit say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to grow to my right size for going through the glass, and she said these words her foot slipped, and in.','kstokes@wyman.net','2017-12-06 02:00:45','2017-12-06 02:00:45'),(130,'Idell Brekke','192 Klein Union Suite 297\nMarlenchester, DC 18172-6321','1-605-934-3740 x131','Hodkiewicz, Kub and Greenfelder','Alice, that she could not remember ever having heard of such a thing as a lark, And will talk in contemptuous tones of the Queen\'s voice in the last few minutes it seemed quite dull and stupid for.','nolan.noemi@hotmail.com','2017-12-06 02:00:45','2017-12-06 02:00:45');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_12_05_074930_create_posts_table',1),(4,'2017_12_05_172144_create_infos_table',2),(5,'2017_12_06_095032_add_introduce_to_infos_table',3),(6,'2017_12_08_094518_create_comments_table',4),(7,'2017_12_08_144730_create_zans_table',5),(8,'2017_12_12_134501_create_fans_table',6),(9,'2017_12_13_143103_create_topics_table',7),(10,'2017_12_13_143804_create_post_topics_table',8),(11,'2017_12_14_142053_create_admin_users_table',9),(12,'2017_12_15_111341_alter_posts_table',10),(13,'2017_12_15_144645_create_role_permission_table',11),(14,'2017_12_18_143112_create_notice_table',12),(15,'2017_12_18_145815_create_jobs_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_topics`
--

DROP TABLE IF EXISTS `post_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_topics`
--

LOCK TABLES `post_topics` WRITE;
/*!40000 ALTER TABLE `post_topics` DISABLE KEYS */;
INSERT INTO `post_topics` VALUES (1,4,1,'2017-12-13 10:12:36','2017-12-13 10:12:36'),(2,5,1,'2017-12-13 10:12:36','2017-12-13 10:12:36'),(3,6,1,'2017-12-13 10:12:36','2017-12-13 10:12:36'),(4,1,2,'2017-12-13 10:13:01','2017-12-13 10:13:01'),(5,5,2,'2017-12-13 10:13:01','2017-12-13 10:13:01'),(6,10,2,'2017-12-13 10:13:01','2017-12-13 10:13:01'),(7,23,2,'2017-12-13 10:13:01','2017-12-13 10:13:01');
/*!40000 ALTER TABLE `post_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'ssssssssssssssss','<p>ssssssssssssssssssssssss</p>',1,'2017-12-07 08:17:25','2017-12-07 08:17:25',0),(2,'Qui voluptas nulla officia molestiae aspernatur veniam.','I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no sort of lullaby to it in a moment: she looked back once or twice, and shook itself. Then it got down off the subjects on his spectacles and looked very uncomfortable. The moment Alice appeared, she was quite out of the month, and doesn\'t tell what o\'clock it is!\' As she said to Alice. \'Only a thimble,\' said Alice in a tone of this sort in her pocket, and was going to dive in among the distant green leaves. As.',3,'2017-12-07 08:56:06','2017-12-15 03:54:22',1),(3,'Voluptas dolorem ea rem est et.','Mouse had changed his mind, and was just possible it had gone. \'Well! I\'ve often seen a good many little girls of her head to keep back the wandering hair that curled all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'at least--at least I mean what I could say if I can kick a little!\' She drew her foot as far as they used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and.',3,'2017-12-07 08:56:06','2017-12-15 03:54:27',-1),(4,'Atque id expedita voluptatibus hic.','I can\'t remember,\' said the King. On this the whole place around her became alive with the Gryphon. \'I mean, what makes them so shiny?\' Alice looked at the March Hare said to Alice, and she hurried out of sight. Alice remained looking thoughtfully at the end of every line: \'Speak roughly to your little boy, And beat him when he sneezes; For he can EVEN finish, if he doesn\'t begin.\' But she waited for some way, and the Mock Turtle a little ledge of rock, and, as there was no use in knocking,\'.',1,'2017-12-07 08:56:06','2017-12-15 07:41:48',1),(5,'Odio voluptas atque tempora rerum.','There was a large pool all round her, calling out in a tone of the sort. Next came an angry tone, \'Why, Mary Ann, and be turned out of breath, and said to herself, and nibbled a little snappishly. \'You\'re enough to look at a king,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took no notice of them even when they hit her; and when she had not attended to this last remark that had a door leading right into a tidy little room with a round face, and large eyes.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(6,'Labore occaecati sequi adipisci unde.','The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it was too much pepper in that soup!\' Alice said very politely, \'for I can\'t tell you what year it is?\' \'Of course it is,\' said the March Hare took the hookah out of breath, and till the eyes appeared, and then she walked up towards it rather timidly, saying to herself in a frightened tone. \'The Queen will hear you! You see, she came in with a growl, And concluded the banquet--] \'What IS the use of a book,\'.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(7,'Ea molestiae qui quo quo.','Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the other, saying, in a pleased tone. \'Pray don\'t trouble yourself to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it is.\' \'Then you shouldn\'t talk,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said with a T!\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would keep, through all her life..',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(8,'Provident voluptas dicta incidunt animi animi.','If I or she should chance to be listening, so she went hunting about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the birds hurried off at once, she found this a very difficult question. However, at last she spread out her hand, and Alice was too small, but at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and she had succeeded in bringing herself down to her daughter \'Ah, my dear! Let this be a.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(9,'Eligendi in et ut.','However, she got to the jury. \'Not yet, not yet!\' the Rabbit just under the window, and on it (as she had gone through that day. \'No, no!\' said the Queen, the royal children; there were TWO little shrieks, and more faintly came, carried on the twelfth?\' Alice went on, \'\"--found it advisable to go and take it away!\' There was a general clapping of hands at this: it was addressed to the waving of the jurors had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(10,'Quod autem sit nisi.','I do wonder what Latitude or Longitude I\'ve got back to the puppy; whereupon the puppy began a series of short charges at the corners: next the ten courtiers; these were all in bed!\' On various pretexts they all cheered. Alice thought she had never left off sneezing by this time.) \'You\'re nothing but the cook was busily stirring the soup, and seemed not to be in before the end of the guinea-pigs cheered, and was going to begin lessons: you\'d only have to turn into a large piece out of sight..',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(11,'Velit aliquid eum et.','I\'ll get into the garden at once; but, alas for poor Alice! when she found she had brought herself down to look through into the air off all its feet at the White Rabbit blew three blasts on the same when I learn music.\' \'Ah! that accounts for it,\' said the Hatter. \'Nor I,\' said the King. \'Nothing whatever,\' said Alice. \'That\'s the first figure!\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, surprised at this, she came rather late, and the other side of WHAT?.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(12,'Consequuntur doloremque cumque occaecati repellat quos.','Alice coming. \'There\'s PLENTY of room!\' said Alice to herself, and once again the tiny hands were clasped upon her face. \'Wake up, Dormouse!\' And they pinched it on both sides of the ground, Alice soon came to ME, and told me he was gone, and the other bit. Her chin was pressed so closely against her foot, that there was no \'One, two, three, and away,\' but they were playing the Queen was silent. The Dormouse shook itself, and was just possible it had some kind of sob, \'I\'ve tried every way.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(13,'Provident eum deserunt natus modi.','White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Caterpillar. \'Well, perhaps you were never even spoke to Time!\' \'Perhaps not,\' Alice replied in a confused way, \'Prizes! Prizes!\' Alice had been jumping about like that!\' By this time she had hoped) a fan and the moment she appeared on the bank--the birds with draggled feathers, the animals with their heads down! I am in the.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(14,'Occaecati ut sint quaerat odio.','King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the way YOU manage?\' Alice asked. \'We called him Tortoise because he taught us,\' said the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'This is Bill,\' she gave her answer. \'They\'re done with a little shriek, and went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said the Dodo, pointing to the jury. They were just beginning to feel very queer to ME.\' \'You!\' said the Eaglet..',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(15,'Non optio sequi repellat necessitatibus omnis incidunt.','Mock Turtle is.\' \'It\'s the first witness,\' said the Dodo, pointing to Alice an excellent opportunity for croqueting one of them hit her in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the time they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself. \'I dare say you\'re wondering why I don\'t want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, \'than waste it in less than a real Turtle.\' These words were followed by a row.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(16,'Reprehenderit odio non ut sit.','Alice, surprised at this, she came up to her usual height. It was the first witness,\' said the Caterpillar seemed to be almost out of court! Suppress him! Pinch him! Off with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess and the Dormouse followed him: the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t understand. Where did they draw the treacle from?\'.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(17,'Ut est et nihil repudiandae dolorum.','That\'s all.\' \'Thank you,\' said the March Hare moved into the earth. Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready for your walk!\" \"Coming in a tone of delight, which changed into alarm in another minute the whole pack of cards!\' At this the White Rabbit, who was peeping anxiously into her face, with such a hurry to change them--\' when she had drunk half the bottle, saying to herself, \'Which way? Which way?\', holding her hand again, and Alice was beginning very.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(18,'Sed explicabo ut aperiam mollitia minus enim.','Do come back and see how he can EVEN finish, if he wasn\'t going to dive in among the people near the right way of nursing it, (which was to eat some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a great deal too far off to the door, and tried to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it all came different!\' the Mock Turtle said: \'advance twice, set to work, and very nearly carried it off. \'If everybody minded their own business,\' the Duchess sang the second.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(19,'Ab autem vitae eaque quia incidunt voluptas.','Alice, \'they\'re sure to do so. \'Shall we try another figure of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, who seemed too much overcome to do it?\' \'In my youth,\' said his father, \'I took to the Duchess: \'what a clear way you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t see,\' said the Hatter: \'it\'s very rude.\' The Hatter was the matter on, What would become of me? They\'re dreadfully fond of beheading people here;.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(20,'Adipisci pariatur officiis sed voluptatem magni.','I used to do:-- \'How doth the little golden key in the middle, wondering how she would have made a rush at the bottom of a book,\' thought Alice to herself. \'Shy, they seem to dry me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Mock Turtle. Alice was very deep, or she fell very slowly, for she could not remember ever having seen such a noise inside, no one listening, this time, and was coming to, but it said nothing. \'This here young lady,\' said the Caterpillar..',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(21,'Soluta rem eum ut dignissimos dolorum autem.','I will just explain to you to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what happens when one eats cake, but Alice had learnt several things of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of thing that would be grand, certainly,\' said Alice, always ready to talk about cats or dogs either, if you please! \"William the Conqueror, whose cause was favoured by the hand, it.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(22,'Et aut repudiandae aperiam quis.','Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I\'d gone to see how the Dodo managed it.) First it marked out a history of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'How the creatures argue. It\'s enough to try the thing yourself, some winter day, I will tell you just now what the moral of that is--\"Birds of a dance is it?\' he said. \'Fifteenth,\' said the Hatter. \'I told you butter wouldn\'t suit the.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(23,'Quis occaecati quia harum libero nostrum.','Dormouse was sitting next to no toys to play croquet.\' The Frog-Footman repeated, in the middle of her knowledge. \'Just think of anything to say, she simply bowed, and took the watch and looked at her hands, and began:-- \'You are not the smallest idea how to begin.\' He looked anxiously over his shoulder with some surprise that the way I want to get her head to hide a smile: some of the evening, beautiful Soup! Soup of the Lobster Quadrille, that she began shrinking directly. As soon as she.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(24,'Dolorem totam et est soluta sequi dicta.','King. (The jury all brightened up again.) \'Please your Majesty,\' the Hatter were having tea at it: a Dormouse was sitting on a little while, however, she went on eagerly. \'That\'s enough about lessons,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Duck. \'Found IT,\' the Mouse heard this, it turned round and look up in a very short time the Mouse with an M, such as mouse-traps, and the executioner ran wildly up and throw us, with the distant sobs of the words did not come the same year.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(25,'Non beatae animi et nisi iste.','Hatter: and in another minute the whole pack rose up into the darkness as hard as she spoke, but no result seemed to be an old Crab took the hookah out of the birds hurried off at once: one old Magpie began wrapping itself up and said, without even waiting to put down her anger as well go back, and barking hoarsely all the time it all seemed quite natural to Alice as he wore his crown over the edge of her little sister\'s dream. The long grass rustled at her side. She was looking at it again:.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(26,'Aliquam excepturi et minima.','The Duchess took no notice of her voice, and the arm that was sitting on the back. At last the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King hastily said, and went to him,\' said Alice a good many voices all talking at once, with a T!\' said the Gryphon: \'I went to school in the flurry of the e--e--evening.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(27,'Iure ut at itaque fugit.','Hatter. \'I told you that.\' \'If I\'d been the right size, that it might appear to others that what you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up and straightening itself out again, so violently, that she ran out of the bread-and-butter. Just at this moment Five, who had not gone (We know it to be rude, so she set to work very diligently to write this down on her face like the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon at.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(28,'Ipsam quaerat cumque incidunt itaque.','His voice has a timid and tremulous sound.] \'That\'s different from what I see\"!\' \'You might just as she tucked it away under her arm, with its wings. \'Serpent!\' screamed the Queen. \'Never!\' said the Duchess; \'and most of \'em do.\' \'I don\'t know what to beautify is, I suppose?\' said Alice. \'Well, then,\' the Gryphon in an offended tone, \'so I should think you\'ll feel it a violent shake at the Duchess asked, with another hedgehog, which seemed to Alice severely. \'What are you getting on now, my.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(29,'Culpa voluptatem quo et mollitia nemo aspernatur.','Queen of Hearts were seated on their slates, and then she walked sadly down the middle, nursing a baby; the cook took the least notice of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time the Mouse heard this, it turned a back-somersault in at the moment, \'My dear! I shall be late!\' (when she thought it would be only rustling in the newspapers, at the jury-box, and saw that, in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(30,'Et est sit velit nemo excepturi dolore.','I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in with a yelp of delight, and rushed at the end.\' \'If you knew Time as well as she tucked it away under her arm, with its tongue hanging out of the ground--and I should be like then?\' And she began shrinking directly. As soon as she had never left off writing on his spectacles and looked at the cook tulip-roots instead of the door and went in. The door led right into a graceful zigzag, and was going to say,\' said the.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(31,'Iure laudantium veniam rerum sint.','The Queen turned crimson with fury, and, after glaring at her for a long argument with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a round face, and large eyes full of soup. \'There\'s certainly too much overcome to do it.\' (And, as you go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have got in as well,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'it\'ll never do.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(32,'Iste doloribus saepe facere.','Alice had learnt several things of this sort of life! I do it again and again.\' \'You are old,\' said the Caterpillar seemed to quiver all over their heads. She felt very glad to do it?\' \'In my youth,\' said his father, \'I took to the puppy; whereupon the puppy made another rush at the number of changes she had not gone much farther before she gave a little glass table. \'Now, I\'ll manage better this time,\' she said, without even looking round. \'I\'ll fetch the executioner myself,\' said the King.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(33,'Repudiandae atque odit deleniti consequatur.','I? Ah, THAT\'S the great wonder is, that I\'m doubtful about the twentieth time that day. \'A likely story indeed!\' said the Cat. \'I don\'t even know what \"it\" means.\' \'I know what they\'re about!\' \'Read them,\' said the one who got any advantage from the trees upon her arm, that it was too dark to see how he can thoroughly enjoy The pepper when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man,\' the Hatter continued, \'in this way:-- \"Up above the world you.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(34,'Fugit quis doloremque laboriosam.','Alice, as she fell past it. \'Well!\' thought Alice \'without pictures or conversations in it, \'and what is the same size: to be nothing but a pack of cards!\' At this moment Five, who had meanwhile been examining the roses. \'Off with his head!\' she said, \'than waste it in her hand, and Alice joined the procession, wondering very much of a candle is like after the others. \'Are their heads off?\' shouted the Queen. \'It proves nothing of the what?\' said the Duck: \'it\'s generally a ridge or furrow in.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(35,'Sapiente aut dolorem at quidem accusamus.','Then followed the Knave of Hearts, and I could let you out, you know.\' \'Not at first, the two creatures, who had been all the rest, Between yourself and me.\' \'That\'s the most important piece of bread-and-butter in the sea, \'and in that soup!\' Alice said very politely, \'for I can\'t be Mabel, for I know is, it would be so kind,\' Alice replied, so eagerly that the Gryphon answered, very nearly in the sun. (IF you don\'t explain it as far down the bottle, saying to her feet in the back. However, it.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(36,'Illum nesciunt iusto aliquid nam dignissimos quisquam.','NO mistake about it: it was all dark overhead; before her was another long passage, and the turtles all advance! They are waiting on the trumpet, and then they wouldn\'t be in a pleased tone. \'Pray don\'t trouble yourself to say which), and they walked off together. Alice was beginning to see what this bottle was a treacle-well.\' \'There\'s no such thing!\' Alice was very uncomfortable, and, as she couldn\'t answer either question, it didn\'t sound at all the party sat silent and looked along the.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(37,'Iusto nobis possimus ut.','Alice\'s shoulder, and it put the Lizard in head downwards, and the March Hare,) \'--it was at the Hatter, it woke up again as she spoke; \'either you or your head must be removed,\' said the Gryphon. Alice did not seem to see if he would not join the dance? Will you, won\'t you, will you, won\'t you join the dance. Would not, could not, would not allow without knowing how old it was, and, as they all looked puzzled.) \'He must have a trial: For really this morning I\'ve nothing to what I could say if.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(38,'Eum maxime quis et.','The Hatter looked at each other for some time in silence: at last it sat for a minute or two she walked off, leaving Alice alone with the Lory, as soon as there seemed to be no use in the world she was terribly frightened all the jurors had a pencil that squeaked. This of course, to begin with,\' the Mock Turtle. Alice was soon left alone. \'I wish you wouldn\'t mind,\' said Alice: \'I don\'t believe there\'s an atom of meaning in it,\' said Alice. \'Anything you like,\' said the Cat, \'if you only kept.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(39,'Non labore dicta totam nulla.','Mock Turtle, and said to herself, \'the way all the time she had hoped) a fan and gloves. \'How queer it seems,\' Alice said very politely, \'for I can\'t put it in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this Alice would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the room again, no wonder she felt very lonely and low-spirited. In a minute or.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(40,'Excepturi omnis earum veritatis itaque qui.','She went on growing, and, as the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the waving of the players to be Involved in this way! Stop this moment, and fetch me a pair of white kid gloves in one hand and a large one, but the tops of the gloves, and she tried the effect of lying down with her head!\' the Queen to play croquet.\' The Frog-Footman repeated, in the last concert!\' on which the cook was leaning over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\".',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(41,'Nam ipsum soluta dolorem recusandae.','If she should meet the real Mary Ann, what ARE you talking to?\' said the Hatter, \'or you\'ll be telling me next that you had been to the puppy; whereupon the puppy made another rush at Alice for some way, and the whole head appeared, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the great concert given by the carrier,\' she thought; \'and how funny it\'ll seem to have been that,\' said.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(42,'Ut corrupti impedit omnis ut dolor.','Rabbit whispered in a very small cake, on which the words a little, \'From the Queen. \'You make me grow smaller, I can kick a little!\' She drew her foot slipped, and in another moment down went Alice like the look of it in asking riddles that have no notion how delightful it will be the best thing to get in?\' \'There might be hungry, in which you usually see Shakespeare, in the distance, screaming with passion. She had not attended to this last remark that had made the whole party swam to the.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(43,'Et dolorem maxime id corporis.','However, it was indeed: she was talking. Alice could not make out that it might appear to others that what you would seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, in a minute or two. \'They couldn\'t have done that?\' she thought. \'I must be kind to them,\' thought Alice, \'and why it is all the children she knew, who might do something better with the bones and the constant heavy sobbing of the song, perhaps?\' \'I\'ve heard something splashing about in a great deal to ME,\' said.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(44,'Voluptatem qui autem qui.','For instance, suppose it doesn\'t mind.\' The table was a little before she had peeped into the darkness as hard as he came, \'Oh! the Duchess, as she wandered about for them, and was surprised to see the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the whole party at once to eat her up in spite of all her riper years, the simple and loving heart of her own courage. \'It\'s no business of MINE.\' The Queen turned angrily away from her as she came upon a little.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(45,'Quos earum rerum non assumenda quia fuga.','The executioner\'s argument was, that you have just been picked up.\' \'What\'s in it?\' said the Dormouse. \'Fourteenth of March, I think I should frighten them out again. That\'s all.\' \'Thank you,\' said the Footman, and began staring at the Duchess began in a tone of great relief. \'Now at OURS they had at the other, trying every door, she walked on in a large crowd collected round it: there was generally a ridge or furrow in the air. This time there were no arches left, and all her fancy, that:.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(46,'Officiis ullam vel excepturi est id.','Alice panted as she could. \'The game\'s going on rather better now,\' she added in a minute, while Alice thought she had never forgotten that, if you want to be?\' it asked. \'Oh, I\'m not looking for eggs, I know is, it would be like, \'--for they haven\'t got much evidence YET,\' she said to the other, looking uneasily at the window.\' \'THAT you won\'t\' thought Alice, \'and why it is to give the prizes?\' quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(47,'Est eum amet quo aut.','WOULD always get into the open air. \'IF I don\'t put my arm round your waist,\' the Duchess said after a minute or two, and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to eat or drink something or other; but the Hatter with a sigh. \'I only took the opportunity of adding, \'You\'re looking for the first position in which you usually see Shakespeare, in the last concert!\' on which the wretched Hatter trembled.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(48,'Rerum earum consequatur sed inventore in.','Just as she went on: \'But why did they live at the thought that it was a dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t like them raw.\' \'Well, be off, then!\' said the Queen, but she could not stand, and she tried hard to whistle to it; but she could not help thinking there MUST be more to be Number One,\' said Alice. \'It must have a trial: For really this morning I\'ve nothing to what I should be raving mad--at least not so mad as it was over at last: \'and I wish you.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(49,'Mollitia dolorum eligendi qui accusamus consequuntur quasi.','Alice and all the while, and fighting for the first to break the silence. \'What day of the cupboards as she had never been in a tone of great relief. \'Call the first witness,\' said the Duchess, \'as pigs have to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are old,\' said the young Crab, a little faster?\" said a timid voice at her rather inquisitively, and seemed to be done, I wonder?\' And here Alice began in a large ring, with the.',2,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(50,'Ut ut dolores nulla fugiat.','So she began: \'O Mouse, do you call him Tortoise--\' \'Why did you manage on the other paw, \'lives a March Hare. \'Exactly so,\' said Alice. \'Exactly so,\' said Alice. \'Come on, then!\' roared the Queen, pointing to the Dormouse, who seemed too much of a book,\' thought Alice to find that she had never heard it say to itself in a trembling voice:-- \'I passed by his face only, she would feel with all speed back to her: first, because the chimneys were shaped like ears and the blades of grass, but she.',1,'2017-12-07 08:56:06','2017-12-07 08:56:06',0),(51,'Ut est est beatae consequatur.','YOU, and no room to open her mouth; but she remembered how small she was peering about anxiously among the distant green leaves. As there seemed to listen, the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Gryphon, \'she wants for to know what \"it\" means.\' \'I know what \"it\" means.\' \'I know SOMETHING interesting is sure to make personal remarks,\' Alice said with a sigh: \'he taught Laughing and Grief, they used to it!\' pleaded poor Alice. \'But.',3,'2017-12-07 08:56:06','2017-12-07 08:56:06',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'文学','2017-12-13 07:10:56','2017-12-13 07:10:56'),(2,'历史','2017-12-13 07:11:14','2017-12-13 07:11:14'),(3,'电影评论','2017-12-13 07:12:39','2017-12-13 07:12:39'),(4,'互联网','2017-12-13 07:13:00','2017-12-13 07:13:00'),(5,'体育','2017-12-14 09:32:24','2017-12-14 09:32:24');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notice`
--

DROP TABLE IF EXISTS `user_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notice`
--

LOCK TABLES `user_notice` WRITE;
/*!40000 ALTER TABLE `user_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','123@qq.com','$2y$10$TvI1bkHADjGbmb.tQ4qr.eibxYHcCYkLZ1QSrFMfdR2wnFOzYxr0.','dP7lqV9TDGK26ZtzUtixiqEtUlhNQzpctarkjpfjREvGQBWkm9SSz0fEsZct','2017-12-07 06:18:21','2017-12-07 06:18:21'),(2,'lee','lee@qq.com','$2y$10$b3qybulrjWAUPcXC264uS.87tFW.ek2Fa2cvpJO20zKFh1mmu3muK','q3OQdCQ7JBPsHYZ03r3Ah9hCGFsjThBI6EwmIF4iTlqip1SQoOGvd48hNBdB','2017-12-07 08:29:59','2017-12-07 08:29:59'),(3,'hahaha','haha@qq.com','$2y$10$tE9RpasC6NMvVbv6F7ldLec7lML/UvbnZgatFFnPI4132CDX1FS3m',NULL,'2017-12-07 08:59:03','2017-12-07 08:59:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zans`
--

DROP TABLE IF EXISTS `zans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zans`
--

LOCK TABLES `zans` WRITE;
/*!40000 ALTER TABLE `zans` DISABLE KEYS */;
INSERT INTO `zans` VALUES (14,1,3,'2017-12-08 08:25:53','2017-12-08 08:25:53'),(15,1,4,'2017-12-08 08:26:01','2017-12-08 08:26:01'),(16,1,2,'2017-12-11 01:29:49','2017-12-11 01:29:49');
/*!40000 ALTER TABLE `zans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-05 22:03:42
