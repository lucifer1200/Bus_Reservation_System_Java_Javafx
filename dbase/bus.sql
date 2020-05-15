-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `from` varchar(50) NOT NULL,
  `to` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Ahmadabad','Ahmadabad'),('Ajmer','Ajmer'),('Amritsar','Amritsar'),('Bangalore','Bangalore'),('Chennai','Chennai'),('Delhi','Delhi'),('Goa','Goa'),('Hyderabad','Hyderabad'),('Indore','Indore'),('Jaipur','Jaipur'),('Kolkata','Kolkata'),('Mumbai','Mumbai'),('Mysore','Mysore'),('Pune','Pune'),('Surat','Surat');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `service` varchar(45) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `seats` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('Harsh','Jain','23','9724455087','1',NULL,NULL,NULL),('lol','lol','2','34242','4',NULL,NULL,NULL),('ll','ll','2','442423423','5',NULL,NULL,NULL),('','','Surat','Mumbai','Blue Travels','','',''),('','','Surat','Mumbai','Blue Travels','','',''),('','','Surat','Mumbai','Blue Travels','','',''),('HArsh','2344','Surat','Mumbai','Blue Travels','4234','1','600'),('lol','435345345','Surat','Mumbai','Blue Travels','555','3','600'),('swew','343242','Surat','Mumbai','Blue Travels','33','6','546456'),('eee','3232','Surat','Mumbai','Blue Travels','e23','1','322'),('fdv','44','Surat','Mumbai','Blue Travels','34','4','43434'),('','','Surat','Mumbai','Blue Travels','','2',''),('','','Surat','Mumbai','Blue Travels','','1',''),('','','Surat','Mumbai','Blue Travels','','2',''),('','','Surat','Mumbai','Blue Travels','','2','Label[id=totalfare, styleClass=label]\''),('','','Surat','Mumbai','Blue Travels','','2','Label[id=totalfare, styleClass=label]\''),('','','Surat','Mumbai','Blue Travels','','3','Label[id=totalfare, styleClass=label]\''),('dfd','3242','Surat','Mumbai','Blue Travels','33','2','javafx.scene.control.TableColumn@11fdb51e'),('dfd','3242','Surat','Mumbai','Blue Travels','33','2','javafx.scene.control.TableColumn@11fdb51e'),('','','Surat','Mumbai','Blue Travels','','2','1200'),('','','Surat','Mumbai','Blue Travels','','2','1200'),('','','Surat','Mumbai','Blue Travels','','3','1200'),('','','Surat','Mumbai','Blue Travels','','2','1200'),('','','Surat','Mumbai','Blue Travels','','3','1200'),('','','Surat','Mumbai','Blue Travels','','2','1200'),('','','Surat','Mumbai','Blue Travels','','2','1200'),('','','Surat','Mumbai','Blue Travels','2020-04-26','3','1200'),('','','Surat','Mumbai','Blue Travels','2020-04-26','3','Label[id=totalfare, styleClass=label]\''),('','','Surat','Mumbai','Blue Travels','2020-04-26','3','3600'),('Lucifer','9724455087','Surat','Chennai','VRL Travels','2020-05-08','2','6000'),('Mayur','8970524311','Surat','Mumbai','Blue Travels','2020-04-26','4','4800'),('Sadhana Jain','9724455087','Mumbai','Chennai','Star Travels','2020-05-09','2','6000'),('Harsh','12345645','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Dilip','9886114440','Surat','Mumbai','Blue Travels','2020-04-26','3','3600'),('','','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Raj','98752343245','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Kamal','9873423552','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Kamal','9873423552','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Madhu','9998614817','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Madhu','9998614817','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Madhu','9998614817','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Sehaj','8657456474574','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Hardeep','87685746456','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Manish','0989796433','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Shreya','543788996','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Dhoni','9752648985','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Harsh','890547333','Surat','Mumbai','Blue Travels','2020-04-26','2','2400'),('Rakesh','986764535','Surat','Mumbai','Blue Travels','2020-04-26','1','1200'),('Sehaj Jot Singh','9874356636','Ajmer','Bangalore','VRl Travels','2020-05-16','2','5600'),('Alisha','9724455087','Ajmer','Bangalore','SRS Travels','2020-05-16','1','2700'),('Amit','98525345222','Ajmer','Bangalore','SRS Travels','2020-05-15','1','2700');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `service` varchar(50) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `dest` varchar(50) DEFAULT NULL,
  `fare` int DEFAULT NULL,
  `dtime` time DEFAULT NULL,
  `atime` time DEFAULT NULL,
  `seat` int DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES ('SRS Travels','Bangalore','Surat',2500,'00:00:02','00:00:10',NULL,NULL),('SRS Travels','Bangalore','Surat',2500,'00:00:14','00:00:10',NULL,NULL),('SRS Travels','Bangalore','Mumbai',2500,'00:00:14','00:00:07',NULL,NULL),('VRL Travels','Bangalore','Mumbai',2500,'00:00:14','00:00:07',NULL,NULL),('VRL Travels','Bangalore','Chennai',2500,'00:00:11','00:00:00',NULL,NULL),('VRL Travels','Bangalore','Chennai',2500,'00:00:11','00:00:00',NULL,NULL),('VRL Travels','Bangalore','Mumbai',2500,'00:00:14','00:00:07',NULL,NULL),('SRS Travels','Bangalore','Mumbai',2500,'00:00:14','00:00:07',NULL,NULL),('SRS Travels','Bangalore','Surat',2500,'00:00:14','00:00:10',NULL,NULL),('JK Travels','Surat','Bangalore',3000,'00:00:01','00:00:15',24,NULL),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('SRS','Chennai','Surat',3900,'00:00:03','00:00:04',43,'2020-04-23'),('VRL Travels','Mumbai','Chennai',3000,'00:00:04','00:00:05',38,'2020-04-30'),('HR Travels','Mumbai','Chennai',2900,'00:00:03','00:00:04',38,'2020-04-28'),('HR Travels','Mumbai','Chennai',2900,'00:00:03','00:00:04',38,'2020-04-28'),('Blue Travels','Surat','Mumbai',1200,'00:00:01','00:00:09',6,'2020-04-26'),('KSRTC','Bangalore','Mumbai',2500,'00:00:02','00:00:09',43,'2020-05-01'),('HJ Travels','Chennai','Surat',2800,'00:00:06','00:00:09',43,'2020-05-02'),('VRL Travels','Surat','Chennai',3000,'12:00:00','22:00:00',32,'2020-05-08'),('Hj Travels','Chennai','Bangalore',300,'04:00:00','06:00:00',23,'2020-05-09'),('Star Travels','Mumbai','Chennai',3000,'03:00:00','14:00:00',38,'2020-05-09'),('AS Travels','Bangalore','Mumbai',5000,'12:00:00','14:00:00',34,'2020-05-12'),('SRS Travels','Ahmadabad','Bangalore',2800,'12:00:00','14:00:00',38,'2020-05-14'),('Blue  Travels','Ahmadabad','Bangalore',2800,'14:00:00','18:00:00',34,'2020-05-14'),('VRL  Travels','Ahmadabad','Bangalore',2800,'19:00:00','00:00:00',34,'2020-05-14'),('VRL  Travels','Ahmadabad','Pune',2000,'19:00:00','00:00:00',36,'2020-05-15'),('SRS Travels','Ahmadabad','Pune',1800,'15:00:00','20:00:00',36,'2020-05-15'),('SRS Travels','Ahmadabad','Chennai',3200,'10:00:00','22:00:00',40,'2020-05-15'),('Blue Travels','Ahmadabad','Chennai',3400,'12:00:00','00:00:00',34,'2020-05-15'),('Blue Travels','Ahmadabad','Surat',1200,'10:00:00','14:00:00',36,'2020-05-16'),('SRS Travels','Ahmadabad','Surat',1100,'08:00:00','12:00:00',38,'2020-05-16'),('VRl Travels','Ahmadabad','Surat',1100,'07:00:00','11:00:00',38,'2020-05-16'),('VRl Travels','Ahmadabad','Surat',1100,'15:00:00','19:00:00',38,'2020-05-16'),('VRl Travels','Ajmer','Bangalore',2800,'15:00:00','00:00:00',35,'2020-05-16'),('VRl Travels','Ajmer','Bangalore',2800,'15:00:00','00:00:00',35,'2020-05-17'),('VRl Travels','Ajmer','Bangalore',2800,'18:00:00','20:00:00',35,'2020-05-18'),('VRl Travels','Ajmer','Bangalore',2800,'12:00:00','00:00:00',35,'2020-05-19'),('VRl Travels','Ajmer','Bangalore',2800,'16:00:00','05:00:00',35,'2020-05-20'),('SRS Travels','Ajmer','Bangalore',700,'14:00:00','05:00:00',34,'2020-05-14'),('SRS Travels','Ajmer','Bangalore',2700,'13:00:00','07:00:00',34,'2020-05-14'),('SRS Travels','Ajmer','Bangalore',2700,'19:00:00','13:00:00',34,'2020-05-15'),('SRS Travels','Ajmer','Bangalore',2700,'19:00:00','17:00:00',34,'2020-05-16'),('SRS Travels','Ajmer','Bangalore',2700,'19:00:00','17:00:00',34,'2020-05-17'),('National Travels','Ajmer','Bangalore',2700,'19:00:00','17:00:00',35,'2020-05-14'),('National Travels','Ajmer','Bangalore',2700,'12:00:00','12:00:00',35,'2020-05-15'),('National Travels','Ajmer','Bangalore',2700,'16:00:00','11:00:00',35,'2020-05-16'),('National Travels','Ajmer','Bangalore',2700,'17:00:00','13:00:00',35,'2020-05-17'),('National Travels','Ajmer','Bangalore',2700,'17:00:00','13:00:00',35,'2020-05-18'),('National Travels','Ajmer','Bangalore',2700,'17:00:00','13:00:00',35,'2020-05-19'),('National Travels','Ajmer','Bangalore',2700,'17:00:00','13:00:00',35,'2020-05-20'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-14'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-15'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-16'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-17'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-18'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-19'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-20'),('National Travels','Ajmer','Pune',2000,'17:00:00','13:00:00',40,'2020-05-21'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-14'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-15'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-16'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-17'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-18'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-19'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-20'),('SRS Travels','Ajmer','Pune',1900,'12:00:00','11:00:00',40,'2020-05-21'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-14'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-15'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-16'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-17'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-18'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-19'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-20'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-21'),('VRL Travels','Ajmer','Pune',2100,'15:00:00','06:00:00',42,'2020-05-22'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-14'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-15'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-16'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-17'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-18'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-19'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-20'),('VRL Travels','Ajmer','Delhi',2100,'15:00:00','06:00:00',40,'2020-05-21'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-14'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-15'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-16'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-17'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-18'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-19'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-20'),('National Travels','Ajmer','Delhi',2000,'12:00:00','09:00:00',40,'2020-05-21'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-14'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-15'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-16'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-17'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-18'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-19'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-20'),('SRSl Travels','Ajmer','Delhi',2000,'18:00:00','13:00:00',40,'2020-05-21'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-14'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-15'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-16'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-17'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-18'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-19'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-20'),('SRS Travels','Delhi','Goa',2000,'18:00:00','13:00:00',40,'2020-05-21'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-14'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-15'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-16'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-17'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-18'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-19'),('SRS Travels','Delhi','Surat',1600,'18:00:00','13:00:00',40,'2020-05-20'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-14'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-15'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-16'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-18'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-19'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-20'),('VRLTravels','Delhi','Surat',1700,'12:00:00','18:00:00',40,'2020-05-21'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-14'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-15'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-16'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-17'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-18'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-19'),('VRLTravels','Delhi','Amritsar',1700,'12:00:00','18:00:00',40,'2020-05-20'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-14'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-15'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-17'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-18'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-19'),('National Travels','Delhi','Amritsar',1500,'19:00:00','14:00:00',40,'2020-05-20'),('VRL Travels','Ajmer','Bangalore',2900,'12:00:00','15:00:00',35,'2020-05-14'),('SRS Travels','Bangalore','Surat',1600,'14:00:00','10:00:00',40,'2020-05-20');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `gender` varchar(23) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('','','','','Male','','','','',''),('admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('anish','1234','Anish','Shaw','9876534550','19','Karnataka','bangalore','Male','anish@gmail.com'),('Chirag','Jain','1234567890','chirag@gmail.com','Male','23','Gujarat','Surat','chirag','1234'),('Dilip','Jain','9886114440','dilip@gmail.com','Male','42','Karnataka','bangalore','dilip','1234'),('Harsh','Jain','9724455087','jain12harsh@gmail.com','Male','23','Karnataka','Bangalore','hj012','1234'),('jay12','1234','Jay','Jain','987453538','50','Karnataka','Bangalore','Male','jay@gmail.com'),('lol','lol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('mayur','1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sehaj','sehaj','Sehaj','Singh','98763456w','21','Jammu & Kashmir','Srinagar','Male','sehaj@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15 22:33:10
