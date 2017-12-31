CREATE DATABASE  IF NOT EXISTS `todoapp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `todoapp`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: todoapp
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `index` int(11) NOT NULL DEFAULT '0',
  `expire_date` timestamp NULL DEFAULT NULL,
  `list_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items_list_id_foreign` (`list_id`),
  CONSTRAINT `items_list_id_foreign` FOREIGN KEY (`list_id`) REFERENCES `my_lists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Item-1.1','Maiores aspernatur dolores neque. Esse in et saepe exercitationem aut. Voluptas consectetur et molestiae dolores.',0,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:42',0),(2,'Item-1.2','Laborum sed non omnis repudiandae provident deleniti. Velit sed praesentium eligendi consequuntur et alias sed eos. Culpa rerum eveniet architecto ut et aut sunt.',1,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:42',0),(3,'Item-1.3','Temporibus quam magnam ipsa et nisi aperiam minima illum. Ipsum eius labore aperiam sint molestiae omnis cupiditate. Adipisci aut cupiditate fugit ut consectetur laborum necessitatibus.',2,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:42',0),(4,'Item-1.4','Fuga libero cum mollitia iusto suscipit voluptate. Dicta quidem molestiae omnis consequuntur sed. Veritatis molestiae eum ut iusto vitae et aut.',3,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:43',0),(5,'Item-1.5','Eum iusto cum dolorem vel numquam totam. Velit laudantium et blanditiis soluta enim. Ipsam voluptas non ad occaecati quia dolorem.',4,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:43',0),(6,'Item-1.6','Iste est placeat enim excepturi illum reprehenderit quia sapiente. Quo sunt molestiae autem eveniet fugiat nostrum rerum. Ratione natus maiores sed.',5,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:44',0),(7,'Item-1.7','Mollitia harum soluta quidem. Occaecati vero perspiciatis doloremque earum nemo. Maiores facere excepturi itaque.',6,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:44',0),(8,'Item-1.8','Eum cupiditate iure recusandae qui asperiores at. Earum illum magnam non dolores quaerat odit quia et. Quia quisquam eos dolorum odit quis.',7,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:44',0),(9,'Item-1.9','Aut molestiae possimus aut expedita sit sed dolorum. Iste nulla cum velit officiis non explicabo similique. Incidunt voluptatum officia et similique. Quia et eum doloribus reiciendis fuga.',8,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:45',0),(10,'Item-1.10','Vero impedit minima ut sunt. Aspernatur ducimus quas esse in ut enim. Molestiae tempora aspernatur sunt vitae cupiditate error consequuntur.',9,'2018-03-20 06:00:00',1,'2018-03-20 06:00:00','2017-12-31 17:56:45',0),(11,'Item-2.1','Doloribus perferendis dicta sequi hic repudiandae. Quia qui dolor quo iure et. Sed architecto omnis est in ea commodi vero. Consequatur quis reprehenderit voluptatibus expedita beatae.',0,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(12,'Item-2.2','Ut quidem dolorem cupiditate eaque ea qui. Earum incidunt rerum atque corporis molestiae reiciendis nobis. Ut et est voluptates labore. Quisquam unde consectetur accusantium.',1,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(13,'Item-2.3','Est inventore voluptatibus rem nostrum. Modi sed assumenda laborum cupiditate consequatur odit velit deserunt. Numquam est enim laboriosam.',2,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(14,'Item-2.4','Possimus maiores ea corporis veritatis molestiae corporis. Id ut quas vero ut. Ratione quia nulla reiciendis sit dicta ratione vero.',3,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(15,'Item-2.5','Velit sed ex quo. Tempora animi sapiente et molestias iusto et doloribus.',4,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(16,'Item-2.6','In voluptates accusantium corrupti cum aut neque. Ab fugiat voluptatibus consectetur labore. Laboriosam voluptatem aut dolorem natus earum aut dolores voluptate.',5,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(17,'Item-2.7','Ab quod enim consectetur ut debitis facere eum ea. Aperiam eos laborum cupiditate. Labore non saepe mollitia sed voluptatem nihil voluptatem illo. Rerum deserunt nihil hic quia velit aut magnam.',6,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(18,'Item-2.8','Dolor velit iure placeat in quod natus nulla consequuntur. Qui voluptas vero hic libero. Aut saepe et aliquid dolorem pariatur voluptate et. Explicabo placeat reprehenderit est aut.',7,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(19,'Item-2.9','Dicta quae sit quia ad. Quia saepe vel dolorem repellat ea est. Et accusamus ut libero est fuga nemo vitae. Velit in et molestiae aut iure quo ut. Atque ut quis quisquam rem voluptatem velit.',8,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(20,'Item-2.10','Facere pariatur dolor quas doloremque quas assumenda sed. Est exercitationem adipisci non fugit nihil. Itaque tenetur provident tenetur libero veritatis. Commodi ullam pariatur in impedit excepturi.',9,'2018-03-20 06:00:00',2,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(21,'Item-3.1','Eligendi et provident rerum fugiat aperiam. Quia excepturi quo voluptatibus. Praesentium vero eos velit debitis repudiandae quidem non.',0,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(22,'Item-3.2','Ut sed unde sapiente et ut est odio. Ut fugiat et nihil in et. Voluptatem itaque accusantium unde alias. Id provident harum ut dolorum. Tenetur vero atque illo aliquam accusamus beatae voluptas.',1,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(23,'Item-3.3','Explicabo explicabo nam quam aut. Est error aut nulla qui cumque. Ex quo enim corporis. Velit est voluptas dolores reprehenderit suscipit consectetur error.',2,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(24,'Item-3.4','Tempore minima possimus ut sed. Sit perferendis rerum ut adipisci eos consectetur voluptas. Voluptatem sit architecto eveniet velit odio exercitationem adipisci.',3,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(25,'Item-3.5','Rerum dolores eos molestiae et accusantium voluptatem. Corporis voluptas aliquid perferendis dicta qui quis nostrum atque. Et saepe eos non at inventore.',4,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(26,'Item-3.6','Qui repellat quis illo fugiat quidem dolore officiis. Sed sed at omnis voluptatem laborum hic. Incidunt eius voluptatem corrupti dolorum sed dolor sed.',5,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(27,'Item-3.7','Dolor quia illum et animi labore ut velit. Porro minima vel ea maiores ut delectus. Sapiente unde sit cum suscipit.',6,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(28,'Item-3.8','Quia sunt ea ut et. Deleniti quia illum omnis aut assumenda. Atque magnam beatae ut inventore et minus.',7,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(29,'Item-3.9','Voluptas voluptatem veniam est ex tempore recusandae. Nihil enim ipsum aliquid dolores sed excepturi. Excepturi quibusdam impedit quidem maiores. Sed voluptatem velit architecto saepe ex omnis.',8,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0),(30,'Item-3.10','Voluptates nobis eius tenetur porro aut aut voluptas. Omnis ratione eligendi aspernatur inventore unde ipsum exercitationem. Illo sunt veniam eos non accusantium fugit quas.',9,'2018-03-20 06:00:00',3,'2018-03-20 06:00:00','2017-12-31 17:21:57',0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_12_22_152001_create_my_lists_table',1),(4,'2017_12_22_175203_create_items_table',1),(5,'2017_12_29_160914_add_done_bool_to_items_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_lists`
--

DROP TABLE IF EXISTS `my_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `my_lists_user_id_foreign` (`user_id`),
  CONSTRAINT `my_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_lists`
--

LOCK TABLES `my_lists` WRITE;
/*!40000 ALTER TABLE `my_lists` DISABLE KEYS */;
INSERT INTO `my_lists` VALUES (1,'List-1','Repudiandae ut placeat voluptatem corporis aperiam.',3,9,1,'2017-12-31 11:50:27','2017-12-31 11:50:27'),(2,'List-2','Magni qui doloribus cum ut pariatur necessitatibus voluptatem.',2,8,1,'2017-12-31 11:50:27','2017-12-31 11:50:27'),(3,'List-3','Eos quos recusandae quaerat ut eos.',9,4,1,'2017-12-31 11:50:27','2017-12-31 11:50:27');
/*!40000 ALTER TABLE `my_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@test.com','$2y$10$R4oW5l9UJ3jbfd.DF5W9r.r67JBXI.IsDGgaHtMaVNVXM5AZZJieS',NULL,'2017-12-23 14:53:37','2017-12-23 14:53:37');
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

-- Dump completed on 2017-12-31 20:01:04
