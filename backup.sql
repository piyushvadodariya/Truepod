-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: dt_pocket_fm
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.1

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
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1 = All Access	',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'Admin','admin@admin.com','$2y$10$DuLdZVYpaxChYkgUx0/7.eFQ7/FYYGs7z5huWA2BEZ6lpKBr2nuIS',1,1,'2024-05-17 12:18:21','2024-05-17 12:18:21');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_artist`
--

DROP TABLE IF EXISTS `tbl_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_artist` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_artist`
--

LOCK TABLES `tbl_artist` WRITE;
/*!40000 ALTER TABLE `tbl_artist` DISABLE KEYS */;
INSERT INTO `tbl_artist` VALUES (2,'Christopher Wilson Martinez','$2y$10$Z8KkKfy4wuoz8qtJ7/So/.mwGEu5H0Dm3y2t0Jtt0f/5IH0dpwvVC','12_07_2024_62_6690da9c7e623.jpeg','Certainly! Here\'s a sample self-description that an artist might use:','www.google.com','www.google.com',1,'2024-07-12 12:56:20','2024-07-12 12:56:20'),(3,'James Garcia','$2y$10$jApK/5Xn/k8FlP73fUJtu.O71xMtBiML3rp.9YEZMYfSS9qLY3Lo.','12_07_2024_98_6690dab333af1.png','Certainly! Here\'s a sample self-description that an artist might use:\r\n\r\n---','www.google.com','www.google.com',1,'2024-07-12 12:56:43','2024-07-12 12:56:43'),(4,'Piiya Rai','$2y$10$a8j1aLxu1tppvri.GQpVKOmr5.SzQojLPhUe0yYfSBbI3JFr8BKDO','15_07_2024_33_6694d60f7068c.png','Priya Rai is a talented vocal artist known for her captivating voice and emotional depth, specializing in creating enchanting audiobooks with romantic content. Her soothing narration and ability to bring characters to life make her a beloved figure among audiobook enthusiasts. Priya\'s unique style and passionate delivery transport listeners into the heart of romantic tales, making every story a memorable experience.','www.google.com','www.google.com',1,'2024-07-12 12:57:07','2024-07-15 13:25:59'),(5,'Sarah Johnson','$2y$10$oSgojtkEA24W0OomHpGvl.W3jq.XYvokzWGfzBt3mblIQDWWSGade','12_07_2024_13_6690dae181999.jpeg','www.google.com','www.google.com','www.google.com',1,'2024-07-12 12:57:29','2024-07-12 12:57:29'),(6,'Michael Brown','$2y$10$HMSrkO.v3qOrBFP.oi3WBO6FZuUPl4FomA8qBAp6iEkKnXvY/JI/a','12_07_2024_60_6690daf5f0b82.jpeg','www.google.com','www.google.com','www.google.com',1,'2024-07-12 12:57:49','2024-07-12 12:57:49');
/*!40000 ALTER TABLE `tbl_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_avatar`
--

DROP TABLE IF EXISTS `tbl_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_avatar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_avatar`
--

LOCK TABLES `tbl_avatar` WRITE;
/*!40000 ALTER TABLE `tbl_avatar` DISABLE KEYS */;
INSERT INTO `tbl_avatar` VALUES (2,'Avatar 1','12_07_2024_52_6690d9ddd4824.jpg',1,'2024-07-12 12:53:09','2024-07-12 12:53:09'),(3,'Avatar 2','12_07_2024_44_6690d9e31a7b2.png',1,'2024-07-12 12:53:15','2024-07-12 12:53:15'),(4,'Avatar 3','12_07_2024_0_6690d9e99b0ea.png',1,'2024-07-12 12:53:21','2024-07-12 12:53:21'),(5,'Avatar 4','12_07_2024_58_6690d9f008410.jpeg',1,'2024-07-12 12:53:28','2024-07-12 12:53:28'),(6,'Avatar 5','12_07_2024_77_6690d9f81806a.png',1,'2024-07-12 12:53:36','2024-07-12 12:53:36'),(7,'Avatar 6','12_07_2024_13_6690da005bd7c.png',1,'2024-07-12 12:53:44','2024-07-12 12:53:44');
/*!40000 ALTER TABLE `tbl_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_type` int NOT NULL COMMENT '1- Home page, 2- AudioBook, 3- Novel',
  `is_home_screen` int NOT NULL COMMENT '	1- Home Screen, 2- Other Screen',
  `top_category_id` int NOT NULL,
  `content_type` int NOT NULL COMMENT '1- AudioBook, 2- Novel',
  `content_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banner`
--

LOCK TABLES `tbl_banner` WRITE;
/*!40000 ALTER TABLE `tbl_banner` DISABLE KEYS */;
INSERT INTO `tbl_banner` VALUES (11,3,2,6,2,6,1,'2024-07-12 18:13:36','2024-07-12 18:13:36'),(12,3,1,0,2,6,1,'2024-07-12 18:13:38','2024-07-12 18:13:38'),(15,1,2,13,1,5,1,'2024-07-12 18:14:05','2024-07-12 18:14:05'),(16,2,1,0,1,7,1,'2024-07-15 13:21:14','2024-07-15 13:21:14'),(21,1,2,13,1,7,1,'2024-07-15 16:49:13','2024-07-15 16:49:13'),(22,1,1,0,1,8,1,'2024-07-19 12:25:00','2024-07-19 12:25:00'),(23,1,1,0,1,9,1,'2024-07-19 12:25:13','2024-07-19 12:25:13'),(24,2,2,11,1,9,1,'2024-07-19 12:37:17','2024-07-19 12:37:17'),(25,2,2,11,1,8,1,'2024-07-19 12:37:25','2024-07-19 12:37:25'),(26,2,2,13,1,7,1,'2024-07-19 12:38:22','2024-07-19 12:38:22'),(27,1,2,11,1,9,1,'2024-07-19 12:38:30','2024-07-19 12:38:30'),(28,2,1,0,1,9,1,'2024-07-19 12:38:36','2024-07-19 12:38:36'),(29,1,2,11,1,8,1,'2024-07-19 12:38:42','2024-07-19 12:38:42'),(30,1,1,0,1,13,1,'2024-07-22 13:27:59','2024-07-22 13:27:59'),(31,1,1,0,1,12,1,'2024-07-22 13:28:09','2024-07-22 13:28:09');
/*!40000 ALTER TABLE `tbl_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bookmark`
--

DROP TABLE IF EXISTS `tbl_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bookmark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel',
  `content_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bookmark`
--

