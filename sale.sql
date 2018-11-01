-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: sale
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUS_CODE` int(11) NOT NULL,
  `CUS_LNAME` varchar(15) NOT NULL,
  `CUS_FNAME` varchar(15) NOT NULL,
  `CUS_INITIAL` char(1) DEFAULT NULL,
  `CUS_AREACODE` char(3) NOT NULL DEFAULT '615',
  `CUS_PHONE` char(8) NOT NULL,
  `CUS_BALANCE` decimal(9,2) DEFAULT '0.00',
  PRIMARY KEY (`CUS_CODE`),
  UNIQUE KEY `CUS_UI1` (`CUS_LNAME`,`CUS_FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (10010,'Ramas','Alfred','A','615','844-2573',0.00),(10011,'Dunne','Leona','K','713','894-1238',0.00),(10012,'Smith','Kathy','W','615','894-2285',345.86),(10013,'Olowski','Paul','F','615','894-2180',536.75),(10014,'Orlando','Myron',NULL,'615','222-1672',0.00),(10015,'O\'Brian','Amy','B','713','442-3381',0.00),(10016,'Brown','James','G','615','297-1228',221.19),(10017,'Williams','George',NULL,'615','290-2556',768.93),(10018,'Farriss','Anne','G','713','382-7185',216.55),(10019,'Smith','Olette','K','615','297-3809',0.00);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMP`
--

DROP TABLE IF EXISTS `EMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMP` (
  `EMP_NUM` int(11) NOT NULL,
  `EMP_TITLE` char(10) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_DOB` datetime DEFAULT NULL,
  `EMP_HIRE_DATE` datetime DEFAULT NULL,
  `EMP_AREACODE` char(3) DEFAULT NULL,
  `EMP_PHONE` char(8) DEFAULT NULL,
  `EMP_MGR` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMP`
--

LOCK TABLES `EMP` WRITE;
/*!40000 ALTER TABLE `EMP` DISABLE KEYS */;
INSERT INTO `EMP` VALUES (100,'Mr.','Kolmycz','George','D','1942-06-15 00:00:00','1985-03-15 00:00:00','615','324-5456',NULL),(101,'Ms.','Lewis','Rhonda','G','1965-03-19 00:00:00','1986-04-25 00:00:00','615','324-4472',100),(102,'Mr.','Vandam','Rhett',NULL,'1958-11-14 00:00:00','1990-12-20 00:00:00','901','675-8993',100),(103,'Ms.','Jones','Anne','M','1974-10-16 00:00:00','1994-08-28 00:00:00','615','898-3456',100),(104,'Mr.','Lange','John','P','1971-11-08 00:00:00','1994-10-20 00:00:00','901','504-4430',105),(105,'Mr.','Williams','Robert','D','1975-03-14 00:00:00','1998-11-08 00:00:00','615','890-3220',NULL),(106,'Mrs.','Smith','Jeanine','K','1968-02-12 00:00:00','1989-01-05 00:00:00','615','324-7883',105),(107,'Mr.','Diante','Jorge','D','1974-08-21 00:00:00','1994-07-02 00:00:00','615','890-4567',105),(108,'Mr.','Wiesenbach','Paul','R','1966-02-14 00:00:00','1992-11-18 00:00:00','615','897-4358',NULL),(109,'Mr.','Smith','George','K','1961-06-18 00:00:00','1989-04-14 00:00:00','901','504-3339',108),(110,'Mrs.','Genkazi','Leighla','W','1970-05-19 00:00:00','1990-12-01 00:00:00','901','569-0093',108),(111,'Mr.','Washington','Rupert','E','1966-01-03 00:00:00','1993-06-21 00:00:00','615','890-4925',105),(112,'Mr.','Johnson','Edward','E','1961-05-14 00:00:00','1983-12-01 00:00:00','615','898-4387',100),(113,'Ms.','Smythe','Melanie','P','1970-09-15 00:00:00','1999-05-11 00:00:00','615','324-9006',105),(114,'Ms.','Brandon','Marie','G','1956-11-02 00:00:00','1979-11-15 00:00:00','901','882-0845',108),(115,'Mrs.','Saranda','Hermine','R','1972-07-25 00:00:00','1993-04-23 00:00:00','615','324-5505',105),(116,'Mr.','Smith','George','A','1965-11-08 00:00:00','1988-12-10 00:00:00','615','890-2984',108);
/*!40000 ALTER TABLE `EMP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_NUM` int(11) NOT NULL,
  `EMP_TITLE` char(10) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_DOB` datetime DEFAULT NULL,
  `EMP_HIRE_DATE` datetime DEFAULT NULL,
  `EMP_YEARS` int(11) DEFAULT NULL,
  `EMP_AREACODE` char(3) DEFAULT NULL,
  `EMP_PHONE` char(8) DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (100,'Mr.','Kolmycz','George','D','1942-06-15 00:00:00','1985-03-15 00:00:00',18,'615','324-5456'),(101,'Ms.','Lewis','Rhonda','G','1965-03-19 00:00:00','1986-04-25 00:00:00',16,'615','324-4472'),(102,'Mr.','Vandam','Rhett',NULL,'1958-11-14 00:00:00','1990-12-20 00:00:00',12,'901','675-8993'),(103,'Ms.','Jones','Anne','M','1974-10-16 00:00:00','1994-08-28 00:00:00',8,'615','898-3456'),(104,'Mr.','Lange','John','P','1971-11-08 00:00:00','1994-10-20 00:00:00',8,'901','504-4430'),(105,'Mr.','Williams','Robert','D','1975-03-14 00:00:00','1998-11-08 00:00:00',4,'615','890-3220'),(106,'Mrs.','Smith','Jeanine','K','1968-02-12 00:00:00','1989-01-05 00:00:00',14,'615','324-7883'),(107,'Mr.','Diante','Jorge','D','1974-08-21 00:00:00','1994-07-02 00:00:00',8,'615','890-4567'),(108,'Mr.','Wiesenbach','Paul','R','1966-02-14 00:00:00','1992-11-18 00:00:00',10,'615','897-4358'),(109,'Mr.','Smith','George','K','1961-06-18 00:00:00','1989-04-14 00:00:00',13,'901','504-3339'),(110,'Mrs.','Genkazi','Leighla','W','1970-05-19 00:00:00','1990-12-01 00:00:00',12,'901','569-0093'),(111,'Mr.','Washington','Rupert','E','1966-01-03 00:00:00','1993-06-21 00:00:00',9,'615','890-4925'),(112,'Mr.','Johnson','Edward','E','1961-05-14 00:00:00','1983-12-01 00:00:00',19,'615','898-4387'),(113,'Ms.','Smythe','Melanie','P','1970-09-15 00:00:00','1999-05-11 00:00:00',3,'615','324-9006'),(114,'Ms.','Brandon','Marie','G','1956-11-02 00:00:00','1979-11-15 00:00:00',23,'901','882-0845'),(115,'Mrs.','Saranda','Hermine','R','1972-07-25 00:00:00','1993-04-23 00:00:00',9,'615','324-5505'),(116,'Mr.','Smith','George','A','1965-11-08 00:00:00','1988-12-10 00:00:00',14,'615','890-2984');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `INV_NUMBER` int(11) NOT NULL,
  `CUS_CODE` int(11) NOT NULL,
  `INV_DATE` datetime NOT NULL,
  PRIMARY KEY (`INV_NUMBER`),
  KEY `INVOICE_CUS_CODE_FK` (`CUS_CODE`),
  CONSTRAINT `INVOICE_CUS_CODE_FK` FOREIGN KEY (`CUS_CODE`) REFERENCES `CUSTOMER` (`CUS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES (1001,10014,'2018-05-16 00:00:00'),(1002,10011,'2018-04-16 00:00:00'),(1003,10012,'2018-03-16 00:00:00'),(1004,10011,'2018-01-17 00:00:00'),(1005,10018,'2018-07-17 00:00:00'),(1006,10014,'2018-08-17 00:00:00'),(1007,10015,'2018-09-17 00:00:00');
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LINE`
--

DROP TABLE IF EXISTS `LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LINE` (
  `INV_NUMBER` int(11) NOT NULL,
  `LINE_NUMBER` decimal(2,0) NOT NULL,
  `P_CODE` varchar(10) NOT NULL,
  `LINE_UNITS` decimal(9,2) NOT NULL DEFAULT '0.00',
  `LINE_PRICE` decimal(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`INV_NUMBER`,`LINE_NUMBER`),
  UNIQUE KEY `LINE_UI1` (`INV_NUMBER`,`P_CODE`),
  KEY `P_CODE` (`P_CODE`),
  CONSTRAINT `LINE_ibfk_1` FOREIGN KEY (`INV_NUMBER`) REFERENCES `INVOICE` (`INV_NUMBER`) ON DELETE CASCADE,
  CONSTRAINT `LINE_ibfk_2` FOREIGN KEY (`P_CODE`) REFERENCES `PRODUCT` (`P_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LINE`
--

LOCK TABLES `LINE` WRITE;
/*!40000 ALTER TABLE `LINE` DISABLE KEYS */;
INSERT INTO `LINE` VALUES (1001,1,'13-Q2/P2',1.00,14.99),(1001,2,'23109-HB',1.00,9.95),(1002,1,'54778-2T',2.00,4.99),(1003,1,'2238/QPD',1.00,38.95),(1003,2,'1546-QQ2',1.00,39.95),(1003,3,'13-Q2/P2',5.00,14.99),(1004,1,'54778-2T',3.00,4.99),(1004,2,'23109-HB',2.00,9.95),(1005,1,'PVC23DRT',12.00,5.87),(1006,1,'SM-18277',3.00,6.99),(1006,2,'2232/QTY',1.00,109.92),(1006,3,'23109-HB',1.00,9.95),(1006,4,'89-WRE-Q',1.00,256.99),(1007,1,'13-Q2/P2',2.00,14.99),(1007,2,'54778-2T',1.00,4.99);
/*!40000 ALTER TABLE `LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `P`
--

DROP TABLE IF EXISTS `P`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `P` (
  `P_CODE` varchar(10) NOT NULL,
  `P_DESCRIPT` varchar(35) NOT NULL,
  `P_INDATE` datetime NOT NULL,
  `P_QOH` int(11) NOT NULL,
  `P_MIN` int(11) NOT NULL,
  `P_PRICE` decimal(8,2) NOT NULL,
  `P_DISCOUNT` decimal(4,2) NOT NULL,
  `V_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`P_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `P`
--

LOCK TABLES `P` WRITE;
/*!40000 ALTER TABLE `P` DISABLE KEYS */;
INSERT INTO `P` VALUES ('11QER/31','Power painter, 15 psi., 3-nozzle','2017-11-03 00:00:00',8,5,109.99,0.00,25595),('13-Q2/P2','7.25-in. pwr. saw blade','2017-12-13 00:00:00',32,15,14.99,0.05,21344),('14-Q1/L3','9.00-in. pwr. saw blade','2017-11-13 00:00:00',18,12,17.49,0.00,21344),('1546-QQ2','Hrd. cloth, 1/4-in., 2x50','2018-01-15 00:00:00',15,8,39.95,0.00,23119),('1558-QW1','Hrd. cloth, 1/2-in., 3x50','2018-01-15 00:00:00',23,5,43.99,0.00,23119),('2232/QTY','B&D jigsaw, 12-in. blade','2017-12-30 00:00:00',8,5,109.92,0.05,24288),('2232/QWE','B&D jigsaw, 8-in. blade','2017-12-24 00:00:00',6,5,99.87,0.05,24288),('2238/QPD','B&D cordless drill, 1/2-in.','2018-01-20 00:00:00',12,5,38.95,0.05,25595),('23109-HB','Claw hammer','2018-01-20 00:00:00',23,10,9.95,0.10,21225),('23114-AA','Sledge hammer, 12 lb.','2018-01-02 00:00:00',8,5,14.40,0.05,NULL),('54778-2T','Rat-tail file, 1/8-in. fine','2018-12-15 00:00:00',43,20,4.99,0.00,21344),('89-WRE-Q','Hicut chain saw, 16 in.','2018-02-07 00:00:00',11,5,256.99,0.05,24288),('PVC23DRT','PVC pipe, 3.5-in., 8-ft','2018-02-20 00:00:00',188,75,5.87,0.00,NULL),('SM-18277','1.25-in. metal screw, 25','2018-03-01 00:00:00',172,75,6.99,0.00,21225),('SW-23116','2.5-in. wd. screw, 50','2018-02-24 00:00:00',237,100,8.45,0.00,21231),('WR3/TT3','Steel matting, 4\'x8\'x1/6\", .5\" mesh','2018-01-17 00:00:00',18,5,119.95,0.10,25595);
/*!40000 ALTER TABLE `P` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `P_CODE` varchar(10) NOT NULL,
  `P_DESCRIPT` varchar(35) NOT NULL,
  `P_INDATE` datetime NOT NULL,
  `P_QOH` int(11) NOT NULL,
  `P_MIN` int(11) NOT NULL,
  `P_PRICE` decimal(8,2) NOT NULL,
  `P_DISCOUNT` decimal(4,2) NOT NULL,
  `V_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`P_CODE`),
  KEY `PRODUCT_V_CODE_FK` (`V_CODE`),
  CONSTRAINT `PRODUCT_V_CODE_FK` FOREIGN KEY (`V_CODE`) REFERENCES `VENDOR` (`V_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES ('11QER/31','Power painter, 15 psi., 3-nozzle','2017-11-03 00:00:00',8,5,109.99,0.00,25595),('13-Q2/P2','7.25-in. pwr. saw blade','2017-12-13 00:00:00',32,15,14.99,0.05,21344),('14-Q1/L3','9.00-in. pwr. saw blade','2017-11-13 00:00:00',18,12,17.49,0.00,21344),('1546-QQ2','Hrd. cloth, 1/4-in., 2x50','2018-01-15 00:00:00',15,8,39.95,0.00,23119),('1558-QW1','Hrd. cloth, 1/2-in., 3x50','2018-01-15 00:00:00',23,5,43.99,0.00,23119),('2232/QTY','B&D jigsaw, 12-in. blade','2017-12-30 00:00:00',8,5,109.92,0.05,24288),('2232/QWE','B&D jigsaw, 8-in. blade','2017-12-24 00:00:00',6,5,99.87,0.05,24288),('2238/QPD','B&D cordless drill, 1/2-in.','2018-01-20 00:00:00',12,5,38.95,0.05,25595),('23109-HB','Claw hammer','2018-01-20 00:00:00',23,10,9.95,0.10,21225),('23114-AA','Sledge hammer, 12 lb.','2018-01-02 00:00:00',8,5,14.40,0.05,NULL),('54778-2T','Rat-tail file, 1/8-in. fine','2018-12-15 00:00:00',43,20,4.99,0.00,21344),('89-WRE-Q','Hicut chain saw, 16 in.','2018-02-07 00:00:00',11,5,256.99,0.05,24288),('PVC23DRT','PVC pipe, 3.5-in., 8-ft','2018-02-20 00:00:00',188,75,5.87,0.00,NULL),('SM-18277','1.25-in. metal screw, 25','2018-03-01 00:00:00',172,75,6.99,0.00,21225),('SW-23116','2.5-in. wd. screw, 50','2018-02-24 00:00:00',237,100,8.45,0.00,21231),('WR3/TT3','Steel matting, 4\'x8\'x1/6\", .5\" mesh','2018-01-17 00:00:00',18,5,119.95,0.10,25595);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V`
--

DROP TABLE IF EXISTS `V`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V` (
  `V_CODE` int(11) NOT NULL,
  `V_NAME` varchar(35) NOT NULL,
  `V_CONTACT` varchar(15) NOT NULL,
  `V_AREACODE` char(3) NOT NULL,
  `V_PHONE` char(8) NOT NULL,
  `V_STATE` char(2) NOT NULL,
  `V_ORDER` char(1) NOT NULL,
  PRIMARY KEY (`V_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V`
--

LOCK TABLES `V` WRITE;
/*!40000 ALTER TABLE `V` DISABLE KEYS */;
INSERT INTO `V` VALUES (21225,'Bryson, Inc.','Smithson','615','223-3234','TN','Y'),(21226,'SuperLoo, Inc.','Flushing','904','215-8995','FL','N'),(21231,'D&E Supply','Singh','615','228-3245','TN','Y'),(21344,'Gomez Bros.','Ortega','615','889-2546','KY','N'),(22567,'Dome Supply','Smith','901','678-1419','GA','N'),(23119,'Randsets Ltd.','Anderson','901','678-3998','GA','Y'),(24004,'Brackman Bros.','Browning','615','228-1410','TN','N'),(24288,'ORDVA, Inc.','Hakford','615','898-1234','TN','Y'),(25443,'B&K, Inc.','Smith','904','227-0093','FL','N'),(25501,'Damal Supplies','Smythe','615','890-3529','TN','N'),(25595,'Rubicon Systems','Orton','904','456-0092','FL','Y');
/*!40000 ALTER TABLE `V` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDOR` (
  `V_CODE` int(11) NOT NULL,
  `V_NAME` varchar(35) NOT NULL,
  `V_CONTACT` varchar(15) NOT NULL,
  `V_AREACODE` char(3) NOT NULL,
  `V_PHONE` char(8) NOT NULL,
  `V_STATE` char(2) NOT NULL,
  `V_ORDER` char(1) NOT NULL,
  PRIMARY KEY (`V_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES (21225,'Bryson, Inc.','Smithson','615','223-3234','TN','Y'),(21226,'SuperLoo, Inc.','Flushing','904','215-8995','FL','N'),(21231,'D&E Supply','Singh','615','228-3245','TN','Y'),(21344,'Gomez Bros.','Ortega','615','889-2546','KY','N'),(22567,'Dome Supply','Smith','901','678-1419','GA','N'),(23119,'Randsets Ltd.','Anderson','901','678-3998','GA','Y'),(24004,'Brackman Bros.','Browning','615','228-1410','TN','N'),(24288,'ORDVA, Inc.','Hakford','615','898-1234','TN','Y'),(25443,'B&K, Inc.','Smith','904','227-0093','FL','N'),(25501,'Damal Supplies','Smythe','615','890-3529','TN','N'),(25595,'Rubicon Systems','Orton','904','456-0092','FL','Y');
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sale'
--
/*!50003 DROP PROCEDURE IF EXISTS `customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer`()
BEGIN
	select *  from CUSTOMER;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product`()
BEGIN
	select * from PRODUCT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 21:23:35
