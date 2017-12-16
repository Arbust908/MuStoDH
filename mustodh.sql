CREATE DATABASE  IF NOT EXISTS `music_store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `music_store`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: music_store
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `cuerdas`
--

DROP TABLE IF EXISTS `cuerdas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuerdas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `thubnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cuerdas_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerdas`
--

LOCK TABLES `cuerdas` WRITE;
/*!40000 ALTER TABLE `cuerdas` DISABLE KEYS */;
INSERT INTO `cuerdas` VALUES (1,'recusandae','Distinctio dolorem ex commodi voluptatem qui ex accusantium. Vitae voluptate quia incidunt sint fugit. Sequi molestias ut ea ut molestiae.',3457.00,'at','2017-12-12 00:02:11','2017-12-12 00:02:11'),(2,'placeat','Consequatur et omnis assumenda ut omnis. Rerum quas nulla molestiae mollitia non quia. Voluptate repellendus cumque tenetur quia. Ea est libero recusandae magnam cupiditate.',3283.06,'quo','2017-12-12 00:02:11','2017-12-12 00:02:11'),(3,'possimus','Perspiciatis et quasi nostrum voluptas nihil dicta. Placeat possimus corrupti in dolorem quia iure. Delectus illum veniam suscipit aut. Quas odit ut aut saepe.',2062.65,'magnam','2017-12-12 00:02:11','2017-12-12 00:02:11'),(4,'quidem','Eaque officiis veniam eos. Sunt et dolor est qui tempora accusamus quam. Sed ut voluptatum mollitia.',1190.96,'autem','2017-12-12 00:02:11','2017-12-12 00:02:11'),(7,'a','Ad impedit dolorum sint consequatur veniam nihil blanditiis. Ad cumque sunt magni ut. Porro animi provident est. Fugiat expedita qui enim cumque odit iusto.',2806.90,'et','2017-12-12 00:02:11','2017-12-12 00:02:11'),(8,'saepe','Qui adipisci numquam consequatur praesentium. Rerum quaerat cumque harum. Vel molestiae dignissimos fugiat doloribus et. Occaecati voluptatem enim temporibus eaque.',3408.14,'delectus','2017-12-12 00:02:11','2017-12-12 00:02:11'),(12,'et','Culpa aliquam quo iure eum beatae quia. Expedita porro et officiis possimus ut dolores. Reprehenderit aut iste sit consequatur.',1696.02,'laboriosam','2017-12-12 00:02:12','2017-12-12 00:02:12'),(13,'sapiente','Et quasi velit fugiat illum non et blanditiis. Non occaecati ab commodi in et odio et. Vitae praesentium unde dolorem possimus laboriosam sed.',263.40,'error','2017-12-12 00:02:12','2017-12-12 00:02:12'),(14,'dolorem','Consectetur nesciunt vitae dolor nesciunt autem. Assumenda ea quo hic molestias fugiat sed adipisci. Omnis sequi sed ea qui accusantium harum qui.',5581.18,'recusandae','2017-12-12 00:02:12','2017-12-12 00:02:12'),(15,'praesentium','Ducimus ex quibusdam cumque in nemo praesentium laborum. Minima ut vitae beatae incidunt voluptate qui. Est architecto molestiae ut esse.',5417.15,'quisquam','2017-12-12 00:02:12','2017-12-12 00:02:12'),(16,'veniam','Labore non voluptatem ab molestias. Voluptas deserunt enim itaque rem consectetur sint maxime. In sed sint provident quibusdam qui quo hic. Ex repellendus in et sed eum cumque expedita numquam.',4215.79,'consequatur','2017-12-12 00:02:12','2017-12-12 00:02:12'),(17,'porro','Ut dolorum ullam nam eos atque sequi. Aperiam modi dolor adipisci aliquid dolorum laboriosam. Ut velit fugiat maiores magni. Cupiditate veniam ut voluptatem placeat.',2599.56,'pariatur','2017-12-12 00:02:12','2017-12-12 00:02:12'),(18,'sequi','Recusandae minus et nihil sint pariatur at. Repellat accusamus inventore dolor. Soluta velit aut aut nobis blanditiis nisi dolore. Dolorem vitae harum aut officiis ut autem.',2130.60,'officiis','2017-12-12 00:02:12','2017-12-12 00:02:12'),(19,'maiores','Velit eum illum non perspiciatis quasi. Rerum quia maxime repudiandae. Est veniam aut quae non recusandae tempora non.',3941.05,'soluta','2017-12-12 00:02:12','2017-12-12 00:02:12'),(20,'consequatur','Totam eaque mollitia perferendis saepe fuga illum. Autem voluptate expedita reiciendis qui qui. Consequuntur itaque occaecati eaque eius.',4951.05,'aliquam','2017-12-12 00:02:12','2017-12-12 00:02:12'),(21,'vel','Numquam dolorum odio eius rem. Earum reiciendis laborum voluptates est aliquam ut aut. Velit et dolorem sed esse ut cumque. Laborum debitis illo rerum harum nesciunt voluptates nobis. Laboriosam et omnis est provident culpa.',3255.96,'assumenda','2017-12-12 00:02:12','2017-12-12 00:02:12'),(22,'corrupti','Quidem culpa vero non voluptas nobis eligendi. Nemo accusamus cum id sint tenetur quia commodi. Aut nostrum reprehenderit dolorem maxime explicabo dolores voluptas reprehenderit.',2402.13,'in','2017-12-12 00:02:12','2017-12-12 00:02:12'),(23,'repellendus','Totam facere iste dolorum ducimus voluptatum. Et fugit aut asperiores autem. Aut ut exercitationem accusamus porro quos consequatur.',3662.13,'sed','2017-12-12 00:02:12','2017-12-12 00:02:12'),(24,'est','Fugit et non totam quos eveniet est nam. Veniam magni et pariatur laudantium illum. Rerum reiciendis aperiam omnis voluptates velit.',3008.70,'consequatur','2017-12-12 00:02:12','2017-12-12 00:02:12'),(25,'eveniet','Quis eveniet enim explicabo et sapiente. Inventore et iste ipsum molestias. Hic aut quia placeat ea. Sunt praesentium autem magni enim.',3235.01,'deserunt','2017-12-12 00:02:12','2017-12-12 00:02:12'),(26,'ratione','Eaque dolor id ea vel beatae. Asperiores suscipit fuga dolor eum voluptas modi ea amet.',850.42,'quod','2017-12-12 00:02:12','2017-12-12 00:02:12'),(27,'hic','Harum deleniti sunt tenetur ea pariatur assumenda. Sint cum ipsam nisi quasi a et voluptatem dicta. Repudiandae velit qui adipisci aspernatur. Ut sit veniam omnis illo.',345.50,'nesciunt','2017-12-12 00:02:12','2017-12-12 00:02:12'),(28,'aliquid','Quidem delectus unde reiciendis quo et aliquid. Ut voluptas repellat ut eos aspernatur tempora possimus. Incidunt saepe occaecati ut ipsa.',4139.17,'non','2017-12-12 00:02:12','2017-12-12 00:02:12'),(29,'voluptas','Est ex sit sit voluptas et quidem nam eveniet. Et aut omnis magni aut quasi. Totam nihil odio corporis. Saepe impedit ab dolor inventore sunt perferendis illum.',338.68,'provident','2017-12-12 00:02:12','2017-12-12 00:02:12'),(30,'enim','Voluptas dolore amet expedita est rerum. Repudiandae officia velit ea. In molestiae dolorem velit sequi. Occaecati voluptatibus enim labore voluptas consequuntur impedit laboriosam nam.',1601.00,'aut','2017-12-12 00:02:12','2017-12-12 00:02:12'),(31,'neque','Nisi consequatur sed ea aut quis repellat labore. Autem et reprehenderit eligendi repellendus natus eum nobis. Nemo necessitatibus quasi sed nostrum architecto nam deserunt.',2712.20,'atque','2017-12-12 00:02:12','2017-12-12 00:02:12'),(32,'nesciunt','Molestiae animi praesentium enim dolorum. Iste iusto sunt sequi occaecati expedita quaerat. Aperiam est atque impedit.',3270.80,'corporis','2017-12-12 00:02:12','2017-12-12 00:02:12'),(33,'quibusdam','Sunt voluptas quos quos corporis suscipit. Nostrum hic impedit vel vel quisquam placeat minima qui. Veritatis impedit voluptas soluta provident.',1373.71,'ratione','2017-12-12 00:02:13','2017-12-12 00:02:13'),(34,'unde','Aspernatur ab dolorum saepe quia hic vitae. Consequatur aut enim eum veritatis. Ea adipisci alias libero iusto. Repellendus dolorem debitis commodi occaecati saepe doloremque.',2448.80,'reprehenderit','2017-12-12 00:02:13','2017-12-12 00:02:13'),(35,'soluta','Voluptatibus magni est assumenda corrupti. Ducimus ut voluptatem corrupti quas molestiae consequatur voluptates. Culpa incidunt autem eius accusantium cupiditate. Non iusto est et magni.',2790.90,'sequi','2017-12-12 00:02:13','2017-12-12 00:02:13'),(36,'quod','Totam minima ea eum odio rerum quidem. Iure vitae ratione explicabo dolores molestiae accusamus. Atque ipsum in enim facilis quam sapiente. Tempora quia rerum quo ipsum qui fuga tempora.',301.97,'voluptas','2017-12-12 00:02:13','2017-12-12 00:02:13'),(37,'debitis','Tempora necessitatibus exercitationem deleniti consectetur sunt ut. Dignissimos consequatur tempora et. Aut ea laborum temporibus. Sequi cupiditate labore voluptas cupiditate ut rem molestias.',806.90,'eaque','2017-12-12 00:02:13','2017-12-12 00:02:13'),(38,'ducimus','Facilis iste nostrum reiciendis sequi porro quas ut. Qui laudantium similique non repellat autem. Error non sed ea aut exercitationem ex voluptate. Neque quia et magni. Et quasi consequatur expedita expedita.',3212.00,'quis','2017-12-12 00:02:13','2017-12-12 00:02:13'),(39,'necessitatibus','Quis cupiditate cupiditate perferendis voluptas hic eaque. Et fugit dolorem laboriosam officiis. Ad quia dignissimos sapiente.',3024.23,'et','2017-12-12 00:02:13','2017-12-12 00:02:13'),(40,'laudantium','Velit quaerat est esse quia nihil. Est at sed et error. Saepe omnis aperiam magnam sapiente tenetur enim aperiam.',2178.50,'sapiente','2017-12-12 00:02:13','2017-12-12 00:02:13'),(41,'cumque','Fugit aut totam nostrum impedit neque exercitationem beatae. Sit debitis labore necessitatibus optio molestiae sunt. Eius est consequatur fugit possimus. Sit et deleniti distinctio nesciunt amet minima eum.',163.17,'qui','2017-12-12 00:02:13','2017-12-12 00:02:13'),(42,'non','Quo perspiciatis ut veniam perspiciatis enim quae eius adipisci. Aspernatur ut ut quibusdam quia. Eum modi est enim alias. Aspernatur nesciunt sequi incidunt.',330.91,'occaecati','2017-12-12 00:02:13','2017-12-12 00:02:13'),(43,'voluptatum','Quibusdam provident aut dolorum ut illo voluptate molestiae. Qui dolorum voluptatum molestiae cumque quia occaecati.',958.99,'rem','2017-12-12 00:02:13','2017-12-12 00:02:13'),(44,'ad','Voluptates odio sint voluptatem voluptate unde aut harum voluptate. Rerum sed voluptates iusto perspiciatis ratione earum deserunt. Sed officia et est odit veritatis consequatur delectus aut. Assumenda qui vel adipisci natus.',5222.42,'et','2017-12-12 00:02:13','2017-12-12 00:02:13'),(45,'odio','Excepturi sit ut iste debitis harum quo. Aut quis consequuntur laborum officiis alias magnam. Distinctio in doloribus blanditiis modi.',2709.62,'pariatur','2017-12-12 00:02:13','2017-12-12 00:02:13'),(46,'culpa','Illum deleniti asperiores sint voluptatum qui aliquid dignissimos. Corrupti hic commodi omnis. Aspernatur et ipsa quo eligendi neque. Quidem ea magni soluta tempore. Exercitationem voluptates voluptate laboriosam quaerat aut est.',1134.99,'deserunt','2017-12-12 00:02:13','2017-12-12 00:02:13'),(47,'nihil','Voluptates dolorum nisi vero beatae ipsa quaerat sit. Qui minus et omnis occaecati consequatur. Adipisci quisquam libero ut deleniti unde est. Magnam omnis eos est. Ipsam debitis velit magni nulla aperiam.',3537.52,'nesciunt','2017-12-12 00:02:13','2017-12-12 00:02:13'),(48,'eos','Eos quas et repellendus sapiente fugiat maiores est. Eos libero laudantium et minima est soluta est est.',3340.63,'eos','2017-12-12 00:02:13','2017-12-12 00:02:13'),(49,'vitae','Hic quasi dolor molestiae saepe. Numquam quisquam blanditiis molestias ad fuga. A tenetur harum quis assumenda enim ab. Et quia ea cumque vel error esse vel.',1471.02,'amet','2017-12-12 00:02:13','2017-12-12 00:02:13'),(50,'quia','Doloribus est et fugiat voluptatem nobis suscipit totam fugit. Consequatur recusandae dolore tempore sapiente dolorum. Sed voluptas impedit repudiandae illo consequuntur architecto eius. Id repellat facere accusantium corrupti et assumenda corporis. Et neque id quibusdam illo.',5863.66,'sequi','2017-12-12 00:02:13','2017-12-12 00:02:13');
/*!40000 ALTER TABLE `cuerdas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2017_12_05_193723_create_users_table',1),(3,'2017_12_11_203847_create_cuerdas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gonzalo Perez','gonzapc1999@gmail.com','$2y$10$.T9HVBvUzBA49EWRLyQ0FeEJZhFZJXz84LqFY8XQrmtJP3veguLf2','UNvfjpaJ0X5tzh49mVA5w9dFbJ47GQFW9aimLuN1vU6dbXeij581v35EUlj6','2017-12-12 00:24:27','2017-12-12 00:24:27'),(2,'ensalada','ensalada@chilenoputo.com','$2y$10$vA0iAiTtN8Q2489q.I1cA.8MJOHEyirb93M2gaaTLLIr9UMntrU2S','s9RAVJC04ouYGpl6Su3x8A9Tk6JrREAXaa338XWLWBvqpGasiZJxYihdYxGI','2017-12-14 06:47:30','2017-12-14 06:47:30');
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

-- Dump completed on 2017-12-16 14:46:36
