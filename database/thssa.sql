-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flarum_thssa
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_tokens` (
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_activity_at` datetime NOT NULL,
  `lifetime_seconds` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `access_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
INSERT INTO `access_tokens` VALUES ('2ff6lD2qrPKIQuWGxkU5mzJbQNCHBoJfj8RlqAkZ',5,'2020-04-04 16:42:46',157680000,'2020-04-04 16:42:15'),('3BdDCkFUwsUSwdz3wioGmffvgMM0DbTlBLhKNxQs',8,'2020-07-13 02:41:00',157680000,'2020-04-05 06:36:25'),('3Q06C4pFZlgsZN1taL3OwjLZUNsbbZUcRYvppJmS',4,'2020-04-05 05:54:21',157680000,'2020-04-04 16:31:25'),('6xW8X3Qc3RWnyAj6Id2csNZE804aawSklBFu57bg',8,'2020-05-10 11:04:01',157680000,'2020-04-05 11:39:28'),('7F9SxnIXneRgIzrlxnLC3S8m7Cg6kQ6dXDWv36Wj',2,'2020-04-25 15:11:46',3600,'2020-04-25 15:11:46'),('84KgDWobE42Uk4imTbzXPggLw6j63p7wSVlADtk2',17,'2020-04-05 15:06:00',157680000,'2020-04-05 15:04:36'),('9j2IRHhxrV2O5zERmGIcxQKMLZTZFK08eV9iGAa7',9,'2020-04-05 04:40:46',157680000,'2020-04-05 04:34:13'),('BdW5auDcCzohGRU1uD9kN61VkeLNVab8f7PARPdK',2,'2020-04-25 14:48:18',3600,'2020-04-25 14:48:18'),('BkE6cvD9mefCyWzB6XPlBArwuqTgvKnfjXfHvSj8',8,'2020-07-08 12:42:50',3600,'2020-07-08 12:42:50'),('C3GKZ4Mvm8NWXYRQpst7y5Jd1qNvmlWm0dQ7PDbM',13,'2020-04-26 17:00:33',157680000,'2020-04-05 12:43:35'),('C5vMNz0EyEBRAheJl5CnkjxiU1ZPs7cN3xGBqzrW',2,'2020-04-26 22:04:33',157680000,'2020-04-26 00:15:18'),('clKbgRKaerqsODiq1llbkTDFrFh5b7iFxVsjMEaI',1,'2020-07-10 11:43:07',157680000,'2020-04-18 01:21:04'),('Dmn3fWErIcWU4000qXTgBEssVcW8ee2YtffgDTV8',6,'2020-04-05 13:14:50',3600,'2020-04-05 13:14:50'),('EXVoliudESLUrGRLiNrIGat0NJhJ3cCf3zC1AYxT',1,'2020-04-25 14:03:30',157680000,'2020-04-25 14:01:59'),('FYgKK9TFeoihtG4rAGsBe93Xnv4Shmd0hAL7AvcI',18,'2020-04-05 22:48:54',157680000,'2020-04-05 22:46:51'),('gTHClH0kfbsTiszOisNHiYlQ0EZlVkhvsFnRVDIb',12,'2020-04-11 12:44:23',157680000,'2020-04-06 08:46:22'),('hbx6OQoq8ulWP9o4whD7d1Z7Slsy8cVBcj9oyRVn',13,'2020-07-08 15:50:28',157680000,'2020-04-24 16:24:20'),('ikcB9M8FVBcmd4S0hXQrQDufGq4lP2HIe4Oh7i2V',11,'2020-04-05 05:33:16',157680000,'2020-04-05 05:23:30'),('Ikk4La00ww2mBQkTH83L37QEg6pNLgi8brbu0ne1',1,'2020-04-17 01:51:58',157680000,'2020-04-17 01:51:57'),('iTew1tcLreP56OdyJoOoq5uBDRNvc9SUjhUY5iRC',1,'2020-04-10 04:39:06',157680000,'2020-04-10 04:38:59'),('JqUhKSQIuJ0A1ILTKYJufvs7evc1959E0ANmrwlQ',22,'2020-06-08 00:04:59',157680000,'2020-04-24 13:31:56'),('Kr5TXwSEWHxOUtweJSnKZoBHPRkzTEyqslqEAv4k',1,'2020-06-09 14:00:28',157680000,'2020-06-01 07:33:17'),('lEajtcOcUbX5meNt8w2B560qTWJHcOEPJeKKtzJi',1,'2020-04-10 06:06:21',157680000,'2020-04-10 04:39:37'),('n5MPcepnUdHNLpaUWTDCX1m18FEoYaFZafuyBMYd',20,'2020-04-11 14:53:00',157680000,'2020-04-11 14:52:59'),('NDsfhUFaO5AD7kltz24z4fPLbWPreTjVjZcJpZFQ',19,'2020-04-08 04:48:44',157680000,'2020-04-08 04:48:12'),('NPIcFo0gYkII6Mn12Rp3YvQFdDvZccEjtdwl39gH',2,'2020-06-23 11:32:54',157680000,'2020-05-11 07:03:14'),('nTTkOr7P47bTi3CJGZB7qNYS77e4diIwB4rJtecU',13,'2020-04-25 14:12:47',157680000,'2020-04-05 12:46:53'),('qiwZcTvDFOE1Pj8hSiExsOERr1wlGMdJxJnULDks',21,'2020-04-26 01:30:35',157680000,'2020-04-25 15:26:29'),('qLx3AGLCf5h5q7L5gtnmckmEfNCdaTocKR0HrPzy',8,'2020-06-04 12:12:48',3600,'2020-06-04 12:12:48'),('sFuCi63dHfGu8MHxivdvCbxvQqJUoSBjBV2WVFww',8,'2020-04-05 05:06:54',157680000,'2020-04-05 04:23:59'),('tLcSWZI1NZr6ABZ5o32EodsKQP6M3DSMN6K3xeQL',10,'2020-04-05 05:12:26',157680000,'2020-04-05 05:11:18'),('TVqLmZ468U24WPLE7jVxfsk9qhUbGXCIQP7CxzaU',16,'2020-04-05 13:35:56',157680000,'2020-04-05 12:47:29'),('U27jhHHym7ejuyln1aUrKnT1EZ5dcr6LEiwAKKnQ',14,'2020-05-09 06:19:37',157680000,'2020-04-05 12:45:59'),('U3stGnEqCEvFl6egh9cBbgzVc7BrBMYZ5u24kELc',12,'2020-04-13 23:24:00',157680000,'2020-04-13 15:18:04'),('uS3tqPzGj9gUyzFuTLTriQZLBSHEDEwliKUTDbWb',6,'2020-04-04 18:06:38',157680000,'2020-04-04 17:54:06'),('UvS6FNdOcvry9hbq6t3YU9gp4QSQWGRubRRtQRR1',15,'2020-04-05 12:54:47',157680000,'2020-04-05 12:46:24'),('w0bWt5Na3lHkBZRfFsTHt7AWNwvAli9XVvCn8Odd',2,'2020-05-11 03:58:24',3600,'2020-05-11 03:58:24'),('wmtb43OH7kalxsGN52IDhDjd6tPuelXv6EZQGjyc',8,'2020-04-05 05:46:30',3600,'2020-04-05 05:46:30'),('x16HK4e2JnUvtwdgT4iyJMQ0F6T1LmTgX0zw2A0K',21,'2020-04-25 15:26:29',157680000,'2020-04-24 13:05:34'),('yAyt14LV3E13A0tmhVz5JglPHU6hxKYM6tQCjlRK',3,'2020-04-04 16:25:15',157680000,'2020-04-04 16:25:05'),('ycGOSzx3iClyL0AzaetWOCn8aWrls2dipLVzUCbx',7,'2020-04-05 04:38:03',157680000,'2020-04-05 04:23:07'),('ZIfeSCOk31m6q0us56Z84hHmjrlwwVQNh0lQA8lv',16,'2020-04-08 00:29:49',157680000,'2020-04-08 00:29:49'),('ZlLTujtGemDiH8le3bMiYqr7uCEeLi3tApZfbXBE',12,'2020-04-05 05:47:14',157680000,'2020-04-05 05:45:03');
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_key_unique` (`key`),
  KEY `api_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_tag`
--

DROP TABLE IF EXISTS `discussion_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_tag` (
  `discussion_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discussion_id`,`tag_id`),
  KEY `discussion_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_tag`
--

