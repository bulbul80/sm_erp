-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: smERP
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `adminlte3_theme_bloodgroup`
--

DROP TABLE IF EXISTS `adminlte3_theme_bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_bloodgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blood_group_name` (`blood_group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_bloodgroup`
--

LOCK TABLES `adminlte3_theme_bloodgroup` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_bloodgroup` DISABLE KEYS */;
INSERT INTO `adminlte3_theme_bloodgroup` VALUES (1,'A+','2020-03-23 09:18:08.343001','2020-03-23 11:04:52.909744',1),(2,'B+','2020-03-23 09:18:50.738362','2020-03-23 09:18:50.738435',1);
/*!40000 ALTER TABLE `adminlte3_theme_bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_company`
--

DROP TABLE IF EXISTS `adminlte3_theme_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `company_logo` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `group_of_company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_name` (`company_name`),
  KEY `adminlte3_theme_comp_group_of_company_id_0d354606_fk_adminlte3` (`group_of_company_id`),
  CONSTRAINT `adminlte3_theme_comp_group_of_company_id_0d354606_fk_adminlte3` FOREIGN KEY (`group_of_company_id`) REFERENCES `adminlte3_theme_groupofcompany` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_company`
--

LOCK TABLES `adminlte3_theme_company` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_country`
--

DROP TABLE IF EXISTS `adminlte3_theme_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_country`
--

LOCK TABLES `adminlte3_theme_country` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_department`
--

DROP TABLE IF EXISTS `adminlte3_theme_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_name` (`department_name`),
  KEY `adminlte3_theme_depa_company_id_8ee0b94d_fk_adminlte3` (`company_id`),
  CONSTRAINT `adminlte3_theme_depa_company_id_8ee0b94d_fk_adminlte3` FOREIGN KEY (`company_id`) REFERENCES `adminlte3_theme_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_department`
--

LOCK TABLES `adminlte3_theme_department` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_district`
--

DROP TABLE IF EXISTS `adminlte3_theme_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `district_name` (`district_name`),
  KEY `adminlte3_theme_dist_division_id_aa9bbf60_fk_adminlte3` (`division_id`),
  CONSTRAINT `adminlte3_theme_dist_division_id_aa9bbf60_fk_adminlte3` FOREIGN KEY (`division_id`) REFERENCES `adminlte3_theme_division` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_district`
--

LOCK TABLES `adminlte3_theme_district` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_division`
--

DROP TABLE IF EXISTS `adminlte3_theme_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `division_name` (`division_name`),
  KEY `adminlte3_theme_divi_country_id_da5c0803_fk_adminlte3` (`country_id`),
  CONSTRAINT `adminlte3_theme_divi_country_id_da5c0803_fk_adminlte3` FOREIGN KEY (`country_id`) REFERENCES `adminlte3_theme_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_division`
--

LOCK TABLES `adminlte3_theme_division` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_division` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_employeepersonalinformation`
--

DROP TABLE IF EXISTS `adminlte3_theme_employeepersonalinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_employeepersonalinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `Father_name` varchar(225) NOT NULL,
  `Mother_name` varchar(225) NOT NULL,
  `personal_mobile_number` varchar(17) NOT NULL,
  `alternate_mobile_number` varchar(17) NOT NULL,
  `date_of_birth` date NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `passport_number` varchar(20) NOT NULL,
  `passport_expiry_date` date DEFAULT NULL,
  `present_address` longtext,
  `permanant_address` longtext,
  `email` varchar(254) NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_name` (`employee_name`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `personal_mobile_number` (`personal_mobile_number`),
  UNIQUE KEY `national_id` (`national_id`),
  UNIQUE KEY `passport_number` (`passport_number`),
  UNIQUE KEY `email` (`email`),
  KEY `adminlte3_theme_empl_blood_group_id_786902b1_fk_adminlte3` (`blood_group_id`),
  KEY `adminlte3_theme_empl_country_id_3bac9cbd_fk_adminlte3` (`country_id`),
  KEY `adminlte3_theme_empl_district_id_47ecfda4_fk_adminlte3` (`district_id`),
  KEY `adminlte3_theme_empl_division_id_6a5e76b0_fk_adminlte3` (`division_id`),
  KEY `adminlte3_theme_empl_gender_id_c4db61d4_fk_adminlte3` (`gender_id`),
  KEY `adminlte3_theme_empl_religion_id_8d18066b_fk_adminlte3` (`religion_id`),
  CONSTRAINT `adminlte3_theme_empl_blood_group_id_786902b1_fk_adminlte3` FOREIGN KEY (`blood_group_id`) REFERENCES `adminlte3_theme_bloodgroup` (`id`),
  CONSTRAINT `adminlte3_theme_empl_country_id_3bac9cbd_fk_adminlte3` FOREIGN KEY (`country_id`) REFERENCES `adminlte3_theme_country` (`id`),
  CONSTRAINT `adminlte3_theme_empl_district_id_47ecfda4_fk_adminlte3` FOREIGN KEY (`district_id`) REFERENCES `adminlte3_theme_district` (`id`),
  CONSTRAINT `adminlte3_theme_empl_division_id_6a5e76b0_fk_adminlte3` FOREIGN KEY (`division_id`) REFERENCES `adminlte3_theme_division` (`id`),
  CONSTRAINT `adminlte3_theme_empl_gender_id_c4db61d4_fk_adminlte3` FOREIGN KEY (`gender_id`) REFERENCES `adminlte3_theme_gender` (`id`),
  CONSTRAINT `adminlte3_theme_empl_religion_id_8d18066b_fk_adminlte3` FOREIGN KEY (`religion_id`) REFERENCES `adminlte3_theme_religion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_employeepersonalinformation`
--

LOCK TABLES `adminlte3_theme_employeepersonalinformation` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_employeepersonalinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_employeepersonalinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_gender`
--

DROP TABLE IF EXISTS `adminlte3_theme_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_name` (`gender_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_gender`
--

LOCK TABLES `adminlte3_theme_gender` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_groupofcompany`
--

DROP TABLE IF EXISTS `adminlte3_theme_groupofcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_groupofcompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_of_company_name` varchar(100) NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_of_company_name` (`group_of_company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_groupofcompany`
--

LOCK TABLES `adminlte3_theme_groupofcompany` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_groupofcompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_groupofcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_policestation`
--

DROP TABLE IF EXISTS `adminlte3_theme_policestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_policestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `police_station_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `police_station_name` (`police_station_name`),
  KEY `adminlte3_theme_poli_district_id_f7df5ebc_fk_adminlte3` (`district_id`),
  CONSTRAINT `adminlte3_theme_poli_district_id_f7df5ebc_fk_adminlte3` FOREIGN KEY (`district_id`) REFERENCES `adminlte3_theme_district` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_policestation`
--

LOCK TABLES `adminlte3_theme_policestation` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_policestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_policestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_religion`
--

DROP TABLE IF EXISTS `adminlte3_theme_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `religion_name` (`religion_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_religion`
--

LOCK TABLES `adminlte3_theme_religion` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_religion` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlte3_theme_section`
--

DROP TABLE IF EXISTS `adminlte3_theme_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlte3_theme_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `section_name` (`section_name`),
  KEY `adminlte3_theme_sect_department_id_2ebdd5c6_fk_adminlte3` (`department_id`),
  CONSTRAINT `adminlte3_theme_sect_department_id_2ebdd5c6_fk_adminlte3` FOREIGN KEY (`department_id`) REFERENCES `adminlte3_theme_department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlte3_theme_section`
--

LOCK TABLES `adminlte3_theme_section` WRITE;
/*!40000 ALTER TABLE `adminlte3_theme_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminlte3_theme_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add employee personal information',7,'add_employeepersonalinformation'),(26,'Can change employee personal information',7,'change_employeepersonalinformation'),(27,'Can delete employee personal information',7,'delete_employeepersonalinformation'),(28,'Can view employee personal information',7,'view_employeepersonalinformation'),(29,'Can add police station',8,'add_policestation'),(30,'Can change police station',8,'change_policestation'),(31,'Can delete police station',8,'delete_policestation'),(32,'Can view police station',8,'view_policestation'),(33,'Can add district',9,'add_district'),(34,'Can change district',9,'change_district'),(35,'Can delete district',9,'delete_district'),(36,'Can view district',9,'view_district'),(37,'Can add blood group',10,'add_bloodgroup'),(38,'Can change blood group',10,'change_bloodgroup'),(39,'Can delete blood group',10,'delete_bloodgroup'),(40,'Can view blood group',10,'view_bloodgroup'),(41,'Can add gender',11,'add_gender'),(42,'Can change gender',11,'change_gender'),(43,'Can delete gender',11,'delete_gender'),(44,'Can view gender',11,'view_gender'),(45,'Can add religion',12,'add_religion'),(46,'Can change religion',12,'change_religion'),(47,'Can delete religion',12,'delete_religion'),(48,'Can view religion',12,'view_religion'),(49,'Can add division',13,'add_division'),(50,'Can change division',13,'change_division'),(51,'Can delete division',13,'delete_division'),(52,'Can view division',13,'view_division'),(53,'Can add country',14,'add_country'),(54,'Can change country',14,'change_country'),(55,'Can delete country',14,'delete_country'),(56,'Can view country',14,'view_country'),(57,'Can add group of company',15,'add_groupofcompany'),(58,'Can change group of company',15,'change_groupofcompany'),(59,'Can delete group of company',15,'delete_groupofcompany'),(60,'Can view group of company',15,'view_groupofcompany'),(61,'Can add department',16,'add_department'),(62,'Can change department',16,'change_department'),(63,'Can delete department',16,'delete_department'),(64,'Can view department',16,'view_department'),(65,'Can add company',17,'add_company'),(66,'Can change company',17,'change_company'),(67,'Can delete company',17,'delete_company'),(68,'Can view company',17,'view_company'),(69,'Can add section',18,'add_section'),(70,'Can change section',18,'change_section'),(71,'Can delete section',18,'delete_section'),(72,'Can view section',18,'view_section'),(73,'Can add author',19,'add_author'),(74,'Can change author',19,'change_author'),(75,'Can delete author',19,'delete_author'),(76,'Can view author',19,'view_author'),(77,'Can add book',20,'add_book'),(78,'Can change book',20,'change_book'),(79,'Can delete book',20,'delete_book'),(80,'Can view book',20,'view_book'),(81,'Can add publisher',21,'add_publisher'),(82,'Can change publisher',21,'change_publisher'),(83,'Can delete publisher',21,'delete_publisher'),(84,'Can view publisher',21,'view_publisher'),(85,'Can add police station',22,'add_policestation'),(86,'Can change police station',22,'change_policestation'),(87,'Can delete police station',22,'delete_policestation'),(88,'Can view police station',22,'view_policestation'),(89,'Can add division',23,'add_division'),(90,'Can change division',23,'change_division'),(91,'Can delete division',23,'delete_division'),(92,'Can view division',23,'view_division'),(93,'Can add blood group',24,'add_bloodgroup'),(94,'Can change blood group',24,'change_bloodgroup'),(95,'Can delete blood group',24,'delete_bloodgroup'),(96,'Can view blood group',24,'view_bloodgroup'),(97,'Can add religion',25,'add_religion'),(98,'Can change religion',25,'change_religion'),(99,'Can delete religion',25,'delete_religion'),(100,'Can view religion',25,'view_religion'),(101,'Can add gender',26,'add_gender'),(102,'Can change gender',26,'change_gender'),(103,'Can delete gender',26,'delete_gender'),(104,'Can view gender',26,'view_gender'),(105,'Can add country',27,'add_country'),(106,'Can change country',27,'change_country'),(107,'Can delete country',27,'delete_country'),(108,'Can view country',27,'view_country'),(109,'Can add employee personal information',28,'add_employeepersonalinformation'),(110,'Can change employee personal information',28,'change_employeepersonalinformation'),(111,'Can delete employee personal information',28,'delete_employeepersonalinformation'),(112,'Can view employee personal information',28,'view_employeepersonalinformation'),(113,'Can add district',29,'add_district'),(114,'Can change district',29,'change_district'),(115,'Can delete district',29,'delete_district'),(116,'Can view district',29,'view_district'),(117,'Can add department',30,'add_department'),(118,'Can change department',30,'change_department'),(119,'Can delete department',30,'delete_department'),(120,'Can view department',30,'view_department'),(121,'Can add section',31,'add_section'),(122,'Can change section',31,'change_section'),(123,'Can delete section',31,'delete_section'),(124,'Can view section',31,'view_section'),(125,'Can add group of company',32,'add_groupofcompany'),(126,'Can change group of company',32,'change_groupofcompany'),(127,'Can delete group of company',32,'delete_groupofcompany'),(128,'Can view group of company',32,'view_groupofcompany'),(129,'Can add company',33,'add_company'),(130,'Can change company',33,'change_company'),(131,'Can delete company',33,'delete_company'),(132,'Can view company',33,'view_company'),(133,'Can add designation',34,'add_designation'),(134,'Can change designation',34,'change_designation'),(135,'Can delete designation',34,'delete_designation'),(136,'Can view designation',34,'view_designation'),(137,'Can add job description',35,'add_jobdescription'),(138,'Can change job description',35,'change_jobdescription'),(139,'Can delete job description',35,'delete_jobdescription'),(140,'Can view job description',35,'view_jobdescription'),(141,'Can add attendence',36,'add_attendence'),(142,'Can change attendence',36,'change_attendence'),(143,'Can delete attendence',36,'delete_attendence'),(144,'Can view attendence',36,'view_attendence'),(145,'Can add attendance',36,'add_attendance'),(146,'Can change attendance',36,'change_attendance'),(147,'Can delete attendance',36,'delete_attendance'),(148,'Can view attendance',36,'view_attendance');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$qgilwWSNf8hZ$PIkKm7Koxs/aXmk9h6H8y3tHuefmKm4L+6owEuM3DEQ=','2020-03-21 02:56:07.932238',1,'user','','','',1,1,'2020-03-21 02:55:18.275705'),(2,'pbkdf2_sha256$180000$3cn1tP1HUrmv$J1bsmjZ3a/R0Aoowotq3lauUJZx5jFyt+vxCay5t0yw=','2020-03-28 10:56:38.308082',1,'admin','Mahmud','Hasan','',1,1,'2020-03-21 04:49:27.000000'),(3,'pbkdf2_sha256$180000$lIpxQPwqe8lE$sILcz7RCYY5B1k9HELXNnedvSREi4gGHYqEnmNviWGM=',NULL,0,'user1','','','',0,1,'2020-03-22 03:06:09.162725'),(4,'pbkdf2_sha256$180000$YGXfTGmoSsfK$FEfQByyMbBP9cDqA8YImeIAuG5tODgIHLo0yKVk7Z+I=','2020-03-26 16:48:48.196323',1,'bulbul','','','',1,1,'2020-03-23 09:00:43.295233'),(5,'pbkdf2_sha256$180000$L5Q0O2prWQXa$5EKXRAIxgtvDuUzA3lNl833fsLkqcW7/k4rKjdsz0Hw=',NULL,0,'anas','','','',0,1,'2020-03-23 09:04:08.874782');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,45),(46,2,46),(47,2,47),(48,2,48),(49,2,49),(50,2,50),(51,2,51),(52,2,52),(53,2,53),(54,2,54),(55,2,55),(56,2,56),(57,2,57),(58,2,58),(59,2,59),(60,2,60),(61,2,61),(62,2,62),(63,2,63),(64,2,64),(65,2,65),(66,2,66),(67,2,67),(68,2,68),(69,2,69),(70,2,70),(71,2,71),(72,2,72);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-21 02:57:12.335149','1','Bangladesh',1,'[{\"added\": {}}]',14,1),(2,'2020-03-21 02:57:37.937493','2','India',1,'[{\"added\": {}}]',14,1),(3,'2020-03-21 02:57:43.931571','3','Japan',1,'[{\"added\": {}}]',14,1),(4,'2020-03-21 04:46:10.870665','1','A+',1,'[{\"added\": {}}]',10,1),(5,'2020-03-21 04:46:18.151498','2','A-',1,'[{\"added\": {}}]',10,1),(6,'2020-03-21 04:49:27.869571','2','admin',1,'[{\"added\": {}}]',4,1),(7,'2020-03-21 04:50:44.656848','2','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Superuser status\", \"User permissions\"]}}]',4,1),(8,'2020-03-21 04:53:56.268822','3','Japan1',2,'[{\"changed\": {\"fields\": [\"Country name\"]}}]',14,1),(9,'2020-03-21 11:45:04.717536','1','GC',1,'[{\"added\": {}}]',15,1),(10,'2020-03-21 11:45:21.196252','1','Company1',1,'[{\"added\": {}}]',17,1),(11,'2020-03-21 11:45:34.509349','1','IT',1,'[{\"added\": {}}]',16,1),(12,'2020-03-22 03:06:09.270350','3','user1',1,'[{\"added\": {}}]',4,1),(13,'2020-03-22 08:50:33.769570','4','ssss',1,'[{\"added\": {}}]',14,1),(14,'2020-03-22 08:50:45.007811','4','ssss',3,'',14,1),(15,'2020-03-22 09:23:57.665825','5','bangladesh1',1,'[{\"added\": {}}]',14,1),(16,'2020-03-23 09:04:08.981779','5','anas',1,'[{\"added\": {}}]',4,4),(17,'2020-03-23 09:18:08.343501','1','A+',1,'[{\"added\": {}}]',24,4),(18,'2020-03-23 09:18:50.739768','2','B+',1,'[{\"added\": {}}]',24,4),(19,'2020-03-23 11:04:52.910715','1','A+',2,'[]',24,4),(20,'2020-03-25 07:07:02.799636','3','B+',1,'[{\"added\": {}}]',10,4),(21,'2020-03-25 07:07:09.589322','4','B-',1,'[{\"added\": {}}]',10,4),(22,'2020-03-25 07:08:16.816206','5','AB+',1,'[{\"added\": {}}]',10,4),(23,'2020-03-25 07:08:24.913837','6','AB-',1,'[{\"added\": {}}]',10,4),(24,'2020-03-25 10:47:36.488360','7','O+',1,'[{\"added\": {}}]',10,4),(25,'2020-03-25 10:47:47.545050','8','O-',1,'[{\"added\": {}}]',10,4),(26,'2020-03-28 10:57:13.792441','2','Group of company name',1,'[{\"added\": {}}]',15,2),(27,'2020-03-28 10:58:06.438416','2','Company name',1,'[{\"added\": {}}]',17,2),(28,'2020-03-28 10:58:39.837965','5','bangladesh1',3,'',14,2),(29,'2020-03-28 10:58:39.882514','3','Japan1',3,'',14,2),(30,'2020-03-28 10:59:22.930808','2','Account',1,'[{\"added\": {}}]',16,2),(31,'2020-03-28 11:00:02.559121','1','Dhaka',1,'[{\"added\": {}}]',13,2),(32,'2020-03-28 11:00:13.248753','1','Dhaka',1,'[{\"added\": {}}]',9,2),(33,'2020-03-28 11:00:29.234282','2','Narayan Gonj',1,'[{\"added\": {}}]',9,2),(34,'2020-03-28 11:00:48.263571','1','Male',1,'[{\"added\": {}}]',11,2),(35,'2020-03-28 11:01:08.766988','2','Female',1,'[{\"added\": {}}]',11,2),(36,'2020-03-28 11:01:51.527550','1','Islam',1,'[{\"added\": {}}]',12,2),(37,'2020-03-28 11:02:32.074601','2','Hinduism',1,'[{\"added\": {}}]',12,2),(38,'2020-03-28 11:02:47.959458','3','Judaism',1,'[{\"added\": {}}]',12,2),(39,'2020-03-28 11:04:38.363946','4','Christianity',1,'[{\"added\": {}}]',12,2),(40,'2020-03-28 11:05:29.761348','1','Software',1,'[{\"added\": {}}]',18,2),(41,'2020-03-28 11:05:56.661178','2','Networking',1,'[{\"added\": {}}]',18,2),(42,'2020-03-28 11:06:32.721837','3','Accounts',1,'[{\"added\": {}}]',18,2),(43,'2020-03-28 11:07:40.267550','2','Finance',2,'[{\"changed\": {\"fields\": [\"Department name\"]}}]',16,2),(44,'2020-03-28 11:11:33.047513','1','Bulbul',1,'[{\"added\": {}}]',7,2),(45,'2020-03-28 11:12:46.127304','2','ewrqwerwer',1,'[{\"added\": {}}]',7,2),(46,'2020-03-28 11:27:09.065544','1','CIPM',1,'[{\"added\": {}}]',34,2),(47,'2020-03-28 11:27:20.074344','2','CFA',1,'[{\"added\": {}}]',34,2),(48,'2020-03-28 11:27:57.565450','3','Engineer Intern',1,'[{\"added\": {}}]',34,2),(49,'2020-03-28 11:28:25.544826','4','Structural Engineer',1,'[{\"added\": {}}]',34,2),(50,'2020-03-28 13:46:09.510195','2','(<EmployeePersonalInformation: Bulbul>, <Designation: CIPM>)',1,'[{\"added\": {}}]',35,2),(51,'2020-03-28 13:47:13.716524','2','(<EmployeePersonalInformation: Bulbul>, <Designation: CIPM>)',2,'[]',35,2),(52,'2020-03-28 13:47:28.883207','3','(<EmployeePersonalInformation: ewrqwerwer>, <Designation: CFA>)',1,'[{\"added\": {}}]',35,2),(53,'2020-03-28 16:12:05.258936','2','Bulbul',1,'[{\"added\": {}}]',36,2),(54,'2020-03-28 16:12:10.711959','3','ewrqwerwer',1,'[{\"added\": {}}]',36,2),(55,'2020-03-29 07:36:59.530651','4','Bulbul',1,'[{\"added\": {}}]',36,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(24,'adminlte3_theme','bloodgroup'),(33,'adminlte3_theme','company'),(27,'adminlte3_theme','country'),(30,'adminlte3_theme','department'),(29,'adminlte3_theme','district'),(23,'adminlte3_theme','division'),(28,'adminlte3_theme','employeepersonalinformation'),(26,'adminlte3_theme','gender'),(32,'adminlte3_theme','groupofcompany'),(22,'adminlte3_theme','policestation'),(25,'adminlte3_theme','religion'),(31,'adminlte3_theme','section'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(36,'sm_hr','attendance'),(19,'sm_hr','author'),(10,'sm_hr','bloodgroup'),(20,'sm_hr','book'),(17,'sm_hr','company'),(14,'sm_hr','country'),(16,'sm_hr','department'),(34,'sm_hr','designation'),(9,'sm_hr','district'),(13,'sm_hr','division'),(7,'sm_hr','employeepersonalinformation'),(11,'sm_hr','gender'),(15,'sm_hr','groupofcompany'),(35,'sm_hr','jobdescription'),(8,'sm_hr','policestation'),(21,'sm_hr','publisher'),(12,'sm_hr','religion'),(18,'sm_hr','section');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-21 02:04:18.286472'),(2,'auth','0001_initial','2020-03-21 02:04:21.107857'),(3,'admin','0001_initial','2020-03-21 02:04:38.497793'),(4,'admin','0002_logentry_remove_auto_add','2020-03-21 02:04:41.746426'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-21 02:04:42.126658'),(6,'contenttypes','0002_remove_content_type_name','2020-03-21 02:04:45.020458'),(7,'auth','0002_alter_permission_name_max_length','2020-03-21 02:04:47.056866'),(8,'auth','0003_alter_user_email_max_length','2020-03-21 02:04:49.279249'),(9,'auth','0004_alter_user_username_opts','2020-03-21 02:04:49.381258'),(10,'auth','0005_alter_user_last_login_null','2020-03-21 02:04:52.147122'),(11,'auth','0006_require_contenttypes_0002','2020-03-21 02:04:52.269033'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-21 02:04:52.381677'),(13,'auth','0008_alter_user_username_max_length','2020-03-21 02:04:55.737125'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-21 02:04:58.357980'),(15,'auth','0010_alter_group_name_max_length','2020-03-21 02:05:00.814629'),(16,'auth','0011_update_proxy_permissions','2020-03-21 02:05:00.885605'),(17,'sessions','0001_initial','2020-03-21 02:05:02.310196'),(18,'sm_hr','0001_initial','2020-03-21 02:15:26.471147'),(19,'sm_hr','0002_author_book_publisher','2020-03-23 05:01:30.112542'),(20,'adminlte3_theme','0001_initial','2020-03-23 09:16:25.044980'),(21,'sm_hr','0003_auto_20200328_1124','2020-03-28 11:24:32.998170'),(22,'sm_hr','0004_jobdescription','2020-03-28 13:36:14.250339'),(23,'sm_hr','0005_attendence','2020-03-28 16:10:06.627851'),(24,'sm_hr','0006_auto_20200328_1641','2020-03-28 16:41:26.658095'),(25,'sm_hr','0007_auto_20200402_1009','2020-04-02 10:09:46.969170');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9zobvssrrw2wxiiaet2vcgd542cp6w5s','ZDVjM2U5ZTZmMDEwZmY0ZmUzODZjMTMwOWE2MzY2NjNkYjg3MzNmMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmODNjNjkxNjg1MTRlYjlkNDNjOTFlOWY0OTcxMDM0YmJmZjVmZjEwIn0=','2020-04-11 10:56:38.342072'),('a48rf9tst4n9qx3hwockcr9id1azqptg','ZDVjM2U5ZTZmMDEwZmY0ZmUzODZjMTMwOWE2MzY2NjNkYjg3MzNmMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmODNjNjkxNjg1MTRlYjlkNDNjOTFlOWY0OTcxMDM0YmJmZjVmZjEwIn0=','2020-04-10 14:37:59.302257'),('w31gkpqaddissy8gxfn1asmzjwtino3d','MGQwMDk4Zjg3ZDY4NGE3NGY5MmNlNzQwZDg2ODFmZmNmYWY0NmY2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDMyYjBlODZlYWM2M2UyZGI0N2E2ZDg2NWM5ZjljZTM5NjZlMDIwIn0=','2020-04-04 02:56:07.997964');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_attendance`
--

DROP TABLE IF EXISTS `sm_hr_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `att_date` date NOT NULL,
  `time_in` time(6) NOT NULL,
  `time_out` time(6) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_hr_attendence_employee_id_25f9f397_fk_sm_hr_emp` (`employee_id`),
  CONSTRAINT `sm_hr_attendence_employee_id_25f9f397_fk_sm_hr_emp` FOREIGN KEY (`employee_id`) REFERENCES `sm_hr_employeepersonalinformation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_attendance`
--

LOCK TABLES `sm_hr_attendance` WRITE;
/*!40000 ALTER TABLE `sm_hr_attendance` DISABLE KEYS */;
INSERT INTO `sm_hr_attendance` VALUES (2,'2020-03-28','16:12:00.000000','16:12:00.000000',NULL,'2020-03-28 16:12:05.242426','2020-03-28 16:12:05.242513',1),(3,'2020-03-28','16:12:05.000000','16:12:05.000000',NULL,'2020-03-28 16:12:10.678808','2020-03-28 16:12:10.678866',2),(4,'2020-03-29','07:24:31.000000','18:00:00.000000',NULL,'2020-03-29 07:36:59.421969','2020-03-29 07:36:59.422007',1);
/*!40000 ALTER TABLE `sm_hr_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_author`
--

DROP TABLE IF EXISTS `sm_hr_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `headshot` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_author`
--

LOCK TABLES `sm_hr_author` WRITE;
/*!40000 ALTER TABLE `sm_hr_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_hr_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_bloodgroup`
--

DROP TABLE IF EXISTS `sm_hr_bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_bloodgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blood_group_name` (`blood_group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_bloodgroup`
--

LOCK TABLES `sm_hr_bloodgroup` WRITE;
/*!40000 ALTER TABLE `sm_hr_bloodgroup` DISABLE KEYS */;
INSERT INTO `sm_hr_bloodgroup` VALUES (1,'A+','2020-03-21 04:46:10.868479','2020-03-21 04:46:10.868614',1),(2,'A-','2020-03-21 04:46:18.149838','2020-03-21 04:46:18.149906',1),(3,'B+','2020-03-25 07:07:02.799107','2020-03-25 07:07:02.799138',1),(4,'B-','2020-03-25 07:07:09.587443','2020-03-25 07:07:09.587545',1),(5,'AB+','2020-03-25 07:08:16.815819','2020-03-25 07:08:16.815844',1),(6,'AB-','2020-03-25 07:08:24.912492','2020-03-25 07:08:24.912576',1),(7,'O+','2020-03-25 10:47:36.450339','2020-03-25 10:47:36.450364',1),(8,'O-','2020-03-25 10:47:47.544270','2020-03-25 10:47:47.544314',1);
/*!40000 ALTER TABLE `sm_hr_bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_book`
--

DROP TABLE IF EXISTS `sm_hr_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `publication_date` date NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_hr_book_publisher_id_5d28b1fd_fk_sm_hr_publisher_id` (`publisher_id`),
  CONSTRAINT `sm_hr_book_publisher_id_5d28b1fd_fk_sm_hr_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `sm_hr_publisher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_book`
--

LOCK TABLES `sm_hr_book` WRITE;
/*!40000 ALTER TABLE `sm_hr_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_hr_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_book_authors`
--

DROP TABLE IF EXISTS `sm_hr_book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_book_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sm_hr_book_authors_book_id_author_id_aa128be7_uniq` (`book_id`,`author_id`),
  KEY `sm_hr_book_authors_author_id_27be3305_fk_sm_hr_author_id` (`author_id`),
  CONSTRAINT `sm_hr_book_authors_author_id_27be3305_fk_sm_hr_author_id` FOREIGN KEY (`author_id`) REFERENCES `sm_hr_author` (`id`),
  CONSTRAINT `sm_hr_book_authors_book_id_cdbf46b8_fk_sm_hr_book_id` FOREIGN KEY (`book_id`) REFERENCES `sm_hr_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_book_authors`
--

LOCK TABLES `sm_hr_book_authors` WRITE;
/*!40000 ALTER TABLE `sm_hr_book_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_hr_book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_company`
--

DROP TABLE IF EXISTS `sm_hr_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `company_logo` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `group_of_company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_name` (`company_name`),
  KEY `sm_hr_company_group_of_company_id_21b22040_fk_sm_hr_gro` (`group_of_company_id`),
  CONSTRAINT `sm_hr_company_group_of_company_id_21b22040_fk_sm_hr_gro` FOREIGN KEY (`group_of_company_id`) REFERENCES `sm_hr_groupofcompany` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_company`
--

LOCK TABLES `sm_hr_company` WRITE;
/*!40000 ALTER TABLE `sm_hr_company` DISABLE KEYS */;
INSERT INTO `sm_hr_company` VALUES (1,'Company1',NULL,'','2020-03-21 11:45:21.195457','2020-03-21 11:45:21.195494',1,1),(2,'Company name',NULL,'','2020-03-28 10:58:06.437290','2020-03-28 10:58:06.437342',1,2);
/*!40000 ALTER TABLE `sm_hr_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_country`
--

DROP TABLE IF EXISTS `sm_hr_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_country`
--

LOCK TABLES `sm_hr_country` WRITE;
/*!40000 ALTER TABLE `sm_hr_country` DISABLE KEYS */;
INSERT INTO `sm_hr_country` VALUES (1,'Bangladesh','2020-03-21 02:57:12.334743','2020-03-21 02:57:12.334768',1),(2,'India','2020-03-21 02:57:37.935650','2020-03-21 02:57:37.935754',1);
/*!40000 ALTER TABLE `sm_hr_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_department`
--

DROP TABLE IF EXISTS `sm_hr_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_name` (`department_name`),
  KEY `sm_hr_department_company_id_a80984c0_fk_sm_hr_company_id` (`company_id`),
  CONSTRAINT `sm_hr_department_company_id_a80984c0_fk_sm_hr_company_id` FOREIGN KEY (`company_id`) REFERENCES `sm_hr_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_department`
--

LOCK TABLES `sm_hr_department` WRITE;
/*!40000 ALTER TABLE `sm_hr_department` DISABLE KEYS */;
INSERT INTO `sm_hr_department` VALUES (1,'IT',NULL,'2020-03-21 11:45:34.508566','2020-03-21 11:45:34.508607',1,1),(2,'Finance',NULL,'2020-03-28 10:59:22.929618','2020-03-28 11:07:40.266637',1,2);
/*!40000 ALTER TABLE `sm_hr_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_designation`
--

DROP TABLE IF EXISTS `sm_hr_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `designation_name` (`designation_name`),
  KEY `sm_hr_designation_company_id_fcbcb732_fk_sm_hr_company_id` (`company_id`),
  CONSTRAINT `sm_hr_designation_company_id_fcbcb732_fk_sm_hr_company_id` FOREIGN KEY (`company_id`) REFERENCES `sm_hr_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_designation`
--

LOCK TABLES `sm_hr_designation` WRITE;
/*!40000 ALTER TABLE `sm_hr_designation` DISABLE KEYS */;
INSERT INTO `sm_hr_designation` VALUES (1,'CIPM',NULL,'2020-03-28 11:27:09.063474','2020-03-28 11:27:09.063574',1,2),(2,'CFA',NULL,'2020-03-28 11:27:20.070925','2020-03-28 11:27:20.071027',1,2),(3,'Engineer Intern',NULL,'2020-03-28 11:27:57.563099','2020-03-28 11:27:57.563218',1,2),(4,'Structural Engineer',NULL,'2020-03-28 11:28:25.544169','2020-03-28 11:28:25.544200',1,2);
/*!40000 ALTER TABLE `sm_hr_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_district`
--

DROP TABLE IF EXISTS `sm_hr_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `district_name` (`district_name`),
  KEY `sm_hr_district_division_id_189a3cdc_fk_sm_hr_division_id` (`division_id`),
  CONSTRAINT `sm_hr_district_division_id_189a3cdc_fk_sm_hr_division_id` FOREIGN KEY (`division_id`) REFERENCES `sm_hr_division` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_district`
--

LOCK TABLES `sm_hr_district` WRITE;
/*!40000 ALTER TABLE `sm_hr_district` DISABLE KEYS */;
INSERT INTO `sm_hr_district` VALUES (1,'Dhaka',NULL,'2020-03-28 11:00:13.246800','2020-03-28 11:00:13.246901',1,1),(2,'Narayan Gonj',NULL,'2020-03-28 11:00:29.233680','2020-03-28 11:00:29.233737',1,1);
/*!40000 ALTER TABLE `sm_hr_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_division`
--

DROP TABLE IF EXISTS `sm_hr_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `division_name` (`division_name`),
  KEY `sm_hr_division_country_id_7c985c46_fk_sm_hr_country_id` (`country_id`),
  CONSTRAINT `sm_hr_division_country_id_7c985c46_fk_sm_hr_country_id` FOREIGN KEY (`country_id`) REFERENCES `sm_hr_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_division`
--

LOCK TABLES `sm_hr_division` WRITE;
/*!40000 ALTER TABLE `sm_hr_division` DISABLE KEYS */;
INSERT INTO `sm_hr_division` VALUES (1,'Dhaka','2020-03-28 11:00:02.557981','2020-03-28 11:00:02.558046',1,1);
/*!40000 ALTER TABLE `sm_hr_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_employeepersonalinformation`
--

DROP TABLE IF EXISTS `sm_hr_employeepersonalinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_employeepersonalinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `Father_name` varchar(225) NOT NULL,
  `Mother_name` varchar(225) NOT NULL,
  `personal_mobile_number` varchar(17) NOT NULL,
  `alternate_mobile_number` varchar(17) NOT NULL,
  `date_of_birth` date NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `passport_number` varchar(20) NOT NULL,
  `passport_expiry_date` date DEFAULT NULL,
  `present_address` longtext,
  `permanant_address` longtext,
  `email` varchar(254) NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_name` (`employee_name`),
  UNIQUE KEY `employee_id` (`employee_id`),
  UNIQUE KEY `personal_mobile_number` (`personal_mobile_number`),
  UNIQUE KEY `national_id` (`national_id`),
  UNIQUE KEY `passport_number` (`passport_number`),
  UNIQUE KEY `email` (`email`),
  KEY `sm_hr_employeeperson_blood_group_id_7b56cf19_fk_sm_hr_blo` (`blood_group_id`),
  KEY `sm_hr_employeeperson_country_id_10f090ad_fk_sm_hr_cou` (`country_id`),
  KEY `sm_hr_employeeperson_district_id_d0324a9f_fk_sm_hr_dis` (`district_id`),
  KEY `sm_hr_employeeperson_division_id_7828936f_fk_sm_hr_div` (`division_id`),
  KEY `sm_hr_employeeperson_gender_id_9f1d82df_fk_sm_hr_gen` (`gender_id`),
  KEY `sm_hr_employeeperson_religion_id_8d7cd243_fk_sm_hr_rel` (`religion_id`),
  CONSTRAINT `sm_hr_employeeperson_blood_group_id_7b56cf19_fk_sm_hr_blo` FOREIGN KEY (`blood_group_id`) REFERENCES `sm_hr_bloodgroup` (`id`),
  CONSTRAINT `sm_hr_employeeperson_country_id_10f090ad_fk_sm_hr_cou` FOREIGN KEY (`country_id`) REFERENCES `sm_hr_country` (`id`),
  CONSTRAINT `sm_hr_employeeperson_district_id_d0324a9f_fk_sm_hr_dis` FOREIGN KEY (`district_id`) REFERENCES `sm_hr_district` (`id`),
  CONSTRAINT `sm_hr_employeeperson_division_id_7828936f_fk_sm_hr_div` FOREIGN KEY (`division_id`) REFERENCES `sm_hr_division` (`id`),
  CONSTRAINT `sm_hr_employeeperson_gender_id_9f1d82df_fk_sm_hr_gen` FOREIGN KEY (`gender_id`) REFERENCES `sm_hr_gender` (`id`),
  CONSTRAINT `sm_hr_employeeperson_religion_id_8d7cd243_fk_sm_hr_rel` FOREIGN KEY (`religion_id`) REFERENCES `sm_hr_religion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_employeepersonalinformation`
--

LOCK TABLES `sm_hr_employeepersonalinformation` WRITE;
/*!40000 ALTER TABLE `sm_hr_employeepersonalinformation` DISABLE KEYS */;
INSERT INTO `sm_hr_employeepersonalinformation` VALUES (1,'Bulbul','','101','Abdul Hai','Nahar','018928329381','2312229329184','1980-01-01','33248230948023940918','234324232342','2020-05-30','ok','ok','bulbul@shurjomukhi.com.bd',NULL,'2020-03-28 11:11:33.026895','2020-03-28 11:11:33.027012',1,5,1,2,1,1,1),(2,'ewrqwerwer','','110','fdfdsfsadf','mdgsgfbsdf','3452354','234534','1900-01-01','4353254324','342523','2020-03-28','45345','345345','k@j.com',NULL,'2020-03-28 11:12:46.125804','2020-03-28 11:12:46.125829',1,2,2,1,1,1,1);
/*!40000 ALTER TABLE `sm_hr_employeepersonalinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_gender`
--

DROP TABLE IF EXISTS `sm_hr_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_name` (`gender_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_gender`
--

LOCK TABLES `sm_hr_gender` WRITE;
/*!40000 ALTER TABLE `sm_hr_gender` DISABLE KEYS */;
INSERT INTO `sm_hr_gender` VALUES (1,'Male','2020-03-28 11:00:48.262181','2020-03-28 11:00:48.262309',1),(2,'Female','2020-03-28 11:01:08.764594','2020-03-28 11:01:08.764698',1);
/*!40000 ALTER TABLE `sm_hr_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_groupofcompany`
--

DROP TABLE IF EXISTS `sm_hr_groupofcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_groupofcompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_of_company_name` varchar(100) NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_of_company_name` (`group_of_company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_groupofcompany`
--

LOCK TABLES `sm_hr_groupofcompany` WRITE;
/*!40000 ALTER TABLE `sm_hr_groupofcompany` DISABLE KEYS */;
INSERT INTO `sm_hr_groupofcompany` VALUES (1,'GC',NULL,'2020-03-21 11:45:04.711187','2020-03-21 11:45:04.711219',1),(2,'Group of company name',NULL,'2020-03-28 10:57:13.742074','2020-03-28 10:57:13.742170',1);
/*!40000 ALTER TABLE `sm_hr_groupofcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_jobdescription`
--

DROP TABLE IF EXISTS `sm_hr_jobdescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_jobdescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joining_date` date NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sm_hr_jobdescription_company_id_f2421214_fk_sm_hr_company_id` (`company_id`),
  KEY `sm_hr_jobdescription_department_id_a0885dd5_fk_sm_hr_dep` (`department_id`),
  KEY `sm_hr_jobdescription_designation_id_abefb8ae_fk_sm_hr_des` (`designation_id`),
  KEY `sm_hr_jobdescription_employee_id_bb1bdd75_fk_sm_hr_emp` (`employee_id`),
  KEY `sm_hr_jobdescription_section_id_0b2c5a18_fk_sm_hr_section_id` (`section_id`),
  CONSTRAINT `sm_hr_jobdescription_company_id_f2421214_fk_sm_hr_company_id` FOREIGN KEY (`company_id`) REFERENCES `sm_hr_company` (`id`),
  CONSTRAINT `sm_hr_jobdescription_department_id_a0885dd5_fk_sm_hr_dep` FOREIGN KEY (`department_id`) REFERENCES `sm_hr_department` (`id`),
  CONSTRAINT `sm_hr_jobdescription_designation_id_abefb8ae_fk_sm_hr_des` FOREIGN KEY (`designation_id`) REFERENCES `sm_hr_designation` (`id`),
  CONSTRAINT `sm_hr_jobdescription_employee_id_bb1bdd75_fk_sm_hr_emp` FOREIGN KEY (`employee_id`) REFERENCES `sm_hr_employeepersonalinformation` (`id`),
  CONSTRAINT `sm_hr_jobdescription_section_id_0b2c5a18_fk_sm_hr_section_id` FOREIGN KEY (`section_id`) REFERENCES `sm_hr_section` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_jobdescription`
--

LOCK TABLES `sm_hr_jobdescription` WRITE;
/*!40000 ALTER TABLE `sm_hr_jobdescription` DISABLE KEYS */;
INSERT INTO `sm_hr_jobdescription` VALUES (2,'2020-03-28',NULL,'2020-03-28 13:46:09.401567','2020-03-28 13:47:13.687475',2,1,1,1,1),(3,'2020-03-28',NULL,'2020-03-28 13:47:28.882251','2020-03-28 13:47:28.882283',2,1,2,2,1);
/*!40000 ALTER TABLE `sm_hr_jobdescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_policestation`
--

DROP TABLE IF EXISTS `sm_hr_policestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_policestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `police_station_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `police_station_name` (`police_station_name`),
  KEY `sm_hr_policestation_district_id_c0055709_fk_sm_hr_district_id` (`district_id`),
  CONSTRAINT `sm_hr_policestation_district_id_c0055709_fk_sm_hr_district_id` FOREIGN KEY (`district_id`) REFERENCES `sm_hr_district` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_policestation`
--

LOCK TABLES `sm_hr_policestation` WRITE;
/*!40000 ALTER TABLE `sm_hr_policestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_hr_policestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_publisher`
--

DROP TABLE IF EXISTS `sm_hr_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state_province` varchar(30) NOT NULL,
  `country` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_publisher`
--

LOCK TABLES `sm_hr_publisher` WRITE;
/*!40000 ALTER TABLE `sm_hr_publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `sm_hr_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_religion`
--

DROP TABLE IF EXISTS `sm_hr_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religion_name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `religion_name` (`religion_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_religion`
--

LOCK TABLES `sm_hr_religion` WRITE;
/*!40000 ALTER TABLE `sm_hr_religion` DISABLE KEYS */;
INSERT INTO `sm_hr_religion` VALUES (1,'Islam','2020-03-28 11:01:51.526643','2020-03-28 11:01:51.526698',1),(2,'Hinduism','2020-03-28 11:02:32.072492','2020-03-28 11:02:32.072591',1),(3,'Judaism','2020-03-28 11:02:47.958551','2020-03-28 11:02:47.958602',1),(4,'Christianity','2020-03-28 11:04:38.361028','2020-03-28 11:04:38.361198',1);
/*!40000 ALTER TABLE `sm_hr_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sm_hr_section`
--

DROP TABLE IF EXISTS `sm_hr_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sm_hr_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `section_name` (`section_name`),
  KEY `sm_hr_section_department_id_57b2daff_fk_sm_hr_department_id` (`department_id`),
  CONSTRAINT `sm_hr_section_department_id_57b2daff_fk_sm_hr_department_id` FOREIGN KEY (`department_id`) REFERENCES `sm_hr_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sm_hr_section`
--

LOCK TABLES `sm_hr_section` WRITE;
/*!40000 ALTER TABLE `sm_hr_section` DISABLE KEYS */;
INSERT INTO `sm_hr_section` VALUES (1,'Software',NULL,'2020-03-28 11:05:29.760849','2020-03-28 11:05:29.760876',1,1),(2,'Networking',NULL,'2020-03-28 11:05:56.658392','2020-03-28 11:05:56.658475',1,1),(3,'Accounts',NULL,'2020-03-28 11:06:32.719670','2020-03-28 11:06:32.719773',1,2);
/*!40000 ALTER TABLE `sm_hr_section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06 10:14:48
