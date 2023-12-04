-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: games
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `games`
--

DROP DATABASE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE DATABASE IF NOT EXISTS 'games;'

CREATE TABLE `games` (
  `id` binary(16) NOT NULL DEFAULT (unhex(replace(uuid(),_utf8mb3'-',_utf8mb4''))),
  `title` varchar(128) NOT NULL,
  `year` year NOT NULL,
  `developer` varchar(70) DEFAULT NULL,
  `poster` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (_binary '��\\+��\�','The Legend of Zelda: Breath of the Wild',2017,'Nintendo','https://zelda.nintendo.com/breath-of-the-wild/assets/img/media/wallpaper-1-thumb.jpg'),(_binary '��d��\�','Red Dead Redemption 2',2018,'Rockstar Games','https://media-rockstargames-com.akamaized.net/mfe6/prod/__common/img/412c4e81bfb9766775423d6ef4d344c9.jpg'),(_binary '��eL��\�','The Witcher 3: Wild Hunt',2015,'CD Projekt','https://cdn-s-thewitcher.cdprojektred.com/witcher3/backgrounds/characters-geralt-1.jpg'),(_binary '��fU��\�','Fortnite',2017,'Epic Games','https://cdn2.unrealengine.com/subs-drakonsteel-announcewebblog-desktopheader-1920x1080-1920x1080-54f130f2359a.jpg'),(_binary '��g��\�','Minecraft',2011,'Mojang','https://www.minecraft.net/content/dam/minecraft/home/home-hero-1200x600.jpg'),(_binary '��gЈ��','Overwatch',2016,'Blizzard Entertainment','https://blz-contentstack-images.akamaized.net/v3/assets/blt2477dcaf4ebd440c/blt84ca46ba2606a5ed/6504ca8bf50ed52bc6eb1cc8/Heroes.jpg?format=webply&quality=90'),(_binary '��h���','Assassin\'s Creed Odyssey',2018,'Ubisoft','https://staticctf.ubisoft.com/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/67R940C1t8mi1aNdFXbAdX/0e62c770278cdec76ee4da95c2defa8f/storycreatormode_header_351164.jpg'),(_binary '��iD��\�','FIFA 22',2021,'EA Sports','https://media.tycsports.com/files/2021/08/27/324585/fifa-22-demo_862x485.jpg'),(_binary '��iꈜ�B','Stardew Valley',2016,'ConcernedApe','https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2016/04/583448-stardew-valley-ha-vendido-millon-copias-dos-meses.jpg'),(_binary '��j���','Super Mario Odyssey',2017,'Nintendo','https://i0.wp.com/losreyesdelmando.com/wp-content/uploads/2017/11/super-mario-odyssey-1.jpg'),(_binary '��kE��\�','Cyberpunk 2077',2020,'CD Projekt','https://i.blogs.es/b109e9/cyberpunk2077-johnny-v-rgb_en/1366_2000.jpg'),(_binary '��l��\�','Rocket League',2015,'Psyonix','https://rocketleague.media.zestyio.com/rl_s12_core_16-9_rush.jpg'),(_binary '��l؈��','League of Legends',2009,'Riot Games','https://prod.assets.earlygamecdn.com/images/League-of-Legends-Logo.jpg'),(_binary '��m���','Genshin Impact',2020,'miHoYo','https://www.mundodeportivo.com/alfabeta/hero/2020/09/genshin-impact.jpg'),(_binary '��o��\�','Animal Crossing: New Horizons',2020,'Nintendo','https://img.asmedia.epimg.net/resizer/0fYBZfyk3BrNq9tmKCfQVzmTecY=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/QY5A7B2J45OFJHQVI6R37JBGFY.jpg'),(_binary '��o���','Hollow Knight',2018,'Team Cherry','https://media.vandal.net/i/1280x720/10-2023/19/202310192349115_5.jpg'),(_binary '��pf��\�','Dark Souls III',2016,'FromSoftware','https://assetsio.reedpopcdn.com/souls-week-revisiting-dark-souls-3-the-dark-souls-3-of-dark-souls-1645011212983.jpg'),(_binary '��q��\�','Among Us',2018,'InnerSloth','https://www.mundodeportivo.com/alfabeta/hero/2020/11/among-us-guia-completa.jpg?width=1200&aspect_ratio=16:9');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_genres`
--

DROP TABLE IF EXISTS `games_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_genres` (
  `game_id` binary(16) NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`game_id`,`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_genres`
--

LOCK TABLES `games_genres` WRITE;
/*!40000 ALTER TABLE `games_genres` DISABLE KEYS */;
INSERT INTO `games_genres` VALUES (_binary '��\\+��\�',58),(_binary '��\\+��\�',59),(_binary '��d��\�',58),(_binary '��d��\�',59),(_binary '��d��\�',60),(_binary '��eL��\�',58),(_binary '��eL��\�',61),(_binary '��eL��\�',71),(_binary '��fU��\�',62),(_binary '��g��\�',58),(_binary '��gЈ��',62),(_binary '��gЈ��',63),(_binary '��h���',58),(_binary '��h���',59),(_binary '��h���',64),(_binary '��iD��\�',65),(_binary '��iD��\�',66),(_binary '��iꈜ�B',65),(_binary '��iꈜ�B',71),(_binary '��j���',58),(_binary '��kE��\�',67),(_binary '��kE��\�',71),(_binary '��l��\�',66),(_binary '��l��\�',68),(_binary '��l؈��',69),(_binary '��m���',58),(_binary '��m���',71),(_binary '��nM��\�',62),(_binary '��o��\�',65),(_binary '��o���',58),(_binary '��o���',70),(_binary '��pf��\�',59),(_binary '��pf��\�',71),(_binary '��q��\�',63),(_binary '��q��\�',72),(_binary '��q���',71),(_binary '��q���',73);
/*!40000 ALTER TABLE `games_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (59,'Acción'),(58,'Aventura'),(67,'Ciencia ficción'),(68,'Conducción'),(66,'Deportes'),(69,'Estrategia'),(61,'Fantasía'),(64,'Histórico'),(70,'Metroidvania'),(63,'Multijugador'),(60,'Mundo abierto'),(71,'RPG'),(62,'Shooter'),(65,'Simulación'),(73,'Simulación social'),(72,'Traición');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 14:21:01