LOCK TABLES `discussion_tag` WRITE;
/*!40000 ALTER TABLE `discussion_tag` DISABLE KEYS */;
INSERT INTO `discussion_tag` VALUES (4,1),(5,5),(6,6),(7,5),(8,6),(9,1),(10,1),(11,6),(12,6),(13,3),(14,2),(15,5),(16,6),(17,6),(18,6),(19,3),(20,3),(21,6),(22,6),(23,1),(24,6),(25,6),(26,1);
/*!40000 ALTER TABLE `discussion_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_user`
--

DROP TABLE IF EXISTS `discussion_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_user` (
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `last_read_post_number` int(10) unsigned DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discussion_id`),
  KEY `discussion_user_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_user`
--

LOCK TABLES `discussion_user` WRITE;
/*!40000 ALTER TABLE `discussion_user` DISABLE KEYS */;
INSERT INTO `discussion_user` VALUES (1,4,'2020-04-25 14:03:27',19,NULL),(1,5,'2020-04-04 17:13:36',1,NULL),(1,6,'2020-04-04 17:13:25',2,NULL),(1,7,'2020-04-04 17:17:47',2,NULL),(1,8,'2020-04-04 18:19:34',1,NULL),(1,9,'2020-04-08 09:35:21',2,NULL),(1,10,'2020-04-04 18:31:08',1,NULL),(1,11,'2020-04-04 18:37:14',1,NULL),(1,12,'2020-04-05 06:19:10',2,NULL),(1,13,'2020-04-04 18:45:57',1,NULL),(1,14,'2020-04-05 03:22:43',1,NULL),(1,15,'2020-04-05 03:26:42',1,NULL),(1,16,'2020-04-05 12:14:40',1,NULL),(1,17,'2020-04-05 12:16:15',1,NULL),(1,18,'2020-04-20 12:32:54',9,'follow'),(1,19,'2020-04-09 10:06:41',6,'follow'),(1,20,'2020-04-09 00:41:45',2,NULL),(1,21,'2020-04-20 12:33:42',2,NULL),(1,22,'2020-04-25 14:02:03',1,NULL),(1,23,'2020-05-15 23:44:35',1,NULL),(1,24,'2020-05-15 23:44:42',1,NULL),(1,25,'2020-05-25 02:46:02',1,NULL),(1,26,'2020-05-25 06:43:17',1,'follow'),(2,4,'2020-04-25 12:47:12',19,'follow'),(2,5,'2020-04-04 16:40:39',1,NULL),(2,6,'2020-04-04 17:05:16',2,NULL),(2,7,'2020-04-04 17:31:08',2,NULL),(2,8,'2020-04-05 10:51:05',1,NULL),(2,9,'2020-04-04 20:06:37',2,NULL),(2,10,'2020-04-05 10:56:29',1,NULL),(2,11,'2020-04-04 20:06:27',1,NULL),(2,12,'2020-04-05 04:55:28',2,NULL),(2,13,'2020-04-05 08:20:30',1,NULL),(2,14,'2020-04-05 04:20:02',1,NULL),(2,15,'2020-04-08 08:04:42',1,NULL),(2,16,'2020-04-05 10:47:17',1,NULL),(2,17,'2020-04-05 10:49:21',1,NULL),(2,18,'2020-04-20 12:30:21',9,'follow'),(2,19,'2020-04-08 13:23:47',6,NULL),(2,20,'2020-04-08 13:26:28',2,NULL),(2,21,'2020-04-19 14:38:55',2,'follow'),(2,22,'2020-04-25 13:56:12',1,'follow'),(2,23,'2020-05-11 04:02:28',1,'follow'),(2,24,'2020-05-12 00:28:25',1,'follow'),(2,25,'2020-05-25 00:11:11',1,'follow'),(2,26,'2020-05-26 04:49:38',1,NULL),(3,4,'2020-04-04 16:25:14',2,'follow'),(4,4,'2020-04-05 05:54:21',10,'follow'),(4,12,'2020-04-05 05:53:42',2,NULL),(5,4,'2020-04-04 16:42:27',4,'follow'),(6,4,'2020-04-04 18:00:01',6,'follow'),(6,5,'2020-04-04 18:00:43',1,NULL),(6,6,'2020-04-04 18:05:34',2,NULL),(6,7,'2020-04-04 18:06:38',2,NULL),(6,8,'2020-04-05 13:15:04',1,NULL),(6,12,'2020-04-05 13:16:12',2,NULL),(6,13,'2020-04-05 13:15:32',1,NULL),(6,16,'2020-04-05 13:16:36',1,NULL),(6,17,'2020-04-05 13:16:20',1,NULL),(6,18,'2020-04-05 13:16:55',4,NULL),(7,4,'2020-04-05 04:40:32',8,'follow'),(7,14,'2020-04-05 04:27:32',1,NULL),(7,15,'2020-04-05 04:25:54',1,NULL),(8,4,'2020-04-25 13:48:10',19,NULL),(8,5,'2020-04-05 09:31:35',1,NULL),(8,6,'2020-04-05 05:46:53',2,NULL),(8,8,'2020-04-06 03:06:26',1,NULL),(8,10,'2020-04-05 10:01:46',1,NULL),(8,11,'2020-04-11 03:13:25',1,NULL),(8,12,'2020-04-05 05:46:47',2,NULL),(8,13,'2020-04-05 05:46:42',1,NULL),(8,14,'2020-04-05 05:06:00',1,NULL),(8,15,'2020-04-06 09:58:01',1,NULL),(8,16,'2020-04-05 11:40:21',1,NULL),(8,17,'2020-04-05 11:39:38',1,NULL),(8,18,'2020-04-21 14:44:02',9,NULL),(8,19,'2020-04-08 13:32:22',6,'follow'),(8,20,'2020-04-08 13:32:12',2,NULL),(8,21,'2020-04-21 14:43:54',2,NULL),(8,22,'2020-04-25 14:01:35',1,NULL),(8,23,'2020-05-14 11:15:39',1,NULL),(8,24,'2020-05-14 11:15:48',1,NULL),(8,25,'2020-06-01 11:26:29',1,NULL),(8,26,'2020-06-01 11:26:04',1,NULL),(9,4,'2020-04-05 04:35:37',7,'follow'),(10,4,'2020-04-05 05:12:10',9,'follow'),(12,4,'2020-04-13 15:18:10',17,'follow'),(12,5,'2020-04-05 05:41:08',1,NULL),(12,6,'2020-04-06 08:48:23',2,NULL),(12,7,'2020-04-05 05:41:25',1,NULL),(12,12,'2020-04-11 12:43:58',2,NULL),(12,13,'2020-04-13 15:18:23',1,NULL),(12,14,'2020-04-05 05:41:49',1,NULL),(12,15,'2020-04-05 05:40:59',1,NULL),(12,16,'2020-04-06 08:47:18',1,NULL),(12,17,'2020-04-06 08:47:10',1,NULL),(12,18,'2020-04-06 08:48:11',7,'follow'),(12,19,'2020-04-11 12:43:52',6,NULL),(12,20,'2020-04-11 12:39:35',2,NULL),(13,4,'2020-04-25 22:09:04',19,'follow'),(13,5,'2020-04-05 12:58:11',1,NULL),(13,6,'2020-04-05 12:53:51',2,NULL),(13,7,'2020-04-25 04:30:13',2,NULL),(13,8,'2020-04-05 12:58:07',1,NULL),(13,9,'2020-04-05 13:30:16',2,NULL),(13,10,'2020-04-05 13:30:13',1,NULL),(13,11,'2020-04-05 13:12:58',1,NULL),(13,12,'2020-04-05 13:21:02',2,NULL),(13,13,'2020-04-05 13:30:18',1,NULL),(13,14,'2020-04-05 12:48:38',1,NULL),(13,15,'2020-04-05 12:43:37',1,NULL),(13,16,'2020-04-05 13:03:05',1,NULL),(13,17,'2020-04-05 12:56:06',1,NULL),(13,18,'2020-04-24 16:18:46',9,'follow'),(13,19,'2020-04-24 16:28:46',6,NULL),(13,20,'2020-04-24 16:36:25',2,NULL),(13,21,'2020-04-25 04:31:36',2,NULL),(13,22,'2020-04-25 14:12:47',1,NULL),(13,23,'2020-05-12 11:11:13',1,NULL),(13,24,'2020-05-12 11:10:52',1,NULL),(13,25,'2020-05-29 12:41:12',1,NULL),(13,26,'2020-05-29 12:41:08',1,NULL),(14,4,'2020-04-25 18:39:14',19,'follow'),(14,6,'2020-04-05 15:11:26',2,NULL),(14,12,'2020-04-05 15:10:54',2,NULL),(14,13,'2020-04-25 18:40:34',1,NULL),(14,14,'2020-04-05 15:11:08',1,NULL),(14,15,'2020-04-05 15:11:00',1,NULL),(14,16,'2020-04-05 15:07:11',1,NULL),(14,17,'2020-04-05 15:06:13',1,NULL),(14,18,'2020-04-25 18:39:01',9,'follow'),(14,19,'2020-04-25 18:40:18',1,NULL),(14,20,'2020-04-25 18:40:10',2,NULL),(14,21,'2020-04-25 18:39:59',2,NULL),(14,22,'2020-04-25 18:41:57',1,NULL),(15,4,'2020-04-05 12:47:18',12,'follow'),(15,18,'2020-04-05 12:54:46',3,'follow'),(16,4,'2020-04-05 12:48:31',13,'follow'),(16,5,'2020-04-05 13:35:56',1,NULL),(17,4,'2020-04-05 15:05:23',14,'follow'),(17,14,'2020-04-05 15:05:47',1,NULL),(17,15,'2020-04-05 15:05:34',1,NULL),(18,4,'2020-04-05 22:47:36',16,'follow'),(19,4,'2020-04-08 04:48:22',17,'follow'),(20,4,'2020-04-11 14:53:57',17,NULL),(21,4,'2020-04-24 13:06:14',18,'follow'),(21,5,'2020-04-24 13:07:20',1,NULL),(21,7,'2020-04-24 13:07:06',1,NULL),(21,12,'2020-04-26 01:30:35',2,NULL),(21,14,'2020-04-24 13:06:49',1,NULL),(21,15,'2020-04-24 13:06:34',1,NULL),(21,18,'2020-04-25 15:27:13',6,NULL),(21,19,'2020-04-26 01:30:25',6,NULL),(21,20,'2020-04-26 01:29:26',1,NULL),(21,21,'2020-04-25 15:26:39',2,NULL),(21,22,'2020-04-25 15:26:48',1,NULL),(22,4,'2020-04-24 13:32:19',19,'follow'),(22,16,'2020-04-25 13:55:45',1,NULL),(22,17,'2020-04-25 13:55:28',1,NULL),(22,18,'2020-04-25 13:59:00',9,NULL),(22,19,'2020-04-25 13:59:34',2,NULL),(22,20,'2020-04-25 13:56:11',2,NULL),(22,21,'2020-04-25 13:54:30',2,NULL),(22,22,'2020-04-25 14:15:16',1,NULL),(23,4,'2020-04-25 14:48:26',3,NULL);
/*!40000 ALTER TABLE `discussion_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '1',
  `participant_count` int(10) unsigned NOT NULL DEFAULT '0',
  `post_number_index` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `first_post_id` int(10) unsigned DEFAULT NULL,
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_post_number` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL,
  `hotness` double(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `discussions_first_post_id_foreign` (`first_post_id`),
  KEY `discussions_last_post_id_foreign` (`last_post_id`),
  KEY `discussions_last_posted_at_index` (`last_posted_at`),
  KEY `discussions_last_posted_user_id_index` (`last_posted_user_id`),
  KEY `discussions_created_at_index` (`created_at`),
  KEY `discussions_user_id_index` (`user_id`),
  KEY `discussions_comment_count_index` (`comment_count`),
  KEY `discussions_participant_count_index` (`participant_count`),
  KEY `discussions_hidden_at_index` (`hidden_at`),
  KEY `discussions_is_locked_index` (`is_locked`),
  KEY `discussions_is_sticky_created_at_index` (`is_sticky`,`created_at`),
  FULLTEXT KEY `title` (`title`),
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (4,'新人簽到串',18,17,19,'2020-04-04 16:10:28',2,3,'2020-04-24 13:32:18',22,57,19,NULL,NULL,'',0,1,0,1,350,20,-25199.3213),(5,'桃園市高中職學生聯合會社群規範',1,1,1,'2020-04-04 16:40:38',2,6,'2020-04-04 16:40:38',2,6,1,NULL,NULL,'',0,1,0,0,87,0,-25200.6223),(6,'第一屆會務資料-雲端資料夾',1,1,2,'2020-04-04 17:04:14',2,9,'2020-04-04 17:04:14',2,9,1,NULL,NULL,'',0,1,0,0,32,1,-25200.6223),(7,'桃園市高中職學生聯合會之隱私權政策',1,1,2,'2020-04-04 17:17:12',1,11,'2020-04-04 17:17:12',1,11,1,NULL,NULL,'',0,1,0,0,71,2,-25200.3213),(8,'桃園市高中職學生聯合會成立大會會議紀錄',1,1,1,'2020-04-04 18:19:34',1,14,'2020-04-04 18:19:34',1,14,1,NULL,NULL,'',0,1,0,0,14,1,-25200.6223),(9,'高中學生會及其他自治組織注意事項問答集',1,1,3,'2020-04-04 18:27:59',1,15,'2020-04-04 18:27:59',1,15,1,NULL,NULL,'',0,1,0,0,10,1,-25200.6223),(10,'高中學校輔導學生會及其他自治組織運作注意事項',1,1,2,'2020-04-04 18:31:08',1,16,'2020-04-04 18:31:08',1,16,1,NULL,NULL,'',0,1,0,0,12,1,-25200.6223),(11,'桃園市高中職學生聯合會組織章程',1,1,1,'2020-04-04 18:37:14',1,18,'2020-04-04 18:37:14',1,18,1,NULL,NULL,'',0,1,0,0,14,1,-25200.6223),(12,'放棄會籍聲明書',2,2,2,'2020-04-04 18:40:53',1,19,'2020-04-05 04:55:27',2,25,2,NULL,NULL,'',0,1,0,0,24,2,-25200.3213),(13,'終結放榜新聞',1,1,1,'2020-04-04 18:45:57',1,20,'2020-04-04 18:45:57',1,20,1,NULL,NULL,'',0,1,0,0,19,1,-25200.6223),(14,'常見問答',1,1,1,'2020-04-05 03:22:43',1,21,'2020-04-05 03:22:43',1,21,1,NULL,NULL,'',0,1,0,0,43,2,-25200.3213),(15,'服務條款',1,1,1,'2020-04-05 03:26:42',1,22,'2020-04-05 03:26:42',1,22,1,NULL,NULL,'',0,1,0,0,34,1,-25200.6223),(16,'公告第一屆第8次理事會暨第2次監事會聯席會會議記錄',1,1,1,'2020-04-05 10:47:17',2,28,'2020-04-05 10:47:17',2,28,1,NULL,NULL,'82',0,1,0,0,24,1,-25200.6223),(17,'公告理事會廢止「2020 桃園市高中職學生聯合會推薦 會員參與桃園市各高級中等學校學生自治組織之負責 人選舉施行規則」。',1,1,1,'2020-04-05 10:49:21',2,29,'2020-04-05 10:49:21',2,29,1,NULL,NULL,'2020',0,1,0,0,33,1,-25200.6223),(18,'【註冊留言抽清心】',8,6,9,'2020-04-05 12:50:05',2,33,'2020-04-20 12:30:08',2,54,8,NULL,NULL,'',0,1,1,0,67,8,-25199.7192),(19,'#分享 第八節課輔違規上新進度',6,3,6,'2020-04-07 15:13:22',8,43,'2020-04-08 13:23:47',2,49,6,NULL,NULL,'',0,1,0,0,41,6,-25199.8441),(20,'#調查【人本】撲滅黑心校規',1,1,2,'2020-04-08 13:25:18',2,50,'2020-04-08 13:25:18',2,50,1,NULL,NULL,'',0,1,0,0,21,1,-25200.6223),(21,'桃學聯第一屆會務資訊公告欄',1,1,2,'2020-04-19 14:38:29',2,52,'2020-04-19 14:38:29',2,52,1,NULL,NULL,'',0,1,0,1,37,2,-25200.3213),(22,'理事會預告修正「桃園市高中職學生聯合會組織章程」',1,1,1,'2020-04-25 13:56:12',2,58,'2020-04-25 13:56:12',2,58,1,NULL,NULL,'',0,1,0,0,44,2,-25200.3213),(23,'本會參與人本教育基金會「撲滅黑心校規」記者會',1,1,1,'2020-05-11 04:02:28',2,59,'2020-05-11 04:02:28',2,59,1,NULL,NULL,'',0,1,0,0,19,1,-25200.6223),(24,'茲修正「桃園市高中職學生聯合會組織章程」部分條文。',1,1,1,'2020-05-12 00:28:25',2,60,'2020-05-12 00:28:25',2,60,1,NULL,NULL,'',0,1,0,0,12,1,-25200.6223),(25,'公告本會第二屆理事會、監事會選舉之事項。',1,1,1,'2020-05-25 00:11:11',2,61,'2020-05-25 00:11:11',2,61,1,NULL,NULL,'',0,1,0,0,6,1,-25200.6223),(26,'桃園市市立高級中等學校課業輔導及寒暑假學藝活動實施要點',1,1,1,'2020-05-25 06:43:17',1,64,'2020-05-25 06:43:17',1,64,1,NULL,NULL,'',0,1,0,0,17,3,-25200.1452);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_tokens`
--

DROP TABLE IF EXISTS `email_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `email_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_tokens`
--

LOCK TABLES `email_tokens` WRITE;
/*!40000 ALTER TABLE `email_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flags_post_id_foreign` (`post_id`),
  KEY `flags_user_id_foreign` (`user_id`),
  KEY `flags_created_at_index` (`created_at`),
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permission` (
  `group_id` int(10) unsigned NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`,`permission`),
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
INSERT INTO `group_permission` VALUES (2,'fof.gamification.viewRankingPage'),(2,'tag1.viewDiscussions'),(2,'tag2.viewDiscussions'),(2,'tag4.viewDiscussions'),(2,'tag5.viewDiscussions'),(2,'viewDiscussions'),(3,'discussion.flagPosts'),(3,'discussion.likePosts'),(3,'discussion.reactPosts'),(3,'discussion.reply'),(3,'discussion.replyWithoutApproval'),(3,'discussion.startWithoutApproval'),(3,'discussion.vote'),(3,'startDiscussion'),(3,'tag1.discussion.canSeeVotes'),(3,'tag1.discussion.likePosts'),(3,'tag1.discussion.reactPosts'),(3,'tag1.discussion.reply'),(3,'tag1.discussion.vote'),(3,'tag1.startDiscussion'),(3,'tag2.discussion.canSeeVotes'),(3,'tag2.discussion.likePosts'),(3,'tag2.discussion.vote'),(3,'tag4.discussion.canSeeVotes'),(3,'tag4.discussion.flagPosts'),(3,'tag4.discussion.likePosts'),(3,'tag4.discussion.reactPosts'),(3,'tag4.discussion.reply'),(3,'tag4.discussion.replyWithoutApproval'),(3,'tag4.discussion.startWithoutApproval'),(3,'tag4.discussion.vote'),(3,'tag4.startDiscussion'),(3,'tag5.discussion.canSeeVotes'),(3,'viewUserList'),(4,'discussion.approvePosts'),(4,'discussion.editPosts'),(4,'discussion.hide'),(4,'discussion.hidePosts'),(4,'discussion.lock'),(4,'discussion.rename'),(4,'discussion.sticky'),(4,'discussion.tag'),(4,'discussion.viewFlags'),(4,'discussion.viewIpsPosts'),(4,'startPolls'),(4,'tag1.discussion.flagPosts'),(4,'tag1.discussion.replyWithoutApproval'),(4,'tag1.discussion.startWithoutApproval'),(4,'tag2.discussion.reactPosts'),(4,'tag2.discussion.reply'),(4,'tag2.discussion.replyWithoutApproval'),(4,'tag2.discussion.startWithoutApproval'),(4,'tag2.startDiscussion'),(4,'tag5.discussion.reactPosts'),(4,'tag5.discussion.reply'),(4,'tag5.discussion.replyWithoutApproval'),(4,'tag5.discussion.startWithoutApproval'),(4,'tag5.startDiscussion'),(4,'user.suspend'),(4,'user.viewLastSeenAt'),(5,'startPolls'),(5,'tag1.discussion.flagPosts'),(5,'tag1.discussion.replyWithoutApproval'),(5,'tag1.discussion.startWithoutApproval'),(6,'startPolls'),(6,'tag1.discussion.flagPosts'),(6,'tag1.discussion.replyWithoutApproval'),(6,'tag1.discussion.startWithoutApproval'),(7,'tag1.discussion.flagPosts'),(7,'tag1.discussion.replyWithoutApproval'),(7,'tag1.discussion.startWithoutApproval'),(7,'tag3.discussion.canSeeVotes'),(7,'tag3.discussion.flagPosts'),(7,'tag3.discussion.likePosts'),(7,'tag3.discussion.reactPosts'),(7,'tag3.discussion.reply'),(7,'tag3.discussion.replyWithoutApproval'),(7,'tag3.discussion.startWithoutApproval'),(7,'tag3.discussion.vote'),(7,'tag3.startDiscussion'),(7,'tag3.viewDiscussions'),(7,'tag6.discussion.canSeeVotes'),(7,'tag6.discussion.flagPosts'),(7,'tag6.discussion.likePosts'),(7,'tag6.discussion.reactPosts'),(7,'tag6.discussion.reply'),(7,'tag6.discussion.replyWithoutApproval'),(7,'tag6.discussion.startWithoutApproval'),(7,'tag6.discussion.vote'),(7,'tag6.startDiscussion'),(7,'tag6.viewDiscussions'),(7,'votePolls'),(8,'tag1.discussion.startWithoutApproval'),(8,'tag3.discussion.canSeeVotes'),(8,'tag3.discussion.flagPosts'),(8,'tag3.discussion.likePosts'),(8,'tag3.discussion.reactPosts'),(8,'tag3.discussion.reply'),(8,'tag3.discussion.replyWithoutApproval'),(8,'tag3.discussion.startWithoutApproval'),(8,'tag3.discussion.vote'),(8,'tag3.startDiscussion'),(8,'tag3.viewDiscussions'),(8,'tag6.discussion.canSeeVotes'),(8,'tag6.discussion.flagPosts'),(8,'tag6.discussion.likePosts'),(8,'tag6.discussion.reactPosts'),(8,'tag6.discussion.reply'),(8,'tag6.discussion.replyWithoutApproval'),(8,'tag6.discussion.startWithoutApproval'),(8,'tag6.discussion.vote'),(8,'tag6.startDiscussion'),(8,'tag6.viewDiscussions');
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_user_group_id_foreign` (`group_id`),
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1),(1,4),(1,7),(2,1),(2,4),(2,5),(2,7),(3,6),(3,7),(4,5),(4,7),(5,5),(5,7),(6,7),(7,5),(7,7),(8,7),(9,7),(10,6),(10,7),(11,5),(11,7),(12,7),(13,8),(14,7),(15,8),(16,7),(17,7),(18,7),(19,7),(20,7),(21,7),(22,7),(23,7);
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admins','#B72A2A','fas fa-wrench',0),(2,'Guest','Guests',NULL,NULL,0),(3,'Member','Members',NULL,NULL,0),(4,'Mod','Mods','#80349E','fas fa-bolt',0),(5,'理事會','理事會','#4F9D9D','fas fa-user-check',0),(6,'監事會','監事會','#548C00','fas fa-user-check',0),(7,'會員','會員','#FED400','fas fa-user-check',0),(8,'桃學聯之友','桃學聯之友','#FF8800','fas fa-book-reader',0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'FB','https://www.facebook.com/thssa.1st',1,0,1),(2,'官網','https://sites.google.com/view/thssa/home',2,0,1),(3,'IG','https://www.instagram.com/thssa_1st/',0,0,1);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_providers`
--

DROP TABLE IF EXISTS `login_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_providers_provider_identifier_unique` (`provider`,`identifier`),
  KEY `login_providers_user_id_foreign` (`user_id`),
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_providers`
--

LOCK TABLES `login_providers` WRITE;
/*!40000 ALTER TABLE `login_providers` DISABLE KEYS */;
INSERT INTO `login_providers` VALUES (1,3,'discord','566609604696473621','2020-04-04 16:25:05','2020-04-04 16:25:05'),(2,5,'facebook','2586850448261098','2020-04-04 16:42:15','2020-04-04 16:42:15'),(3,10,'facebook','3654886171249747','2020-04-05 05:11:17','2020-04-05 05:11:17'),(4,12,'facebook','264436474577782','2020-04-05 05:36:42','2020-04-13 15:18:04'),(5,13,'facebook','2990018354352701','2020-04-05 12:43:34','2020-04-24 16:24:20'),(6,14,'facebook','2690789277823177','2020-04-05 12:45:59','2020-04-05 12:45:59'),(7,16,'google','104126222173887328415','2020-04-05 12:47:29','2020-04-08 00:29:49'),(8,17,'google','103497784069608469729','2020-04-05 15:04:36','2020-04-05 15:04:36'),(9,18,'facebook','2879684805449382','2020-04-05 22:46:51','2020-04-05 22:46:51'),(10,19,'google','102706054657060440340','2020-04-08 04:48:12','2020-04-08 04:48:12'),(11,21,'google','109398861447982359502','2020-04-24 13:05:34','2020-04-25 15:26:29'),(12,22,'google','100458891862163062383','2020-04-24 13:31:56','2020-04-24 13:31:56');
/*!40000 ALTER TABLE `login_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_02_24_000000_create_access_tokens_table',NULL),('2015_02_24_000000_create_api_keys_table',NULL),('2015_02_24_000000_create_config_table',NULL),('2015_02_24_000000_create_discussions_table',NULL),('2015_02_24_000000_create_email_tokens_table',NULL),('2015_02_24_000000_create_groups_table',NULL),('2015_02_24_000000_create_notifications_table',NULL),('2015_02_24_000000_create_password_tokens_table',NULL),('2015_02_24_000000_create_permissions_table',NULL),('2015_02_24_000000_create_posts_table',NULL),('2015_02_24_000000_create_users_discussions_table',NULL),('2015_02_24_000000_create_users_groups_table',NULL),('2015_02_24_000000_create_users_table',NULL),('2015_09_15_000000_create_auth_tokens_table',NULL),('2015_09_20_224327_add_hide_to_discussions',NULL),('2015_09_22_030432_rename_notification_read_time',NULL),('2015_10_07_130531_rename_config_to_settings',NULL),('2015_10_24_194000_add_ip_address_to_posts',NULL),('2015_12_05_042721_change_access_tokens_columns',NULL),('2015_12_17_194247_change_settings_value_column_to_text',NULL),('2016_02_04_095452_add_slug_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_discussions',NULL),('2017_04_07_114138_add_is_private_to_posts',NULL),('2018_01_11_093900_change_access_tokens_columns',NULL),('2018_01_11_094000_change_access_tokens_add_foreign_keys',NULL),('2018_01_11_095000_change_api_keys_columns',NULL),('2018_01_11_101800_rename_auth_tokens_to_registration_tokens',NULL),('2018_01_11_102000_change_registration_tokens_rename_id_to_token',NULL),('2018_01_11_102100_change_registration_tokens_created_at_to_datetime',NULL),('2018_01_11_120604_change_posts_table_to_innodb',NULL),('2018_01_11_155200_change_discussions_rename_columns',NULL),('2018_01_11_155300_change_discussions_add_foreign_keys',NULL),('2018_01_15_071700_rename_users_discussions_to_discussion_user',NULL),('2018_01_15_071800_change_discussion_user_rename_columns',NULL),('2018_01_15_071900_change_discussion_user_add_foreign_keys',NULL),('2018_01_15_072600_change_email_tokens_rename_id_to_token',NULL),('2018_01_15_072700_change_email_tokens_add_foreign_keys',NULL),('2018_01_15_072800_change_email_tokens_created_at_to_datetime',NULL),('2018_01_18_130400_rename_permissions_to_group_permission',NULL),('2018_01_18_130500_change_group_permission_add_foreign_keys',NULL),('2018_01_18_130600_rename_users_groups_to_group_user',NULL),('2018_01_18_130700_change_group_user_add_foreign_keys',NULL),('2018_01_18_133000_change_notifications_columns',NULL),('2018_01_18_133100_change_notifications_add_foreign_keys',NULL),('2018_01_18_134400_change_password_tokens_rename_id_to_token',NULL),('2018_01_18_134500_change_password_tokens_add_foreign_keys',NULL),('2018_01_18_134600_change_password_tokens_created_at_to_datetime',NULL),('2018_01_18_135000_change_posts_rename_columns',NULL),('2018_01_18_135100_change_posts_add_foreign_keys',NULL),('2018_01_30_112238_add_fulltext_index_to_discussions_title',NULL),('2018_01_30_220100_create_post_user_table',NULL),('2018_01_30_222900_change_users_rename_columns',NULL),('2018_07_21_000000_seed_default_groups',NULL),('2018_07_21_000100_seed_default_group_permissions',NULL),('2018_09_15_041340_add_users_indicies',NULL),('2018_09_15_041828_add_discussions_indicies',NULL),('2018_09_15_043337_add_notifications_indices',NULL),('2018_09_15_043621_add_posts_indices',NULL),('2018_09_22_004100_change_registration_tokens_columns',NULL),('2018_09_22_004200_create_login_providers_table',NULL),('2018_10_08_144700_add_shim_prefix_to_group_icons',NULL),('2019_06_24_145100_change_posts_content_column_to_mediumtext',NULL),('2015_09_21_011527_add_is_approved_to_discussions','flarum-approval'),('2015_09_21_011706_add_is_approved_to_posts','flarum-approval'),('2017_07_22_000000_add_default_permissions','flarum-approval'),('2018_09_29_060444_replace_emoji_shorcuts_with_unicode','flarum-emoji'),('2015_09_02_000000_add_flags_read_time_to_users_table','flarum-flags'),('2015_09_02_000000_create_flags_table','flarum-flags'),('2017_07_22_000000_add_default_permissions','flarum-flags'),('2018_06_27_101500_change_flags_rename_time_to_created_at','flarum-flags'),('2018_06_27_101600_change_flags_add_foreign_keys','flarum-flags'),('2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at','flarum-flags'),('2018_09_15_043621_add_flags_indices','flarum-flags'),('2015_05_11_000000_create_posts_likes_table','flarum-likes'),('2015_09_04_000000_add_default_like_permissions','flarum-likes'),('2018_06_27_100600_rename_posts_likes_to_post_likes','flarum-likes'),('2018_06_27_100700_change_post_likes_add_foreign_keys','flarum-likes'),('2015_02_24_000000_add_locked_to_discussions','flarum-lock'),('2017_07_22_000000_add_default_permissions','flarum-lock'),('2018_09_15_043621_add_discussions_indices','flarum-lock'),('2015_05_11_000000_create_mentions_posts_table','flarum-mentions'),('2015_05_11_000000_create_mentions_users_table','flarum-mentions'),('2018_06_27_102000_rename_mentions_posts_to_post_mentions_post','flarum-mentions'),('2018_06_27_102100_rename_mentions_users_to_post_mentions_user','flarum-mentions'),('2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id','flarum-mentions'),('2018_06_27_102300_change_post_mentions_post_add_foreign_keys','flarum-mentions'),('2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id','flarum-mentions'),('2018_06_27_102500_change_post_mentions_user_add_foreign_keys','flarum-mentions'),('2015_02_24_000000_add_sticky_to_discussions','flarum-sticky'),('2017_07_22_000000_add_default_permissions','flarum-sticky'),('2018_09_15_043621_add_discussions_indices','flarum-sticky'),('2015_05_11_000000_add_subscription_to_users_discussions_table','flarum-subscriptions'),('2015_05_11_000000_add_suspended_until_to_users_table','flarum-suspend'),('2015_09_14_000000_rename_suspended_until_column','flarum-suspend'),('2017_07_22_000000_add_default_permissions','flarum-suspend'),('2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until','flarum-suspend'),('2015_02_24_000000_create_discussions_tags_table','flarum-tags'),('2015_02_24_000000_create_tags_table','flarum-tags'),('2015_02_24_000000_create_users_tags_table','flarum-tags'),('2015_02_24_000000_set_default_settings','flarum-tags'),('2015_10_19_061223_make_slug_unique','flarum-tags'),('2017_07_22_000000_add_default_permissions','flarum-tags'),('2018_06_27_085200_change_tags_columns','flarum-tags'),('2018_06_27_085300_change_tags_add_foreign_keys','flarum-tags'),('2018_06_27_090400_rename_users_tags_to_tag_user','flarum-tags'),('2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at','flarum-tags'),('2018_06_27_100200_change_tag_user_add_foreign_keys','flarum-tags'),('2018_06_27_103000_rename_discussions_tags_to_discussion_tag','flarum-tags'),('2018_06_27_103100_add_discussion_tag_foreign_keys','flarum-tags'),('2019_04_21_000000_add_icon_to_tags_table','flarum-tags'),('2019_10_12_195349_change_posts_add_discussion_foreign_key',NULL),('2019_10_22_000000_change_reason_text_col_type','flarum-flags'),('2019_02_05_000000_migrate_from_fa_4','fof-socialprofile'),('2019_02_05_000001_create_socialbuttons_column','fof-socialprofile'),('2019_06_17_000000_add_settings_social_list','fof-share-social'),('2019_07_08_000000_create_reactions_tables','fof-reactions'),('2019_07_08_000001_create_post_reactions_table','fof-reactions'),('2019_07_08_000002_add_default_reaction_permission','fof-reactions'),('2019_07_08_000003_migrate_extension_settings','fof-reactions'),('2019_12_05_000000_add_timestamps_to_post_reactions_table','fof-reactions'),('2019_07_01_000000_add_polls_table','fof-polls'),('2019_07_01_000001_add_poll_options_table','fof-polls'),('2019_07_01_000002_add_poll_votes_table','fof-polls'),('2017_11_07_223624_discussions_add_views','michaelbelgium-discussion-views'),('2018_11_30_141817_discussions_rename_views','michaelbelgium-discussion-views'),('2019_07_28_000000_add_nickname_column','dem13n-nickname-changer'),('2020_02_10_000000_add_settings','dem13n-nickname-changer'),('2019_07_09_000000_create_post_votes_table','fof-gamification'),('2019_07_09_000001_add_attributes_to_users','fof-gamification'),('2019_07_09_000002_add_votes_and_hotness_to_discussions','fof-gamification'),('2019_07_09_000003_add_default_permissions','fof-gamification'),('2019_07_09_000004_create_rank_users_table','fof-gamification'),('2019_07_09_000005_migrate_extension_settings','fof-gamification'),('2019_07_10_000000_create_ranks_table','fof-gamification'),('2019_08_09_000000_add_votes_foreign_keys','fof-gamification'),('2016_02_13_000000_create_links_table','fof-links'),('2016_04_19_065618_change_links_columns','fof-links'),('2015_09_15_000000_add_twitter_id_to_users_table','flarum-auth-twitter'),('2018_09_22_000000_migrate_users_twitter_id_to_login_providers','flarum-auth-twitter'),('2018_09_22_000001_drop_users_twitter_id_column','flarum-auth-twitter'),('2016_04_11_182821__create_pages_table','fof-pages'),('2016_08_28_180020_add_is_html','fof-pages'),('2018_08_9_000000_create_webhooks_table','reflar-webhooks'),('2018_12_10_000000_make_error_nullable','reflar-webhooks'),('2018_01_10_000000_migrate_extension_settings','fof-recaptcha'),('2020_03_19_134512_change_discussions_default_comment_count',NULL),('2020_04_21_130500_change_permission_groups_add_is_hidden',NULL);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `data` blob,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_from_user_id_foreign` (`from_user_id`),
  KEY `notifications_user_id_index` (`user_id`),
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,1,'vote',3,'\"Up\"','2020-04-04 16:11:39',0,'2020-04-25 14:01:37'),(2,2,3,'newPost',4,'{\"postNumber\":2}','2020-04-04 16:25:14',0,'2020-04-25 14:01:37'),(3,2,4,'vote',3,'\"Up\"','2020-04-04 16:32:08',0,'2020-04-25 14:01:37'),(4,2,4,'postMentioned',3,'{\"replyNumber\":3}','2020-04-04 16:32:44',0,'2020-04-25 14:01:37'),(5,2,5,'newPost',4,'{\"postNumber\":4}','2020-04-04 16:42:26',0,'2020-04-25 14:01:37'),(6,4,5,'newPost',4,'{\"postNumber\":4}','2020-04-04 16:42:26',0,'2020-04-05 05:53:58'),(7,5,2,'vote',7,'\"Up\"','2020-04-04 16:45:34',0,NULL),(8,4,2,'vote',5,'\"Up\"','2020-04-04 16:45:35',0,NULL),(9,3,2,'vote',4,'\"Up\"','2020-04-04 16:45:36',0,NULL),(10,1,2,'vote',11,'\"Up\"','2020-04-04 17:31:10',0,'2020-05-01 05:07:05'),(11,5,6,'newPost',4,'{\"postNumber\":6}','2020-04-04 18:00:01',0,NULL),(12,2,8,'newPost',4,'{\"postNumber\":7}','2020-04-05 04:28:01',0,'2020-04-25 14:01:37'),(13,6,8,'newPost',4,'{\"postNumber\":7}','2020-04-05 04:28:01',0,NULL),(14,2,7,'newPost',4,'{\"postNumber\":8}','2020-04-05 04:40:32',0,'2020-04-25 14:01:37'),(15,8,7,'newPost',4,'{\"postNumber\":8}','2020-04-05 04:40:32',0,'2020-04-05 05:06:45'),(16,1,2,'newPost',12,'{\"postNumber\":2}','2020-04-05 04:55:27',0,'2020-05-01 05:07:05'),(17,6,2,'vote',13,'\"Up\"','2020-04-05 05:04:46',0,NULL),(18,8,2,'vote',23,'\"Up\"','2020-04-05 05:04:52',0,NULL),(19,2,10,'newPost',4,'{\"postNumber\":9}','2020-04-05 05:12:10',0,'2020-04-25 14:01:37'),(20,7,10,'newPost',4,'{\"postNumber\":9}','2020-04-05 05:12:10',0,NULL),(21,8,10,'newPost',4,'{\"postNumber\":9}','2020-04-05 05:12:10',0,NULL),(23,10,2,'vote',26,'\"Up\"','2020-04-05 05:18:02',0,NULL),(24,2,12,'newPost',4,'{\"postNumber\":10}','2020-04-05 05:37:38',0,'2020-04-25 14:01:37'),(25,10,12,'newPost',4,'{\"postNumber\":10}','2020-04-05 05:37:38',0,NULL),(26,2,13,'newPost',4,'{\"postNumber\":11}','2020-04-05 12:44:38',0,'2020-04-25 14:01:37'),(27,4,13,'newPost',4,'{\"postNumber\":11}','2020-04-05 12:44:38',0,NULL),(28,12,13,'newPost',4,'{\"postNumber\":11}','2020-04-05 12:44:38',0,NULL),(29,2,15,'newPost',4,'{\"postNumber\":12}','2020-04-05 12:47:17',0,'2020-04-25 14:01:37'),(30,4,15,'newPost',4,'{\"postNumber\":12}','2020-04-05 12:47:17',0,NULL),(31,12,15,'newPost',4,'{\"postNumber\":12}','2020-04-05 12:47:17',0,NULL),(32,2,16,'newPost',4,'{\"postNumber\":13}','2020-04-05 12:48:30',0,'2020-04-25 14:01:37'),(33,4,16,'newPost',4,'{\"postNumber\":13}','2020-04-05 12:48:30',0,NULL),(34,12,16,'newPost',4,'{\"postNumber\":13}','2020-04-05 12:48:30',0,NULL),(35,1,13,'vote',21,'\"Up\"','2020-04-05 12:48:40',0,'2020-05-01 05:07:05'),(36,2,1,'newPost',18,'{\"postNumber\":2}','2020-04-05 12:51:16',0,'2020-04-25 14:01:37'),(37,2,1,'postReacted',33,'\"{\\\"id\\\":6,\\\"identifier\\\":\\\"tada\\\",\\\"type\\\":\\\"emoji\\\"}\"','2020-04-05 12:51:49',0,'2020-04-25 14:01:37'),(38,1,15,'newPost',18,'{\"postNumber\":3}','2020-04-05 12:54:46',0,'2020-05-01 05:07:05'),(39,2,15,'newPost',18,'{\"postNumber\":3}','2020-04-05 12:54:46',0,'2020-04-25 14:01:37'),(40,15,13,'newPost',18,'{\"postNumber\":4}','2020-04-05 12:55:43',0,NULL),(41,13,2,'postMentioned',36,'{\"replyNumber\":5}','2020-04-05 13:34:18',0,'2020-04-29 10:19:12'),(42,2,17,'newPost',4,'{\"postNumber\":14}','2020-04-05 15:05:23',0,'2020-04-25 14:01:37'),(43,13,17,'newPost',4,'{\"postNumber\":14}','2020-04-05 15:05:23',0,'2020-04-24 16:28:16'),(44,16,17,'newPost',4,'{\"postNumber\":14}','2020-04-05 15:05:23',0,NULL),(45,17,2,'vote',38,'\"Up\"','2020-04-05 15:10:56',0,NULL),(46,16,2,'vote',32,'\"Up\"','2020-04-05 15:10:56',0,NULL),(47,15,2,'vote',31,'\"Up\"','2020-04-05 15:10:57',0,NULL),(48,2,14,'newPost',4,'{\"postNumber\":15}','2020-04-05 15:13:51',0,'2020-04-25 14:01:37'),(49,17,14,'newPost',4,'{\"postNumber\":15}','2020-04-05 15:13:51',0,NULL),(50,2,14,'newPost',18,'{\"postNumber\":6}','2020-04-05 15:14:23',0,'2020-04-25 14:01:37'),(51,2,18,'newPost',4,'{\"postNumber\":16}','2020-04-05 22:47:36',0,'2020-04-25 14:01:37'),(52,14,18,'newPost',4,'{\"postNumber\":16}','2020-04-05 22:47:36',0,NULL),(53,18,2,'vote',41,'\"Up\"','2020-04-05 22:50:25',0,NULL),(54,1,12,'newPost',18,'{\"postNumber\":7}','2020-04-06 08:48:10',0,'2020-05-01 05:07:05'),(55,2,12,'newPost',18,'{\"postNumber\":7}','2020-04-06 08:48:10',0,'2020-04-25 14:01:37'),(56,14,12,'newPost',18,'{\"postNumber\":7}','2020-04-06 08:48:10',0,'2020-04-25 18:39:00'),(57,12,2,'vote',42,'\"Up\"','2020-04-06 09:28:11',0,NULL),(58,2,19,'newPost',4,'{\"postNumber\":17}','2020-04-08 04:48:21',0,'2020-04-25 14:01:37'),(59,12,19,'newPost',4,'{\"postNumber\":17}','2020-04-08 04:48:21',0,NULL),(60,13,19,'newPost',4,'{\"postNumber\":17}','2020-04-08 04:48:21',0,'2020-04-24 16:28:16'),(61,14,19,'newPost',4,'{\"postNumber\":17}','2020-04-08 04:48:21',0,NULL),(62,18,19,'newPost',4,'{\"postNumber\":17}','2020-04-08 04:48:21',0,NULL),(63,8,2,'newPost',19,'{\"postNumber\":2}','2020-04-08 08:04:17',0,NULL),(64,2,8,'vote',45,'\"Up\"','2020-04-08 08:13:13',0,'2020-04-25 14:01:37'),(65,2,8,'postMentioned',45,'{\"replyNumber\":3}','2020-04-08 08:14:26',0,'2020-04-25 14:01:37'),(66,8,1,'newPost',19,'{\"postNumber\":4}','2020-04-08 08:18:37',0,NULL),(67,1,8,'vote',47,'\"Up\"','2020-04-08 08:24:30',0,'2020-05-01 05:07:05'),(68,1,8,'postMentioned',47,'{\"replyNumber\":5}','2020-04-08 08:26:23',0,'2020-05-01 05:07:05'),(69,8,2,'vote',46,'\"Up\"','2020-04-08 13:23:23',0,NULL),(70,8,2,'postMentioned',46,'{\"replyNumber\":6}','2020-04-08 13:23:47',0,NULL),(71,1,2,'newPost',19,'{\"postNumber\":6}','2020-04-08 13:23:47',0,'2020-05-01 05:07:05'),(73,1,2,'newPost',18,'{\"postNumber\":8}','2020-04-20 12:30:08',0,'2020-05-01 05:07:05'),(74,12,2,'newPost',18,'{\"postNumber\":8}','2020-04-20 12:30:08',0,NULL),(75,14,2,'newPost',18,'{\"postNumber\":8}','2020-04-20 12:30:08',0,'2020-04-25 18:39:00'),(76,2,1,'vote',54,'\"Down\"','2020-04-20 12:33:11',0,'2020-04-25 14:01:37'),(77,2,1,'vote',52,'\"Up\"','2020-04-21 02:57:40',0,'2020-04-25 14:01:37'),(78,2,21,'newPost',4,'{\"postNumber\":18}','2020-04-24 13:06:13',0,'2020-04-25 14:01:37'),(79,12,21,'newPost',4,'{\"postNumber\":18}','2020-04-24 13:06:13',0,NULL),(80,19,21,'newPost',4,'{\"postNumber\":18}','2020-04-24 13:06:13',0,NULL),(81,2,22,'newPost',4,'{\"postNumber\":19}','2020-04-24 13:32:18',0,'2020-04-25 14:01:37'),(82,21,22,'newPost',4,'{\"postNumber\":19}','2020-04-24 13:32:18',0,NULL),(84,2,13,'vote',54,'\"Up\"','2020-04-25 13:55:12',0,'2020-04-25 14:01:37'),(85,2,13,'postReacted',54,'\"{\\\"id\\\":5,\\\"identifier\\\":\\\"heart\\\",\\\"type\\\":\\\"emoji\\\"}\"','2020-04-25 13:55:14',0,'2020-04-25 14:01:37'),(86,2,8,'vote',58,'\"Up\"','2020-04-25 14:10:25',0,'2020-04-25 14:13:03'),(87,1,8,'vote',64,'\"Up\"','2020-06-02 03:10:49',0,NULL),(88,1,2,'vote',64,'\"Up\"','2020-06-03 03:52:07',0,NULL);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'googlec6d2b723ebc306de.html','googlec6d2b723ebc306de-html','2020-04-04 16:45:58','2020-04-04 17:35:46','<t><p>google-site-verification:googlec6d2b723ebc306de.html</p></t>',0,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `password_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_tokens`
--

LOCK TABLES `password_tokens` WRITE;
/*!40000 ALTER TABLE `password_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_options`
--

DROP TABLE IF EXISTS `poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_options_poll_id_foreign` (`poll_id`),
  CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_options`
--

LOCK TABLES `poll_options` WRITE;
/*!40000 ALTER TABLE `poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_votes`
--

DROP TABLE IF EXISTS `poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_votes_poll_id_foreign` (`poll_id`),
  KEY `poll_votes_option_id_foreign` (`option_id`),
  KEY `poll_votes_user_id_foreign` (`user_id`),
  CONSTRAINT `poll_votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_votes`
--

LOCK TABLES `poll_votes` WRITE;
/*!40000 ALTER TABLE `poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `public_poll` tinyint(1) NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_discussion_id_foreign` (`discussion_id`),
  KEY `polls_user_id_foreign` (`user_id`),
  CONSTRAINT `polls_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_likes` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_post`
--

DROP TABLE IF EXISTS `post_mentions_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_post` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_post_id`),
  KEY `post_mentions_post_mentions_post_id_foreign` (`mentions_post_id`),
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_post`
--

LOCK TABLES `post_mentions_post` WRITE;
/*!40000 ALTER TABLE `post_mentions_post` DISABLE KEYS */;
INSERT INTO `post_mentions_post` VALUES (5,3),(37,36),(46,45),(48,47),(49,46);
/*!40000 ALTER TABLE `post_mentions_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_user`
--

DROP TABLE IF EXISTS `post_mentions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_user` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`mentions_user_id`),
  KEY `post_mentions_user_mentions_user_id_foreign` (`mentions_user_id`),
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_user`
--

LOCK TABLES `post_mentions_user` WRITE;
/*!40000 ALTER TABLE `post_mentions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_reactions`
--

DROP TABLE IF EXISTS `post_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_reactions_post_id_foreign` (`post_id`),
  KEY `post_reactions_user_id_foreign` (`user_id`),
  KEY `post_reactions_reaction_id_foreign` (`reaction_id`),
  CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_reactions`
--

LOCK TABLES `post_reactions` WRITE;
/*!40000 ALTER TABLE `post_reactions` DISABLE KEYS */;
INSERT INTO `post_reactions` VALUES (1,33,1,6,'2020-04-05 12:51:49','2020-04-05 12:51:53'),(2,54,13,5,'2020-04-25 13:55:14',NULL),(3,58,2,1,'2020-04-26 22:04:25',NULL);
/*!40000 ALTER TABLE `post_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_user`
--

DROP TABLE IF EXISTS `post_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_user` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_user_user_id_foreign` (`user_id`),
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_user`
--

LOCK TABLES `post_user` WRITE;
/*!40000 ALTER TABLE `post_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_votes`
--

DROP TABLE IF EXISTS `post_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_votes_post_id_foreign` (`post_id`),
  CONSTRAINT `post_votes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_votes`
--

LOCK TABLES `post_votes` WRITE;
/*!40000 ALTER TABLE `post_votes` DISABLE KEYS */;
INSERT INTO `post_votes` VALUES (3,3,1,'Up'),(4,4,3,'Up'),(5,3,4,'Up'),(6,5,4,'Up'),(8,7,5,'Up'),(9,7,2,'Up'),(10,5,2,'Up'),(11,4,2,'Up'),(12,9,2,'Up'),(13,11,1,'Up'),(14,11,2,'Up'),(16,14,1,'Up'),(17,15,1,'Up'),(18,16,1,'Up'),(19,18,1,'Up'),(20,19,1,'Up'),(21,20,1,'Up'),(22,21,1,'Up'),(23,22,1,'Up'),(26,24,7,'Up'),(27,3,2,'Up'),(28,25,2,'Up'),(29,13,2,'Up'),(30,23,2,'Up'),(34,26,2,'Up'),(35,27,12,'Up'),(36,28,2,'Up'),(37,29,2,'Up'),(38,30,13,'Up'),(39,31,15,'Up'),(40,32,16,'Up'),(41,21,13,'Up'),(42,33,2,'Up'),(43,34,1,'Up'),(44,35,15,'Up'),(46,37,2,'Up'),(47,38,17,'Up'),(48,38,2,'Up'),(49,32,2,'Up'),(50,31,2,'Up'),(53,40,14,'Up'),(54,39,14,'Up'),(55,41,18,'Up'),(56,41,2,'Up'),(57,42,12,'Up'),(58,42,2,'Up'),(60,43,8,'Up'),(61,44,19,'Up'),(62,45,2,'Up'),(63,45,8,'Up'),(64,46,8,'Up'),(65,47,1,'Up'),(66,47,8,'Up'),(67,48,8,'Up'),(68,46,2,'Up'),(69,49,2,'Up'),(70,50,2,'Up'),(72,52,2,'Up'),(73,54,2,'Up'),(74,54,1,'Down'),(75,52,1,'Up'),(76,56,21,'Up'),(79,57,22,'Up'),(81,54,13,'Up'),(82,58,2,'Up'),(83,58,8,'Up'),(84,59,2,'Up'),(85,60,2,'Up'),(86,61,2,'Up'),(88,64,1,'Up'),(89,64,8,'Up'),(90,64,2,'Up');
/*!40000 ALTER TABLE `post_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT ' ',
  `edited_at` datetime DEFAULT NULL,
  `edited_user_id` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  KEY `posts_edited_user_id_foreign` (`edited_user_id`),
  KEY `posts_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `posts_discussion_id_number_index` (`discussion_id`,`number`),
  KEY `posts_discussion_id_created_at_index` (`discussion_id`,`created_at`),
  KEY `posts_user_id_created_at_index` (`user_id`,`created_at`),
  FULLTEXT KEY `content` (`content`),
  CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (3,4,1,'2020-04-04 16:10:28',2,'comment','<t><p>歡迎會員註冊，註冊完成後來這邊簽到喔！<br/>\n這邊簽到完成後，管理員才能幫你更新為會員身份&gt;&lt;</p></t>','2020-04-04 16:39:33',2,NULL,NULL,'61.228.118.241',0,1),(4,4,2,'2020-04-04 16:25:14',3,'comment','<t><p>早安午安晚安</p></t>',NULL,NULL,NULL,NULL,'122.116.8.165',0,1),(5,4,3,'2020-04-04 16:32:44',4,'comment','<r><p><POSTMENTION discussionid=\"4\" displayname=\"曜維\" id=\"3\" number=\"1\" username=\"jackroy\">@jackroy#3</POSTMENTION> 簽</p>\n</r>',NULL,NULL,NULL,NULL,'27.246.4.10',0,1),(6,5,1,'2020-04-04 16:40:38',2,'comment','<t><p>【桃園市高中職學生聯合會社群規範】</p>\n\n<p>〖總則〗<br/>\n一、本社群為桃園市高中職學生聯合會會員專用社群，供會員討論使用以及桃學聯行政團隊處理會務使用。</p>\n\n<p>二、會員應遵守本會會員專區之社群規範，管理員得依本規範進行管理。</p>\n\n<p>〖規範〗<br/>\n三、發文或留言應符合下列條款：<br/>\n（1）發文內容應滿30字。（留言不在此限）<br/>\n（2）文章內容應符合「公共議題」、「校園議題」、「學權討論」、「兒少權益」、「會務建議」等五項主題。<br/>\n（3）留言內容不得偏離原文章之主題<br/>\n（4）文章或留言內容不得對社群使用者或使用族群進行挑釁、侮辱、威脅、謾罵，或使用仇恨言語攻擊特定族群等。<br/>\n（5）文章或留言不得刻意洗版，或有蓄意亂版之行為。<br/>\n（6）文章或留言應符合本國法律。<br/>\n（7）文章或留言禁止販賣行為。</p>\n\n<p>四、違反第三點規範者，管理員得刪除文章或留言之。</p>\n\n<p>五、屢次違反本規範者，管理員將報請理事會處理。</p></t>',NULL,NULL,NULL,NULL,'61.228.118.241',0,1),(7,4,4,'2020-04-04 16:42:26',5,'comment','<t><p>安安</p></t>',NULL,NULL,NULL,NULL,'114.137.226.39',0,1),(9,6,1,'2020-04-04 17:04:14',2,'comment','<r><p>桃園市高中職學生聯合會第一屆資料均已上線公告，歡迎至雲端資料夾閱覽：<br/>\n<URL url=\"https://drive.google.com/folderview?id=1Wz3e5wOXKbCq_pvJvx8_BRBlzUqINFME\">https://drive.google.com/folderview?id=1Wz3e5wOXKbCq_pvJvx8_BRBlzUqINFME</URL></p></r>','2020-04-04 17:04:56',2,NULL,NULL,'61.228.118.241',0,1),(11,7,1,'2020-04-04 17:17:12',1,'comment','<r><p>「<URL url=\"https://thssa.nctu.me\">https://thssa.nctu.me</URL>」 是由「桃園市高中職學生聯合會」（下稱我們）所經營之網站(下稱本網站)各項服務與資訊。<br/>\n以下是我們的隱私權保護政策，幫助您瞭解本網站所蒐集的個人資料之運用及保護方式。<br/>\n一、隱私權保護政策的適用範圍<br/>\n    （1）請您在於使用本網站服務前，確認您已審閱並同意本隱私權政策所列全部條款，若您不同意全部或部份者，則請勿使用本網站服務。<br/>\n    （2）隱私權保護政策內容，包括我們如何處理您在使用本網站服務時蒐集到的個人識別資料。<br/>\n    （3）隱私權保護政策不適用於本網站以外的相關連結網站，亦不適用於非我們所委託或參與管理之人員。</p>\n\n<p>二、個人資料的蒐集及使用<br/>\n    （1）於一般瀏覽時，伺服器會自行記錄相關行徑，包括您使用連線設備的IP位址、使用時間、使用的瀏覽器、瀏覽及點選資料記錄等，做為我們增進服務的參考依據，此記錄為內部應用，絕不對外公布。<br/>\n    （2）在使用我們的服務時，我們可能會要求您向我們提供可用於聯繫或識別您的某些個人資料，包括：<br/>\n        • C001辨識個人者： 如姓名、地址、電話、電子郵件等資訊。<br/>\n        • C011個人描述：例如：性別、出生年月日等。</p>\n\n<i>    </i><CODE>（3）本網站將蒐集的數據用於各種目的：\n<i>    </i>    •提供和維護系統所提供讀服務\n<i>    </i>    •提供用戶支持\n<i>    </i>    •提供分析或有價值訊息，以便我們改進服務\n<i>    </i>    •監控服務的使用情況\n<i>    </i>    •檢測，預防和解決技術問題\n<i>    </i>（4）本網站針對蒐集數據的利用期間、地區、對象及方式：\n<i>    </i>    •期間：當事人要求停止使用或本服務停止提供服務之日為止。\n<i>    </i>    •地區：個人資料將用於台灣地區。\n<i>    </i>    •利用對象及方式：所蒐集到的資料將利用於各項業務之執行，利用方式為因業務執行所必須進行之各項分析、聯繫及通知。</CODE>\n\n<p>三、資料的保護與安全<br/>\n    （1）本網站主機均設有防火牆、防毒系統等相關資訊安全設備及必要的安全防護措施，本網站及您的個人資料均受到嚴格的保護。只有經過授權的人員才能接觸您的個人資料，相關處理人員均有簽署保密合約，如有違反保密義務者，將會受到相關的法律處分。<br/>\n    （2） 如因業務需要有必要委託本網站相關單位提供服務時，我們會要求其遵守保密義務，並採取相當之檢查程序以確定其將確實遵守。<br/>\n    （3）請您妥善保管您的密碼與個人資料，並提醒您使用完畢本網站相關服務後，務必關閉本網站，以免您的資料遭人盜用。<br/>\n    （4）您同意在使用本網站服務時，所留存的資料與事實相符。另若嗣後您發現您的個人資料遭他人非法使用或有任何異常時，應即時通知我們。<br/>\n    （5）您同意於使用本網站服務時，所提供及使用之資料皆為合法，並無侵害第三人權利、違反第三方協議或涉及任何違法行為。如因使用本APP服務而致第三人損害，除因我們故意或重大過失所致外，我們並不負擔相關賠償責任。</p>\n\n<p>四、對外的相關連結<br/>\n本網站上有可能包含其他合作網站或網頁連結，該網站或網頁也有可能會蒐集您的個人資料，不論其內容或隱私權政策為何，皆與本網站 無關，您應自行參考該連結網站中的隱私權保護政策，我們不負任何連帶責任。<br/>\n五、與第三人共用個人資料之政策<br/>\n    （1）本網站絕不會提供、交換、出租或出售任何您的個人資料給其他個人、團體、私人企業或公務機關，但有法律依據或合約義務者，不在此限。<br/>\n    （2）前項但書之情形包括但不限於：<br/>\n        •經由您書面同意。<br/>\n        •法律明文規定。<br/>\n        •為維護國家安全或增進公共利益。<br/>\n        •為免除您生命、身體、自由或財產上之危險。<br/>\n        •與公務機關或學術研究機構合作，基於公共利益為統計或學術研究而有必要，且資料經過提供者處理或蒐集者依其揭露方式無從識別特定之當事人。<br/>\n        •當您在網站的行為，違反服務條款或可能損害或妨礙網站與其他使用者權益或導致任何人遭受損害時，經網站管理單位研析揭露您的個人資料是為了辨識、聯絡或採取法律行動所必要者。<br/>\n        •有利於您的權益。<br/>\n    （3）本網站委託廠商協助蒐集、處理或利用您的個人資料時，將對委外廠商或個人善盡監督管理之責。</p>\n\n<p>六、Cookie之使用<br/>\n    （1）為了提供您最佳的服務，本網站會在您的電腦中放置並取用我們的Cookie，若您不願接受Cookie的寫入，您可在您使用的瀏覽器功能項中設定隱私權等級為高，即可拒絕Cookie的寫入，但可能會導致網站某些功能無法正常執行 。<br/>\n以下是可能使用的Cookie範例:<br/>\n        •session cookies. 用來維護應用程式的狀態<br/>\n        •Preference Cookies. 用來記錄您的喜好與設定<br/>\n        •Security Cookies. 用來控制安全和檢查</p>\n\n<p>七、未成年人保護<br/>\n未成年人於註冊或使用本服務而同意本公司蒐集、利用其個人資訊時，應按其年齡由其法定代理人代為或在法定代理人之同意下為之。<br/>\n八、隱私權政策的修訂<br/>\n我們將因應需求擁有隨時修改本隱私權保護政策的權利，當我們做出修改時，會於本網站公告，且自公告日起生效，不再另行通知。</p>\n\n<p>九、Google數據追蹤<br/>\n本網站使用Google analytics來觀看並且改善使用者體驗，相關Google隱私政策請至 <URL url=\"https://policies.google.com/privacy?hl=zh-TW\"><s>[</s>Google隱私政策頁面<e>](https://policies.google.com/privacy?hl=zh-TW)</e></URL> 查看。</p>\n</r>','2020-05-01 05:08:26',1,NULL,NULL,'111.241.44.201',0,1),(12,7,2,'2020-04-04 17:17:43',1,'discussionRenamed','[\"\\u96b1\\u79c1\\u6b0a\\u653f\\u7b56\",\"\\u6843\\u5712\\u5e02\\u9ad8\\u4e2d\\u8077\\u5b78\\u751f\\u806f\\u5408\\u6703\\u4e4b\\u96b1\\u79c1\\u6b0a\\u653f\\u7b56\"]',NULL,NULL,NULL,NULL,NULL,0,1),(13,4,6,'2020-04-04 18:00:01',6,'comment','<t><p>Hi~:</p></t>',NULL,NULL,NULL,NULL,'49.216.76.103',0,1),(14,8,1,'2020-04-04 18:19:34',1,'comment','<r><p><URL url=\"https://drive.google.com/file/d/1fpkLCNvcwfzXj3otjupCIyir7MTSCtCK/view?usp=drivesdk\"><s>[</s>雲端連結<e>](https://drive.google.com/file/d/1fpkLCNvcwfzXj3otjupCIyir7MTSCtCK/view?usp=drivesdk)</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(15,9,1,'2020-04-04 18:27:59',1,'comment','<r><p><URL url=\"https://i.imgur.com/CYG2H96.jpg\"><s>[URL=https://i.imgur.com/CYG2H96.jpg]</s><IMG src=\"https://i.imgur.com/CYG2H96h.jpg\"><s>[IMG]</s>https://i.imgur.com/CYG2H96h.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/ybyh4g1.jpg\"><s>[URL=https://i.imgur.com/ybyh4g1.jpg]</s><IMG src=\"https://i.imgur.com/ybyh4g1h.jpg\"><s>[IMG]</s>https://i.imgur.com/ybyh4g1h.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/euXNeCl.jpg\"><s>[URL=https://i.imgur.com/euXNeCl.jpg]</s><IMG src=\"https://i.imgur.com/euXNeClh.jpg\"><s>[IMG]</s>https://i.imgur.com/euXNeClh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(16,10,1,'2020-04-04 18:31:08',1,'comment','<r><p><URL url=\"https://drive.google.com/file/d/1EwYDt7JqEyjvZsqasYZkHpN0LTNav2iA/view?usp=drivesdk\"><s>[</s>雲端連結<e>](https://drive.google.com/file/d/1EwYDt7JqEyjvZsqasYZkHpN0LTNav2iA/view?usp=drivesdk)</e></URL></p></r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(17,9,2,'2020-04-04 18:32:14',1,'discussionRenamed','[\"\\u9ad8\\u4e2d\\u5b78\\u751f\\u6703\\u53ca\\u5176\\u4ed6\\u76f8\\u95dc\\u81ea\\u6cbb\\u7d44\\u7e54\\u904b\\u4f5c\\u6ce8\\u610f\\u4e8b\\u9805\",\"\\u9ad8\\u4e2d\\u5b78\\u751f\\u6703\\u53ca\\u5176\\u4ed6\\u81ea\\u6cbb\\u7d44\\u7e54\\u6ce8\\u610f\\u4e8b\\u9805\\u554f\\u7b54\\u96c6\"]',NULL,NULL,NULL,NULL,NULL,0,1),(18,11,1,'2020-04-04 18:37:14',1,'comment','<r><p><URL url=\"https://i.imgur.com/hYEP9D6.jpg\"><s>[URL=https://i.imgur.com/hYEP9D6.jpg]</s><IMG src=\"https://i.imgur.com/hYEP9D6h.jpg\"><s>[IMG]</s>https://i.imgur.com/hYEP9D6h.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/steHRst.jpg\"><s>[URL=https://i.imgur.com/steHRst.jpg]</s><IMG src=\"https://i.imgur.com/steHRsth.jpg\"><s>[IMG]</s>https://i.imgur.com/steHRsth.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/3tHVSKP.jpg\"><s>[URL=https://i.imgur.com/3tHVSKP.jpg]</s><IMG src=\"https://i.imgur.com/3tHVSKPh.jpg\"><s>[IMG]</s>https://i.imgur.com/3tHVSKPh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/scey6O4.jpg\"><s>[URL=https://i.imgur.com/scey6O4.jpg]</s><IMG src=\"https://i.imgur.com/scey6O4h.jpg\"><s>[IMG]</s>https://i.imgur.com/scey6O4h.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL><br/>\n<URL url=\"https://i.imgur.com/GhQIDhX.jpg\"><s>[URL=https://i.imgur.com/GhQIDhX.jpg]</s><IMG src=\"https://i.imgur.com/GhQIDhXh.jpg\"><s>[IMG]</s>https://i.imgur.com/GhQIDhXh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(19,12,1,'2020-04-04 18:40:53',1,'comment','<r><p><URL url=\"https://drive.google.com/file/d/1AD85lRy6w8LoG_yOa34s7QE7aoyMKem2/view?usp=drivesdk\"><s>[</s>PDF檔<e>](https://drive.google.com/file/d/1AD85lRy6w8LoG_yOa34s7QE7aoyMKem2/view?usp=drivesdk)</e></URL><br/>\n<URL url=\"https://drive.google.com/file/d/1xQmQY-PfUo_uV1q06wtDFw67gT2CvlVx/view?usp=drivesdk\"><s>[</s>Doc檔<e>](https://drive.google.com/file/d/1xQmQY-PfUo_uV1q06wtDFw67gT2CvlVx/view?usp=drivesdk)</e></URL></p></r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(20,13,1,'2020-04-04 18:45:57',1,'comment','<r><p><URL url=\"https://docs.google.com/spreadsheets/d/1oGc0KIhJhp09oMlIOjzCOwPS13b3soPF9x9B9PbXpbI/edit?usp=drivesdk\"><s>[</s>資料表<e>](https://docs.google.com/spreadsheets/d/1oGc0KIhJhp09oMlIOjzCOwPS13b3soPF9x9B9PbXpbI/edit?usp=drivesdk)</e></URL></p></r>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(21,14,1,'2020-04-05 03:22:43',1,'comment','<t><p>我們相信，公開、文明、理性與充分的討論，是這個線上論壇的基本要素。除了這些元素，以下幾點不算硬性規定的版規，更像是提供社群成員進行共識判斷時的一些參考依據：<br/>\n即使您可能不認同，但請尊重他人發起與討論的議題。<br/>\n在發文前，請先搜尋有關關鍵字，也許您會找到共同關切有關議題的人和已經討論過的帖文。<br/>\n請針對議題討論，而非針對“人”來討論<br/>\n請避免：<br/>\n甲、 人身攻擊<br/>\n乙、 回應他人帖文的“語調”，而非回應他人不的內容。<br/>\n丙、 不經思考、本能反應式的反對。<br/>\n丁、 灌水。<br/>\n戊、 張貼任何色情、鼓吹暴力、仇恨等讓任何人不舒服的文字、圖片或任何格式的帖文。<br/>\n無論如何，這裡並無法明確定義何者為不適當的內容。若您不確定，這裡可以提供一個假設性情景供您參考。您可以假設您的帖文張貼在各大報章封面的話，您將會有什麼感受。<br/>\n請據理提出反對的意見。<br/>\n這是一個公開論壇，所有討論將會被搜尋引擎索引（index）。因此，請自行保護個人、家人與朋友的隱私。<br/>\n請把帖文發佈在適當的分類組別（category）。<br/>\n請善用 【Like】按鍵，來取代“同意”或“+1”。<br/>\n請善用【回覆】按鍵來連接linked您的回覆留言。<br/>\n請尊重智慧財產權，避免張貼可能引起有關爭議的帖文。<br/>\n若您發現任何不適當的內容，請善用【投訴】（Flag）按鍵。<br/>\n管理員並非仲裁者、亦非執法者，他們比較像協調員（facilitators）, 會協助維護這個平台。</p></t>',NULL,NULL,NULL,NULL,'111.241.44.201',0,1),(22,15,1,'2020-04-05 03:26:42',1,'comment','<t><p>桃園市高中職學生聯合會（以下簡稱本會）係依據本服務條款提供本站各項服務。當您註冊完成或開始使用本服務時，即表示您已閱讀、了解並同意接受本服務條款之所有內容。如果您不同意本服務條款的內容，或者您所屬的國家或地域排除本服務條款內容之全部或部分時，您應立即停止使用本服務。此外，當您使用本服務之特定功能時，可能會依據該特定功能之性質，而須遵守本服務所另行公告之服務條款或相關規定。此另行公告之服務條款或相關規定亦均併入屬於本服務條款之一部分。本會有權於任何時間修改或變更本服務條款之內容，並公告於本服務網站上，請您隨時注意該等修改或變更。若您於任何修改或變更後繼續使用本服務，則視為您已閱讀、了解並同意接受該等修改或變更。</p>\n \n<p>若您為未滿二十歲之未成年人，則應請您的父母或監護人閱讀、了解並同意本服務條款之所有內容及其後之修改變更，方得使用本服務。當您使用本服務時，即推定您的父母或監護人已閱讀、了解並同意接受本服務條款之所有內容及其後之修改變更。<br/>\n隱私權保護政策<br/>\n本會相當重視隱私權的保護。關於您的會員註冊以及其他特定資料，將依本服務「隱私權保護政策」保護與規範。您了解並同意當您使用本服務時，本服務可依據「隱私權保護政策」之規範進行您個人資料的蒐集與利用，如線上活動及網路調查等。<br/>\n一般條款<br/>\n本服務條款構成您與本會就您使用本服務之完整合意，取代您先前與本會間有關本服務所為之任何約定。本服務條款之解釋與適用，以及與本服務條款有關的爭議，除法律另有規定者外，均應依照中華民國法律予以處理，並以台灣桃園地方法院為管轄法院。</p>\n \n<p>本會未行使或執行本服務條款任何權利或規定，不構成前開權利或規定之棄權。若任何本服務條款規定，經有管轄權之法院認定無效，當事人仍同意法院應努力使當事人於前開規定所表達之真意生效，且本服務條款之其他規定仍應完全有效。<br/>\n會員的註冊義務及會員帳號、密碼安全<br/>\n為了能使用本服務，您同意並承諾以下事項：<br/>\n依本服務註冊流程之提示提供您本人正確及完整的資料，並維持、更新該資料，確保其為正確、最新及完整。<br/>\n若您提供任何不完整、錯誤或不實的資料，本會有權暫停或終止您的帳號，並拒絕您使用本服務之全部或部分。</p>\n \n<p>完成本服務的註冊流程後，您將收到一組帳號及密碼。您同意並承諾以下事項：<br/>\n此帳號係不可轉讓。<br/>\n您有責任維持此帳號及密碼的機密安全。<br/>\n當您的帳號遭到盜用或有其他任何安全問題發生時，您將立即通知本會。<br/>\n會員使用規範與義務<br/>\n除了遵守本服務條款之約定外，您同意遵守中華民國相關法規、本服務其他服務條款，並同意不從事以下行為： 您若係中華民國以外之使用者，並同意遵守所屬國家或地域之相關法規。您同意並保證絕不利用本服務從事違法或損害他人權益之行為。<br/>\n冒用他人名義使用本服務。<br/>\n侵害他人名譽、隱私權、著作權、智慧財產權及其他權利。<br/>\n上載、張貼或公布任何不實、誹謗、侮辱、具威脅性、攻擊性、違背公序良俗、引人犯罪或其他不法之文字、圖片或任何形式的檔案。<br/>\n違反依法律或契約所應負之保密義務。<br/>\n上載、張貼或公佈任何含有電腦木馬、病毒或任何對電腦軟、硬體產生中斷、破壞或限制功能之程式碼或資料。<br/>\n從事販賣槍枝、毒品、禁藥、盜版軟體、其他違禁物或其他不法交易行為。<br/>\n破壞及干擾本服務所提供之各項資料、活動或功能，或以任何方式侵入、試圖侵入、破壞本服務之任何系統，或藉由本服務為任何侵害或破壞行為。<br/>\n未經同意收集他人電子郵件位址及其他個人資料者。<br/>\n其他本會有正當理由認為不適當之行為。</p>\n \n<p>若您有違反前開事項之情事或之虞，本會有權於通知或未通知之情形下，隨時終止或限制您使用帳號（或其任何部分）或本服務之使用，並將本服務內任何相關「會員內容」加以移除並刪除。您同意若本服務之使用被終止或限制時，本會對您或任何第三人均不承擔責任。<br/>\n對本服務的貢獻<br/>\n若您對於本服務提供任何想法、建議或提議（以下稱「貢獻」）並回饋給本會，您了解並同意：<br/>\n該貢獻並非特定機密或專有資訊，且不侵害他人名譽、隱私權、著作權、智慧財產權及其他權利。<br/>\n本會對該貢獻並不負有任何明示或默示的保密責任。<br/>\n本會可能已有與該貢獻相似而正在考慮或發展中的想法或提案。<br/>\n本會可以基於公益或為宣傳、推廣本服務之目的，以任何方式、在任何媒體上使用（或選擇不使用）該貢獻。<br/>\n該貢獻將於本會不對您負任何責任的情形下，自動成為本會之財產。您於任何情形下皆無權利對本會主張任何形式的賠償或補償。</p>\n \n<p>若您有違反前開事項之情事或之虞，本會有權於通知或未通知之情形下，隨時終止或限制您使用帳號（或其任何部分）或本服務之使用，並將本服務內任何相關「會員內容」加以移除並刪除。您同意若本服務之使用被終止或限制時，本會對您或任何第三人均不承擔責任。<br/>\n不得為商業使用<br/>\n您同意並承諾不對本服務任何部分或本服務（包括但不限於會員內容、網站內容、軟體及會員帳號等）之使用或存取，進行任何商業目的之使用。<br/>\n您對本服務之授權<br/>\n若您無合法權利得授權他人使用、修改、發行、散布、重製或公開展示某資料，並將前述權利轉授權第三人，請勿擅自將該資料上載、輸入或提供予本服務。您所上載、輸入或提供予本服務之任何資料，其權利仍為您或您的授權人所有；但任何資料一經您上載、輸入或提供予本服務時，即表示您已同意授權本會可以基於公益或為宣傳、推廣本服務之目的，進行使用、修改、發行、散布、重製或公開展示該等資料，並得在此範圍內將前述權利轉授權他人。您並保證本服務使用、修改、發行、散布、重製、公開展示或轉授權該資料，不致侵害任何第三人之相關權利，否則應對本會負損害賠償責任。<br/>\n系統中斷或故障<br/>\n本服務有時可能會出現中斷或故障等現象，或許將造成您使用上的不便、資料喪失、錯誤等情形。您於使用本服務時宜自行採取防護措施。本會對於您因使用（或無法使用）本服務而造成的損害，不負任何賠償責任。<br/>\n與第三方網站之連結及第三方提供之內容<br/>\n本服務可能會提供連結至其他機關單位(以下稱「第三方」)之網站。第三方之網站均由各該機關單位自行負責，不屬本服務控制及負責範圍之內。本會對任何檢索結果或外部連結，不擔保其有效性、正確性、合適性、及完整性。您也許會檢索或連結到一些不合適或不需要的網站，遇此情形時，本服務建議您不要瀏覽或儘速離開該等網站。您並同意本會無須為您連結至前述非屬於本服務之網站所生之任何損害，負損害賠償之責任。 本服務隨時會與其他機關單位等第三方（以下稱「內容提供者」）合作，由其提供包括政令、新聞、訊息、活動等不同內容供本服務刊登，且本服務於刊登時均將註明內容來源。基於尊重內容提供者之智慧財產權，本服務對其所提供之內容並不做實質之審查或修改。對該等內容之正確真偽，您宜自行判斷之，本會對該等內容之正確真偽不負任何責任。您若認為某些內容屬不適宜、侵權或有所不實，請逕向該內容提供者反應意見。<br/>\n服務變更及通知<br/>\n您同意本會保留於任何時間點，不經通知隨時修改、暫時或永久停止繼續提供本服務（或其任一部分）的權利。如依法或其他相關規定須為通知時，本服務得以包括但不限於：張貼於本服務網頁、電子郵件，或其他現在或未來合理之方式通知您，包括本服務條款之變更。但若您違反本服務條款，以未經授權的方式存取本服務，或於註冊時所提供之資料不正確或未更新，您將不會收到前述通知。當您經由授權的方式存取本服務，您即同意本服務所為之任何及所有給您的通知，均視為送達。<br/>\n智慧財產權的保護<br/>\n本服務所使用之程式、軟體及網站內容，包括但不限於：資訊、資料、圖片、檔案、網站架構、網頁設計及會員內容等，均由本會或其他權利人依法擁有其智慧財產權，包括但不限於專利權、著作權與專有技術等。任何人不得逕自修改、重製、散布、發行、公開發表、進行還原工程或反向組譯。若您欲引用或轉載前述資料，除明確為法律所允許者外，均須依法事前取得本會或其他權利人之書面同意。如有違反，您應負損害賠償責任。<br/>\n智慧財產權或著作權之侵害處理<br/>\n本會尊重他人之智慧財產權，同樣也要求本服務的使用者尊重他人之智慧財產權。本服務得對於可能屬侵權之使用者暫停或終止其帳戶。若您認為您的著作權或智慧財產權遭受侵害，請提供以下資訊予本服務：<br/>\n您的正確資料與聯絡方式，並有異議情形時，同意將其資料提供給被檢舉人。<br/>\n能合法代表著作權或智慧財產權利益之所有人之證明。<br/>\n您所主張受侵害之著作或其他智慧財產權之描述，以及受侵害資料之描述。<br/>\n您基於善意認為該利用未經著作權人其代理人或法律許可之聲明。<br/>\n您在了解虛偽陳述之責任的前提下，對於上述載於您的通知上之資訊的正確性之聲明。</p></t>','2020-04-05 03:33:40',1,NULL,NULL,'111.241.44.201',0,1),(23,4,7,'2020-04-05 04:28:01',8,'comment','<t><p>簽到!</p></t>',NULL,NULL,NULL,NULL,'203.204.77.63',0,1),(24,4,8,'2020-04-05 04:40:32',7,'comment','<t><p>呃啊呃啊呃(❍ᴥ❍)</p></t>',NULL,NULL,NULL,NULL,'42.73.98.109',0,1),(25,12,2,'2020-04-05 04:55:27',2,'comment','<t><p>能不要用到這個就盡量不要用到&#128514;</p></t>',NULL,NULL,NULL,NULL,'61.228.118.241',0,1),(26,4,9,'2020-04-05 05:12:09',10,'comment','<t><p>嗨還海害嗨</p></t>',NULL,NULL,NULL,NULL,'101.136.80.80',0,1),(27,4,10,'2020-04-05 05:37:38',12,'comment','<t><p>嘿嘿ㄏㄟˇㄏㄟˇㄏㄟˋ</p></t>','2020-04-05 05:42:55',12,NULL,NULL,'110.30.98.192',0,1),(28,16,1,'2020-04-05 10:47:17',2,'comment','<r><p>桃園市高中職學生聯合會第一屆第八次理事會暨第二次監事會會議紀錄</p>\n\n<p>時　　間：西元2020年03月07日。<br/>\n地　　點：通訊會議。<br/>\n主　　席：理事長劉曜維。<br/>\n出席人員：理事黃振翃、理事崔芷容、理事李芳瑜、理事洪秉榮、常務監事劉昊昀、監事翁弘祐、監事黃禮彬。<br/>\n列席人員：秘書長李品佑。</p>\n\n<p>臺、報告事項</p>\n\n<p>一、主席報告<br/>\n（一）感謝各位人員出席本次聯席會議，本次會議為我會第一次的聯席會議，主要是解決會務重大事項。所以各位出席的人員皆可提出議案。<br/>\n（二）本次會議前已收到相關會議文書，將依照收件順序進行處理。</p>\n	\n<p>貳、討論事項</p>\n\n<p>討論一：本會理事長劉曜維、理事洪秉榮等5人，擬訂定桃園市高中職學生聯合會針對學生自治之決議文，並送交會員大會複決。</p>\n\n<p>說  明：鑑於本會並無相關對於學生自治之基本主張，特擬具「桃園市 高中職學生聯合會針對學生自治之主張決議文」草案，以再次 確認本會對於學生自治之明確主張。本決議文為本會對於學生 自治之基本主張，茲事體大，故請理監事聯席會議審查通過 後，移交至會員大會複決，經複決通過後，本決議文始為生 效，為本會對於學生自治倡議之基本綱要。</p>\n\n<p>【修正動議一】（文書提出）<br/>\n主　旨：本會理事長劉曜維、理事洪秉榮等5人，提出修正第一案之動議。<br/>\n說　明：鑑於本會並無相關對於學生自治之基本主張，特擬具「桃園市高中職學生聯合會針對學生自治之主張決議文」草案，以再次確認本會對於學生自治之明確主張。本決議文為本會對於學生自治之基本主張，茲事體大，故請理監事聯席會議審查，通過後，本決議文始為生效，為本會對於學生自治倡議之基本綱要。</p>\n\n<p>【修正動議二】（口頭提出）<br/>\n主　旨：本會監事黃禮彬提出、理事長劉曜維附議，提出修正桃園市高中職學生聯合會針對學生自治之主張決議文草案第一條第二款，納入學生議會議長及學生會幹部。<br/>\n說　明：鑑於成績限制並非僅限制學生會會長，為周全整體決議文，故提議將學生議會議長及學生會幹部一同納入。</p>\n\n<p>【主席】修正動議一及修正動議二有相同之處，故併案處理。</p>\n\n<p>決　議：動議無異議通過。</p>\n\n<p>決　議：<br/>\n第一案經會議審查，無異議通過。</p>\n\n<p>討論二：理事李芳瑜等2人，擬具「桃園市高中職學生聯合會性騷擾案件申訴暨懲戒細則」。<br/>\n說　明：鑑於本會尚無性騷擾事件之防治、申訴及懲戒措施，以致會員 因受性騷擾事件，欲申訴而無從申訴。為改善此狀況，特擬具 本細則。<br/>\n決　議：第二案經會議審查，無異議通過。</p>\n\n<p>討論三：本會理事長劉曜維、理事洪秉榮等3人，建議本會提供擬參選會長之會員得以向桃學聯申請以本會名義推薦之。<br/>\n說　明：為於教育現場落實學生之學權意識及性別平等，培育本會會員 具多元思考能力，特擬「2020 桃園市高級中等學校學生會會長 選舉桃學聯推薦名單實施辦法」草案。本案由請理事會議審查 是否可行。<br/>\n決　議：第三案經會議審查，無異議通過。</p>\n\n\n<p>討論四：本會理事長劉曜維等5人，提出有關我會承辦之「2020桃園高校學生自治培力課程」，總召人選撤換乙案。<br/>\n說　明：本次活動原訂於2020年02月01日舉辦，因配合2019冠狀病毒病（武漢肺炎）相關防疫措施，故取消。但活動前因現任總召黃振翃個人因素，以致活動具有相當程度之疏漏。例如：因個人因素致活動會議嚴重遲到，無法衡量自身時間與活動排程、活動前二日之整體活動細節未盡完成，以致活動處於極度可能出錯之地步、活動前與講師之溝通未盡完善以致本會聲譽恐已受損等事件。綜上所述，本次提案要求撤換「2020桃園高校學生自治培力課程」之總召，是否有當，敬請公決。</p>\n\n<p>【變更議程動議】<br/>\n主　旨：本會理事黃振翃提出變更議程動議，延後至3月15日處理。<br/>\n說　明：如主旨所述。<br/>\n決　議：同意延後至3月15日處理本案。</p>\n\n<p>決　議：延後至3月15日處理。</p>\n\n<p>【程序動議】<br/>\n主　旨：本會理事長劉曜維提出程序動議，聯席會議休息至3月15日處理。<br/>\n說　明：如主旨所述。<br/>\n決　議：無異議通過。</p>\n\n<p>【西元2020年03月15日】<br/>\n主席：經查出席人數4人，未達過半出席。休息至西元2020年3月28日下午八時開會。</p>\n\n<p>【西元2020年03月28日】<br/>\n主席：會議出席人數6人，達過半出席之標準，現在開始開會。</p>\n\n<p>討論五：擬廢止本會「2020桃園市高級中等學校學生會會長選舉桃學聯推薦名單實施辦法」，並通過其附帶決議。請審議案。<br/>\n說　明：一、本會理事會為發展學權，於本次會議特訂定2020桃園市高級中等學校學生會會長選舉桃學聯推薦名單實施辦法，但因該計畫具有「校外組織介入校園」之疑慮，爾後是否有爭議不明，對我會之會務發展不易，故提出廢止。<br/>\n二、	雖前述之方案有所爭議，但基於發展學權，特提出附帶之決議，透過變更方案來施行原有之想法。<br/>\n決　議：無異議通過。</p>\n\n<p>討論六：本會理事長劉曜維等2人，建請停辦我會擬舉辦之「2020 桃園高校學生自治培力課程」及 於防疫期間停辦我會所有活動。<br/>\n說　明：鑑於防疫「2019 冠狀病毒」工作，活動延長時間未定，為避免 故請聯席會停辦「2020 桃園高校學生自治培力課程」。並建議 大會於防疫期間，我會停辦所有實體活動。是否有當，敬請公 決。</p>\n\n<p>討論七：本會理事黃振翃等2人，建議2020 桃園高校學生自治寒假培力課程停辦及總召人選。<br/>\n說　明：因武漢肺炎疫情而延期的 2020 桃園高校學生自治寒假培力課程，建議理事會對外公布活動取消之事，取消後黃理事振翃總召職務將會廢除。</p>\n\n<p>討論四：本會理事長劉曜維等5人，提出有關我會承辦之「2020桃園高校學生自治培力課程」，總召人選撤換乙案。<br/>\n說　明：本次活動原訂於2020年02月01日舉辦，因配合2019冠狀病毒病（武漢肺炎）相關防疫措施，故取消。但活動前因現任總召黃振翃個人因素，以致活動具有相當程度之疏漏。例如：因個人因素致活動會議嚴重遲到，無法衡量自身時間與活動排程、活動前二日之整體活動細節未盡完成，以致活動處於極度可能出錯之地步、活動前與講師之溝通未盡完善以致本會聲譽恐已受損等事件。綜上所述，本次提案要求撤換「2020桃園高校學生自治培力課程」之總召，是否有當，敬請公決。</p>\n\n<p>【主席】第六案、第七案及第四案，均針對「2020桃園高校學生自治培力課程」進行提案，因部分相同，故併案處理。</p>\n\n<p>決　議：2020桃園高校學生自治培力課程取消辦理，同時自疫情結束前，本會之實體活動均不予辦理。同時暑假是否辦理活動及其活動細節，自五月份會議審查辦理。</p>\n\n<p>肆、臨時動議</p>\n\n<p>動議一：本會理事長劉曜維、理事洪秉榮提議響應「EARTH HOUR地球一小時活動」，是否有當，敬請公決。<br/>\n說　明：附連結介紹，倘本案通過，請各位有意願參與之理監事於3月24日前繳交個人與看板合照之照片一張。<br/>\n決　議：無異議通過。</p>\n\n<p>動議二：本會理事長劉曜維、理事洪秉榮提議響應由全國中學學生權益研究會、臺中市兒少代表及高雄學生民主聯盟等發起「呼籲教育部落實服儀改革連署」，並參與其記者會。是否有當，敬請公決。<br/>\n說　明：附連結介紹。<br/>\n決　議：無異議通過。</p>\n\n\n<p>伍、主席結論或主席指示事項</p>\n\n<p>一、感謝各位理監事與會。<br/>\n二、近期將處理本會討論區之設置，同時預備辦理第二屆之選舉。</p>\n\n<p>陸、散會</p>\n\n<p>聯席會會議記錄PDF：<br/>\n<URL url=\"https://drive.google.com/drive/folders/1L7C83CJTX7dHYNu_XVrbqv6BhZFy17PG?usp=sharing\">https://drive.google.com/drive/folders/1L7C83CJTX7dHYNu_XVrbqv6BhZFy17PG?usp=sharing</URL></p></r>','2020-04-05 10:54:52',2,NULL,NULL,'61.228.118.241',0,1),(29,17,1,'2020-04-05 10:49:21',2,'comment','<r><p><URL url=\"https://i.imgur.com/bCfRs3U.jpg\"><s>[URL=https://i.imgur.com/bCfRs3U.jpg]</s><IMG src=\"https://i.imgur.com/bCfRs3Uh.jpg\"><s>[IMG]</s>https://i.imgur.com/bCfRs3Uh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n\n<p>文件連結：<br/>\n<URL url=\"https://drive.google.com/file/d/1ZjRVG8W8ecYvpY3rEvEhLQhXR5jLFXJK/view?usp=sharing\">https://drive.google.com/file/d/1ZjRVG8W8ecYvpY3rEvEhLQhXR5jLFXJK/view?usp=sharing</URL></p>\n</r>','2020-04-05 10:50:39',2,NULL,NULL,'61.228.118.241',0,1),(30,4,11,'2020-04-05 12:44:38',13,'comment','<t><p>嗨嗨嗨嗨嗨嗨嗨嗨</p></t>',NULL,NULL,NULL,NULL,'114.137.237.71',0,1),(31,4,12,'2020-04-05 12:47:17',15,'comment','<t><p>卡個飲料</p></t>',NULL,NULL,NULL,NULL,'39.11.39.149',0,1),(32,4,13,'2020-04-05 12:48:30',16,'comment','<t><p>簽到.jpg</p>\n</t>',NULL,NULL,NULL,NULL,'180.217.206.222',0,1),(33,18,1,'2020-04-05 12:50:05',2,'comment','<t><p>鼓勵註冊啦+鼓勵留言啦，身為理事長的我贊助一杯清心啦！大家趕快註冊！</p>\n\n<p>【參加資格】<br/>\n桃學聯會員註冊討論區會員，並且在新人簽到串前到者。在本文章留言「完成」，即可參加抽獎！</p>\n\n<p>【參加限制】<br/>\n每一會員限定留言一次。不得重複註冊帳號、重複留言。</p>\n\n<p>【獎品】<br/>\n清心福全新台幣60元以內飲料一杯。一名。</p>\n\n<p>【活動期限】<br/>\n自2020年4月16日止，4月20日抽出一名會員。</p>\n</t>','2020-04-05 12:52:38',2,NULL,NULL,'42.72.255.192',0,1),(34,18,2,'2020-04-05 12:51:16',1,'comment','<t><p>完成</p></t>',NULL,NULL,NULL,NULL,'42.73.50.19',0,1),(35,18,3,'2020-04-05 12:54:46',15,'comment','<t><p>飲料卡爆</p></t>',NULL,NULL,NULL,NULL,'39.11.39.149',0,1),(36,18,4,'2020-04-05 12:55:43',13,'comment','<t><p>我要星巴克❤️</p></t>',NULL,NULL,NULL,NULL,'114.137.237.71',0,1),(37,18,5,'2020-04-05 13:34:18',2,'comment','<r><p><POSTMENTION discussionid=\"18\" displayname=\"莊詠斌\" id=\"36\" number=\"4\" username=\"90_3_11\">@90_3_11#36</POSTMENTION> <br/>\n有點小貴</p></r>',NULL,NULL,NULL,NULL,'61.228.118.241',0,1),(38,4,14,'2020-04-05 15:05:23',17,'comment','<t><p>Hello&#128516;</p>\n\n</t>',NULL,NULL,NULL,NULL,'175.182.135.81',0,1),(39,4,15,'2020-04-05 15:13:51',14,'comment','<t><p>簽到</p></t>',NULL,NULL,NULL,NULL,'1.200.63.0',0,1),(40,18,6,'2020-04-05 15:14:23',14,'comment','<t><p>完成</p></t>',NULL,NULL,NULL,NULL,'1.200.63.0',0,1),(41,4,16,'2020-04-05 22:47:36',18,'comment','<t><p>(・∀・)</p></t>',NULL,NULL,NULL,NULL,'101.12.43.41',0,1),(42,18,7,'2020-04-06 08:48:10',12,'comment','<t><p>卡爆</p></t>',NULL,NULL,NULL,NULL,'110.30.98.192',0,1),(43,19,1,'2020-04-07 15:13:22',8,'comment','<r><p>相信看到這篇文章的各位都知道<br/>\n第八節課輔上新進度是違法的！！！！<br/>\n或許有些學校沒有第八節）像是職科<br/>\n又或者有些人是根本沒上第八節）像是我<br/>\n但不管如何，第八節就是不能上新進度</p>\n\n<p>最近我們班的化學任課老師<br/>\n在第八節課輔時違規上了進度<br/>\n以下是上課時同學與老師的對話<br/>\n同學：老師！有同學沒參加，不能上新進度哦<br/>\n老師：第八節本來就是要上進度啊 不然來上幹嘛</p>\n\n<p>其實聽到以上短短對話的我，已經有點怒了<br/>\n畢竟沒參加的兩個人，其中一人就是我&#128557;<br/>\n但為何教育部要規定不能上進度呢<br/>\n就是要防止像我們班的這種情況<br/>\n如果有人沒參加，老師卻上了新進度<br/>\n不但影響沒參加學生的受教權<br/>\n也變相的有點強迫學生參加第八節<br/>\n怕沒上到進度，而選擇參加第八節</p>\n\n<p>以下是想跟大家討論的論點<br/>\n(1)你支持第八節的存在嗎？<br/>\n(2)若是，為何？ 若不是，為何？<br/>\n(3)你們學校也有老師違規上進度嗎？是哪所學校？</p>\n\n<p>#最後也附上我去向教育局申訴的內容</p>\n\n<p>話說教務主任明天要找我去教務處「泡茶」<br/>\n看來是已經接到教育局的電話了呢..<br/>\n<URL url=\"https://i.imgur.com/qPILjfr.jpg\"><s>[URL=https://i.imgur.com/qPILjfr.jpg]</s><IMG src=\"https://i.imgur.com/qPILjfrh.jpg\"><s>[IMG]</s>https://i.imgur.com/qPILjfrh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>','2020-04-07 15:15:52',8,NULL,NULL,'203.204.77.63',0,1),(44,4,17,'2020-04-08 04:48:21',19,'comment','<t><p>簽</p></t>',NULL,NULL,NULL,NULL,'42.72.198.109',0,1),(45,19,2,'2020-04-08 08:04:17',2,'comment','<t><p>1、支持有第八節，原因在於可以提供給有需要的學生複習課程。對於違規上進度的狀況也是層出不窮，很多私校會有這樣的狀況。</p>\n\n<p>2、泡茶的部分是？？？</p></t>',NULL,NULL,NULL,NULL,'42.73.117.96',0,1),(46,19,3,'2020-04-08 08:14:26',8,'comment','<r><p><POSTMENTION discussionid=\"19\" displayname=\"曜維\" id=\"45\" number=\"2\" username=\"jackroy\">@jackroy#45</POSTMENTION> 我今天真的被找去泡茶&#128561;<br/>\n總之主任說的內容差不多就是<br/>\n以後要先跟學校反應<br/>\n才能去跟局端反應<FP char=\"…\">...</FP></p></r>',NULL,NULL,NULL,NULL,'175.97.35.164',0,1),(47,19,4,'2020-04-08 08:18:37',1,'comment','<t><p>沒差 跟學校反映無效<br/>\n所以我通常都直接越級找校外+輿論</p></t>',NULL,NULL,NULL,NULL,'42.72.235.3',0,1),(48,19,5,'2020-04-08 08:26:23',8,'comment','<r><p><POSTMENTION discussionid=\"19\" displayname=\"熊熊\" id=\"47\" number=\"4\" username=\"Thssa-Admin-Dogbone\">@Thssa-Admin-Dogbone#47</POSTMENTION> 哈哈哈我當初也這麼想<br/>\n但主任堅持要我先找他才能找局端<br/>\n找學校有用才有鬼&#128123;</p></r>',NULL,NULL,NULL,NULL,'175.97.35.164',0,1),(49,19,6,'2020-04-08 13:23:47',2,'comment','<r><p><POSTMENTION discussionid=\"19\" displayname=\"溪高學權戰士\" id=\"46\" number=\"3\" username=\"Jerry0514_\">@Jerry0514_#46</POSTMENTION> <br/>\n誰管他ＸＤ我都直接向局反應wwwww</p></r>',NULL,NULL,NULL,NULL,'220.141.116.7',0,1),(50,20,1,'2020-04-08 13:25:18',2,'comment','<r><p>【你曾被學校吃豆腐嗎？】<br/>\n去年，我們發起「校園生活大調查」，回收約2000份問卷，發現許多學校仍保有違法不當的校規與管教措施。<br/>\n許多學生仍受服儀（83％）、髮禁（56％）與禁愛令（28％）的桎梏，搜書包（23％）、違法的輔導課（60％）更是部分學生的日常。體罰（48％）、言語羞辱（42％）與變相處罰，也是如此。<br/>\n而學生被侵權、被吃豆腐了，常都無法吭一聲。教育部所頒佈看似進步的法令，根本沒有進入校園。<br/>\n要督促學校「從善如流」，別再吃學生豆腐，正視學生的人權，你可以填寫「＃黑心校規檢核表單」，一起體檢自己的學校，揪出其中的違法與不當。後續，我們也會陸續發起相關倡議行動。<br/>\n快來填寫：<URL url=\"https://pse.is/QJ6V8\">https://pse.is/QJ6V8</URL></p></r>',NULL,NULL,NULL,NULL,'220.141.116.7',0,1),(51,20,2,'2020-04-08 13:25:40',2,'discussionRenamed','[\"\\u3010\\u4eba\\u672c\\u57fa\\u91d1\\u6703\\u8a08\\u756b\\u3011\\u64b2\\u6ec5\\u9ed1\\u5fc3\\u6821\\u898f\",\"#\\u8abf\\u67e5\\u3010\\u4eba\\u672c\\u3011\\u64b2\\u6ec5\\u9ed1\\u5fc3\\u6821\\u898f\"]',NULL,NULL,NULL,NULL,NULL,0,1),(52,21,1,'2020-04-19 14:38:29',2,'comment','<r><p>幹部名單：</p>\n\n<p>理事長：劉曜維<br/>\n學校：新興學校財團法人桃園市新興高級中等學校<br/>\n現任：第3屆桃園市青年諮詢委員</p>\n\n<p>理事：洪秉榮<br/>\n學校：國立臺北科技大學附屬桃園農工高級中等學校<br/>\n現任：第33屆國立臺北科技大學附屬桃園農工高級中等學校學生會成員</p>\n\n<p>理事：崔芷容<br/>\n學校：新興學校財團法人桃園市新興高級中等學校<br/>\n經歷：第3屆桃園市私立新興高級中等學校班聯會副主席</p>\n\n<p>理事：李芳瑜<br/>\n學校：桃園市立南崁高級中等學校<br/>\n現任：桃園市立南崁高級中等學校學生會副主席</p>\n\n<p>理事：黃振翃<br/>\n學校：六和學校財團法人桃園市六和高級中等學校<br/>\n現任：桃園市私立六和高級中等學校班聯會副活動長</p>\n\n<p>-</p>\n\n<p>前理事：康皓雄（辭職）<br/>\n學校：桃園市立永豐高級中等學校<br/>\n現任：第2屆臺灣學論議題論壇會長</p>\n\n<p>-</p>\n\n<p>常務監事：劉昊昀<br/>\n學校：復旦學校財團法人桃園市復旦高級中等學校<br/>\n現任：桃園市復旦高中學生會學權長</p>\n\n<p>監事：黃禮彬<br/>\n學校：桃園市立新屋高級中等學校<br/>\n經歷：純粹學－全國學生聯合組織成員</p>\n\n<p>監事：翁弘祐<br/>\n學校：桃園市立觀音高級中等學校<br/>\n經歷：桃園市觀音高中班聯會副機動長</p>\n\n<p>-</p>\n\n<p>秘書長：李品佑<br/>\n學校：桃園市立平鎮高級中等學校<br/>\n現任：桃園市立平鎮高級中等學校學生會會長</p>\n\n<p>資訊顧問：康皓雄<br/>\n學校：桃園市立永豐高級中等學校<br/>\n現任：第2屆臺灣學論議題論壇會長</p>\n\n<p>法律顧問：莊詠斌<br/>\n學校：開南大學法律學系<br/>\n經歷：桃園市私立永平工商社聯會主席</p>\n\n<p>-</p>\n\n<p>桃園市高中職學生聯合會第一屆資料均已上線公告，歡迎至雲端資料夾閱覽：<br/>\n<URL url=\"https://drive.google.com/folderview?id=1Wz3e5wOXKbCq_pvJvx8_BRBlzUqINFME\">https://drive.google.com/folderview?id=1Wz3e5wOXKbCq_pvJvx8_BRBlzUqINFME</URL></p></r>','2020-04-23 11:48:42',2,NULL,NULL,'220.141.131.154',0,1),(53,21,2,'2020-04-19 14:38:44',2,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1),(54,18,8,'2020-04-20 12:30:08',2,'comment','<t><p>[抽獎結果為【莊詠斌】獲得獎品！</p></t>',NULL,NULL,NULL,NULL,'42.73.29.198',0,1),(55,18,9,'2020-04-20 12:30:19',2,'discussionLocked','{\"locked\":true}',NULL,NULL,NULL,NULL,NULL,0,1),(56,4,18,'2020-04-24 13:06:13',21,'comment','<t><p>簽到！</p></t>',NULL,NULL,NULL,NULL,'49.215.147.4',0,1),(57,4,19,'2020-04-24 13:32:18',22,'comment','<t><p>簽到</p></t>','2020-04-24 14:40:05',22,NULL,NULL,'114.43.14.136',0,1),(58,22,1,'2020-04-25 13:56:12',2,'comment','<r><p>哈囉大家，我是理事長劉曜維！</p>\n\n<p>理事會這邊訂於2020年05月10日召開「第一屆第四次會員大會」，主要議程是修正組織章程的部分條文，主要如下：</p>\n\n<LIST type=\"decimal\"><LI><s>1. </s>增加會友制度，並且讓觀察會員、社會會員制度走入歷史，以符合法規。</LI>\n<LI><s>2. </s>理事長於第一屆時為間接選舉產生，為符合「直接選舉」的原則，改以理事會選舉之最高票者當選為本會理事長。</LI>\n<LI><s>3. </s>本會秘書長常任化。</LI>\n<LI><s>4. </s>監事會新增「彈劾權」。</LI>\n<LI><s>5. </s>部分文字異動。</LI></LIST>\n\n<p>相關草案已公布於雲端，歡迎點選查看。<br/>\n<STRONG><s>**</s>如對於本草案有任何建議，可以直接在下方留言處提出。<e>**</e></STRONG></p>\n\n<p>連結：<br/>\n<URL url=\"https://drive.google.com/file/d/1wuJlDER-HIJ74xXJ8SWnU9lUZozT9RoX/view?usp=sharing\">https://drive.google.com/file/d/1wuJlDER-HIJ74xXJ8SWnU9lUZozT9RoX/view?usp=sharing</URL></p></r>','2020-04-25 14:00:58',2,NULL,NULL,'36.228.0.127',0,1),(59,23,1,'2020-05-11 04:02:28',2,'comment','<r>\n<H3><s>### </s>【撲滅黑心校規，歸還學生權利】</H3>\n<p>本會昨（10）日參與 人本教育基金會 所發起的 撲滅黑心校規 記者會，共同關注校園規範違法及不重視學生權利的議題，以下為本會發言稿：</p>\n\n<p><STRONG><s>**</s>「撲滅黑心校規」桃園市高中職學生聯合會發言稿<e>**</e></STRONG><br/>\n校規是學校管理學生的規範，學生在校也必須遵守校規。但各校現行的校規符合法律規範嗎？有確實遵守教育部的政策方向嗎？訂定程序上有符合民主程序嗎？這裡打上一個大問號。<br/>\n教育部已推動髮禁解除政策多年，對於教育部的政策，學生皆深表認同。但據了解，桃園市私立新興高中的服裝儀容規範中，仍然明文規定「學生髮式應以自然整潔為原則，不染、不燙、不怪異」，雖然該校強調無處罰機制，但這樣的規定，除了不怪異的明確定義不明，更是實質限制學生髮式，很明顯已有違背教育部解除髮禁政策之疑慮。而桃園市私立振聲高中在服儀方面更是完全不避嫌，除規範學生髮式該如何修剪外，至今仍有白鞋、白襪的相關規範及管制。<br/>\n除此之外，桃園部分學校存在所謂「禁愛令」，在獎懲規定中規定：「校內（外）親密行為，影響公共觀感」最多可懲處到大過。我們很疑惑，學校該如何定義親密行為？是指擁抱，還是牽手？本會詢問過二名學生，一名學生與女友在校外牽手，被其他老師拍下，就遭記過處分；另一名學生則在校與男友一起走路，比較靠近，就被教官約談。上述實例均可得知，親密行為的定義根本就是教官或教師的「自行定義」，毫無明確性可言。重點是，學生的感情交往，到底有什麼好限制的？<br/>\n其中，桃園還有幾個特別的案例，一名公立學校學生在去年擔任「聲援反送中」活動的志工，被新聞拍到後，遭學校約談，甚至一度要依校規懲處；桃園另一所私立高中，也在獎懲規定中明定：「參加集會遊行、請願運動，影響學生學習或公共利益者，輔導轉學」。完全無視我國憲法所保障的集會自由。<br/>\n綜合以上所舉的實例，目前各校校規仍有侵害學生權利及違反法律、教育部規範的問題，在此呼籲教育部及地方政府的教育局處，應儘速檢核各校校規是否有上述問題。尤其是本次人本教育基金會所公布有相關疑慮的學校，相關權責機關應立即進行調查，並監督改善，確保學生在校權利完整。桃園市在這次調查中，有11所學校「榜上有名」，也特別呼籲桃園市政府教育局局長高安邦先生，特別關心一下這些學校的校規。<br/>\n學生進入校園，並不代表失去人權；全面檢討黑心校規，保障學生權利。<URL url=\"https://i.imgur.com/KQoeYC6.jpg\"><s>[URL=https://i.imgur.com/KQoeYC6.jpg]</s><IMG src=\"https://i.imgur.com/KQoeYC6h.jpg\"><s>[IMG]</s>https://i.imgur.com/KQoeYC6h.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'114.137.11.138',0,1),(60,24,1,'2020-05-12 00:28:25',2,'comment','<r><p>依據：桃園市高中職學生聯合會組織章程第 26 條、桃園市高中職學生聯合會第一屆第四次會員大會決議辦理。<br/>\n公告事項：<br/>\n一、茲依桃園市高中職學生聯合會組織章程第 26 條及第一屆第四次會員大會會議決議，公告修正「桃園市高 中職學生聯合會組織章程」第 05 條、第 07 條、第 10 條、第16條、第17條、第21條、第30條、第32 條、第 38 條，並增訂第 05 條之一、第 16 條之一、 第 17 條之一、第 37 條之一。<br/>\n二、 上開修正及增訂之條文，自本公告發布之日起生效。</p>\n\n<p><URL url=\"https://i.imgur.com/j6D26RG.jpg\"><s>[URL=https://i.imgur.com/j6D26RG.jpg]</s><IMG src=\"https://i.imgur.com/j6D26RGh.jpg\"><s>[IMG]</s>https://i.imgur.com/j6D26RGh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'114.137.142.122',0,1),(61,25,1,'2020-05-25 00:11:11',2,'comment','<r><p>公告日期：西元2020年5月25日<br/>\n公告字號：桃學聯字第 20200041號</p>\n\n<p>主旨：公告本會第二屆理事會、監事會選舉之事項。<br/>\n依據：桃園市高中職學生聯合會組織章程辦理。</p>\n\n<p>公告事項：<br/>\n一、 選舉種類：第二屆理事、監事。<br/>\n二、 應選名額：理事 5 名、監事 3 名，以上各候補 2 名。<br/>\n三、 投票日期：2020年7月4日上午0時至下午9時。<br/>\n四、 注意事項：</p>\n\n<LIST type=\"decimal\"><LI><s>1. </s>本次選舉採電子投票，請依投票通知單指示投票。</LI>\n<LI><s>2. </s>選舉登記期間自2020年6月8日至18日下午6時止。請擬參選人依本會公告之格式登記選舉。</LI>\n<LI><s>3. </s>本次選舉依照人民團體法相關規定，採「單一選票 連記制」，理事會選舉最多圈選 5 名候選人，監事會選舉最多圈選 3 名候選人。</LI></LIST>\n\n<p><URL url=\"https://i.imgur.com/kuIjLjL.jpg\"><s>[URL=https://i.imgur.com/kuIjLjL.jpg]</s><IMG src=\"https://i.imgur.com/kuIjLjLh.jpg\"><s>[IMG]</s>https://i.imgur.com/kuIjLjLh.jpg<e>[/IMG]</e></IMG><e>[/URL]</e></URL></p>\n</r>',NULL,NULL,NULL,NULL,'110.50.158.21',0,1),(62,10,2,'2020-05-25 06:40:20',1,'discussionTagged','[[6],[1]]',NULL,NULL,NULL,NULL,NULL,0,1),(63,9,3,'2020-05-25 06:40:29',1,'discussionTagged','[[6],[1]]',NULL,NULL,NULL,NULL,NULL,0,1),(64,26,1,'2020-05-25 06:43:17',1,'comment','<r><p><URL url=\"http://www.mediafire.com/file/iluinz8r97eahsd/1-3%25E6%25A1%2583%25E5%259C%2592%25E5%25B8%2582%25E5%25B8%2582%25E7%25AB%258B%25E9%25AB%2598%25E7%25B4%259A%25E4%25B8%25AD%25E7%25AD%2589%25E5%25AD%25B8%25E6%25A0%25A1%25E8%25AA%25B2%25E6%25A5%25AD%25E8%25BC%2594%25E5%25B0%258E%25E5%258F%258A%25E5%25AF%2592%25E6%259A%2591%25E5%2581%2587%25E5%25AD%25B8%25E8%2597%259D%25E6%25B4%25BB%25E5%258B%2595%25E5%25AF%25A6%25E6%2596%25BD%25E8%25A6%2581%25E9%25BB%259E%25281050328%2529%25281%2529.pdf/file\"><s>[</s>實施要點<e>](http://www.mediafire.com/file/iluinz8r97eahsd/1-3%25E6%25A1%2583%25E5%259C%2592%25E5%25B8%2582%25E5%25B8%2582%25E7%25AB%258B%25E9%25AB%2598%25E7%25B4%259A%25E4%25B8%25AD%25E7%25AD%2589%25E5%25AD%25B8%25E6%25A0%25A1%25E8%25AA%25B2%25E6%25A5%25AD%25E8%25BC%2594%25E5%25B0%258E%25E5%258F%258A%25E5%25AF%2592%25E6%259A%2591%25E5%2581%2587%25E5%25AD%25B8%25E8%2597%259D%25E6%25B4%25BB%25E5%258B%2595%25E5%25AF%25A6%25E6%2596%25BD%25E8%25A6%2581%25E9%25BB%259E%25281050328%2529%25281%2529.pdf/file)</e></URL></p></r>',NULL,NULL,NULL,NULL,'114.137.118.102',0,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank_users`
--

DROP TABLE IF EXISTS `rank_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_users` (
  `rank_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_users`
--

LOCK TABLES `rank_users` WRITE;
/*!40000 ALTER TABLE `rank_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `points` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (1,'thumbsup','emoji'),(2,'thumbsdown','emoji'),(3,'laughing','emoji'),(4,'confused','emoji'),(5,'heart','emoji'),(6,'tada','emoji');
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_tokens`
--

DROP TABLE IF EXISTS `registration_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_tokens`
--

LOCK TABLES `registration_tokens` WRITE;
/*!40000 ALTER TABLE `registration_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('allow_post_editing','reply'),('allow_renaming','10'),('allow_sign_up','1'),('custom_footer','\n\n<div style=\"text-align:center;class=\"ac-gf-footer-legal-copyright\">\n     Copyright ©2020 Designed by \n          <a href=\"https://www.facebook.com/Dogbone0714\" target=\"_blank\" title=\"Hao-Hsiung, Kang\">Hao-Hsiung, Kang</a>. \n     All rights reserved.\n</div>'),('custom_header',''),('custom_less',''),('default_locale','zh-hant'),('default_route','/all'),('dem13n_nickname_change','1'),('dem13n_nickname_max_char','50'),('dem13n_nickname_min_char','1'),('dem13n_nickname_regex','/^([[:alnum:]]{2,}[\\r\\n\\t\\f\\v ]{0,1})+$/iu'),('dem13n_nickname_unique','0'),('extensions_enabled','[\"flarum-approval\", \"flarum-bbcode\", \"flarum-emoji\", \"flarum-lang-english\", \"flarum-flags\", \"flarum-likes\", \"flarum-lock\", \"flarum-markdown\", \"flarum-mentions\", \"flarum-statistics\", \"flarum-sticky\", \"flarum-subscriptions\", \"flarum-suspend\", \"fof-default-user-preferences\", \"migratetoflarum-canonical\", \"csineneo-lang-traditional-chinese\", \"fof-user-bio\", \"fof-socialprofile\", \"fof-share-social\", \"fof-secure-https\", \"fof-reactions\", \"fof-profile-image-crop\", \"fof-polls\", \"flarum-tags\", \"flarum-auth-facebook\", \"michaelbelgium-discussion-views\", \"flarum-embed\", \"dem13n-nickname-changer\", \"fof-default-group\", \"fof-gamification\", \"fof-links\", \"fof-formatting\", \"v17development-seo\", \"flarum-auth-twitter\", \"fof-auth-discord\", \"flagrow-analytics\", \"fof-pages\", \"reflar-webhooks\", \"matteocontrini-imgur-upload\", \"saleksin-auth-google\", \"flarum-auth-github\", \"fof-recaptcha\", \"flagrow-sitemap\"]'),('favicon_path','favicon-fkjjkacm.png'),('flagrow.analytics.googleTrackingCode','UA-162826383-1'),('flagrow.analytics.piwikTrackAccounts','none'),('flagrow.analytics.statusGoogle','1'),('flagrow.analytics.statusPiwik',''),('flarum-auth-facebook.app_id','3311505922196872'),('flarum-auth-facebook.app_secret','d20f9e0ded907d65316e03f07b41f4cc'),('flarum-auth-github.client_id','fc1444cb319449c320ee'),('flarum-auth-github.client_secret','0feb647fb2bdaaf5d636a9796cf39c3584bf4ca2'),('flarum-auth-twitter.api_key','2rLnCm4ZCY1u49gyJINnKBJaV'),('flarum-auth-twitter.api_secret','fKBBGBKbPEdrGIqw8YfT9m7sK1qZJOr0RGIeSm9oqc0N3J4oKI'),('flarum-tags.max_primary_tags','20'),('flarum-tags.max_secondary_tags','3'),('flarum-tags.min_primary_tags','0'),('flarum-tags.min_secondary_tags','0'),('fof-auth-discord.client_id','696016136978038784'),('fof-auth-discord.client_secret','-nxUo9R69Z-2Q1uehxPeDNqqiya5jmqI'),('fof-default-group.group',''),('fof-formatting.plugin.autoimage','1'),('fof-formatting.plugin.autovideo','1'),('fof-formatting.plugin.fancypants','1'),('fof-formatting.plugin.htmlentities',''),('fof-formatting.plugin.mediaembed',''),('fof-formatting.plugin.pipetables',''),('fof-recaptcha.credentials.secret','6LfDveYUAAAAAPtTrzrMxB8n_OiMkYLBLfpNn7Xy'),('fof-recaptcha.credentials.site','6LfDveYUAAAAADwTa976lPjbWtlmXVZ-2EyfMv3X'),('fof-recaptcha.type','invisible'),('fof-secure-https.proxy',''),('fof-share-social.networks.facebook','1'),('fof-share-social.networks.linkedin','1'),('fof-share-social.networks.my_mail',''),('fof-share-social.networks.odnoklassniki',''),('fof-share-social.networks.qq','1'),('fof-share-social.networks.qzone',''),('fof-share-social.networks.reddit','1'),('fof-share-social.networks.twitter','1'),('fof-share-social.networks.vkontakte',''),('forum_description','您好，我們是桃園市高中職學生聯合會。\n由一群桃園的高中職生於2019年09月創立，\n致力於發展學生權益與協助學生會處理學權問題。'),('forum_title','桃園市高中職學生聯合會'),('imgur-upload.client-id','c19c582319440bf'),('logo_path','logo-qxlmxkke.png'),('mail_driver','smtp'),('mail_from','noreply+forum@thssa.com'),('mail_host','127.0.0.1'),('mail_port','25'),('migratetoflarum-canonical.status','301'),('saleksin-auth-google.client_id','824501713281-7t3ospscab9ruvpc525vurm3tdmjqfpr.apps.googleusercontent.com'),('saleksin-auth-google.client_secret','2ulSbF_cb2D885PWLwkQ_Nm5'),('seo_post_crawler','1'),('seo_review_settings','1590940800'),('seo_reviewed_post_crawler','1'),('seo_reviewed_search_engines','1'),('seo_robots_text','Sitemap: https://thssa.nctu.me/sitemap.xml'),('seo_social_media_image_path','site-image-ropfj8y1.png'),('show_language_selector','1'),('theme_colored_header','1'),('theme_dark_mode','0'),('theme_primary_color','#4F9D9D'),('theme_secondary_color','#4D698E'),('version','0.1.0-beta.13'),('welcome_message','在桃園市高中職學生聯合會這裡，你可以跟志同道合的夥伴一起暢聊學權議題'),('welcome_title','歡迎來到桃園市高中職學生聯合會');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_user`
--

DROP TABLE IF EXISTS `tag_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_user` (
  `user_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `marked_as_read_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`tag_id`),
  KEY `tag_user_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_user`
--

LOCK TABLES `tag_user` WRITE;
/*!40000 ALTER TABLE `tag_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_discussion_id` int(10) unsigned DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`),
  KEY `tags_parent_id_foreign` (`parent_id`),
  KEY `tags_last_posted_user_id_foreign` (`last_posted_user_id`),
  KEY `tags_last_posted_discussion_id_foreign` (`last_posted_discussion_id`),
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'一般聊天區','Talk','','#D26981',NULL,NULL,0,NULL,NULL,1,0,5,'2020-05-25 06:43:17',26,1,''),(2,'FAQ','faq','','#46A4FA',NULL,NULL,3,NULL,NULL,1,0,1,'2020-04-05 03:22:43',14,1,''),(3,'學權議題討論','Issue-Talk','最新學權資訊，歡迎在此討論！','#EAC112',NULL,NULL,2,NULL,NULL,1,0,3,'2020-04-08 13:25:18',20,2,''),(4,'網站使用回饋','feedeback','若發現本討論區的功能問題/bug，請在本版回報。','#AE57A4',NULL,NULL,4,NULL,NULL,1,0,0,NULL,NULL,NULL,''),(5,'社群使用規範','Rule','','#FF359A',NULL,NULL,5,NULL,NULL,1,0,3,'2020-04-05 03:26:42',15,1,''),(6,'會員專區','VIP','＊本區僅限定會員使用，會務相關資訊將於本區發布','#77B55A',NULL,NULL,1,NULL,NULL,1,0,13,'2020-05-25 00:11:11',25,2,'');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `joined_at` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `marked_all_as_read_at` datetime DEFAULT NULL,
  `read_notifications_at` datetime DEFAULT NULL,
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `read_flags_at` datetime DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `social_buttons` longtext COLLATE utf8mb4_unicode_ci,
  `votes` int(11) NOT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_vote_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_joined_at_index` (`joined_at`),
  KEY `users_last_seen_at_index` (`last_seen_at`),
  KEY `users_discussion_count_index` (`discussion_count`),
  KEY `users_comment_count_index` (`comment_count`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Thssa-Admin-Dogbone','熊熊','jameskang0714@gmail.com',1,'$2y$10$.Cun0shxoZLbU4xut2Dscu28JMs4JsA9G1z8snFlx5WrEL5iXIWRi','NUU CSIE 特殊選材生  |  論壇創辦人','EFo8CkuieYC1BIQT.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2019-08-02 13:10:18','2020-07-10 11:43:07',NULL,'2020-06-21 01:18:59',10,12,'2020-05-25 07:05:02',NULL,'[{\"title\":\"FB\",\"url\":\"https://www.facebook.com/Dogbone0714\",\"icon\":\"fab fa-facebook\",\"favicon\":\"none\"},{\"title\":\"Instagram\",\"url\":\"https://www.instagram.com/Dogbone_0714/\",\"icon\":\"fab fa-instagram\",\"favicon\":\"none\"}]',17,NULL,'2020-05-25 06:43:28'),(2,'jackroy','曜維','jackroyliu20020314@gmail.com',1,'$2y$10$RqYyEYcykJeMCTToiV7/U.qpBhElJvwExUudqsw2krbGWfEo7ZBum','劉曜維｜第三屆桃園市青年諮詢委員','Ujf5KQIux61ZJo4w.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"zh-hant\"}','2020-04-04 15:57:27','2020-06-23 11:32:54','2020-05-21 05:28:33','2020-05-25 00:12:54',12,17,'2020-04-25 12:47:09',NULL,NULL,22,NULL,'2020-06-03 03:52:07'),(3,'Darby','弘祐','darby910331@gmail.com',1,'$2y$10$ympYXBC9uz2p7sZ0probo.cJqrRl5Fbx4CVl650MTtijE3GfD3y4e',NULL,'TSE1sYlGGEHdcQAB.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-04 16:25:05','2020-04-04 16:25:15',NULL,NULL,0,0,NULL,NULL,NULL,2,NULL,NULL),(4,'Terry','振翃','bsu3361800@gmail.com',1,'$2y$10$kzQMGredNEr3EVM4kwn0YOtzI7mUz4WZoOaD2FSdPyyo4u01adJqu',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-04 16:31:25','2020-04-05 05:54:21',NULL,'2020-04-05 05:53:55',0,0,NULL,NULL,NULL,2,NULL,'2020-04-04 16:32:08'),(5,'Howard','秉榮','good213402@gmail.com',1,'$2y$10$SzxIw4N7Hl5gkaQMgUHop.DeKsixy9A3SLEk4sM0PY3.AzenV5zkW','','zBqTnRaCfWBbSHUb.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-04 16:42:15','2020-04-04 16:42:46',NULL,NULL,0,0,NULL,NULL,NULL,2,NULL,NULL),(6,'-Betty-','德雅','bettymylinh@gmail.com',1,'$2y$10$dKn3qv3hYuSVWP65wqMnbOD/gKoBGoZQU7mK3ycle59dRdnxC6mm.',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-04 17:54:06','2020-04-05 13:16:55',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,'2020-04-04 18:00:05'),(7,'fangyu9738','不是怪人','ba920309@gmail.com',1,'$2y$10$GWECh5zaVX1tOmG2I/moieSWL6.vHOR8hIcYZI5nsoBw/HKJJI2Gq',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 04:23:07','2020-04-05 04:43:13',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,NULL),(8,'Jerry0514_','Jia Wei','jr3632979@gmail.com',1,'$2y$10$kPT/l./6efNq/eu3x3GO8OutVfoilL0W0mJL.bOhBkpmGRPh1BoWW','學權戰士! 為學權而努力!!','pvCEdiyuYnDUEfVn.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 04:23:59','2020-07-13 02:41:00','2020-04-13 04:52:11','2020-07-13 02:41:00',1,4,NULL,NULL,'[{\"title\":\"IG\",\"url\":\"https://www.instagram.com/jerry0514_/\",\"icon\":\"favicon\",\"favicon\":\"https://www.instagram.com/favicon.ico\"},{\"title\":\"FB\",\"url\":\"https://www.facebook.com/Jerry0514\",\"icon\":\"favicon\",\"favicon\":\"https://www.facebook.com/favicon.ico\"}]',5,NULL,'2020-06-02 03:10:49'),(9,'Yunxiu','','norah204206@gmail.com',1,'$2y$10$70B9Y2zzi1.YgOJ.h7Hw4ewWdrShlVpWqP/mnmlwg04iR6CGHp1BS','','O6gTIfNjPc7GFRLm.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 04:34:13','2020-04-05 04:40:46',NULL,'2020-04-05 04:38:47',0,0,NULL,NULL,NULL,0,NULL,NULL),(10,'HLP','','benny98751@yahoo.com.tw',1,'$2y$10$KEkca5.wvU4uTolwoAt4lOuQaB5Arh0L.m8dFpakoDaPdSJJo8ouq',NULL,'yx3anfsauLRr17Yb.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 05:11:17','2020-04-05 05:12:26',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,'2020-04-05 05:12:26'),(11,'strawberry','芷容','lovepeter0719@gmail.com',1,'$2y$10$XA.IfcG4V0Kc.cqyGSZMb.PAO3gfpObZyC.NScBZZz1vO0ssI0bsW','null','JHd62OV4n2dD8U6u.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":false,\"indexProfile\":true,\"locale\":null}','2020-04-05 05:23:30','2020-04-05 05:33:16',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL),(12,'KaiCiKu','青年大叔','kenny0983812@gmail.com',1,'$2y$10$YjAz9vKmrEh56GyVdVj4AOU0jvKEhXaZrMGTUircHdCCP1xWc8Un2','','UVYLFgNxlL7SLPzk.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 05:36:41','2020-04-13 23:24:00',NULL,'2020-04-05 05:40:54',0,2,NULL,NULL,NULL,3,NULL,'2020-04-11 12:43:41'),(13,'90_3_11','莊詠斌','tony443328@gmail.com',1,'$2y$10$BvVkj4govYY50WDq5b8rAeFxxSWW2RCGLGfPgoyt0C93Ij6m.lZr2',NULL,'fCD1gKb2RtXN4Uxw.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 12:43:34','2020-07-08 15:50:28',NULL,'2020-04-29 10:19:02',0,2,NULL,NULL,NULL,1,NULL,'2020-04-29 10:19:16'),(14,'Song05_01','松鉑莘','taitonggroup@gmail.com',1,'$2y$10$JEUkfuf6i4oNLrKvgfnKY.orYyDQx59OTD.weL7WR7a05Fbp0qkeC','','OiXRicdtyWlsdPZY.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 12:45:59','2020-05-09 06:19:37',NULL,'2020-04-25 18:38:55',0,2,NULL,NULL,NULL,2,NULL,'2020-04-05 15:14:44'),(15,'villagerchen','','kevin9542301@gmail.com',1,'$2y$10$ONHIQx8BT2t8viZ6kJiN0ecr4sCX7yqJfI9LuoTNIOmqYacnstDXy',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 12:46:24','2020-04-05 12:54:47',NULL,NULL,0,2,NULL,NULL,NULL,3,NULL,NULL),(16,'littlechan132','小辰','mickeywong26@gmail.com',1,'$2y$10$.QBhVF7un94ZMzFHKowpH.nc6Pvbnjg7lBnQYtWO7dI4hxVebpKWO',NULL,'CCMeabiPq9ZuwXwu.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 12:47:28','2020-04-05 13:35:56','2020-04-05 12:49:16',NULL,0,0,NULL,NULL,NULL,2,NULL,NULL),(17,'MartinAwal','','mawal.clhs@gmail.com',1,'$2y$10$HXkyBjICC9dcMzyTnt0BaeW5J9HFO6mEdg9Dt51lDqbPPu8f5zsxS',NULL,'RKjCQ2lnA34grMww.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 15:04:36','2020-04-05 15:06:00',NULL,NULL,0,0,NULL,NULL,NULL,2,NULL,NULL),(18,'xuanwi0815','','penny85517212penny@gmail.com',1,'$2y$10$yDXLEw57SCvLji.3wVYhSOkzB7MvZI0sNH99xY5jRxP2/ectk9o1S',NULL,'oZiWn9Gyg33iHm5C.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-05 22:46:50','2020-04-05 22:48:54',NULL,NULL,0,0,NULL,NULL,NULL,2,NULL,NULL),(19,'LinZheChen','','a0903323533@gmail.com',1,'$2y$10$jTy.u9.mNR2.LXAhFwl8runyD8PwPosaGnJ8e1cRDA6irS42KLvV6',NULL,'nBcwUIoJZt2ViZXW.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-08 04:48:11','2020-04-08 04:48:44',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,NULL),(20,'_xin_0123','欣如','s1050321@mail.hnjh.tyc.edu.tw',1,'$2y$10$wtnovCNbznfe5N0gPpAE5ekZCqDb7p8nnRkv8IPep4pYZAGQn54Se','',NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-11 14:52:59','2020-04-11 15:53:18',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL),(21,'6_add_1','','sunny.liu913@gmail.com',1,'$2y$10$poahl.UYSGgGl3W3bR73zOw6goj2/9WtWzoKlRR/phcwNfO2d5I2.',NULL,'K6cqvSyUwZQpTAOX.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-24 13:05:34','2020-04-26 01:30:35',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,NULL),(22,'Bob','','bobwamg3308@gmail.com',1,'$2y$10$C6GoT0eV6TX.ctsTwGmmVeDZPpjPczSeKJRPUYAls11nlSc8zq5SS',NULL,'oTBZTWCNC5sV4FCZ.png','{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-24 13:31:55','2020-06-08 00:04:59',NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,'2020-04-24 14:39:38'),(23,'Ella','','Ella20040428@gmail.com',1,'$2y$10$HBOqeSuYxfXJ.98oarRJTOVDRyo5tCJZM9j5PJaxyPnfgDNu17zTi',NULL,NULL,'{\"notify_discussionRenamed_alert\":true,\"notify_postLiked_alert\":true,\"notify_discussionLocked_alert\":true,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":true,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userUnsuspended_alert\":true,\"notify_postReacted_alert\":true,\"notify_vote_alert\":true,\"followAfterReply\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2020-04-25 14:47:33','2020-04-25 14:48:26',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `events` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:03:13
