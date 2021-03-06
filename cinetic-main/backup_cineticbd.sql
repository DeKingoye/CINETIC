-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cineticbd
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB-1:10.7.3+maria~focal

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `userId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES
(1,'Test oui test',3,1,'2022-04-14 20:55:21','2022-04-14 20:55:21'),
(2,'Quoi ?',3,6,'2022-04-14 20:55:21','2022-04-14 20:55:21'),
(3,'gsfsdgfds',1,8,'2022-04-14 22:35:03','2022-04-14 22:35:03'),
(4,'test unique',1,7,'2022-04-14 22:42:04','2022-04-14 22:42:04'),
(5,'test unique',1,7,'2022-04-14 22:42:31','2022-04-14 22:42:31'),
(6,'encore moi',1,7,'2022-04-14 22:51:30','2022-04-14 22:51:30'),
(7,'ouf enfin',1,8,'2022-04-14 23:07:19','2022-04-14 23:07:19'),
(8,'gestye',1,8,'2022-04-14 23:08:01','2022-04-14 23:08:01'),
(9,'sdhdhgshgd',1,8,'2022-04-14 23:08:04','2022-04-14 23:08:04'),
(10,'fsdgfds',1,8,'2022-04-14 23:08:08','2022-04-14 23:08:08'),
(11,'hdsghshgfd',1,8,'2022-04-14 23:08:15','2022-04-14 23:08:15');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `follower` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES
(27,1,2,'2022-04-15 02:06:26'),
(30,3,1,'2022-04-15 02:13:27'),
(45,2,1,'2022-04-15 09:15:46');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES
(1,1,3),
(2,6,3),
(6,2,3),
(24,8,3);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `exp` int(11) NOT NULL,
  `dest` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `viewed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES
(1,'Test est',1,3,'2022-04-15 06:43:28',0),
(2,'trsgghgg vgjv',1,3,'2022-04-15 06:44:41',0),
(3,'dfxfxcgn jknkjb',1,2,'2022-04-15 06:44:51',0),
(5,'testtet',1,2,'2022-04-15 07:23:02',0),
(6,'cfgf hjh',1,3,'2022-04-15 07:24:33',0),
(7,'fg hjjhgfds',2,1,'2022-04-15 07:24:57',0),
(8,'tsdtstr',1,2,'2022-04-15 08:49:01',0),
(9,'tetst papapa',1,3,'2022-04-15 09:15:01',0),
(10,'sgshgsqhg',1,2,'2022-04-15 09:24:44',0),
(11,'coucou',3,1,'2022-04-15 09:52:01',0),
(12,'je vais bien et toi ?',3,1,'2022-04-15 09:54:05',0),
(13,'je vais bien et toi ?',3,1,'2022-04-15 09:55:01',0),
(14,'je vais bien et toi ?',3,1,'2022-04-15 09:56:37',0),
(15,'c&#039;est moi',3,1,'2022-04-15 09:57:14',0),
(16,'oh',3,1,'2022-04-15 09:58:07',0),
(17,'oui le boss',3,1,'2022-04-15 10:07:17',0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES
(1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',3,1,'2022-04-14 18:25:12','2022-04-14 18:25:12',NULL,NULL),
(2,NULL,3,1,'2022-04-14 18:29:03','2022-04-14 18:29:03','https://www.youtube.com/embed/Bm1bkq7bmHA?list=RDBm1bkq7bmHA','YOUTUBE'),
(5,NULL,3,1,'2022-04-14 18:57:32','2022-04-14 18:57:32','/public/img/post/1649962653.jpg','image/jpg'),
(6,'Salut.\r\nje suis Bizi Frani j&#039;ai le beau cul.',3,1,'2022-04-14 20:21:32','2022-04-14 20:21:32','/public/img/post/1649967692.webp','0'),
(7,'I&#039;ve been waiting for a Japanese translation of &quot;Falling&quot; for so long, and now it&#039;s finally being published! It was in the new publication guide! Apparently, the visual on the cover is still the same: &quot;Falling&quot; by T.J. Newman. Super excited.',1,1,'2022-04-14 21:40:41','2022-04-14 21:40:41',NULL,NULL),
(8,'I&#039;ve been waiting for a Japanese translation of &quot;Falling&quot; for so long, and now it&#039;s finally being published! It was in the new publication guide! Apparently, the visual on the cover is still the same: &quot;Falling&quot; by T.J. Newman. Super excited.',1,1,'2022-04-14 21:41:31','2022-04-14 21:41:31','/public/img/post/1649972491.webp','0');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES
(1,'active'),
(2,'disable'),
(3,'delete');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sexe` char(1) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `isConnected` tinyint(1) NOT NULL,
  `lastConnected` datetime DEFAULT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'jarce','boukoro','jarce.boukoro@korian.fr','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','2001-10-10','H','/public/img/user/avatar.png','2022-04-14 13:06:36',1,'2022-04-15 02:06:37',1),
(2,'Frani','Bizi','f_bizi@hetic.eu','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','1993-11-12','H','/public/img/user/avatar.png','2022-04-14 13:20:09',0,'2022-04-15 02:06:05',1),
(3,'Yan','Mouandza','y_moundza@hetic.eu','ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413','2002-03-10','H','/public/img/user/avatar.png','2022-04-14 13:28:14',1,'2022-04-15 09:57:53',1);
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

-- Dump completed on 2022-04-15 10:11:03
