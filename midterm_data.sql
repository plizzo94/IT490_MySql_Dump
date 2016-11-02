-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: user_info
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `currency` varchar(3) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `meta_data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange`
--

DROP TABLE IF EXISTS `exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange` (
  `currency_1` varchar(3) NOT NULL,
  `currency_2` varchar(3) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange`
--

LOCK TABLES `exchange` WRITE;
/*!40000 ALTER TABLE `exchange` DISABLE KEYS */;
INSERT INTO `exchange` VALUES ('EUR','USD','1.105889',1),('EUR','AUD','1.444416',2),('EUR','CHF','1.081297',3),('EUR','CAD','1.480907',4),('EUR','GBP','0.9035',5),('EUR','INR','73.76793',6),('EUR','JPY','115.213381',7),('EUR','MXN','21.161714',8),('EUR','RUB','70.007774',9),('EUR','CNY','7.483955',10),('USD','AUD','1.306113',11),('USD','CHF','0.977763',12),('USD','CAD','1.33911',13),('USD','GBP','0.81699',14),('USD','INR','66.704651',15),('USD','JPY','104.1817',16),('USD','MXN','19.13548',17),('USD','RUB','63.30453',18),('USD','CNY','6.767366',19),('AUD','CHF','0.748605',20),('AUD','CAD','1.025264',21),('AUD','GBP','0.625512',22),('AUD','INR','51.071118',23),('AUD','JPY','79.764691',24),('AUD','MXN','14.650708',25),('AUD','RUB','48.467881',26),('AUD','CNY','5.181302',27),('CHF','CAD','1.369565',28),('CHF','GBP','0.835571',29),('CHF','INR','68.221697',30),('CHF','JPY','106.551076',31),('CHF','MXN','19.570673',32),('CHF','RUB','64.744248',33),('CHF','CNY','6.921274',34),('CAD','GBP','0.610099',35),('CAD','INR','49.812675',36),('CAD','JPY','77.79921',37),('CAD','MXN','14.2897',38),('CAD','RUB','47.273585',39),('CAD','CNY','5.05363',40),('GBP','INR','81.646839',41),('GBP','JPY','127.518941',42),('GBP','MXN','23.421927',43),('GBP','RUB','77.485073',44),('GBP','CNY','8.283291',45),('INR','JPY','1.561836',46),('INR','MXN','0.286869',47),('INR','RUB','0.949027',48),('INR','CNY','0.101453',49),('JPY','MXN','0.183674',50),('JPY','RUB','0.607636',51),('JPY','CNY','0.064957',52),('MXN','RUB','3.308228',53),('MXN','CNY','0.353655',54),('RUB','CNY','0.106902',55);
/*!40000 ALTER TABLE `exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_backup`
--

DROP TABLE IF EXISTS `exchange_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_backup` (
  `currency_1` varchar(3) NOT NULL,
  `currency_2` varchar(3) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_backup`
--

LOCK TABLES `exchange_backup` WRITE;
/*!40000 ALTER TABLE `exchange_backup` DISABLE KEYS */;
INSERT INTO `exchange_backup` VALUES ('EUR','USD','1.096311',1),('EUR','AUD','1.441279',2),('EUR','CHF','1.084299',3),('EUR','CAD','1.468928',4),('EUR','GBP','0.897818',5),('EUR','INR','73.157944',6),('EUR','JPY','115.147509',7),('EUR','MXN','20.697002',8),('EUR','RUB','69.385233',9),('EUR','CNY','7.428833',10),('USD','AUD','1.314663',11),('USD','CHF','0.989043',12),('USD','CAD','1.339883',13),('USD','GBP','0.818945',14),('USD','INR','66.731019',15),('USD','JPY','105.0318',16),('USD','MXN','18.87877',17),('USD','RUB','63.28974',18),('USD','CNY','6.77621',19),('AUD','CHF','0.752317',20),('AUD','CAD','1.019184',21),('AUD','GBP','0.622932',22),('AUD','INR','50.75903',23),('AUD','JPY','79.892566',24),('AUD','MXN','14.360159',25),('AUD','RUB','48.141417',26),('AUD','CNY','5.154332',27),('CHF','CAD','1.354727',28),('CHF','GBP','0.828018',29),('CHF','INR','67.470291',30),('CHF','JPY','106.195383',31),('CHF','MXN','19.087916',32),('CHF','RUB','63.990888',33),('CHF','CNY','6.851279',34),('CAD','GBP','0.611206',35),('CAD','INR','49.803616',36),('CAD','JPY','78.388785',37),('CAD','MXN','14.089865',38),('CAD','RUB','47.235274',39),('CAD','CNY','5.057315',40),('GBP','INR','81.484128',41),('GBP','JPY','128.252569',42),('GBP','MXN','23.052549',43),('GBP','RUB','77.28204',44),('GBP','CNY','8.274316',45),('INR','JPY','1.573958',46),('INR','MXN','0.282908',47),('INR','RUB','0.948431',48),('INR','CNY','0.101545',49),('JPY','MXN','0.179743',50),('JPY','RUB','0.602577',51),('JPY','CNY','0.064516',52),('MXN','RUB','3.352429',53),('MXN','CNY','0.358933',54),('RUB','CNY','0.107066',55),('EUR','USD','1.105705',56),('EUR','AUD','1.44495',57),('EUR','CHF','1.08137',58),('EUR','CAD','1.480989',59),('EUR','GBP','0.903334',60),('EUR','INR','73.783735',61),('EUR','JPY','115.286709',62),('EUR','MXN','21.159819',63),('EUR','RUB','69.972391',64),('EUR','CNY','7.482116',65),('USD','AUD','1.306813',66),('USD','CHF','0.977991',67),('USD','CAD','1.339406',68),('USD','GBP','0.816975',69),('USD','INR','66.73001',70),('USD','JPY','104.2653',71),('USD','MXN','19.13694',72),('USD','RUB','63.28303',73),('USD','CNY','6.766826',74),('AUD','CHF','0.748379',75),('AUD','CAD','1.024941',76),('AUD','GBP','0.625166',77),('AUD','INR','51.063167',78),('AUD','JPY','79.785937',79),('AUD','MXN','14.643977',80),('AUD','RUB','48.425467',81),('AUD','CNY','5.178113',82),('CHF','CAD','1.369548',83),('CHF','GBP','0.83536',84),('CHF','INR','68.231722',85),('CHF','JPY','106.611717',86),('CHF','MXN','19.567603',87),('CHF','RUB','64.70717',88),('CHF','CNY','6.919109',89),('CAD','GBP','0.609953',90),('CAD','INR','49.8206',91),('CAD','JPY','77.844433',92),('CAD','MXN','14.287632',93),('CAD','RUB','47.247086',94),('CAD','CNY','5.05211',95),('GBP','INR','81.679378',96),('GBP','JPY','127.623611',97),('GBP','MXN','23.424144',98),('GBP','RUB','77.460179',99),('GBP','CNY','8.282782',100),('INR','JPY','1.562495',101),('INR','MXN','0.286782',102),('INR','RUB','0.948344',103),('INR','CNY','0.101406',104),('JPY','MXN','0.183541',105),('JPY','RUB','0.606942',106),('JPY','CNY','0.0649',107),('MXN','RUB','3.306852',108),('MXN','CNY','0.3536',109),('RUB','CNY','0.10693',110),('EUR','USD','1.105889',111),('EUR','AUD','1.444416',112),('EUR','CHF','1.081297',113),('EUR','CAD','1.480907',114),('EUR','GBP','0.9035',115),('EUR','INR','73.76793',116),('EUR','JPY','115.213381',117),('EUR','MXN','21.161714',118),('EUR','RUB','70.007774',119),('EUR','CNY','7.483955',120),('USD','AUD','1.306113',121),('USD','CHF','0.977763',122),('USD','CAD','1.33911',123),('USD','GBP','0.81699',124),('USD','INR','66.704651',125),('USD','JPY','104.1817',126),('USD','MXN','19.13548',127),('USD','RUB','63.30453',128),('USD','CNY','6.767366',129),('AUD','CHF','0.748605',130),('AUD','CAD','1.025264',131),('AUD','GBP','0.625512',132),('AUD','INR','51.071118',133),('AUD','JPY','79.764691',134),('AUD','MXN','14.650708',135),('AUD','RUB','48.467881',136),('AUD','CNY','5.181302',137),('CHF','CAD','1.369565',138),('CHF','GBP','0.835571',139),('CHF','INR','68.221697',140),('CHF','JPY','106.551076',141),('CHF','MXN','19.570673',142),('CHF','RUB','64.744248',143),('CHF','CNY','6.921274',144),('CAD','GBP','0.610099',145),('CAD','INR','49.812675',146),('CAD','JPY','77.79921',147),('CAD','MXN','14.2897',148),('CAD','RUB','47.273585',149),('CAD','CNY','5.05363',150),('GBP','INR','81.646839',151),('GBP','JPY','127.518941',152),('GBP','MXN','23.421927',153),('GBP','RUB','77.485073',154),('GBP','CNY','8.283291',155),('INR','JPY','1.561836',156),('INR','MXN','0.286869',157),('INR','RUB','0.949027',158),('INR','CNY','0.101453',159),('JPY','MXN','0.183674',160),('JPY','RUB','0.607636',161),('JPY','CNY','0.064957',162),('MXN','RUB','3.308228',163),('MXN','CNY','0.353655',164),('RUB','CNY','0.106902',165);
/*!40000 ALTER TABLE `exchange_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabby`
--

DROP TABLE IF EXISTS `gabby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gabby` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabby`
--

LOCK TABLES `gabby` WRITE;
/*!40000 ALTER TABLE `gabby` DISABLE KEYS */;
INSERT INTO `gabby` VALUES (1,'USD','35'),(2,'INR','333.65005'),(3,'AUD','13.06113');
/*!40000 ALTER TABLE `gabby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','cheesecake'),(2,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','bob'),(3,'d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1','test1'),(4,'d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1','sal'),(5,'d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1','tom'),(6,'d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1','gabby');
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

-- Dump completed on 2016-11-01 20:06:52
