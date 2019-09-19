-- MySQL dump 10.13  Distrib 5.5.25, for Win64 (x86)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) DEFAULT NULL,
  `bemail` varchar(50) DEFAULT NULL,
  `bpassword` varchar(20) DEFAULT NULL,
  `bphoneno` varchar(20) DEFAULT NULL,
  `bbranch` varchar(30) DEFAULT NULL,
  `bheadoff` varchar(30) DEFAULT NULL,
  `baccstatus` varchar(20) DEFAULT NULL,
  `brname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `cgender` varchar(20) DEFAULT NULL,
  `cemail` varchar(50) DEFAULT NULL,
  `cpassword` varchar(50) DEFAULT NULL,
  `caddress` varchar(100) DEFAULT NULL,
  `cphoneno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientbankacc`
--

DROP TABLE IF EXISTS `clientbankacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientbankacc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accnum` varchar(50) DEFAULT NULL,
  `accbank` varchar(50) DEFAULT NULL,
  `accholder` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `cpassword` varchar(50) DEFAULT NULL,
  `transpwd` varchar(50) DEFAULT NULL,
  `cemail` varchar(50) DEFAULT NULL,
  `balance` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientbankacc`
--

LOCK TABLES `clientbankacc` WRITE;
/*!40000 ALTER TABLE `clientbankacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientbankacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currentbank`
--

DROP TABLE IF EXISTS `currentbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currentbank` (
  `bname` varchar(50) DEFAULT NULL,
  `const` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentbank`
--

LOCK TABLES `currentbank` WRITE;
/*!40000 ALTER TABLE `currentbank` DISABLE KEYS */;
INSERT INTO `currentbank` VALUES ('sbi','const');
/*!40000 ALTER TABLE `currentbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currentclient`
--

DROP TABLE IF EXISTS `currentclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currentclient` (
  `cemail` varchar(50) DEFAULT NULL,
  `const` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentclient`
--

LOCK TABLES `currentclient` WRITE;
/*!40000 ALTER TABLE `currentclient` DISABLE KEYS */;
INSERT INTO `currentclient` VALUES ('pasunuri.sri@gmail.com','const');
/*!40000 ALTER TABLE `currentclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temptrans`
--

DROP TABLE IF EXISTS `temptrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temptrans` (
  `tdate` varchar(100) DEFAULT NULL,
  `debitaccnum` varchar(100) DEFAULT NULL,
  `debitaccbank` varchar(100) DEFAULT NULL,
  `debitcemail` varchar(100) DEFAULT NULL,
  `debitaccholder` varchar(100) DEFAULT NULL,
  `creditaccnum` varchar(100) DEFAULT NULL,
  `creditaccbank` varchar(100) DEFAULT NULL,
  `creditcemail` varchar(100) DEFAULT NULL,
  `creditaccholder` varchar(100) DEFAULT NULL,
  `const` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temptrans`
--

LOCK TABLES `temptrans` WRITE;
/*!40000 ALTER TABLE `temptrans` DISABLE KEYS */;
INSERT INTO `temptrans` VALUES ('2018-09-26','2222','sbi','pasunuri.sri@gmail.com','srkanth','1111','sbi','bandarimaheshreddy@gmail.com','mahesh reddy','const','20000','waiting');
/*!40000 ALTER TABLE `temptrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debitaccnum` varchar(50) DEFAULT NULL,
  `debitaccholder` varchar(50) DEFAULT NULL,
  `debitcemail` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `creditaccnum` varchar(50) DEFAULT NULL,
  `creditaccholder` varchar(50) DEFAULT NULL,
  `creditcemail` varchar(50) DEFAULT NULL,
  `creditaccbank` varchar(50) DEFAULT NULL,
  `debitaccbank` varchar(50) DEFAULT NULL,
  `tdate` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-01 11:04:47
