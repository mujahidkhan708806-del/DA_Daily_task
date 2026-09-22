-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Current Database: `ecommerce`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ecommerce`;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  CONSTRAINT `customer_chk_1` CHECK ((`age` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Anita','anita@gmail.com',22,'Pune'),(2,'Rohit','rohit@gmail.com',25,'Nagpur'),(3,'Priya','priya@gmail.com',19,'Kanpur'),(4,'Karan','karan@gmail.com',30,'Indore'),(5,'Neha','neha@gmail.com',28,'Bareilly');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  CONSTRAINT `product_chk_1` CHECK ((`stock` <> 0)),
  CONSTRAINT `product_chk_2` CHECK ((`price` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (201,'Smartwatch','Electronics',40,12000.00),(202,'Tablet','Electronics',20,15000.00),(203,'Earbuds','Accessories',60,2500.00),(204,'Mouse','Accessories',100,500.00),(205,'Printer','Electronics',10,11000.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_return`
--

DROP TABLE IF EXISTS `product_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_return` (
  `r_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `customer_phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_return`
--

LOCK TABLES `product_return` WRITE;
/*!40000 ALTER TABLE `product_return` DISABLE KEYS */;
INSERT INTO `product_return` VALUES (1,'Smartwatch','Electronics','screen damage','9812345670'),(2,'Earbuds','Accessories','not working','9834567892'),(3,'Mouse','Accessories','wrong item delivered','9845678903'),(4,'Printer','Electronics','defective on arrival','9823456781');
/*!40000 ALTER TABLE `product_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `s_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `customer_phone_no` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'Smartwatch','9812345670','Pune Maharashtra'),(2,'Tablet','9823456781','Nagpur Maharashtra'),(3,'Earbuds','9834567892','Kanpur UttarPradesh'),(4,'Printer','9845678903','Indore MadhyaPradesh');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `college`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `college` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `college`;

--
-- Table structure for table `academic`
--

DROP TABLE IF EXISTS `academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic` (
  `facultyID` int NOT NULL,
  `facultyName` varchar(100) NOT NULL,
  `deptName` varchar(50) DEFAULT NULL,
  `subjectName` varchar(50) DEFAULT NULL,
  `classDay` varchar(20) DEFAULT NULL,
  `fromTime` time DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `durationHrs` decimal(4,1) DEFAULT NULL,
  `roomNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`facultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic`
--

LOCK TABLES `academic` WRITE;
/*!40000 ALTER TABLE `academic` DISABLE KEYS */;
INSERT INTO `academic` VALUES (201,'Kabir Mohsin','Computer Science','Operating Systems','Wednesday','09:00:00','11:00:00',2.0,'Room 12'),(202,'Nitin Verma','Electronics','Digital Circuits','Monday','11:00:00','01:00:00',2.0,'Room 20'),(203,'Pulti Yadav','Computer Science','Computer Networks','Thursday','02:00:00','04:00:00',2.0,'Room 15'),(204,'Ritik Pal','Management','Marketing','Tuesday','10:00:00','12:00:00',2.0,'Room 8'),(205,'Suhani Jain','Computer Science','Artificial Intelligence','Friday','01:00:00','03:00:00',2.0,'Room 22');
/*!40000 ALTER TABLE `academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `feeRecordID` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(50) NOT NULL,
  `tuitionAmount` decimal(10,2) DEFAULT NULL,
  `examAmount` decimal(10,2) DEFAULT NULL,
  `insuranceAmount` decimal(10,2) DEFAULT NULL,
  `grossAmount` decimal(10,2) DEFAULT NULL,
  `discountAmount` decimal(10,2) DEFAULT NULL,
  `payableAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`feeRecordID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,'M.Tech(AI)',140000.00,7000.00,500.00,147500.00,20000.00,127500.00),(2,'B.Tech(ECE)',95000.00,6500.00,500.00,102000.00,NULL,102000.00),(3,'MBA',120000.00,7000.00,500.00,127500.00,15000.00,112500.00),(4,'BBA',55000.00,5000.00,500.00,60500.00,8000.00,52500.00),(5,'MCA',70000.00,5500.00,500.00,76000.00,NULL,76000.00),(6,'BCA',45000.00,5000.00,500.00,50500.00,5000.00,45500.00);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `bookID` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `rollNo` varchar(20) DEFAULT NULL,
  `dateIssued` date DEFAULT NULL,
  `dateReturned` date DEFAULT NULL,
  `currentStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'Operating Systems Concepts','CSE24112','2026-08-05','2026-08-15','Returned'),(2,'Computer Networks','CSE24087','2026-08-10','2026-08-20','Returned'),(3,'Web Development Basics','CSE24150','2026-08-18',NULL,'Issued'),(4,'Artificial Intelligence','CSE24065','2026-08-25',NULL,'Issued'),(5,'Java Programming','CSE24093','2026-09-02',NULL,'Issued');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `resultNo` int NOT NULL AUTO_INCREMENT,
  `rollNo` varchar(20) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `semNo` int DEFAULT NULL,
  `marksObtained` int DEFAULT NULL,
  `marksTotal` int DEFAULT NULL,
  `gradeAwarded` varchar(5) DEFAULT NULL,
  `finalStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`resultNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,'CSE24112','Lalit Yadav','B.Tech',3,91,100,'A+','Pass'),(2,'CSE24087','Mira Singh','BCA',2,78,100,'B+','Pass'),(3,'CSE24150','Kunal Kemu','MCA',1,55,100,'C','Pass'),(4,'CSE24065','Madav Sharma','BBA',4,84,100,'A','Pass'),(5,'CSE24093','Alia Yadav','B.Tech',3,38,100,'F','Fail');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-21 23:34:53
