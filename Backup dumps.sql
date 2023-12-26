
-- TABLAS CREADAS A PARTIR DE BACKUP // ARMY CORPS, ARMY CORPS EXPENSES, COMPANY, EXPENSES LOG, QUARTERS, SERVICE, SERVICE EFFECTIVE, SOLDIERS QUANTITY, SUB COMPANY



-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: soldiers
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
-- Dumping data for table `army_corps`
--

LOCK TABLES `army_corps` WRITE;
/*!40000 ALTER TABLE `army_corps` DISABLE KEYS */;
INSERT INTO `army_corps` VALUES (1,'Infantería','2022-06-15','Central A'),(2,'Artillería','2022-03-20','Central B'),(3,'Caballería','2022-08-10','Central C');
/*!40000 ALTER TABLE `army_corps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `army_corps_expenses`
--

LOCK TABLES `army_corps_expenses` WRITE;
/*!40000 ALTER TABLE `army_corps_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `army_corps_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,1,'Empresa A','Actividad 1'),(2,2,'Empresa B','Actividad 2'),(3,3,'Empresa C','Actividad 3');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `expenses_log`
--

LOCK TABLES `expenses_log` WRITE;
/*!40000 ALTER TABLE `expenses_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `quarters`
--

LOCK TABLES `quarters` WRITE;
/*!40000 ALTER TABLE `quarters` DISABLE KEYS */;
INSERT INTO `quarters` VALUES (1,'Cuartel Alpha','Ubicación A',1),(2,'Cuartel Beta','Ubicación B',2),(3,'Cuartel Gamma','Ubicación C',3),(5,'X','Unknow',1);
/*!40000 ALTER TABLE `quarters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Servicio de Reparación de Equipos'),(2,'Mantenimiento de Vehículos'),(3,'Suministro de Materiales'),(4,'Flota'),(5,'Investigacion academica'),(6,'preparacion academica'),(7,'estadistica'),(8,'protocolo'),(9,'informatica'),(10,'enlace'),(11,'distribucion geografica');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_effective`
--

LOCK TABLES `service_effective` WRITE;
/*!40000 ALTER TABLE `service_effective` DISABLE KEYS */;
INSERT INTO `service_effective` VALUES (1,'2023-01-05',1,1),(2,'2023-04-10',2,2),(3,'2023-07-15',3,3);
/*!40000 ALTER TABLE `service_effective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `soldiers_quantity`
--

LOCK TABLES `soldiers_quantity` WRITE;
/*!40000 ALTER TABLE `soldiers_quantity` DISABLE KEYS */;
INSERT INTO `soldiers_quantity` VALUES (1,'Pérez','Juan','2000-05-20','1998-03-10',25,1,2,1,2,'2021-01-15'),(2,'García','María','1999-11-12','1997-07-05',24,2,3,2,1,'2020-09-20'),(3,'Martínez','Luis','2002-02-28','2000-12-18',21,3,1,3,3,'2022-03-10');
/*!40000 ALTER TABLE `soldiers_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sub_company`
--

LOCK TABLES `sub_company` WRITE;
/*!40000 ALTER TABLE `sub_company` DISABLE KEYS */;
INSERT INTO `sub_company` VALUES (1,1,2,'Ubicación X'),(2,2,3,'Ubicación Y'),(3,3,1,'Ubicación Z');
/*!40000 ALTER TABLE `sub_company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-25 21:28:08