LOCK TABLES `tbl_bookmark` WRITE;
/*!40000 ALTER TABLE `tbl_bookmark` DISABLE KEYS */;
INSERT INTO `tbl_bookmark` VALUES (1,1,1,3,1,'2024-07-11 17:56:39','2024-07-11 17:56:39'),(2,1,2,2,1,'2024-07-11 20:00:03','2024-07-11 20:00:03'),(3,1,2,6,1,'2024-07-12 19:12:53','2024-07-12 19:12:53'),(4,4,1,7,1,'2024-07-15 09:58:44','2024-07-15 09:58:44'),(7,3,1,7,1,'2024-07-15 17:06:50','2024-07-15 17:06:50'),(10,3,1,5,1,'2024-07-17 17:16:07','2024-07-17 17:16:07'),(11,4,1,5,1,'2024-07-17 18:19:25','2024-07-17 18:19:25'),(12,4,1,9,1,'2024-07-19 19:50:27','2024-07-19 19:50:27'),(13,15,1,12,1,'2024-07-30 15:24:21','2024-07-30 15:24:21'),(14,10,1,15,1,'2024-08-01 14:00:26','2024-08-01 14:00:26'),(15,8,1,10,1,'2024-08-01 17:48:08','2024-08-01 17:48:08');
/*!40000 ALTER TABLE `tbl_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (6,'Travel & Adventure','12_07_2024_71_6690d90148519.jpeg',1,'2024-07-12 12:49:29','2024-07-12 12:49:29'),(7,'Health & Wellness','12_07_2024_32_6690d908d7d36.jpeg',1,'2024-07-12 12:49:36','2024-07-12 12:49:36'),(8,'Business & Finance','12_07_2024_64_6690d9123b14b.jpeg',1,'2024-07-12 12:49:46','2024-07-12 12:49:46'),(9,'Personal Development','12_07_2024_24_6690d91c6d58b.jpeg',1,'2024-07-12 12:49:56','2024-07-12 12:49:56'),(10,'Science Fiction & Fantasy','12_07_2024_52_6690d92692d5d.jpeg',1,'2024-07-12 12:50:06','2024-07-12 12:50:06'),(11,'Mystery & Thriller','12_07_2024_85_6690d930531f5.jpeg',1,'2024-07-12 12:50:16','2024-07-12 12:50:16'),(12,'Comedy','12_07_2024_29_6690d938ebe5f.jpeg',1,'2024-07-12 12:50:24','2024-07-12 12:50:24'),(13,'Drama','12_07_2024_45_6690d93fe93c6.png',1,'2024-07-12 12:50:31','2024-07-12 12:50:31'),(14,'Biography','12_07_2024_85_6690d94753019.jpeg',1,'2024-07-12 12:50:39','2024-07-28 14:34:50');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_comment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `threads_id` int NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content`
--

DROP TABLE IF EXISTS `tbl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_content` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel',
  `artist_id` int NOT NULL,
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portrait_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landscape_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_banner_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_novel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid_novel` int NOT NULL DEFAULT '0',
  `novel_coin` int NOT NULL DEFAULT '0',
  `total_played` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content`
--

LOCK TABLES `tbl_content` WRITE;
/*!40000 ALTER TABLE `tbl_content` DISABLE KEYS */;
INSERT INTO `tbl_content` VALUES (5,1,2,13,6,'Swami Vivekanand','19_07_2024_90_669a026a77e94.png','19_07_2024_0_669a026a79b1f.png','12_07_2024_10_669121c430a32.png','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',0,0,0,1,'2024-07-12 17:59:56','2024-07-19 11:36:34'),(6,2,6,6,8,'Think Like a Monk','12_07_2024_65_669124b2dac23.jpg','12_07_2024_7_669124b2dad14.jpg','12_07_2024_38_669124b2dadb7.png','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','',0,0,0,1,'2024-07-12 18:12:26','2024-07-12 18:12:26'),(7,1,4,13,6,'Love Dark Secrets','15_07_2024_89_66941e774fc23.png','15_07_2024_90_6694dbad0fb92.png','15_07_2024_72_6694dbad10200.png','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.','',0,0,0,1,'2024-07-15 00:22:39','2024-07-20 14:06:56'),(8,1,4,11,6,'Vasna','19_07_2024_25_6699ff604635b.png','19_07_2024_31_6699ff604707c.png','19_07_2024_67_6699ff6047355.png','Everyone has lust. Lust also has its own way of satisfying the hunger of the body, and it grew so much that it used many people like Rahul Ram to satisfy its hunger. But what happened in the end? Stay tuned to hear what unfolded in this gripping tale.','',0,0,0,1,'2024-07-19 11:23:36','2024-07-19 11:23:36'),(9,1,4,11,6,'SOOKUN','19_07_2024_2_669a0acf94488.png','19_07_2024_82_669a0acf9498e.png','19_07_2024_45_669a0acf94d90.png','Saloni and Raj\'s life changed overnight. Saloni got pregnant and married Raj\'s elder brother, Ravi. But Raj has no idea what will happen when he returns. Will he get his Saloni back? Will he discover what happened to Saloni and the truth behind her sudden marriage to Ravi? Stay tuned to find out in this compelling tale of unexpected twists and emotional turmoil.','',0,0,0,1,'2024-07-19 12:12:23','2024-07-19 12:12:23'),(10,1,4,13,3,'Kāmaṁ','20_07_2024_30_669b6cacf025b.png','20_07_2024_74_669b6cacf0c1c.png','20_07_2024_52_669b6cacf1160.png','Everyone has lust. Lust also had its own way of satisfying the hunger of the body and it grew so much that it used many people like Rahul Ram to satisfy its hunger. But what happened in the end, stay tuned to hear w','',0,0,0,1,'2024-07-20 13:22:12','2024-07-20 13:22:12'),(11,1,4,13,3,'Prēma Cīkaṭi Rahasya','20_07_2024_0_669bf2edad713.png','20_07_2024_54_669bf2edadbd0.png','20_07_2024_8_669bf2edaddf1.png','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.','',0,0,0,0,'2024-07-20 22:55:01','2024-07-30 19:21:59'),(12,1,4,11,6,'Dark Fantasy','22_07_2024_86_669e060641547.png','22_07_2024_56_669e0606422e2.png','22_07_2024_94_669e060642498.png','Karan and Kavya share a deep and passionate connection, driven by their adventurous and imaginative desires. Their relationship thrives on exploring diverse fantasies, bringing excitement and color to their lives. This story delves into their intimate journey, celebrating the unique ways they find joy and fulfillment in each other. Dive into a tale of love, passion, and the boundless creativity of two people who truly understand each other’s deepest desires.','',0,0,0,1,'2024-07-22 12:41:02','2024-07-22 12:41:02'),(13,1,4,13,6,'The Small Town Boy','22_07_2024_28_669e0d6325ebd.png','22_07_2024_46_669e0d6326188.png','22_07_2024_92_669e0d63264c5.png','This is the story of Raghav, a young man from a small town who undergoes a profound transformation after moving to a bustling city. Influenced by his father\'s extravagant lifestyle, Raghav strives to emulate him, seeking success and recognition. However, his journey is fraught with challenges and unexpected turns. Follow Raghav\'s captivating tale as he navigates the complexities of ambition, identity, and the consequences of his choices.','',0,0,0,1,'2024-07-22 13:12:27','2024-07-22 13:12:27'),(14,1,4,11,6,'Neighbors in Harmony','25_07_2024_75_66a210630f13a.jpg','25_07_2024_89_66a210630f24f.png','25_07_2024_38_66a210630f6f6.png','This is the story of four neighbors, each struggling with their own dissatisfaction and unfulfilled lives. Through unexpected connections and shared experiences, they find happiness and support in each other. As their bonds deepen, they embark on a transformative journey that leads them to new understandings and unexpected destinations. Discover how their newfound happiness shapes their lives and where this journey ultimately takes them.','',0,0,0,1,'2024-07-25 14:14:19','2024-07-25 14:14:19'),(15,1,4,13,6,'The Unusual Thirst!','28_07_2024_59_66a60802e71f2.png','28_07_2024_68_66a60802e7759.png','28_07_2024_61_66a60802e7be7.png','This is the story of Anjali, a captivating 20-year-old whose allure deeply affects those around her. She finds herself living with someone who becomes increasingly infatuated with her, leading to a complicated and intense relationship. Despite the efforts of her husband to reclaim her, the bond between them remains unbroken. In the end, Anjali finds herself entwined in a narrative of desire, possession, and the complexities of love and commitment.','',0,0,0,1,'2024-07-28 14:27:38','2024-07-28 14:27:38'),(16,1,4,14,6,'A Tale of Gandhi!','28_07_2024_78_66a60b3756849.png','28_07_2024_82_66a60b3757543.png','28_07_2024_18_66a60b37577a3.png','Discover the extraordinary life of Mahatma Gandhi in this captivating audiobook biography. Journey through his early years, his transformative time in South Africa, and his pivotal role in India\'s struggle for independence. Through detailed narration and insightful anecdotes, this audiobook explores Gandhi\'s philosophy of non-violence, his relentless pursuit of justice, and his enduring legacy. Perfect for those seeking inspiration from one of history\'s greatest leaders, this biography offers a deep and intimate look at the man who changed the world with his unwavering commitment to truth and peace.','',0,0,0,1,'2024-07-28 14:41:19','2024-07-28 14:41:19'),(17,1,4,14,6,'Life of Bill Gate','28_07_2024_70_66a623b4a52c6.png','28_07_2024_33_66a623b4a54e3.png','28_07_2024_75_66a623b4a5737.png','Explore the incredible life of Bill Gates in this comprehensive audiobook biography. From his early fascination with computers to founding Microsoft and revolutionizing the tech industry, this audiobook delves into Gates\' journey as a visionary entrepreneur. Discover his challenges, triumphs, and the innovative mindset that drove his success. Beyond business, learn about Gates\' philanthropic efforts through the Bill & Melinda Gates Foundation, aiming to address global issues. Perfect for aspiring entrepreneurs and tech enthusiasts, this biography offers an inspiring look at one of the most influential figures of our time.','',0,0,0,1,'2024-07-28 16:25:48','2024-07-28 16:25:48');
/*!40000 ALTER TABLE `tbl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content_episode`
--

DROP TABLE IF EXISTS `tbl_content_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_content_episode` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` int NOT NULL COMMENT '1- Server Audio, 2- External URL',
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_duration` int NOT NULL DEFAULT '0',
  `is_audio_paid` int NOT NULL DEFAULT '0',
  `is_audio_coin` int NOT NULL DEFAULT '0',
  `total_audio_played` int NOT NULL DEFAULT '0',
  `video_type` int NOT NULL COMMENT '1- Server Video, 2- External URL, 3= Youtube',
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_duration` int NOT NULL DEFAULT '0',
  `is_video_paid` int NOT NULL DEFAULT '0',
  `is_video_coin` int NOT NULL DEFAULT '0',
  `total_video_played` int NOT NULL DEFAULT '0',
  `book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_book_paid` int NOT NULL DEFAULT '0',
  `is_book_coin` int NOT NULL DEFAULT '0',
  `total_book_played` int NOT NULL DEFAULT '0',
  `sortable` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content_episode`
--

LOCK TABLES `tbl_content_episode` WRITE;
/*!40000 ALTER TABLE `tbl_content_episode` DISABLE KEYS */;
INSERT INTO `tbl_content_episode` VALUES (5,5,'Episode 1  Swami Vivekanand','12_07_2024_58_66912202c2527.png','Chapter 1',1,'o_1i2jepe55obd1pl11fjc1l9o924f.mp3',0,1,10,5,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-12 18:00:58','2024-07-17 19:44:50'),(6,6,'Think Like a Monk Chapter 1','12_07_2024_1_669124f10938c.jpg','Think Like a Monk Chapter 1  by Jay Shetty',0,'',0,0,0,0,0,'',0,0,0,0,'o_1i2jfg4hf1gv41q9419ae6rr14lb.pdf',0,0,4,1,1,'2024-07-12 18:13:29','2024-07-15 10:08:49'),(7,7,'First Day of love','15_07_2024_73_66941f9d82948.png','The day when Rohit & Adithi going to start their journey together as a life partner',1,'o_1i2pbgar714878rb1usl12aumnmf.mp3',25860000,0,0,5,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-15 00:27:33','2024-07-30 14:00:40'),(8,7,'Why this strange offer?','15_07_2024_92_6694e09fdb646.png','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i2qon67nnv09401msvi63hogf.mp3',43560000,1,10,3,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-15 14:11:03','2024-07-17 19:37:14'),(11,7,'That First Night','17_07_2024_43_66977dbc60568.jpg','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i2vs5fl5iabtjvb5lgp85blf.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-17 13:45:56','2024-07-17 17:14:10'),(12,7,'Betray in relationship','17_07_2024_57_66977e1acc20d.jpg','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i2vs8or39bk1vnrf9c5od1p8of.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-17 13:47:30','2024-07-30 11:01:06'),(13,7,'Surprised anniversary day','17_07_2024_15_66977e783f500.jpg','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i2vsbnun1bkn181114991t981fimf.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-17 13:49:04','2024-07-17 15:40:11'),(19,5,'gtgtrg','18_07_2024_59_66989efac1c1a.png','gtrgrtgrt',1,'o_1i322phpp34v1pu94mi1prh1tt1f.mp3',0,1,10,4,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-18 10:20:02','2024-07-30 15:24:10'),(20,7,'That Unexpected behaviour','19_07_2024_97_6699fad04e048.jpg','That Unexpected behavior',1,'o_1i34nmu4r7ifben1e5q12bl1b07f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 11:04:08','2024-07-19 11:04:08'),(21,7,'Again encounter with Zafar','19_07_2024_23_6699fb06e98cc.jpg','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i34noqee7b621erst14o3r2pf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 11:05:02','2024-07-19 11:05:02'),(22,7,'Is this end or Begining?','19_07_2024_57_6699fb857ff1b.jpg','On the eve of their wedding, Rohit demanded Adithi spend the night with his friend, Zafar. Why would a man deeply in love ask this of his bride? What secrets does Rohit hide, and what is the real reason behind this shocking request? Discover the truth in this tale of love, mystery, and hidden motives.',1,'o_1i34nsmce6l5ufa136io0k1m9gf.mp3',0,1,5,4,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 11:07:09','2024-07-30 15:24:33'),(23,8,'New start','19_07_2024_75_6699fff32b5b2.png','Avinash and Komal are shifting to Pune and Rahul is with them. Who is Rahul',1,'o_1i34otsid8mrl8dh1810l8saaf.mp3',0,1,5,3,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 11:26:03','2024-08-02 10:53:24'),(24,8,'High way romance','19_07_2024_5_669a00274f9bf.png','Komal seduced Rahul and Rahul got erect!',1,'o_1i34p0q8e1b8c1c671s8qvkc3f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,2,1,'2024-07-19 11:26:55','2024-07-19 12:30:58'),(25,8,'Ye Dil Mange More','19_07_2024_23_669a007fc44d7.png','Rahul completely satisfied her once again!',1,'o_1i34p3h801r433pv1sdd12301p6ef.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,3,1,'2024-07-19 11:28:23','2024-07-19 12:30:58'),(26,8,'The Louki','19_07_2024_53_669a00ce554c6.png','She quenched her thirst with a gourd brought from the market.',1,'o_1i34p5vr2k2r179a1jed1n5q17u6f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,4,1,'2024-07-19 11:29:42','2024-07-19 12:30:58'),(27,8,'Rama wants more','19_07_2024_88_669a00fb77ebe.png','Rama has become habituated to Komal.',1,'o_1i34p77hr1ldh1r7018c772c1becf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,5,1,'2024-07-19 11:30:27','2024-07-19 12:30:58'),(28,8,'Trios are always thrilling','19_07_2024_86_669a019acfdff.png','All three quenched their thirst and satisfied each other!',1,'o_1i34pc7fr19571kfu1nvf164haudf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,6,1,'2024-07-19 11:33:06','2024-07-19 12:30:58'),(29,8,'Forcefully','19_07_2024_0_669a04e1851ca.png','Rahul blackmailed and forced her!',1,'o_1i34q5qvs1eu01mp910bg9r49qsf.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,7,1,'2024-07-19 11:47:05','2024-07-19 12:30:58'),(30,8,'Murder Mystery','19_07_2024_37_669a08288fd4d.png','Avinash gets all the news and is it a mystery murder?',1,'o_1i34qvfut1hmmf0ee4g1iribh7f.mp3',0,1,5,2,1,'',0,0,0,0,'',0,0,0,8,1,'2024-07-19 12:01:04','2024-07-30 09:59:51'),(31,9,'Raj and Saloni\'s meeting and friendship!','19_07_2024_46_669a0c622481a.png','Raj and Saloni are in the same college. On their first meeting, Raj invites Saloni to his birthday.',1,'o_1i34s0hle1iq4f3e1emf11nmsfof.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 12:19:06','2024-07-19 12:19:06'),(32,9,'Whole Night Birthday party','19_07_2024_34_669a0cb2509ac.png','Someone mixed something in Saloni\'s drink and Raj took Saloni to his house.',1,'o_1i34s2hsb1v4eqacc29hm11u6vf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 12:20:26','2024-07-19 12:20:26'),(33,9,'Friendship is love','19_07_2024_5_669a0cdd472f9.png','Saloni liked Raj\'s behavior and started loving Raj!',1,'o_1i34s46n313nf1q5823c5566n6f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 12:21:09','2024-07-19 12:21:09'),(34,9,'Saloni is pregnant!','19_07_2024_6_669a0d5ae6e63.png','Saloni\'s life changed in one night, she got pregnant, what should her parents do?',1,'o_1i34s81mhe0v13d61q8m9u51bcif.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-19 12:23:14','2024-07-19 12:23:14'),(35,9,'Saloni married to Ravi!','20_07_2024_68_669b68a99bd93.png','Raj\'s elder brother is ready to marry Saloni, what is the compulsion?? Saloni said yes to the marriage!!',1,'o_1i37h10kk17ke3fc42g1std6nhf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:05:05','2024-07-20 13:05:05'),(36,9,'Raj is back!','20_07_2024_49_669b68e3dec9c.png','Raja returns. He finds out. Salari is his Bhabhi. His strange behavior is troubling Saloni!',1,'o_1i37h3aa817ri1i1ipn8pcd162sf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:06:03','2024-07-20 13:06:03'),(37,9,'Raj behaves strangely','20_07_2024_10_669b692ae6afa.png','Raj has learned the truth that Aryan is his son, what will happen?',1,'o_1i37h5baclkqt6fnmgk613ajf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:07:14','2024-07-20 13:07:14'),(38,9,'Love wins!','20_07_2024_47_669b695f53d3e.png','Saloni and Raj forgave each other and became one again, love won!',1,'o_1i37h71p8153qaj7vfa2kb1k4af.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:08:07','2024-07-30 15:28:03'),(39,10,'Kotta prārambhaṁ','20_07_2024_28_669b6d1269a42.png','Avinash and Komal are shifting to Pune and Rahul is with them. Who is Rahul',1,'o_1i37i3rp3ng2hhr4au1h6cg6pf.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:23:54','2024-07-20 13:23:54'),(40,10,'Haivē mīda prēma','20_07_2024_10_669b6d6543062.png','Komal seduced Rahul and Rahul got erect!',1,'o_1i37i6aeaacj1jhg1r92sgthb8f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:25:17','2024-07-20 13:25:17'),(41,10,'Ī hr̥dayaṁ nemali kōsaṁ aḍugutundi','20_07_2024_90_669b6d98496af.png','Rahul completely satisfied her once again!',1,'o_1i37i7pfj1f2g1tk21rk2aro41f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:26:08','2024-07-20 13:26:08'),(42,10,'Poṭlakāya','20_07_2024_81_669b6e14d7e46.png','It quenched thirst with a gourd brought from the market.',1,'o_1i37ibl1agj71r44v016gcb42f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 13:28:12','2024-07-20 13:28:12'),(43,10,'Rāmu iṅkēṁ kāvāli','20_07_2024_79_669b7623a05f9.png','Rama has become habituated to Komal.',1,'o_1i37kam1930dpsavl23ug12hcf.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 14:02:35','2024-07-20 14:02:35'),(44,10,'Trios are always thrilling','20_07_2024_45_669b7670443b7.png','All three quenched their thirst and satisfied each other!',1,'o_1i37kd4s9qechkf1i671c6f8abf.MP3',0,0,0,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 14:03:52','2024-07-20 17:52:46'),(45,11,'Prēmalō modaṭi rōju','20_07_2024_83_669bf3824bfc0.png','What happened to their first night?',1,'o_1i38isd3flri17ntg9mak31kl0f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 22:57:30','2024-07-20 22:57:30'),(46,11,'Ī vinta āphar enduku?','20_07_2024_46_669bf3ceb10b8.png','What is the secret behind Rohit\'s strange offer?',1,'o_1i3cj7fnj11gb1qqjnlllmt1470f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-20 22:58:46','2024-07-22 12:19:33'),(47,11,'Modaṭi rātri','22_07_2024_46_669e015f869e8.png','The first night with the surprise strange incident',1,'o_1i3cj5djn1vqj1jli1l6s1h4s16ffh.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:18:35','2024-07-22 12:21:11'),(48,11,'Sambandhanlō drōhaṁ','22_07_2024_32_669e0153b0659.png','who is the betrayer?',1,'o_1i3cj9cfj1v5b5f4ceqerlqfif.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:20:59','2024-07-22 12:20:59'),(49,11,'Āścaryakaramaina vārṣikōtsava rōju','22_07_2024_3_669e01a294235.png','What surprise hidden behind the first night?',1,'o_1i3cjchjk18uc1ofb1dqd6q3760f.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:22:18','2024-07-22 12:22:18'),(50,11,'Ūhin̄cani pravartana','22_07_2024_27_669e02123dce6.png','The behaviour is strange and unexpected way',1,'o_1i3cjfrpl1rr3139i1t7h1jam1ifpf.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:24:10','2024-07-22 12:24:10'),(51,11,'Jāphar‌tō marō samāvēśaṁ','22_07_2024_24_669e02521a67f.png','It\'s time to meet Zafar again',1,'o_1i3cjht3sh191b981iv9104e16iaf.MP3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:25:14','2024-07-22 12:25:14'),(52,11,'Idi mugimpu lēdā prārambhamā?','22_07_2024_89_669e02b7ccb67.png','What will be the result?',1,'o_1i3cjkuapuie1l39egp1bdatidf.MP3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:26:55','2024-07-30 15:27:34'),(53,12,'Cute Pranks affair!','22_07_2024_36_669e0653971eb.png','Karan and Kavya play a sexy prank on each other',1,'o_1i3ckh7fsfla1o6dp5r39cld3f.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:42:19','2024-07-30 13:10:43'),(54,12,'They know they made for each other','22_07_2024_73_669e068bb3f58.png','exchange no. and challenge each other',1,'o_1i3ckisim198013mmmmsbkg1pbuf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:43:15','2024-07-22 12:43:15'),(55,12,'That Hostel night','22_07_2024_28_669e06c049bcf.png','After the honeymoon night, he proposes to Kaavya for marriage!',1,'o_1i3ckk929svobtj12g1apehl7f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 12:44:08','2024-07-22 12:44:08'),(56,12,'The Wedding','22_07_2024_90_669e0b20cc3d7.png','They set the bridge on fire.',1,'o_1i3clmnji1rhkst2138f15d11q1sf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:02:48','2024-07-22 13:02:48'),(57,12,'Her fantacy','22_07_2024_96_669e0b572c17e.png','office affairs',1,'o_1i3cloau4nmg7oqabcg55gcuf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:03:43','2024-07-22 13:03:43'),(58,12,'Cute attractive Kavya','22_07_2024_30_669e0ba2e5dcd.png','Karan surprises Kaavya with a secret toy which Kaavya enjoys a lot',1,'o_1i3clqkrt1vog1chs1h8q1jcqudbf.mp3',0,1,5,5,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:04:58','2024-07-30 15:24:54'),(59,13,'Small Town to Big City Habits','22_07_2024_12_669e0ed1467b8.png','After coming from a small town to a big city, Raghav started getting attracted to everything.',1,'o_1i3cmje3sqja1ffr11nt1idj1vvrf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:18:33','2024-07-22 13:18:33'),(60,13,'Frist Encounter With The Girl','22_07_2024_59_669e0f5439887.png','Sheena kissed Raghav. Was this Raghav\'s first kiss?',1,'o_1i3cmnj3p1na21slqqumav931hf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:20:44','2024-07-22 13:20:44'),(61,13,'Desire to have get more close','22_07_2024_62_669e0fa23479b.png','The affection fell out without doing anything',1,'o_1i3cmpv0qdrph8p16o61k4u1nvcf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:22:02','2024-07-22 13:22:02'),(62,13,'Affection With Maid','22_07_2024_54_669e0fefb976b.png','Raghav had his first affection with his maid and gave her money, how was the performance?',1,'o_1i3cms9anj0k1egp1rqq15jjs18f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-22 13:23:19','2024-07-22 13:23:19'),(63,13,'Forced to love with Sheena','25_07_2024_29_66a208a7bdd38.png','Raghav forced himself on Sheena and continued doing so despite her refusal.',1,'o_1i3kf3bsajog88r9ff12r81uoof.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 13:41:19','2024-07-25 13:41:19'),(64,13,'Like Dad Like Son','25_07_2024_13_66a20926c6c0c.png','Raghav has completely changed, he misbehaves with his mother and again pays money to have an affair with the maid!',1,'o_1i3kf77vt6og1rh6vah1n2116fsf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 13:43:26','2024-07-25 13:43:26'),(65,13,'B-Girl','25_07_2024_67_66a20992c9d16.png','Raghav is caught having sex with a bar girl. He ends up in jail where his father is also imprisoned.',1,'o_1i3kfahd91jj8hbsc8n8cc1lq4f.mp3',0,1,7,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 13:45:14','2024-07-25 13:45:14'),(66,13,'Mother had to pay the price','25_07_2024_14_66a209c2546e6.png','Raghav\'s mother had to pay the price for his and his father\'s misdeeds. She is raped and commits suicide!',1,'o_1i3kfc19g1n3hm9qe331sf8a1cf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 13:46:02','2024-07-25 13:46:02'),(67,14,'Hot Couple In The Neighborhood','25_07_2024_50_66a21116ed0dd.jpg','The first evening tea was with the neighbor and I got to know her well!',1,'o_1i3kh59vg2k61lnv5i3c2s1bpmf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 14:17:18','2024-07-25 14:17:18'),(68,14,'Closeness','25_07_2024_32_66a2115c2bc40.jpg','Jai and Reema started coming closer and started getting to know each other better.',1,'o_1i3kh7b1u1kb76ddt1vq92b0f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 14:18:28','2024-07-25 14:18:28'),(69,14,'Are they really couples?','25_07_2024_11_66a211911e730.jpg','There was something between the two which both of them were feeling.',1,'o_1i3kh8v1v1dmccpo1dbd161q18m1f.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 14:19:21','2024-07-25 14:19:21'),(70,14,'Why They Can\'t Control','25_07_2024_59_66a211ca32111.jpg','They don\'t control themselves. They just love each other and make each other happy.',1,'o_1i3khani61db66e41ojugo962ef.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-25 14:20:18','2024-07-25 14:20:18'),(71,15,'Naughty Anjali!','28_07_2024_14_66a6087c87785.png','Looking at 20 year old Anjali, my lips started drooling. My eyes were looking at her with lustful eyes.',1,'o_1i3s91imsmoj7i21uas6dnsesf.mp3',0,1,5,1,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 14:29:40','2024-07-30 12:46:20'),(72,15,'My heart was filled with joy','28_07_2024_94_66a608a5eaeac.png','I was overjoyed, and Anjali was forced to stay with me!',1,'o_1i3s93c3t8lo1rtfk7rsp21o5cf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 14:30:21','2024-07-28 14:30:21'),(73,15,'Angry affair at night','28_07_2024_43_66a608dec2daa.png','He told the maid, if you want to stay here then you will have to make me happy.',1,'o_1i3s95k6q1u70ntn1o1avhb1nuvf.mp3',0,1,5,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 14:31:18','2024-07-28 14:31:34'),(74,16,'Chapter 1','28_07_2024_56_66a60bb081668.png','This chapter delves deep into Mahatma Gandhi’s early life, exploring his childhood, family background, education, and early interests.',1,'o_1i3s9qj2l1ket1ekv6t4tv1dk8f.mp3',0,0,0,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 14:43:20','2024-07-28 14:43:20'),(75,16,'Chapter 2','28_07_2024_26_66a60be4859d6.png','This chapter covers the foundation of the Indian National Congress in India, Gandhi’s entry into the Congress party, and his rise in both India and the party. It explores how Gandhi implemented influential policies and took significant initiatives.',1,'o_1i3s9snuihrt1cj3f8d1dt0ln9f.mp3',0,0,0,2,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 14:44:12','2024-07-30 11:40:26'),(76,17,'Chapter 1','28_07_2024_57_66a623f8baa38.png','This chapter gets deep into the whole of Bill Gates\'s early life',1,'o_1i3sforj4cu5b50njlm0m1qjtf.mp3',0,0,0,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 16:26:56','2024-07-28 16:28:51'),(77,17,'Chapter 2','28_07_2024_3_66a6245741c6c.png','His childhood, family background, education, and his interests in early life.',1,'o_1i3sfr7j1b8cnu4s7o120q1luqf.mp3',0,0,0,0,1,'',0,0,0,0,'',0,0,0,1,1,'2024-07-28 16:28:31','2024-07-28 16:28:58');
/*!40000 ALTER TABLE `tbl_content_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content_play`
--

DROP TABLE IF EXISTS `tbl_content_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_content_play` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel, 3- Music\r\n',
  `audiobook_type` int NOT NULL COMMENT '1- Audio, 2- Video',
  `user_id` int NOT NULL,
  `content_id` int NOT NULL,
  `content_episode_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content_play`
--

LOCK TABLES `tbl_content_play` WRITE;
/*!40000 ALTER TABLE `tbl_content_play` DISABLE KEYS */;
INSERT INTO `tbl_content_play` VALUES (6,3,0,3,3,0,1,'2024-07-12 12:50:52','2024-07-12 12:50:52'),(7,1,1,3,5,5,1,'2024-07-12 12:51:22','2024-07-12 12:51:22'),(8,2,0,3,6,6,1,'2024-07-12 13:13:49','2024-07-12 13:13:49'),(9,3,0,1,3,0,1,'2024-07-12 13:42:39','2024-07-12 13:42:39'),(10,2,0,4,6,6,1,'2024-07-13 08:39:25','2024-07-13 08:39:25'),(11,1,1,4,5,5,1,'2024-07-13 08:40:00','2024-07-13 08:40:00'),(12,2,0,5,6,6,1,'2024-07-13 14:06:21','2024-07-13 14:06:21'),(13,1,1,5,5,5,1,'2024-07-13 14:06:53','2024-07-13 14:06:53'),(14,1,1,4,7,7,1,'2024-07-14 19:15:10','2024-07-14 19:15:10'),(15,1,1,6,7,7,1,'2024-07-15 01:20:20','2024-07-15 01:20:20'),(16,1,1,7,7,7,1,'2024-07-15 02:53:39','2024-07-15 02:53:39'),(17,2,0,6,6,6,1,'2024-07-15 04:38:49','2024-07-15 04:38:49'),(18,1,1,6,5,5,1,'2024-07-15 04:39:02','2024-07-15 04:39:02'),(19,1,1,2,5,5,1,'2024-07-15 06:06:56','2024-07-15 06:06:56'),(20,1,1,3,7,7,1,'2024-07-15 11:47:39','2024-07-15 11:47:39'),(21,1,1,6,7,8,1,'2024-07-15 12:30:42','2024-07-15 12:30:42'),(22,1,1,3,7,8,1,'2024-07-17 05:09:49','2024-07-17 05:09:49'),(23,1,1,3,7,13,1,'2024-07-17 10:10:11','2024-07-17 10:10:11'),(24,1,1,3,7,11,1,'2024-07-17 11:44:10','2024-07-17 11:44:10'),(25,1,1,4,7,8,1,'2024-07-17 14:07:14','2024-07-17 14:07:14'),(26,3,0,4,3,0,1,'2024-07-17 15:31:30','2024-07-17 15:31:30'),(30,1,1,3,5,19,1,'2024-07-18 04:50:26','2024-07-18 04:50:26'),(31,1,1,6,5,19,1,'2024-07-19 06:22:15','2024-07-19 06:22:15'),(32,1,1,6,7,22,1,'2024-07-19 06:22:38','2024-07-19 06:22:38'),(33,1,1,6,8,29,1,'2024-07-19 06:23:08','2024-07-19 06:23:08'),(34,1,1,4,8,30,1,'2024-07-19 06:31:49','2024-07-19 06:31:49'),(35,1,1,3,8,23,1,'2024-07-19 10:06:54','2024-07-19 10:06:54'),(36,1,1,6,10,44,1,'2024-07-20 12:22:46','2024-07-20 12:22:46'),(37,3,1,3,7,7,1,'2024-07-29 04:36:51','2024-07-29 04:36:51'),(38,1,1,7,7,22,1,'2024-07-29 12:35:18','2024-07-29 12:35:18'),(39,1,1,7,5,19,1,'2024-07-29 12:36:39','2024-07-29 12:36:39'),(40,1,1,8,8,23,1,'2024-07-30 04:15:36','2024-07-30 04:15:36'),(41,1,1,8,8,30,1,'2024-07-30 04:29:51','2024-07-30 04:29:51'),(42,1,1,8,16,75,1,'2024-07-30 04:30:42','2024-07-30 04:30:42'),(43,1,1,9,7,22,1,'2024-07-30 05:22:28','2024-07-30 05:22:28'),(44,1,1,9,7,12,1,'2024-07-30 05:31:06','2024-07-30 05:31:06'),(45,1,1,9,12,58,1,'2024-07-30 05:32:20','2024-07-30 05:32:20'),(46,1,1,10,16,75,1,'2024-07-30 06:10:26','2024-07-30 06:10:26'),(47,3,1,10,16,75,1,'2024-07-30 06:12:02','2024-07-30 06:12:02'),(48,1,1,4,15,71,1,'2024-07-30 07:16:20','2024-07-30 07:16:20'),(49,1,1,3,12,53,1,'2024-07-30 07:40:43','2024-07-30 07:40:43'),(50,1,1,10,12,58,1,'2024-07-30 08:15:55','2024-07-30 08:15:55'),(51,1,1,12,7,7,1,'2024-07-30 08:30:40','2024-07-30 08:30:40'),(52,1,1,14,12,58,1,'2024-07-30 09:53:51','2024-07-30 09:53:51'),(53,1,1,15,12,58,1,'2024-07-30 09:53:57','2024-07-30 09:53:57'),(54,1,1,13,5,19,1,'2024-07-30 09:54:10','2024-07-30 09:54:10'),(55,1,1,14,7,22,1,'2024-07-30 09:54:33','2024-07-30 09:54:33'),(56,1,1,8,12,58,1,'2024-07-30 09:54:54','2024-07-30 09:54:54'),(57,1,1,15,11,52,1,'2024-07-30 09:57:34','2024-07-30 09:57:34'),(58,1,1,14,9,38,1,'2024-07-30 09:58:03','2024-07-30 09:58:03'),(59,1,1,9,8,23,1,'2024-08-02 05:23:24','2024-08-02 05:23:24');
/*!40000 ALTER TABLE `tbl_content_play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content_section`
--

DROP TABLE IF EXISTS `tbl_content_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_content_section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_type` int NOT NULL COMMENT '1- Home page, 2- AudioBook, 3- Novel',
  `is_home_screen` int NOT NULL COMMENT '1- Home Screen, 2- Other Screen',
  `top_category_id` int NOT NULL,
  `content_type` int NOT NULL COMMENT '1- AudioBook, 2- Novel, 3- Category, 4- Language, 5- Artist 6- Continue_Playing',
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `order_by_play` int NOT NULL DEFAULT '0' COMMENT '1- ASC, 2- DESC',
  `order_by_upload` int NOT NULL DEFAULT '0' COMMENT '1- ASC, 2- DESC',
  `screen_layout` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `no_of_content` int NOT NULL DEFAULT '0' COMMENT '0- All',
  `view_all` int NOT NULL DEFAULT '0',
  `sortable` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content_section`
--

LOCK TABLES `tbl_content_section` WRITE;
/*!40000 ALTER TABLE `tbl_content_section` DISABLE KEYS */;
INSERT INTO `tbl_content_section` VALUES (2,2,1,0,1,'Audio Chart-Toppers','Audio 1',0,0,0,1,1,'details_square',20,1,1,1,'2024-07-12 16:12:45','2024-07-17 17:04:46'),(3,2,1,0,1,'Audio Spotlight','Audio 1',0,0,0,1,1,'big_square',20,1,1,1,'2024-07-12 16:12:58','2024-07-17 17:04:37'),(4,2,1,0,1,'Audio Bookshelf','Audio 1',0,0,0,1,1,'small_square',20,1,1,1,'2024-07-12 16:13:15','2024-07-17 17:05:09'),(5,3,1,0,2,'Must-Reads Manor','Must-Reads Manor',0,0,0,1,1,'landscape',1,1,1,1,'2024-07-12 18:09:02','2024-07-12 18:09:02'),(6,3,1,0,2,'Novel Navigator: Trending Titles','Novel Navigator: Trending Titles',0,0,0,1,1,'details_square',1,1,1,1,'2024-07-12 18:09:45','2024-07-12 18:09:45'),(7,3,1,0,2,'Novel Nook: Trending Edition','Novel Nook: Trending Edition',0,0,0,1,1,'category',1,1,1,1,'2024-07-12 18:09:59','2024-07-12 18:09:59'),(12,1,1,0,1,'Top 10','Top 10',0,0,0,1,1,'portrait',20,1,1,1,'2024-07-16 10:18:40','2024-07-16 12:14:48'),(13,2,2,11,1,'Your Audios','Mystery',11,0,0,1,1,'list_view',4,1,1,1,'2024-07-19 12:42:59','2024-07-19 12:45:57'),(15,1,2,11,1,'All','All',11,0,0,1,1,'list_view',20,1,1,1,'2024-07-19 19:56:14','2024-07-19 19:56:14'),(16,1,1,0,1,'Vip Shows','Vip Shows',0,0,0,1,1,'landscape',5,1,1,1,'2024-08-01 19:44:18','2024-08-01 19:44:18');
/*!40000 ALTER TABLE `tbl_content_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_follow`
--

DROP TABLE IF EXISTS `tbl_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_follow` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_follow`
--

LOCK TABLES `tbl_follow` WRITE;
/*!40000 ALTER TABLE `tbl_follow` DISABLE KEYS */;
INSERT INTO `tbl_follow` VALUES (2,3,2,1,'2024-07-12 12:51:43','2024-07-12 12:51:43'),(3,1,6,1,'2024-07-12 13:43:01','2024-07-12 13:43:01'),(4,4,4,1,'2024-07-19 03:40:44','2024-07-19 03:40:44');
/*!40000 ALTER TABLE `tbl_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_general_setting`
--

DROP TABLE IF EXISTS `tbl_general_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_general_setting` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_general_setting`
--

LOCK TABLES `tbl_general_setting` WRITE;
/*!40000 ALTER TABLE `tbl_general_setting` DISABLE KEYS */;
INSERT INTO `tbl_general_setting` VALUES (1,'app_name','True Pod','2023-01-27 10:19:51','2024-07-06 17:30:27'),(2,'host_email','admin@admin.com','2023-01-27 10:19:51','2024-01-04 06:46:29'),(3,'app_version','1.1','2023-01-27 10:19:51','2024-01-04 06:46:29'),(4,'author','Divinetechs','2023-01-27 10:19:51','2024-01-04 06:46:29'),(5,'email','admin@admin.com','2023-01-27 10:19:51','2024-01-04 06:46:29'),(6,'contact','1020304050','2023-01-27 10:19:51','2024-01-04 06:46:29'),(7,'app_desripation','DivineTechs, a top web & mobile app development company offering innovative solutions for diverse industry verticals. \r\nWe have creative and dedicated group of developers who are mastered in Apps Developments and Web Development with a nice in delivering quality solutions to customers across the globe.','2023-01-27 10:19:51','2024-01-04 06:43:21'),(10,'app_logo','06_07_2024_70_668931dbd9781.png','2023-01-27 10:19:51','2024-07-06 17:30:27'),(11,'website','www.divinetechs.com','2023-01-27 10:19:51','2024-01-04 06:46:29'),(12,'currency','USD','2023-01-27 10:19:51','2024-02-15 14:48:18'),(13,'currency_code','$','2023-01-27 10:19:51','2024-02-15 14:48:18'),(14,'banner_ad','0','2023-01-27 10:19:51','2024-02-26 06:12:44'),(15,'banner_adid','','2023-01-27 10:19:51','2024-02-26 06:12:44'),(16,'interstital_ad','0','2023-01-27 10:19:51','2024-02-26 06:12:44'),(17,'interstital_adid','','2023-01-27 10:19:51','2024-02-26 06:12:44'),(18,'interstital_adclick','','2023-01-27 10:19:51','2024-02-26 06:12:44'),(19,'reward_ad','0','2023-01-27 10:19:51','2024-02-26 06:12:44'),(20,'reward_adid','','2023-01-27 10:19:51','2024-02-26 06:12:44'),(21,'reward_adclick','','2023-01-27 10:19:51','2024-02-26 06:12:44'),(22,'ios_banner_ad','0','2023-01-27 10:19:51','2024-02-26 06:13:10'),(23,'ios_banner_adid','','2023-01-27 10:19:51','2024-02-26 06:13:10'),(24,'ios_interstital_ad','0','2023-01-27 10:19:51','2024-02-26 06:13:10'),(25,'ios_interstital_adid','','2023-01-27 10:19:51','2024-02-26 06:13:10'),(26,'ios_interstital_adclick','','2023-01-27 10:19:51','2024-02-26 06:13:10'),(27,'ios_reward_ad','0','2023-01-27 10:19:51','2024-02-26 06:13:10'),(28,'ios_reward_adid','','2023-01-27 10:19:51','2024-02-26 06:13:10'),(29,'ios_reward_adclick','','2023-01-27 10:19:51','2024-02-26 06:13:10'),(30,'fb_native_status','0','2023-01-27 10:19:51','2024-02-26 06:13:38'),(31,'fb_native_id','','2023-01-27 10:19:51','2024-02-26 06:13:38'),(32,'fb_banner_status','0','2023-01-27 10:19:51','2024-02-26 06:13:38'),(33,'fb_banner_id','','2023-01-27 10:19:51','2024-02-26 06:13:38'),(34,'fb_interstiatial_status','0','2023-01-27 10:19:51','2024-02-26 06:13:38'),(35,'fb_interstiatial_id','','2023-01-27 10:19:51','2024-02-26 06:13:38'),(36,'fb_rewardvideo_status','0','2023-01-27 10:19:51','2024-02-26 06:13:38'),(37,'fb_rewardvideo_id','','2023-01-27 10:19:51','2024-02-26 06:13:38'),(38,'fb_native_full_status','0','2023-01-27 10:19:51','2024-02-26 06:13:38'),(39,'fb_native_full_id','','2023-01-27 10:19:51','2024-02-26 06:13:38'),(40,'fb_ios_native_status','0','2023-01-27 10:19:51','2024-02-26 06:14:03'),(41,'fb_ios_native_id','','2023-01-27 10:19:51','2024-02-26 06:14:03'),(42,'fb_ios_banner_status','0','2023-01-27 10:19:51','2024-02-26 06:14:03'),(43,'fb_ios_banner_id','','2023-01-27 10:19:51','2024-02-26 06:14:03'),(44,'fb_ios_interstiatial_status','0','2023-01-27 10:19:51','2024-02-26 06:14:03'),(45,'fb_ios_interstiatial_id','','2023-01-27 10:19:51','2024-02-26 06:14:03'),(46,'fb_ios_rewardvideo_status','0','2023-01-27 10:19:51','2024-02-26 06:14:03'),(47,'fb_ios_rewardvideo_id','','2023-01-27 10:19:51','2024-02-26 06:14:03'),(48,'fb_ios_native_full_status','0','2023-01-27 10:19:51','2024-02-26 06:14:03'),(49,'fb_ios_native_full_id','','2023-01-27 10:19:51','2024-02-26 06:14:03'),(50,'onesignal_apid','','2023-01-27 10:19:51','2024-05-17 11:14:14'),(51,'onesignal_rest_key','','2023-01-27 10:19:51','2024-05-17 11:14:15');
/*!40000 ALTER TABLE `tbl_general_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_history`
--

DROP TABLE IF EXISTS `tbl_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel, 3- Music	',
  `audiobook_type` int NOT NULL COMMENT '1- Audio, 2- Video',
  `user_id` int NOT NULL,
  `content_id` int NOT NULL,
  `content_episode_id` int NOT NULL,
  `stop_time` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_history`
--

LOCK TABLES `tbl_history` WRITE;
/*!40000 ALTER TABLE `tbl_history` DISABLE KEYS */;
INSERT INTO `tbl_history` VALUES (3,3,0,3,3,0,0,1,'2024-07-12 18:21:10','2024-07-12 18:21:10'),(4,1,0,3,5,0,0,1,'2024-07-12 18:21:41','2024-07-12 18:21:41'),(5,2,0,3,6,6,1,1,'2024-07-12 18:43:53','2024-07-12 18:43:53'),(6,3,0,1,3,0,0,1,'2024-07-12 19:12:45','2024-07-12 19:12:45'),(7,2,0,4,6,6,1,1,'2024-07-13 14:09:31','2024-07-13 14:09:44'),(8,2,0,5,6,6,2,1,'2024-07-13 19:36:28','2024-07-13 19:36:28'),(9,2,0,6,6,6,1,1,'2024-07-15 10:08:52','2024-07-15 10:08:52'),(10,1,0,2,5,0,0,1,'2024-07-15 11:37:07','2024-07-15 11:37:07'),(11,1,0,3,7,0,0,1,'2024-07-15 17:18:17','2024-07-15 17:18:17'),(12,1,0,4,7,0,0,1,'2024-07-17 17:03:12','2024-07-17 17:03:12'),(13,1,0,3,8,0,0,1,'2024-07-19 15:37:11','2024-07-19 15:37:11');
/*!40000 ALTER TABLE `tbl_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_language` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (6,'HIndi','12_07_2024_21_6690d99c8eca3.png',1,'2024-07-12 12:52:04','2024-07-12 12:52:04'),(8,'English','12_07_2024_50_6690d9abe3dc8.png',1,'2024-07-12 12:52:19','2024-07-12 12:52:19'),(9,'Telugu','01_08_2024_30_66ab1785938f8.png',1,'2024-08-01 10:35:09','2024-08-01 19:49:33');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_like`
--

DROP TABLE IF EXISTS `tbl_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `threads_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_like`
--

LOCK TABLES `tbl_like` WRITE;
/*!40000 ALTER TABLE `tbl_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_music` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `portrait_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `landscape_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `music_upload_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'server_video, external_url',
  `music` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `music_duration` int NOT NULL DEFAULT '0',
  `total_played` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_music`
--

LOCK TABLES `tbl_music` WRITE;
/*!40000 ALTER TABLE `tbl_music` DISABLE KEYS */;
INSERT INTO `tbl_music` VALUES (3,11,8,5,'Udd Jaa Kale Kawa | Gadar 2','12_07_2024_30_6691267540c62.jpeg','12_07_2024_58_6691267540d29.jpeg','Udd Jaa Kale Kawa | Gadar 2','server_video','o_1i2jfruq312vkrid1bo4231m0jb.mp3',0,3,1,'2024-07-12 18:19:57','2024-07-17 21:01:30');
/*!40000 ALTER TABLE `tbl_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_music_section`
--

DROP TABLE IF EXISTS `tbl_music_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_music_section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_home_screen` int NOT NULL COMMENT '1- Home Screen, 2- Other Screen',
  `top_category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `order_by_play` int NOT NULL DEFAULT '0' COMMENT '1- ASC, 2- DESC',
  `order_by_upload` int NOT NULL DEFAULT '0' COMMENT '1- ASC, 2- DESC',
  `screen_layout` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `no_of_content` int NOT NULL DEFAULT '0' COMMENT '0- All',
  `view_all` int NOT NULL DEFAULT '0',
  `sortable` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_music_section`
--

LOCK TABLES `tbl_music_section` WRITE;
/*!40000 ALTER TABLE `tbl_music_section` DISABLE KEYS */;
INSERT INTO `tbl_music_section` VALUES (3,1,0,'Bolliwood Latest SongList','New songs',0,0,0,1,1,'portrait',1,1,1,1,'2024-07-12 18:18:12','2024-07-12 18:18:12'),(4,1,0,'90\'s Song','90\'s Song',0,0,0,1,1,'grid_view',1,1,1,1,'2024-07-12 18:18:31','2024-07-12 18:18:31'),(5,1,0,'New Releases','New Releases',0,0,0,1,1,'square',1,1,1,1,'2024-07-12 18:18:39','2024-07-12 18:18:39');
/*!40000 ALTER TABLE `tbl_music_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notification`
--

DROP TABLE IF EXISTS `tbl_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notification` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notification`
--

LOCK TABLES `tbl_notification` WRITE;
/*!40000 ALTER TABLE `tbl_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_package`
--

DROP TABLE IF EXISTS `tbl_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_package` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `coin` int NOT NULL,
  `android_product_package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_product_package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_package`
--

LOCK TABLES `tbl_package` WRITE;
/*!40000 ALTER TABLE `tbl_package` DISABLE KEYS */;
INSERT INTO `tbl_package` VALUES (1,'Normal Package','17_07_2024_97_669799edb4801.png',199,400,'normal_package','normal_package',1,'2024-07-17 15:46:13','2024-07-19 10:20:01'),(2,'Standard Package','17_07_2024_17_66979a044948d.png',399,800,'standard_package','standard_package',1,'2024-07-17 15:46:36','2024-07-19 10:20:10'),(3,'Premium Package','17_07_2024_95_66979a1be64ee.png',799,1600,'premium_package','test',1,'2024-07-17 15:46:59','2024-07-30 09:40:14');
/*!40000 ALTER TABLE `tbl_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_page` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_page`
--

LOCK TABLES `tbl_page` WRITE;
/*!40000 ALTER TABLE `tbl_page` DISABLE KEYS */;
INSERT INTO `tbl_page` VALUES (1,'about-us','About Us','','',1,'2023-01-27 10:19:52','2024-05-17 11:13:57'),(2,'privacy-policy','TruePod Piracy Policy','<style>\r\n        body {\r\n            font-family: Arial, sans-serif;\r\n            line-height: 1.6;\r\n            margin: 0;\r\n            padding: 20px;\r\n            background-color: #f4f4f4;\r\n        }\r\n        h1, h2, h3 {\r\n            color: #333;\r\n        }\r\n        h1 {\r\n            margin-bottom: 10px;\r\n        }\r\n        h2 {\r\n            margin-top: 20px;\r\n        }\r\n        p {\r\n            margin: 10px 0;\r\n        }\r\n        .policy-section {\r\n            margin-bottom: 20px;\r\n        }\r\n        .policy-highlight {\r\n            font-weight: bold;\r\n        }\r\n        .contact-info, .grievance-officer {\r\n            margin-top: 20px;\r\n        }\r\n    </style>\r\n<div class=\"policy-section\">\r\n        <h2>Collection &amp; Display</h2>\r\n        <p>When content (as defined below) is uploaded onto the TruePod app and/or site (collectively referred to as the \"Platform\"), it undergoes a thorough screening by us (\"Screening\"). The content is reviewed, examined, and filtered based on certain technical and legal parameters, including but not limited to examining whether the content is original and does not infringe upon any intellectual property right of any third party, including trademark, copyright, or other proprietary rights. For the purpose of this policy, \"Content\" includes text, software, scripts, graphics, photos, sound recordings, audio, music compositions, videos, audio-visuals, interactive features, and other materials you may view on, access through, or contribute to the service. The \"Service\" includes all aspects of the TruePod app and/or site, such as TruePod channels and other applications.</p>\r\n        <p>When large files of content are uploaded on the Platform, they are broken up into batches of smaller files and then uploaded by us to ensure that the content is thoroughly screened before being uploaded on the Platform and to minimize the possibility of piracy.</p>\r\n        <p>After the Screening, content which clears the Screening (\"Undisputed Content\") is segregated from content which does not clear the Screening (\"Unapproved Content\") and content which has not been screened yet (\"Unreviewed Content\"). The Unapproved Content becomes inaccessible on the Platform.</p>\r\n        <p>Only Undisputed Content shall be displayed in the search results on the Platform when a search input for content is provided by you.</p>\r\n    </div>\r\n    \r\n    <div class=\"policy-section\">\r\n        <h2>Action taken for infringement</h2>\r\n        <p>We will act in accordance with all applicable laws when we are made aware of any infringing activity on the Platform, broadly laid down as follows:</p>\r\n        <div class=\"policy-highlight\">\r\n            <h3>Policy Highlights</h3>\r\n        </div>\r\n        <p>1. TruePod respects the intellectual property rights of others, and we expect you to do the same. Your account may be suspended or terminated for copyright violations or for violations of the Terms of Service and Privacy Policy.</p>\r\n        <p>2. We will work towards resolving all copyright complaints (\"Complaint\") which we receive against content copied on the Platform/an external medium and/or originally published on an external medium and subsequently copied on the Platform by the original owner of the content.</p>\r\n        <p>3. The Complaint must be supported by clear and substantial proof of copyright ownership and the specific instance of copyright infringement to enable us to take the Complaint on record. In case of any shortcomings, we reserve the right to refuse to take any action in respect to the Complaint and/or seek additional documentation, at our own discretion.</p>\r\n        <p>4. We do not provide legal advice to the complainant if they decide to initiate legal proceedings against the defaulter. The complainant must seek independent legal advice under such circumstances.</p>\r\n    </div>\r\n    \r\n    <div class=\"policy-section\">\r\n        <h2>Categorization of infringement</h2>\r\n        <div class=\"policy-highlight\">\r\n            <h3>I. Copying Content and publishing it on the Platform</h3>\r\n        </div>\r\n        <p>Where a Complaint is received by us reporting that certain content is infringing (\"Disputed Content\") original content (\"Original Content\") published on the Platform, the following process may be followed:</p>\r\n        <p>1. If the owner/authorized agent of the Original Content (\"Original Owner\") reports copyright infringement with respect to Disputed Content, the Disputed Content shall be removed within 36 (thirty-six) hours from receipt of proof of copyright infringement of the Disputed Content.</p>\r\n        <p>2. We shall send a notice to the owner/authorized agent of the Disputed Content (\"Disputed Owner\") with information regarding the Complaint received.</p>\r\n        <p>3. If it is proven that the content in the Complaint is Disputed Content, then we may, at our sole discretion, take one or more of the following actions:</p>\r\n        <ul>\r\n            <li>Permanently remove the Disputed Content.</li>\r\n            <li>Move the published works to draft status where the Disputed Owner may not republish the same without our permission.</li>\r\n            <li>Permanently delete the Disputed Content from the Disputed Owner\'s profile where they may not republish the same thereafter.</li>\r\n            <li>If the Disputed Owner has been found to have published Disputed Content 3 (three) or more times, then we can, at our discretion, choose to:\r\n                <ul>\r\n                    <li>Deactivate the user profile; and/or</li>\r\n                    <li>Block the user profile.</li>\r\n                </ul>\r\n            </li>\r\n        </ul>\r\n        <p>4. If the Disputed Owner denies copying the Original Content, then the Disputed Owner will be given an opportunity to convince the Original Owner that they have not infringed the copyright of the Original Owner\'s content.</p>\r\n        <p>5. If the Disputed Owner refuses to do so, the Original Owner will have the option to initiate legal action against the Disputed Owner or they may waive their objection and allow the Disputed Content to be published.</p>\r\n        <p>6. We will block access to the Disputed Content for a period of twenty-one (21) days. The order of the competent court having jurisdiction must be submitted to us within a period of twenty-one (21) days from the date of submitting the report of infringement. If no such order is submitted, then we will unblock access to the Disputed Content. In such an event, the Original Owner can file another Complaint, which will undergo the same process as mentioned above.</p>\r\n        <p>7. Our internal detection system for copied material detects Disputed Content, and if the content is found to be Disputed Content, then we may, at our sole discretion, forthwith remove such content.</p>\r\n        <div class=\"policy-highlight\">\r\n            <h3>II. Copying External Content and publishing it on the Platform</h3>\r\n        </div>\r\n        <p>Where a Complaint is received by us reporting that certain content is infringing certain content published on an external platform (\"External Content\"), the following process may be followed:</p>\r\n        <p>1. When the owner/authorized agent of the External Content reports copyright infringement of their works with respect to content on the Platform and we are satisfied that the report is factual, then we will block access to the Disputed Content for twenty-one (21) days. The order of the competent court having jurisdiction must be submitted to us within a period of twenty-one (21) days from the date of submitting the report of infringement. If no such order is submitted, then we will unblock access to the Disputed Content. In such an event, the owner/authorized agent of the External Content can file another Complaint, which will undergo the same process as mentioned above.</p>\r\n        <div class=\"policy-highlight\">\r\n            <h3>III. Copying Content and publishing it on an external platform</h3>\r\n        </div>\r\n        <p>If we are made aware, either by a third party or through our detection system, of any specific instances wherein Original Content published on the Platform is copied and made available on an external medium by any party, then the following process may be followed:</p>\r\n        <p>1. Our detection mechanism will, to the extent practically possible, monitor such infringement and will have the Original Content removed from the external medium as per the process enabled by such external medium.</p>\r\n        <p>2. When we are made aware that Original Content published on the Platform is being downloaded and saved onto files and/or a third party is stream-ripping the Original Content and publishing it on an external platform, then we shall report the same and shall ask for the external platform/website to be removed.</p>\r\n        <p>3. If the external platform fails to take action and/or fails to remove such infringing content from the external platform, then we may, at our discretion and not being obligated to, initiate legal proceedings against the external platform.</p>\r\n    </div>\r\n    \r\n    <div class=\"policy-section\">\r\n        <h2>Procedure to file a Complaint</h2>\r\n        <div class=\"policy-highlight\">\r\n            <h3>I. Copyright Infringement Notification (DMCA Notice)</h3>\r\n        </div>\r\n        <p>If you believe that your copyright-protected work was posted on TruePod\'s site or app without authorization, you may submit a copyright infringement notification to our grievance officer. The notification must include the following:</p>\r\n        <ul>\r\n            <li>An email address, physical address, or phone number so that we and the uploader of the allegedly Disputed Content can contact you.</li>\r\n            <li>A clear and complete description of your work that you believe has been infringed along with documentary evidence of your ownership of the work.</li>\r\n            <li>The URL or other identifying location of the Disputed Content as well as details of the person (if known) who is responsible for uploading the allegedly infringing work.</li>\r\n            <li>A statement that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its authorized agent, or law.</li>\r\n            <li>A statement, made under penalty of perjury, that the above information is accurate, and that you are the copyright owner or are authorized to act on behalf of the owner along with details establishing that you or the person on whose behalf the notification is being made is the bona fide owner of the copyright in the work which has been allegedly infringed.</li>\r\n            <li>An undertaking that you or the person on whose behalf the notification is being made shall file an infringement suit in the competent court against the person responsible for uploading the Disputed Content and produce the orders of the competent court having jurisdiction within a period of 21 (twenty-one) days from the receipt of this notification.</li>\r\n            <li>The physical or electronic signature of the copyright owner or an authorized agent of the copyright owner. To satisfy this requirement, you may type your full legal name (not that of a company) at the bottom of your notification.</li>\r\n        </ul>\r\n        <div class=\"contact-info\">\r\n            <p>Submit the above information to our grievance officer:</p>\r\n            <p>By Email: <a href=\"mailto:dev.truepod@gmail.com\">dev.truepod@gmail.com</a></p>\r\n        </div>\r\n        <p>All information submitted in your copyright infringement notification may be made public in any way by TruePod or a third party.</p>\r\n        <div class=\"policy-highlight\">\r\n            <h3>II. Copyright Infringement Counter-Notification</h3>\r\n        </div>\r\n        <p>If you receive a copyright infringement notification that you believe to be in error, you may provide us with a counter-notification. It must include the following:</p>\r\n        <ul>\r\n            <li>Your contact information, including your full legal name (not that of a company), an email address, a physical address, and a phone number. If you are an authorized agent of the uploader, such as an attorney, please be sure to specify your relationship to the uploader.</li>\r\n            <li>Identify the location, including any URL, of the work that has been removed or disabled.</li>\r\n            <li>The following statement: \"I swear, under penalty of perjury, that I have a good faith belief that the material was removed or disabled as a result of a mistake or misidentification of the material to be removed or disabled.\"</li>\r\n            <li>The physical or electronic signature of the copyright owner or an authorized agent of the copyright owner. To satisfy this requirement, you may type your full legal name (not that of a company) at the bottom of your electronic counter-notification.</li>\r\n        </ul>\r\n        <div class=\"contact-info\">\r\n            <p>Submit the above information to us:</p>\r\n            <p>Name: TruePod Dev</p>\r\n            <p>By Email: <a href=\"mailto:dev.truepod@gmail.com\">dev.truepod@gmail.com</a></p>\r\n        </div>\r\n        <p>The counter-notification process may take up to 10 (ten) business days to complete, so please be patient. During this time, the copyright claimant may file an action seeking a court order to keep the content down. Please note that we will forward the entire counter notice to the copyright claimant, including any personal information you provide, and the counter notice may be made public. The claimant may use this information to file a lawsuit against you.</p>\r\n        <p>You understand and agree that if you fail to produce an order of the competent court having jurisdiction restraining facilitation of access to the allegedly infringing work within the stipulated period of 21 (twenty-one) days, TruePod may choose, at its sole discretion, to reinstate access to such content until such an order of a competent court having jurisdiction is received. The decision to unblock any material is at TruePod\'s sole discretion.</p>\r\n    </div>\r\n    \r\n    <div class=\"policy-section\">\r\n        <h2>Account Termination Policy</h2>\r\n        <p>TruePod may choose to terminate a user\'s access to the service if, under appropriate circumstances, the user is determined to be a repeat infringer.</p>\r\n        <p>TruePod reserves the right to decide whether content violates this Piracy Policy for reasons including but not limited to copyright infringement, such as, but not limited to, pornography, obscenity, or excessive length. TruePod may at any time, without prior notice and in its sole discretion, remove such content and/or terminate a user\'s account for submitting such material in violation of this Piracy Policy.</p>\r\n    </div>\r\n    \r\n    <div class=\"policy-section\">\r\n        <h2>Amendments</h2>\r\n        <p>This policy may be updated and amended by the Company at any time, in its sole discretion and if required under applicable law.</p>\r\n    </div>','22_07_2024_11_669e07a0f35ec.jpeg',1,'2023-01-27 10:19:52','2024-07-22 12:47:52'),(3,'terms-and-conditions','Terms & conditions','','',1,'2023-01-27 10:19:52','2024-05-17 11:13:55'),(4,'refund-policy','Refund Policy','','',1,'2023-01-27 13:14:32','2024-05-17 11:13:54');
/*!40000 ALTER TABLE `tbl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_option`
--

DROP TABLE IF EXISTS `tbl_payment_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment_option` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_live` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_option`
--

LOCK TABLES `tbl_payment_option` WRITE;
/*!40000 ALTER TABLE `tbl_payment_option` DISABLE KEYS */;
INSERT INTO `tbl_payment_option` VALUES (1,'inapppurchage','1','1','','','','2023-01-27 10:19:52','2024-07-17 15:48:19'),(2,'paypal','0','0','','','','2023-01-27 10:19:52','2024-05-17 11:13:32'),(3,'razorpay','0','0','','','','2023-01-27 10:19:52','2024-05-17 11:13:33'),(4,'flutterwave','0','0','','','','2023-01-27 10:19:52','2024-05-17 11:13:34'),(5,'payumoney','0','0','','','','2023-01-27 10:19:52','2024-05-17 11:13:39'),(6,'paytm','0','0','','','','2023-01-27 10:19:52','2024-05-17 11:13:36'),(7,'stripe','0','0','','','','2023-06-17 08:32:13','2024-05-17 11:13:37');
/*!40000 ALTER TABLE `tbl_payment_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_read_notification`
--

DROP TABLE IF EXISTS `tbl_read_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_read_notification` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_read_notification`
--

LOCK TABLES `tbl_read_notification` WRITE;
/*!40000 ALTER TABLE `tbl_read_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_read_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reviews`
--

DROP TABLE IF EXISTS `tbl_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel\r\n',
  `content_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reviews`
--

LOCK TABLES `tbl_reviews` WRITE;
/*!40000 ALTER TABLE `tbl_reviews` DISABLE KEYS */;
INSERT INTO `tbl_reviews` VALUES (5,4,1,7,'nice',5,1,'2024-07-19 11:40:35','2024-07-19 11:40:35');
/*!40000 ALTER TABLE `tbl_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reward_coin`
--

DROP TABLE IF EXISTS `tbl_reward_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reward_coin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1- Spin_Wheel , 2 - Daily_Login_Point , 3- Get_Free_Coin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reward_coin`
--

LOCK TABLES `tbl_reward_coin` WRITE;
/*!40000 ALTER TABLE `tbl_reward_coin` DISABLE KEYS */;
INSERT INTO `tbl_reward_coin` VALUES (1,'free-coin','1',3,'2024-07-19 11:53:05','2024-07-19 11:53:05'),(3,'1','1',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(4,'2','2',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(5,'3','3',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(6,'4','4',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(7,'5','5',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(8,'6','6',2,'2024-07-19 11:56:54','2024-07-19 11:56:54'),(9,'Day-1','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(10,'Day-2','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(11,'Day-3','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(12,'Day-4','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(13,'Day-5','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(14,'Day-6','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35'),(15,'Day-7','1',1,'2024-07-19 11:58:35','2024-07-19 11:58:35');
/*!40000 ALTER TABLE `tbl_reward_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reward_transaction`
--

DROP TABLE IF EXISTS `tbl_reward_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reward_transaction` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coin` int NOT NULL,
  `type` int NOT NULL COMMENT '1- Spin_Wheel , 2 - Daily_Login_Point , 3- Get_Free_Coin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reward_transaction`
--

LOCK TABLES `tbl_reward_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_reward_transaction` DISABLE KEYS */;
INSERT INTO `tbl_reward_transaction` VALUES (1,3,1,2,'2024-08-02 11:08:01','2024-08-02 11:08:01');
/*!40000 ALTER TABLE `tbl_reward_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_smtp_setting`
--

DROP TABLE IF EXISTS `tbl_smtp_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_smtp_setting` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protocol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_smtp_setting`
--

LOCK TABLES `tbl_smtp_setting` WRITE;
/*!40000 ALTER TABLE `tbl_smtp_setting` DISABLE KEYS */;
INSERT INTO `tbl_smtp_setting` VALUES (1,'smtp123','ssl://smtp.gmail.com','123','admin@admin.com','admin','DivineTechs','admin@admin.com',0,'2023-01-27 10:19:52','2024-01-04 06:51:13');
/*!40000 ALTER TABLE `tbl_smtp_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_threads`
--

DROP TABLE IF EXISTS `tbl_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_threads` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_type` int NOT NULL COMMENT '1- User, 2- Artist',
  `user_id` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total_like` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_threads`
--

LOCK TABLES `tbl_threads` WRITE;
/*!40000 ALTER TABLE `tbl_threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transaction`
--

DROP TABLE IF EXISTS `tbl_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transaction` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin` int NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaction`
--

LOCK TABLES `tbl_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_transaction` DISABLE KEYS */;
INSERT INTO `tbl_transaction` VALUES (1,3,1,'admin','100',150,'admin',1,'2024-07-17 17:10:20','2024-07-17 17:10:20'),(2,4,3,'admin','500',850,'admin',1,'2024-07-17 19:31:16','2024-07-17 19:31:16'),(3,5,2,'admin','399',800,'admin',1,'2024-07-19 11:49:49','2024-07-19 11:49:49'),(4,8,1,'Normal Package','199',400,'131751616132838762',1,'2024-07-30 09:48:30','2024-07-30 09:48:30'),(5,9,1,'Normal Package','199',400,'131711616134537025',1,'2024-07-30 10:58:42','2024-07-30 10:58:42');
/*!40000 ALTER TABLE `tbl_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1- OTP, 2- Google, 3- Apple, 4- Normal	',
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_coin` int NOT NULL DEFAULT '0',
  `device_type` int NOT NULL DEFAULT '0' COMMENT '1- Android, 2- IOS\r\n',
  `device_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (3,'@abhikathiriya1129_254','Abhishek Patel','abhikathiriya1129@gmail.com','','9510731828','12_07_2024_0_6690d6eedcfd7.png',2,'Hey, I am User on True Pod App.',46,1,'',1,'2024-07-12 07:10:38','2024-08-02 11:08:01'),(4,'@dattaamit466_986','Amitava Dutta','dattaamit466@gmail.com','','9533967608','13_07_2024_27_66923d3404ebb.png',2,'Hey, I am User on True Pod App.',835,0,'',1,'2024-07-13 08:39:16','2024-07-30 12:46:59'),(5,'@creative.truthindia_698','king pin','creative.truthindia@gmail.com','','','13_07_2024_40_669289d652e21.png',2,'Hey, I am User on True Pod App.',800,1,'',1,'2024-07-13 14:06:14','2024-07-19 11:49:49'),(6,'@info_169','whoimi org','info@whoimi.com','','','15_07_2024_29_66947913eda78.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-15 01:19:15','2024-07-15 01:19:15'),(7,'@sapnakhalatkar014_831','Swapna Pawar Desai','sapnakhalatkar014@gmail.com','','','15_07_2024_81_66948efe9c955.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-15 02:52:46','2024-07-15 02:52:46'),(8,'@advonchain_65','Advon Chain','advonchain@gmail.com','','9182312617','30_07_2024_61_66a868e0eaa42.png',2,'Hey, I am User on True Pod App.',385,1,'',1,'2024-07-30 04:15:28','2024-07-30 15:24:30'),(9,'@varadarajuluade_224','VARADA RAJULU','varadarajuluade@gmail.com','','9441220303','30_07_2024_79_66a8788fabe8b.png',2,'Hey, I am User on True Pod App.',380,1,'',1,'2024-07-30 05:22:23','2024-07-30 11:01:05'),(10,'@ZAP6FRMO5UZVXD4ER6ILER4SII-00_0','Nuage boratoire','ZAP6FRMO5UZVXD4ER6ILER4SII-00@cloudtestlabaccounts.com','','','30_07_2024_53_66a8832ff37db.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-30 06:07:44','2024-08-01 13:58:46'),(11,'@amitavadu_407','Amit Datta','amitavadu@gmail.com','','9533967608','30_07_2024_23_66a89375d2ce6.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-30 07:17:09','2024-07-30 12:48:04'),(12,'@margiemedina.78351_869','Margie Medina','margiemedina.78351@gmail.com','','','30_07_2024_64_66a8a44989150.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-30 08:28:57','2024-07-30 08:28:57'),(13,'@srestaadvaitam_321','Sresta Advaitam','srestaadvaitam@gmail.com','','9182312617','30_07_2024_45_66a8b7f2a5ec1.png',2,'Hey, I am User on True Pod App.',0,0,'',1,'2024-07-30 09:52:50','2024-07-30 15:24:23'),(14,'@mohan33319_562','mohan krishna','mohan33319@gmail.com','','','30_07_2024_68_66a8b82bbd877.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-30 09:53:47','2024-07-30 09:53:47'),(15,'@syadyadulla05_43','Yadulla SD','syadyadulla05@gmail.com','','','30_07_2024_38_66a8b82f3d9f1.png',2,'Hey, I am User on True Pod App.',0,1,'',1,'2024-07-30 09:53:51','2024-07-30 09:53:51');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_wallet_transaction`
--

DROP TABLE IF EXISTS `tbl_wallet_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_wallet_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content_type` int NOT NULL COMMENT '1- Audio Book, 2- Novel\r\n',
  `audiobook_type` int NOT NULL COMMENT '1- Audio, 2- Video',
  `content_id` int NOT NULL,
  `content_episode_id` int NOT NULL,
  `coin` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_wallet_transaction`
--

LOCK TABLES `tbl_wallet_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_wallet_transaction` DISABLE KEYS */;
INSERT INTO `tbl_wallet_transaction` VALUES (1,3,1,1,7,11,5,1,'2024-07-17 17:13:16','2024-07-17 17:13:16'),(2,3,1,1,7,8,10,1,'2024-07-17 17:13:36','2024-07-17 17:13:36'),(3,4,1,1,7,8,10,1,'2024-07-17 19:35:36','2024-07-17 19:35:36'),(4,3,1,1,7,12,5,1,'2024-07-17 19:39:14','2024-07-17 19:39:14'),(5,3,1,1,7,13,5,1,'2024-07-17 19:41:33','2024-07-17 19:41:33'),(6,3,1,1,5,5,10,1,'2024-07-17 19:45:55','2024-07-17 19:45:55'),(7,3,1,1,5,14,10,1,'2024-07-17 19:47:05','2024-07-17 19:47:05'),(8,3,1,1,5,15,10,1,'2024-07-17 19:48:10','2024-07-17 19:48:10'),(9,3,1,1,5,16,10,1,'2024-07-18 10:14:30','2024-07-18 10:14:30'),(10,3,1,1,5,17,10,1,'2024-07-18 10:16:01','2024-07-18 10:16:01'),(11,3,1,1,5,18,10,1,'2024-07-18 10:18:38','2024-07-18 10:18:38'),(12,3,1,1,5,19,10,1,'2024-07-18 10:20:24','2024-07-18 10:20:24'),(13,3,1,1,12,53,5,1,'2024-07-30 09:48:27','2024-07-30 09:48:27'),(14,8,1,1,8,30,5,1,'2024-07-30 09:59:45','2024-07-30 09:59:45'),(15,8,1,1,8,29,5,1,'2024-07-30 09:59:48','2024-07-30 09:59:48'),(16,8,1,1,8,28,5,1,'2024-07-30 10:00:13','2024-07-30 10:00:13'),(17,9,1,1,7,8,10,1,'2024-07-30 11:00:59','2024-07-30 11:00:59'),(18,9,1,1,7,11,5,1,'2024-07-30 11:01:03','2024-07-30 11:01:03'),(19,9,1,1,7,12,5,1,'2024-07-30 11:01:05','2024-07-30 11:01:05'),(20,4,1,1,15,71,5,1,'2024-07-30 12:46:13','2024-07-30 12:46:13'),(21,3,1,1,12,54,5,1,'2024-07-30 15:14:09','2024-07-30 15:14:09');
/*!40000 ALTER TABLE `tbl_wallet_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-02  6:34:32
