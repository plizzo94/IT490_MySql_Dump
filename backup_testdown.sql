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
-- Table structure for table `bob`
--

DROP TABLE IF EXISTS `bob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bob` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bob`
--

LOCK TABLES `bob` WRITE;
/*!40000 ALTER TABLE `bob` DISABLE KEYS */;
INSERT INTO `bob` VALUES (1,'USD','50.000');
/*!40000 ALTER TABLE `bob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheesecake`
--

DROP TABLE IF EXISTS `cheesecake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheesecake` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheesecake`
--

LOCK TABLES `cheesecake` WRITE;
/*!40000 ALTER TABLE `cheesecake` DISABLE KEYS */;
INSERT INTO `cheesecake` VALUES (1,'USD','50.000');
/*!40000 ALTER TABLE `cheesecake` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `exchange` VALUES ('EUR','USD','1.096311',1),('EUR','AUD','1.441279',2),('EUR','CHF','1.084299',3),('EUR','CAD','1.468928',4),('EUR','GBP','0.897818',5),('EUR','INR','73.157944',6),('EUR','JPY','115.147509',7),('EUR','MXN','20.697002',8),('EUR','RUB','69.385233',9),('EUR','CNY','7.428833',10),('USD','AUD','1.314663',11),('USD','CHF','0.989043',12),('USD','CAD','1.339883',13),('USD','GBP','0.818945',14),('USD','INR','66.731019',15),('USD','JPY','105.0318',16),('USD','MXN','18.87877',17),('USD','RUB','63.28974',18),('USD','CNY','6.77621',19),('AUD','CHF','0.752317',20),('AUD','CAD','1.019184',21),('AUD','GBP','0.622932',22),('AUD','INR','50.75903',23),('AUD','JPY','79.892566',24),('AUD','MXN','14.360159',25),('AUD','RUB','48.141417',26),('AUD','CNY','5.154332',27),('CHF','CAD','1.354727',28),('CHF','GBP','0.828018',29),('CHF','INR','67.470291',30),('CHF','JPY','106.195383',31),('CHF','MXN','19.087916',32),('CHF','RUB','63.990888',33),('CHF','CNY','6.851279',34),('CAD','GBP','0.611206',35),('CAD','INR','49.803616',36),('CAD','JPY','78.388785',37),('CAD','MXN','14.089865',38),('CAD','RUB','47.235274',39),('CAD','CNY','5.057315',40),('GBP','INR','81.484128',41),('GBP','JPY','128.252569',42),('GBP','MXN','23.052549',43),('GBP','RUB','77.28204',44),('GBP','CNY','8.274316',45),('INR','JPY','1.573958',46),('INR','MXN','0.282908',47),('INR','RUB','0.948431',48),('INR','CNY','0.101545',49),('JPY','MXN','0.179743',50),('JPY','RUB','0.602577',51),('JPY','CNY','0.064516',52),('MXN','RUB','3.352429',53),('MXN','CNY','0.358933',54),('RUB','CNY','0.107066',55);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_backup`
--

LOCK TABLES `exchange_backup` WRITE;
/*!40000 ALTER TABLE `exchange_backup` DISABLE KEYS */;
INSERT INTO `exchange_backup` VALUES ('EUR','USD','1.096311',1),('EUR','AUD','1.441279',2),('EUR','CHF','1.084299',3),('EUR','CAD','1.468928',4),('EUR','GBP','0.897818',5),('EUR','INR','73.157944',6),('EUR','JPY','115.147509',7),('EUR','MXN','20.697002',8),('EUR','RUB','69.385233',9),('EUR','CNY','7.428833',10),('USD','AUD','1.314663',11),('USD','CHF','0.989043',12),('USD','CAD','1.339883',13),('USD','GBP','0.818945',14),('USD','INR','66.731019',15),('USD','JPY','105.0318',16),('USD','MXN','18.87877',17),('USD','RUB','63.28974',18),('USD','CNY','6.77621',19),('AUD','CHF','0.752317',20),('AUD','CAD','1.019184',21),('AUD','GBP','0.622932',22),('AUD','INR','50.75903',23),('AUD','JPY','79.892566',24),('AUD','MXN','14.360159',25),('AUD','RUB','48.141417',26),('AUD','CNY','5.154332',27),('CHF','CAD','1.354727',28),('CHF','GBP','0.828018',29),('CHF','INR','67.470291',30),('CHF','JPY','106.195383',31),('CHF','MXN','19.087916',32),('CHF','RUB','63.990888',33),('CHF','CNY','6.851279',34),('CAD','GBP','0.611206',35),('CAD','INR','49.803616',36),('CAD','JPY','78.388785',37),('CAD','MXN','14.089865',38),('CAD','RUB','47.235274',39),('CAD','CNY','5.057315',40),('GBP','INR','81.484128',41),('GBP','JPY','128.252569',42),('GBP','MXN','23.052549',43),('GBP','RUB','77.28204',44),('GBP','CNY','8.274316',45),('INR','JPY','1.573958',46),('INR','MXN','0.282908',47),('INR','RUB','0.948431',48),('INR','CNY','0.101545',49),('JPY','MXN','0.179743',50),('JPY','RUB','0.602577',51),('JPY','CNY','0.064516',52),('MXN','RUB','3.352429',53),('MXN','CNY','0.358933',54),('RUB','CNY','0.107066',55);
/*!40000 ALTER TABLE `exchange_backup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','cheesecake'),(2,'5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','bob');
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

-- Dump completed on 2016-10-31 15:19:23
