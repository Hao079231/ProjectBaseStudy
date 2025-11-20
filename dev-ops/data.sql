-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: nails_authentication
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `clientdetails`
--

DROP TABLE IF EXISTS `clientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientdetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grantTypes` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdetails`
--

LOCK TABLES `clientdetails` WRITE;
/*!40000 ALTER TABLE `clientdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('1688988515879-1','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',1,'EXECUTED','8:3397ceb343e865c581a38790720ea5ec','createTable tableName=clientdetails','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-2','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',2,'EXECUTED','8:7384bb70993b2c2b2b7763a05b0bc328','createTable tableName=db_nails_account','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-3','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',3,'EXECUTED','8:0d03dc93b797e546b73513e6d9cf464f','createTable tableName=db_nails_customer_profile','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-4','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',4,'EXECUTED','8:3d1024c16da4d67358dd3f9a8a759364','createTable tableName=db_nails_db_config','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-5','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',5,'EXECUTED','8:8af1156b27f025f8d7f8ac747d01abbe','createTable tableName=db_nails_group','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-6','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',6,'EXECUTED','8:61e1d6b2b9c03c1e2a6461ec2a5f78d1','createTable tableName=db_nails_permission','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-7','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:45',7,'EXECUTED','8:cd91b2fc383eeb06b3583a3c94aa5eaa','createTable tableName=db_nails_permission_group','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-8','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',8,'EXECUTED','8:38b95a013f9e35f0ebd703360b12cc09','createTable tableName=db_nails_store','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-9','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',9,'EXECUTED','8:7eb9b9c4451f980c7cee8dbec94c1fab','createTable tableName=db_nails_shop_profile','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-10','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',10,'EXECUTED','8:c85116d592a12532dd55c268bbe8630e','createTable tableName=db_nails_system_setting','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-11','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',11,'EXECUTED','8:76a57f6936aeeac3f1ccfe741374d569','createTable tableName=db_nails_tablet_device','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-12','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',12,'EXECUTED','8:503ee3f3e5d657ca532ae73150f0b312','createTable tableName=db_nails_token','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-13','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',13,'EXECUTED','8:89c4987f2cb2acb9a4ff0f89c0ff679b','createTable tableName=oauth_access_token','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-14','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',14,'EXECUTED','8:ee69a51b1e3f5b4eedc461d29e275810','createTable tableName=oauth_approvals','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-15','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',15,'EXECUTED','8:26854011a8686d1df658a39ac61b38e1','createTable tableName=oauth_client_details','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-16','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',16,'EXECUTED','8:d4999b070522397eb65cf863a7bc1a04','createTable tableName=oauth_client_token','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-17','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',17,'EXECUTED','8:7061cbda9d6c7df17ad07bd48009d9af','createTable tableName=oauth_code','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-18','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',18,'EXECUTED','8:732dc4d00a0b816328a2b0b93ba3e021','createTable tableName=oauth_refresh_token','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-19','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',19,'EXECUTED','8:7bf485f15265e1fead9258648682704e','createIndex indexName=FK59tm00825bwfyqvn4u0bid8eq, tableName=db_nails_tablet_device','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-20','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',20,'EXECUTED','8:53db8e1c305b4d648cb98a168b8a95a3','createIndex indexName=FKd48agbf6dmqoa4doc94ihh17g, tableName=db_nails_db_config','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-21','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',21,'EXECUTED','8:be38230203f4456eddc9ec7660710e49','createIndex indexName=FKel4h9qmyq5nm2mwgxks9g0xf9, tableName=db_nails_store','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-22','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',22,'EXECUTED','8:9070ce8aa48f2a331ac22bd49525dc97','createIndex indexName=FKivhgpixh701p15vc6y2jii04a, tableName=db_nails_permission_group','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-23','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',23,'EXECUTED','8:9ccb3ddfd10dc876c448f15752e639f3','createIndex indexName=FKlw76cew26h155ap1bxgfogo3j, tableName=db_nails_account','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-24','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',24,'EXECUTED','8:e0173218323939e60359ee7c0a0be926','createIndex indexName=FKmpnlcxj6qd8mjga6r62hts9lh, tableName=db_nails_token','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988515879-25','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',25,'EXECUTED','8:1bf8db8bb0b79befc44342f92684380d','createIndex indexName=FKrhxmut91omg25odnxoj0sa7q5, tableName=db_nails_permission_group','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-1','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',26,'EXECUTED','8:351710c4650ad1cd201d19456c3e8d1c','addForeignKeyConstraint baseTableName=db_nails_customer_profile, constraintName=FK2qi62icegxsxe3px6llkri55y, referencedTableName=db_nails_account','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-2','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',27,'EXECUTED','8:1485f79f384028b1a7b8f847c3e48e37','addForeignKeyConstraint baseTableName=db_nails_tablet_device, constraintName=FK59tm00825bwfyqvn4u0bid8eq, referencedTableName=db_nails_store','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-3','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',28,'EXECUTED','8:b5292dc78aab5f2ba156a97334a2bb57','addForeignKeyConstraint baseTableName=db_nails_shop_profile, constraintName=FK5tpycpt9dvlit7bu6otjnhpek, referencedTableName=db_nails_account','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-4','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',29,'EXECUTED','8:74e5454b4a3259ae802391ac6bb6c845','addForeignKeyConstraint baseTableName=db_nails_db_config, constraintName=FKd48agbf6dmqoa4doc94ihh17g, referencedTableName=db_nails_store','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-5','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',30,'EXECUTED','8:7e42fe18375d600cd19aa1d8122a635a','addForeignKeyConstraint baseTableName=db_nails_store, constraintName=FKel4h9qmyq5nm2mwgxks9g0xf9, referencedTableName=db_nails_account','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-6','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:46',31,'EXECUTED','8:d542d1e7ca27c7ac5c7e9ee46d979867','addForeignKeyConstraint baseTableName=db_nails_account, constraintName=FKlw76cew26h155ap1bxgfogo3j, referencedTableName=db_nails_group','',NULL,'4.19.0',NULL,NULL,'9177945574'),('1688988778509-7','Authentication','liquibase/db.changelog-1.0.0.xml','2023-07-12 23:05:47',32,'EXECUTED','8:a9fd3e9f19197d56d6d5711d70db3285','addForeignKeyConstraint baseTableName=db_nails_token, constraintName=FKmpnlcxj6qd8mjga6r62hts9lh, referencedTableName=db_nails_store','',NULL,'4.19.0',NULL,NULL,'9177945574');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_account`
--

DROP TABLE IF EXISTS `db_nails_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_account` (
  `id` bigint NOT NULL,
  `kind` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `avatar_path` varchar(255) DEFAULT NULL,
  `reset_pwd_code` varchar(255) DEFAULT NULL,
  `reset_pwd_time` datetime DEFAULT NULL,
  `attempt_forget_pwd` int DEFAULT NULL,
  `attempt_login` int DEFAULT NULL,
  `is_super_admin` bit(1) DEFAULT NULL,
  `firebase_api_key` varchar(255) DEFAULT NULL,
  `firebase_app_id` varchar(255) DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq43gkcct4py9h5wfjdwcpaj9w` (`group_id`),
  CONSTRAINT `FKq43gkcct4py9h5wfjdwcpaj9w` FOREIGN KEY (`group_id`) REFERENCES `db_nails_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_account`
--

LOCK TABLES `db_nails_account` WRITE;
/*!40000 ALTER TABLE `db_nails_account` DISABLE KEYS */;
INSERT INTO `db_nails_account` VALUES (2,1,'admin','droiddev.89@gmail.com','{bcrypt}$2a$10$YMZFAA1FLQQzz29qLCtHG.8oBvq0g/6tpX0ODh269rckAU9lsgrrS','Super Admin','2023-03-27 03:52:17',NULL,'0622','2021-03-11 17:16:26',0,NULL,_binary '',NULL,NULL,15,1,'Admin','2020-06-24 00:22:30','admin','2023-04-16 14:52:55'),(3,1,'internal','droiddev.89@gmail.com','{bcrypt}$2a$10$iKuYlgPGx/UzbvZAe4QMuuxMYnjzgQ1FQwu1Tg75XyT0lXXZGEjES','Internal Account .','2023-03-27 03:52:17','/AVATAR/AVATAR_2Jv0UTJLk7.','0622','2021-03-11 17:16:26',0,NULL,_binary '',NULL,NULL,112,1,'Admin','2020-06-24 00:22:30','admin','2023-04-09 09:40:01'),(27,2,'customerdemo','droiddve89@gmail.com','{bcrypt}$2a$10$uO/K2b9CHTF5z3rpj.ibn.AYwxKvPmVZ8c80YoCoffDLix3Cr58jK','Customer Demo test','2023-06-23 09:11:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,1,'Admin','2020-06-25 13:39:20','customerdemo','2023-06-23 09:11:16'),(111,0,'anonymous','anonymous@qrcode.com','1234567sdfghjxcvbnmrtyuvbn','guest','2023-04-02 07:34:35','',NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,111,1,'admin','2023-04-02 07:34:35','admin','2023-04-02 07:34:35'),(112,0,'qrliveclient','anonymous@qrcode.com','1234567sdfghjxcvbnmrtyuvbn','guest','2023-04-02 07:34:35','',NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,113,1,'admin','2023-04-02 07:34:35','admin','2023-04-02 07:34:35'),(113,0,'tableqrclient','anonymous@qrcode.com','1234567sdfghjxcvbnmrtyuvbn','guest','2023-04-02 07:34:35','',NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,113,1,'admin','2023-04-02 07:34:35','admin','2023-04-02 07:34:35'),(209,3,'admin2412','dinhthoai241297@gmail.com','{bcrypt}$2a$10$xsaoVSTBV3rlx6nhOVNCqeBAuIPkbZfYhlQwbPQTcay.USr8xcD5a','Thoai Pham','2020-09-10 13:57:57',NULL,'4454','2021-03-16 21:33:19',0,NULL,NULL,NULL,NULL,19,1,'Admin','2020-09-10 13:57:10','unknown','2021-03-16 21:33:19'),(305,3,'vantam010189','vantam010189@gmail.com','{bcrypt}$2a$10$bdNj26uiZ3JD3GBwejB.MetwRQBGBX.ube.WAVtgX8RPGZmcaXD4u','Huynh Tam','2023-02-22 04:32:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'Admin','2020-09-13 08:43:37','anonymousUser','2023-04-20 05:21:29'),(700,3,'Thiphung','Devlancer2008@gmail.com','$2a$10$JZ0UV5s259WPiMYuXgc5Le6637423oWSjX3oogPH4UX9p6etWhseC','Thi','2020-09-27 12:13:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'Admin','2020-09-27 12:12:49','Admin','2020-09-27 12:13:12'),(745,3,'dinhthoai241297','dinhthoai2412@gmail.com','{bcrypt}$2a$10$9XpxIJeiwKY2QT2psOvFn.n/phtD7Cb.N5xzqqPlIiUBMbgFj4WV2','Thoai','2021-01-07 14:02:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'Admin','2020-09-28 13:56:48','dinhthoai241297','2021-01-07 14:02:29'),(791,3,'devsimple','thetai180491@gmail.com','{bcrypt}$2a$10$JWLFm.Qf0dsCgRVhRCbgsuXN6Qko3KvlfJd0EsHFHan4S2i7vSXqW','Tài','2020-12-27 16:48:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'Admin','2020-09-30 15:14:13','devsimple','2020-12-27 16:48:10'),(2923,2,'musterrestaurant','info@hqtech.de','{bcrypt}$2a$10$7WeT73.16ZJh8KzEwID8Z.mIw2fkWczUUyChiHAKHKijR5bdhiJZK','Muster Restaurant','2022-10-24 12:53:22','/AVATAR/AVATAR_GFH1wG6ezj.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,1,'Admin','2020-07-12 08:33:53','musterrestaurant','2022-10-24 12:53:22'),(4392,3,'admin241297','dinhthoai24121997@gmail.com','{bcrypt}$2a$10$psLqW0Y3XbnsBtG5rACdKupVvzmpcr9qcsfd0OcgFnLr/cQwspnOy','Thoai','2020-10-21 14:30:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'unknown','2020-10-21 14:23:19','admin','2021-01-17 18:01:08'),(5851,3,'taint1991','devsimple@gmail.com','{bcrypt}$2a$10$a52jVqiSI4M8qcdUpYeqy..UVIhlxSfGc8bF9Hj0xDHvchIvxiduW','Tài','2021-06-12 13:37:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,1,'unknown','2021-03-06 08:19:04','taint1991','2021-06-12 13:37:20'),(8764,3,'tmqhung','hjans@fhua.de','{bcrypt}$2a$10$I88WKFf25KNWOt5gugtQ..l7Bc.zHg7Q7CEQpkTPPRmGytOo1Rus6','Hung','2021-06-23 15:55:33',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2021-04-19 06:25:51','tmqhung','2021-06-23 15:55:33'),(8967,3,'tamhn89','tamhn@gmail.com','{bcrypt}$2a$10$3C2A4tQMXQczgazTbh3AluQOHntsMnIer..wLcNVNbPPh7QgZycSy','Huynh Tam','2021-05-06 17:19:45',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2021-05-06 16:52:10','tamhn89','2021-05-06 17:19:45'),(9021,3,'vantam.010189','vantam.010189@gmail.com','{bcrypt}$2a$10$bLywoSK4L1cBLCFGDFn87elJRR1fqwto4F6CKp7VdlHH.mrqM/yDm','Tam Huynh','2021-05-10 01:11:43',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2021-05-10 01:02:40','vantam.010189','2021-05-10 01:11:43'),(9113,3,'thaddäus2020','huymqtran@gmail.com','{bcrypt}$2a$10$aNdD3AVEIRFAAFPiln8TmenUg4qY9J/LcdTDQg.tGtlOQy/yk9lnW','Thaddäus Böhm','2021-05-15 08:42:04',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2021-05-15 08:41:41','thaddäus2020','2021-05-15 08:42:04'),(9124,3,'thaile','thaihqtech@gmail.com','{bcrypt}$2a$10$nnNzYQND/NK2jjPjiv.Ep.dwfww.PqMMXgCeN6ekRvb.kgNPnw1H.','Thai','2021-05-15 08:56:16',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2021-05-15 08:55:56','thaile','2021-05-15 08:56:16'),(5607008980119968,3,'phongla2001','phong@gmail.com','{bcrypt}$2a$10$.9bl.vskWi/DhISH24Q6muY164NODKCLOiP3YCgYhmr9z1IOywQm.','La Gia Phong','2022-09-15 14:51:57',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'unknown','2022-08-11 13:19:05','phongla2001','2022-09-15 14:51:57'),(5713517046149536,3,'test123','test@gmail.com','{bcrypt}$2a$10$CF41VrVTQU/07jjxHaZs/.HjmYWaKeP4M8/1k1A3nS4T4EwrfPX/6','Tran','2022-09-18 04:12:03',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,-1,'unknown','2022-09-18 04:11:53','admin','2023-04-09 10:06:06'),(6319010157297664,3,'tam12345','vantam.0101.89@gmail.com','{bcrypt}$2a$10$c0dlpZwYRPuCc7GswT8GbuMBjtTm2B6LJ2T3MBz22PeAcL66CHjMm','Tam',NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,19,1,'anonymousUser','2023-04-20 01:01:36','anonymousUser','2023-04-20 01:01:36'),(6360712425340928,1,'test11','test11@mail.com','{bcrypt}$2a$10$Ha/v6iObfC8g3wiySyyZu.z9rfVJIoyjeEF1nr41Oo8EnZ9m8YTfS','test11',NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,15,1,'admin','2023-05-04 18:32:29','test11','2023-05-04 18:43:09');
/*!40000 ALTER TABLE `db_nails_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_customer_profile`
--

DROP TABLE IF EXISTS `db_nails_customer_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_customer_profile` (
  `account_id` bigint NOT NULL,
  `addresses` text,
  `office_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sale_off_percent` double DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`account_id`),
  CONSTRAINT `FK2qi62icegxsxe3px6llkri55y` FOREIGN KEY (`account_id`) REFERENCES `db_nails_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_customer_profile`
--

LOCK TABLES `db_nails_customer_profile` WRITE;
/*!40000 ALTER TABLE `db_nails_customer_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_customer_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_db_config`
--

DROP TABLE IF EXISTS `db_nails_db_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_db_config` (
  `id` bigint NOT NULL,
  `driver_class_name` varchar(255) DEFAULT NULL,
  `initialize` bit(1) NOT NULL,
  `max_connection` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd48agbf6dmqoa4doc94ihh17g` (`store_id`),
  CONSTRAINT `FKd48agbf6dmqoa4doc94ihh17g` FOREIGN KEY (`store_id`) REFERENCES `db_nails_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_db_config`
--

LOCK TABLES `db_nails_db_config` WRITE;
/*!40000 ALTER TABLE `db_nails_db_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_db_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_group`
--

DROP TABLE IF EXISTS `db_nails_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_group` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `kind` int DEFAULT NULL,
  `is_system_role` bit(1) DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_group`
--

LOCK TABLES `db_nails_group` WRITE;
/*!40000 ALTER TABLE `db_nails_group` DISABLE KEYS */;
INSERT INTO `db_nails_group` VALUES (14,'ROLE ADMIN','Role for administrator',1,_binary '\0',1,'Admin','2020-06-24 07:33:00','admin','2023-04-10 06:47:43'),(15,'ROLE SUPPER ADMIN','Role for supper admin',1,_binary '\0',1,'Admin','2020-06-24 08:19:59','admin','2023-05-11 09:28:02'),(16,'ROLE SHOP ACCOUNT','Role for shop account',2,_binary '\0',1,'Admin','2020-06-24 08:21:54','admin','2023-05-09 16:08:56'),(19,'ROLE END USER','Role for end user',3,_binary '\0',1,'Admin','2020-06-24 07:33:00','Admin','2020-06-24 07:33:00'),(21,'ROLE PARTNER API','Role for Partner',4,_binary '\0',1,'Admin','2020-06-24 07:33:00','admin','2023-06-13 15:47:06'),(25,'ROLE ORDERCON TABLET','Role Ordercon Tablet',5,_binary '\0',1,'Admin','2020-06-24 07:33:00','admin','2023-06-13 15:56:14'),(29,'ROLE QRLIVE TABLET','Role QRlive Tablet',6,_binary '\0',1,'Admin','2020-06-24 07:33:00','admin','2023-04-13 07:52:17'),(111,'GUEST','Role for guest',1,_binary '',1,'Admin','2023-04-02 07:34:35','Admin','2023-04-02 07:34:35'),(112,'ROLE INTERNAL','Role Internal tenant -> auth',1,_binary '\0',1,'Admin','2023-04-02 07:34:35','admin','2023-05-12 10:00:13'),(113,'ROLE QRLIVE END USER','Role for qrlive end user scan qrcode',1,_binary '',1,'Admin','2023-04-02 07:34:35','admin','2023-05-04 11:00:29');
/*!40000 ALTER TABLE `db_nails_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_permission`
--

DROP TABLE IF EXISTS `db_nails_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `show_menu` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name_group` varchar(255) DEFAULT NULL,
  `p_code` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5722055072395733 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_permission`
--

LOCK TABLES `db_nails_permission` WRITE;
/*!40000 ALTER TABLE `db_nails_permission` DISABLE KEYS */;
INSERT INTO `db_nails_permission` VALUES (3,'Create customer account','/v1/account/create',_binary '\0','Create account','Account',NULL,1,'Admin','2020-06-24 02:14:55','Admin','2020-06-24 02:14:55'),(4,'Get account detail','/v1/account/get',_binary '\0','Get account detail bold customer and admin','Account','ACC_V',1,'Admin','2020-06-24 02:19:16','Admin','2020-06-24 02:19:16'),(5,'Get list account','/v1/account/list',_binary '','Get list account both customer and admin','Account','ACC_L',1,'Admin','2020-06-24 02:21:13','Admin','2020-06-24 02:21:13'),(6,'Delete an account','/v1/account/delete',_binary '\0','Delete account both customer and admin','Account','ACC_D',1,'Admin','2020-06-24 02:21:34','Admin','2020-06-24 02:21:34'),(7,'Create admin account','/v1/account/create_admin',_binary '\0','Create an admin account','Account','ACC_C_AD',1,'Admin','2020-06-24 02:24:17','Admin','2020-06-24 02:24:17'),(8,'Create group permission','/v1/group/create',_binary '\0','Create a group','Permission','GR_C',1,'Admin','2020-06-24 04:57:08','Admin','2020-06-24 04:57:08'),(9,'Get detail group permission','/v1/group/get',_binary '\0','Get detail a group permission','Permission','GR_V',1,'Admin','2020-06-24 04:57:34','Admin','2020-06-24 04:57:34'),(10,'Get list group permission','/v1/group/list',_binary '','Get list group permission','Permission','GR_L',1,'Admin','2020-06-24 04:58:00','Admin','2020-06-24 04:58:00'),(11,'Update a group permission','/v1/group/update',_binary '\0','Update a group permission','Permission','GR_U',1,'Admin','2020-06-24 04:58:21','Admin','2020-06-24 04:58:21'),(12,'Update a profile admin','/v1/account/update_profile_admin',_binary '\0','Update a profile admin','Account','ACC_U_PROFILE_AD',1,'Admin','2020-06-24 05:08:15','Admin','2020-06-24 05:08:15'),(13,'Update a admin account','/v1/account/update_admin',_binary '\0','Update a admin account','Account','ACC_U_AD',1,'Admin','2020-06-24 05:09:14','Admin','2020-06-24 05:09:14'),(42,'List shop account','/v1/shop_account/list',_binary '','List shop account','Shop Account','SHOP_L',1,'Admin','2020-09-06 13:06:09','Admin','2020-09-06 13:06:09'),(43,'Delete shop account','/v1/shop_account/delete',_binary '\0','Delete shop account','Shop Account','SHOP_D',1,'Admin','2020-09-06 13:07:54','Admin','2020-09-06 13:07:54'),(44,'Get shop account','/v1/shop_account/get',_binary '\0','Get shop account','Shop Account','SHOP_V',1,'Admin','2020-09-06 13:21:14','Admin','2020-09-06 13:21:14'),(51,'Get customer','/v1/customer/get',_binary '\0','Get customer','Customer Account','CUS_V',1,'Admin','2020-09-07 15:17:08','Admin','2020-09-07 15:17:08'),(52,'List customer','/v1/customer/list',_binary '','List customer','Customer Account','CUS_L',1,'Admin','2020-09-07 15:17:24','Admin','2020-09-07 15:17:24'),(53,'Update customer','/v1/customer/update',_binary '\0','Update customer','Customer Account','CUS_U',1,'Admin','2020-09-07 15:17:39','Admin','2020-09-07 15:17:39'),(54,'Delete customer','/v1/customer/delete',_binary '\0','Delete customer','Customer Account','CUS_D',1,'Admin','2020-09-07 15:17:53','Admin','2020-09-07 15:17:53'),(56,'List restaurant','/v1/restaurant/list',_binary '','List restaurant','Restaurant','RES_L',1,'Admin','2020-06-30 07:01:37','Admin','2020-06-30 07:01:37'),(57,'Update restaurant','/v1/restaurant/update',_binary '','Update restaurant','Restaurant','RES_U',1,'Admin','2020-06-30 07:11:11','Admin','2020-06-30 07:11:11'),(58,'Create restaurant','/v1/restaurant/create',_binary '','Create restaurant','Restaurant','RES_C',1,'Admin','2020-06-30 07:11:36','Admin','2020-06-30 07:11:36'),(59,'Get restaurant by customer','/v1/restaurant/list_by_customer',_binary '','Get restaurant by customer','Restaurant','RES_L_CUS',1,'Admin','2020-06-30 07:12:46','Admin','2020-06-30 07:12:46'),(60,'Get restaurant info','/v1/restaurant/get',_binary '\0','Get restaurant info','Restaurant','RES_V',1,'Admin','2020-06-30 07:14:27','Admin','2020-06-30 07:14:27'),(61,'Delete restaurant ','/v1/restaurant/delete',_binary '\0','Delete restaurant','Restaurant','RES_D',1,'Admin','2020-06-30 07:15:15','Admin','2020-06-30 07:15:15'),(62,'Get token restaurant ','/v1/restaurant/get_token_pos',_binary '\0','Get token restaurant','Restaurant',NULL,1,'Admin','2020-06-30 07:16:04','Admin','2020-06-30 07:16:04'),(63,'Lock restaurant','/v1/restaurant/lock_restaurant',_binary '\0','Lock restaurant','Restaurant','RES_LOCK',1,'Admin','2020-06-30 07:16:04','Admin','2020-06-30 07:16:04'),(82,'Create group food','/v1/group_food/create',_binary '\0','Create group food','Group Food','GRF_C',1,'Admin','2020-07-01 14:53:47','Admin','2020-07-01 14:53:47'),(83,'Update group food','/v1/group_food/update',_binary '\0','Update group food','Group Food','GRF_U',1,'Admin','2020-07-01 14:54:18','Admin','2020-07-01 14:54:18'),(84,'Get group food','/v1/group_food/get',_binary '\0','Get group food','Group Food','GRF_V',1,'Admin','2020-07-01 14:54:27','Admin','2020-07-01 14:54:27'),(85,'Delete group food','/v1/group_food/delete',_binary '\0','Delete group food','Group Food','GRF_D',1,'Admin','2020-07-01 14:54:39','Admin','2020-07-01 14:54:39'),(86,'List group food','/v1/group_food/list',_binary '','List group food','Group Food','GRF_L',1,'Admin','2020-07-01 14:55:02','Admin','2020-07-01 14:55:02'),(87,'List group food autocomplete','/v1/group_food/list_autocomplete',_binary '\0','List group food autocomplete','Group Food','GRF_L_AUTO',1,'Admin','2020-07-01 14:56:00','Admin','2020-07-01 14:56:00'),(88,'Create food','/v1/food/create',_binary '\0','Create food','Food','F_C',1,'Admin','2020-07-01 14:57:24','Admin','2020-07-01 14:57:24'),(89,'Update food','/v1/food/update',_binary '\0','Update food','Food','F_U',1,'Admin','2020-07-01 14:57:35','Admin','2020-07-01 14:57:35'),(90,'Delete food','/v1/food/delete',_binary '\0','Delete food','Food','F_D',1,'Admin','2020-07-01 14:57:48','Admin','2020-07-01 14:57:48'),(91,'List food','/v1/food/list',_binary '','List food','Food','F_L',1,'Admin','2020-07-01 14:58:11','Admin','2020-07-01 14:58:11'),(92,'List food autocomplete','/v1/food/list_autocomplete',_binary '\0','List food autocomplete','Food','F_L_AUTO',1,'Admin','2020-07-01 14:58:46','Admin','2020-07-01 14:58:46'),(93,'Import food','/v1/food/import',_binary '\0','Import food','Food','F_IMP',1,'Admin','2020-07-01 14:59:31','Admin','2020-07-01 14:59:31'),(94,'List setting','/v1/system_setting/list',_binary '','List setting','Setting','SYS_L',1,'Admin','2020-07-01 15:02:34','Admin','2020-07-01 15:02:34'),(100,'Get setting','/v1/system_setting/get',_binary '\0','Get setting','Setting','SYS_V',1,'Admin','2020-07-01 15:46:54','Admin','2020-07-01 15:46:54'),(101,'Update setting','/v1/system_setting/update',_binary '\0','Update setting','Setting','SYS_U',1,'Admin','2020-07-01 15:47:23','Admin','2020-07-01 15:47:23'),(249,'Create customer','/v1/token/create_thirdparty_token',_binary '\0','Create token','Token',NULL,1,'Admin','2020-09-12 09:39:18','Admin','2020-09-12 09:39:18'),(250,'Update token','/v1/token/update',_binary '\0','Update token','Token','AUTH_U',1,'Admin','2020-09-12 09:47:32','Admin','2020-09-12 09:47:32'),(251,'List token','/v1/token/list',_binary '','List token','Token','AUTH_L',1,'Admin','2020-09-12 09:48:15','Admin','2020-09-12 09:48:15'),(252,'Get token','/v1/token/get',_binary '','Get token','Token','AUTH_V',1,'Admin','2020-09-12 09:48:53','Admin','2020-09-12 09:48:53'),(253,'Delete token','/v1/token/delete',_binary '','Delete token','Token','AUTH_D',1,'Admin','2020-09-12 09:49:15','Admin','2020-09-12 09:49:15'),(256,'Delete employee','/v1/employee/delete',_binary '\0','Delete employee','Employee','EM_D',1,'Admin','2020-09-12 10:00:01','Admin','2020-09-12 10:00:01'),(257,'Create employee','/v1/employee/create',_binary '\0','Create employee','Employee','EM_C',1,'Admin','2020-09-12 10:00:21','Admin','2020-09-12 10:00:21'),(258,'Update employee','/v1/employee/update',_binary '\0','Update employee','Employee','EM_U',1,'Admin','2020-09-12 10:00:40','Admin','2020-09-12 10:00:40'),(259,'List employee','/v1/employee/list',_binary '','List employee','Employee','EM_L',1,'Admin','2020-09-12 10:01:01','Admin','2020-09-12 10:01:01'),(260,'Get employee','/v1/employee/get',_binary '\0','Get employee','Employee','EM_V',1,'Admin','2020-09-12 10:01:17','Admin','2020-09-12 10:01:17'),(283,'List permission','/v1/permission/list',_binary '\0','List permission','Permission','PER_L',1,'Admin','2020-09-13 04:48:58','Admin','2020-09-13 04:48:58'),(284,'Create permission','/v1/permission/create',_binary '\0','Create permission','Permission','PER_C',1,'Admin','2020-09-13 04:49:13','Admin','2020-09-13 04:49:13'),(333,'Order create table qrcode','/v1/order/create_qrcode_table',_binary '\0','Order create table qrcode','Order','O_C_QR_TBL',1,'Admin','2020-09-13 19:22:27','Admin','2020-09-13 19:22:27'),(334,'List online order by restaurant','/v1/order/list_order_by_restaurant',_binary '\0','List online order by restaurant','Order','O_L_RES',1,'Admin','2020-09-13 19:27:42','Admin','2020-09-13 19:27:42'),(342,'Get food','/v1/food/get',_binary '\0','Get food','Food','F_V',1,'Admin','2020-09-14 02:06:58','Admin','2020-09-14 02:06:58'),(343,'Lock food','/v1/food/lock',_binary '\0','Lock food','Food','F_LOCK',1,'Admin','2020-09-14 02:06:58','Admin','2020-09-14 02:06:58'),(349,'Auto complete sho account','/v1/shop_account/autocomplete',_binary '\0','Auto complete shop account','Shop Account','SHOP_L_AUTO',1,'Admin','2020-09-14 03:19:26','Admin','2020-09-14 03:19:26'),(350,'Create shop account','/v1/shop_account/create',_binary '\0','Create shop account','Shop Account','SHOP_C',1,'Admin','2020-09-14 03:20:05','Admin','2020-09-14 03:20:05'),(361,'Detail order','/v1/order/get_data_by_order',_binary '\0','Detail order','Order','O_V_O',1,'Admin','2020-09-14 07:10:18','Admin','2020-09-14 07:10:18'),(362,'Approve food on table','/v1/order/approve_food_on_table',_binary '\0','Approve food on table','Order','O_APPR_F_TBL',1,'Admin','2020-09-14 08:41:01','Admin','2020-09-14 08:41:01'),(363,'Delete table QR Code','/v1/order/delete_qrcode_table',_binary '\0','Delete table QR Code','Order','O_D_QR_TBL',1,'Admin','2020-09-14 09:50:14','Admin','2020-09-14 09:50:14'),(425,'Employee login','/v1/employee/login',_binary '\0','Employee login','Employee','EM_LOGIN',1,'Admin','2020-09-15 02:10:30','Admin','2020-09-15 02:10:30'),(426,'Get data order for print','/v1/order/get_data_print',_binary '\0','Get data order for print','Order','O_V_PRINT',1,'Admin','2020-09-15 02:12:25','Admin','2020-09-15 02:12:25'),(455,'Approve order','/v1/order/approve_order',_binary '\0','Approve order','Order',NULL,1,'Admin','2020-09-16 14:51:54','Admin','2020-09-16 14:51:54'),(814,'Add food condition','/v1/foodcondition/create',_binary '\0','Add food condition','Food Condition','FCON_C',1,'Admin','2020-10-03 14:51:28','Admin','2020-10-03 14:51:28'),(815,'Update food condition','/v1/foodcondition/update',_binary '\0','Update food condition','Food Condition','FCON_U',1,'Admin','2020-10-03 14:52:07','Admin','2020-10-03 14:52:07'),(816,'Get food condition','/v1/foodcondition/get',_binary '\0','Get food condition','Food Condition','FCON_V',1,'Admin','2020-10-03 14:52:15','Admin','2020-10-03 14:52:15'),(817,'List food condition','/v1/foodcondition/list',_binary '','List food condition','Food Condition','FCON_L',1,'Admin','2020-10-03 14:52:26','Admin','2020-10-03 14:52:26'),(818,'List all food condition','/v1/foodcondition/list_all',_binary '\0','List all food condition','Food Condition','FCON_L_ALL',1,'Admin','2020-10-03 14:52:51','Admin','2020-10-03 14:52:51'),(819,'Delete food condition','/v1/foodcondition/delete',_binary '\0','Delete food condition','Food Condition','FCON_D',1,'Admin','2020-10-03 14:53:05','Admin','2020-10-03 14:53:05'),(820,'Increase count food condition','/v1/foodcondition/increase_count',_binary '\0','Increase count food condition','Food Condition','FCON_IN_COUNT',1,'Admin','2020-10-03 15:01:10','Admin','2020-10-03 15:01:10'),(4359,'Employee unlock order','/v1/order/employee_unlock_order',_binary '\0','Employee unlock order','Order','O_EM_UNL',1,'admin','2020-10-17 05:39:16','admin','2020-10-17 05:39:16'),(4360,'Employee get detail order','/v1/order/employee_get_order_by_code',_binary '\0','Employee get detail order','Order',NULL,1,'admin','2020-10-17 05:39:41','admin','2020-10-17 05:39:41'),(4384,'Employee delete order error','/v1/order/employee_delete_order',_binary '\0','Employee delete order error','Order','O_EM_D',1,'admin','2020-10-20 18:04:56','admin','2020-10-20 18:04:56'),(4496,'Create payment','/v1/bill/payment_order',_binary '\0','Create payment','Billing','BILL_PAY',1,'admin','2020-10-27 01:05:23','admin','2020-10-27 01:05:23'),(4497,'Request separator payment','/v1/bill/request_share_payment',_binary '\0','Request separator payment','Billing','BILL_REQ_SHARE',1,'admin','2020-10-27 01:06:28','admin','2020-10-27 01:06:28'),(4498,'Create separator payment','/v1/bill/payment_share_add',_binary '\0','Create separator payment','Billing','BILL_SHARE_ADD',1,'admin','2020-10-27 01:07:40','admin','2020-10-27 01:07:40'),(4499,'Create payment when customer leave','/v1/bill/customer_leave',_binary '\0','Create payment when customer leave','Billing','BILL_CUS_LEAVE',1,'admin','2020-10-27 01:08:38','admin','2020-10-27 01:08:38'),(4634,'Employee get my bill','/v1/bill/employee_get_my_order',_binary '\0','Employee get my bill','Billing','BILL_MY_ORD',1,'admin','2020-10-28 05:32:27','admin','2020-10-28 05:32:27'),(4646,'Get report sale by employee','/v1/bill/employee_bill_report',_binary '\0','Get report sale by employee','Billing','BILL_RP',1,'admin','2020-10-28 08:56:16','admin','2020-10-28 08:56:16'),(4647,'Employee checkout','/v1/bill/employee_checkout',_binary '\0','Employee checkout','Billing','BILL_CKOUT',1,'admin','2020-10-28 08:57:25','admin','2020-10-28 08:57:25'),(4997,'Employee profile','/v1/employee/profile',_binary '\0','Employee profile','Employee','EM_PROF',1,'admin','2020-12-22 09:14:06','admin','2020-12-22 09:14:06'),(5019,'Get table detail','/v1/order/table_detail',_binary '\0','Get table detail','Order','O_TBL_DETAIL',1,'admin','2020-12-23 07:05:13','admin','2020-12-23 07:05:13'),(5022,'Check table','/v1/order/check_table',_binary '\0','Check table','Order','O_CHECK_TBL',1,'admin','2020-12-23 16:22:19','admin','2020-12-23 16:22:19'),(5059,'Count new order','/v1/order/count_new_order',_binary '\0','Count new order','Order',NULL,1,'admin','2020-12-26 05:29:57','admin','2020-12-26 05:29:57'),(5301,'Add device','/v1/devices/create',_binary '\0','Add device','Devices','D_C',1,'admin','2021-01-18 14:46:51','admin','2021-01-18 14:46:51'),(5302,'Update device','/v1/devices/update',_binary '\0','Update device','Devices','D_U',1,'admin','2021-01-18 14:47:06','admin','2021-01-18 14:47:06'),(5303,'Get device','/v1/devices/get',_binary '\0','Get device','Devices','D_V',1,'admin','2021-01-18 14:47:19','admin','2021-01-18 14:47:19'),(5304,'Delete device','/v1/devices/delete',_binary '\0','Delete device','Devices','D_D',1,'admin','2021-01-18 14:47:33','admin','2021-01-18 14:47:33'),(5305,'List device','/v1/devices/list',_binary '','List device','Devices','D_L',1,'admin','2021-01-18 14:47:52','admin','2021-01-18 14:47:52'),(5306,'My device','/v1/devices/my-device',_binary '\0','My device','Devices','D_MY_D',1,'admin','2021-01-18 14:47:52','admin','2021-01-18 14:47:52'),(5307,'Update device media','/v1/devices/update_media',_binary '\0','Update device media','Devices','D_U_MED',1,'admin','2021-01-18 14:47:52','admin','2021-01-18 14:47:52'),(5308,'Internal service list device','/v1/devices/list-devices-internal',_binary '\0','Internal service list device','Devices','D_IN_L',1,'admin','2021-01-18 14:47:52','admin','2021-01-18 14:47:52'),(5348,'Tablet request QR Code','/v1/order/tablet_request_qrcode',_binary '\0','Tablet request QR Code','Order QRlive','O_REQ_QR',1,'admin','2021-01-20 10:05:27','admin','2021-01-20 10:05:27'),(5381,'Add food to QRlive order','/v1/order/tablet_qrcode_add_food',_binary '\0','Add food to QRlive order','Order QRlive','O_QR_A_FOOD',1,'admin','2021-01-22 10:17:44','admin','2021-01-22 10:17:44'),(5382,'Change state QR Code order','/v1/order/tablet_qrcode_changestate',_binary '\0','Change state QR Code order','Order','O_QR_CH_STATE',1,'admin','2021-01-22 10:20:18','admin','2021-01-22 10:20:18'),(6810,'Fix bill separator','/v1/bill/fix_share_payment',_binary '\0','Fix bill separator','Billing','BILL_FIX_SHARE',1,'admin','2021-03-29 07:42:13','admin','2021-03-29 07:42:13'),(7405,'List order online','/v1/bill/list_order_online',_binary '\0','List order online','Billing','BILL_L_ONL',1,'admin','2021-04-06 09:13:31','admin','2021-04-06 09:13:31'),(7848,'Reject order online','/v1/bill/reject_bill',_binary '\0','Reject order online','Billing','BILL_REJ',1,'admin','2021-04-13 09:43:11','admin','2021-04-13 09:43:11'),(11197,'Update shop account','/v1/shop_account/update',_binary '\0','Update shop account','Shop Account','SHOP_U',1,'admin','2021-06-26 14:45:14','admin','2021-06-26 14:45:14'),(11375,'Update shop account sync info','/v1/shop_account/update_sync_info',_binary '\0','Update shop account sync info','Shop Account','SHOP_U_SYNC',1,'admin','2021-06-29 09:10:28','admin','2021-06-29 09:10:28'),(11376,'Get shop account sync info','/v1/shop_account/get_sync_info',_binary '\0','Get shop account sync info','Shop Account','SHOP_V_SYNC',1,'admin','2021-06-29 09:10:49','admin','2021-06-29 09:10:49'),(53856,'Customer add food to table','/v1/order/add_food_to_table',_binary '\0','Customer add food to table','Order QRCode','O_A_FOOD_TBL',1,'admin','2021-01-22 10:17:44','admin','2021-01-22 10:17:44'),(53857,'Customer get food from table','/v1/order/get_order_by_qrcode',_binary '\0','Customer get food from table','Order QRCode','O_V_QR',1,'admin','2021-01-22 10:17:44','admin','2021-01-22 10:17:44'),(53858,'Customer request payment table','/v1/order/customer_request_payment',_binary '\0','Customer request payment table','Order QRCode','O_CUS_REQ_PAY',1,'admin','2021-01-22 10:17:44','admin','2021-01-22 10:17:44'),(5110005807329696,'Create beilage template','/v1/foodcondition/beilage-tmp-create',_binary '\0','Create beilage template','Food Condition','FCON_C_BEI',1,'admin','2022-02-17 00:10:12','admin','2022-02-17 00:10:12'),(5110006728503712,'Update beilage template','/v1/foodcondition/beilage-tmp-update',_binary '\0','Update beilage template','Food Condition','FCON_U_BEI',1,'admin','2022-02-17 00:10:40','admin','2022-02-17 00:10:40'),(5110007351423392,'Get beilage template','/v1/foodcondition/beilage-tmp-get',_binary '\0','Get beilage template','Food Condition','FCON_V_BEI',1,'admin','2022-02-17 00:10:59','admin','2022-02-17 00:10:59'),(5110007941345696,'Delete beilage template','/v1/foodcondition/beilage-tmp-delete',_binary '\0','Delete beilage template','Food Condition','FCON_D_BEI',1,'admin','2022-02-17 00:11:17','admin','2022-02-17 00:11:17'),(5110008571015584,'List beilage template','/v1/foodcondition/beilage-tmp-list',_binary '\0','List beilage template','Food Condition','FCON_L_BEI',1,'admin','2022-02-17 00:11:36','admin','2022-02-17 00:11:36'),(5118688288256416,'Request get table from POS','/v1/order/request_table_from_pos',_binary '\0','Request get table from POS','Order','O_REQ_TBL_POS',1,'admin','2022-02-20 01:46:20','admin','2022-02-20 01:46:20'),(5118690005397920,'Request get people of table from POS','/v1/order/request_people_of_table_from_pos',_binary '\0','Request get people of table from POS','Order','O_REQ_PEO_TBL_POS',1,'admin','2022-02-20 01:47:12','admin','2022-02-20 01:47:12'),(5118691159454112,'Retrieve table from POS','/v1/order/retrieve_table_from_pos',_binary '\0','Retrieve table from POS','Order','O_RETRV_TBL_POS',1,'admin','2022-02-20 01:47:48','admin','2022-02-20 01:47:48'),(5118691972395424,'Retrieve people from POS','/v1/order/retrieve_people_from_pos',_binary '\0','Retrieve people from POS','Order','O_RETRV_PEO_POS',1,'admin','2022-02-20 01:48:12','admin','2022-02-20 01:48:12'),(5122232800031136,'Mapping people','/v1/order/mapping_people_to_pos',_binary '\0','Mapping people','Order','O_MAP_PEO_POS',1,'admin','2022-02-21 07:49:10','admin','2022-02-21 07:49:10'),(5304231292842400,'Customer update device','/v1/devices/customer-update',_binary '\0','Customer update device','Devices','D_CUS_U',1,'admin','2022-04-26 14:38:23','admin','2022-04-26 14:38:23'),(5304340104065440,'Customer update device settings','/v1/devices/customer-update',_binary '\0','Customer update device settings','Devices','D_CUS_U',1,'admin','2022-04-26 15:33:44','admin','2022-04-26 15:33:44'),(5694131812512160,'Upgrade db','/v1/db-config/update_tenant_db',_binary '\0','Upgrade db','DbConfig','DB_MIGRATE',1,'admin','2022-09-11 14:52:03','admin','2022-09-11 14:52:03'),(5694132574761376,'Create db config','/v1/db-config/create',_binary '\0','Create db config','DbConfig','DB_C',1,'admin','2022-09-11 14:52:26','admin','2022-09-11 14:52:26'),(5694132574761377,'Get db config','/v1/db-config/get',_binary '\0','Get db config','DbConfig','DB_V_RES',1,'admin','2022-09-11 14:52:26','admin','2022-09-11 14:52:26'),(5707582891045280,'Delete db config','/v1/db-config/delete',_binary '\0','Delete db config','DbConfig','DB_D',1,'admin','2022-09-16 01:53:37','admin','2022-09-16 01:53:37'),(5707583279837600,'Update db config','/v1/db-config/update',_binary '\0','Update db config','DbConfig','DB_U',1,'admin','2022-09-16 01:53:49','admin','2022-09-16 01:53:49'),(5707583279837601,'Get by name','/v1/db-config/get_by_name',_binary '\0','Get by name','DbConfig','DB_V_NAME',1,'admin','2022-09-16 01:53:49','admin','2022-09-16 01:53:49'),(5722055072395680,'upload file','/v1/file/upload',_binary '\0','upload file','file','FILE_U',1,'admin','2022-09-21 04:34:33','admin','2022-09-21 04:34:33'),(5722055072395681,'Create Inwen media template','/v1/inwen-media/create',_binary '\0','Create Inwen media template ','Inwen','IW_ME_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395682,'Update Inwen media template','/v1/inwen-media/update',_binary '\0','Update Inwen media template ','Inwen','IW_ME_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395683,'Delete Inwen media template','/v1/inwen-media/delete',_binary '\0','Delete Inwen media template ','Inwen','IW_ME_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395686,'List Inwen media template','/v1/inwen-media/list',_binary '\0','List Inwen media template','Inwen','IW_ME_L',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395689,'Get Inwen media template','/v1/inwen-media/get',_binary '\0','Get Inwen media template','Inwen','IW_ME_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395690,'Create Inwen media library device ','/v1/inwen-media-library/create',_binary '\0','Create Inwen media library device ','Inwen Libarary','IW_ME_LIB_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395691,'Update Inwen media library device ','/v1/inwen-media-library/update',_binary '\0','Update Inwen media library device ','Inwen Libarary','IW_ME_LIB_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395692,'List Inwen media library device ','/v1/inwen-media-library/list',_binary '\0','List Inwen media library device ','Inwen Libarary','IW_ME_LIB_L',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395693,'Get Inwen media library device ','/v1/inwen-media-library/get',_binary '\0','Get Inwen media library device ','Inwen Libarary','IW_ME_LIB_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395694,'Delete Inwen media library device ','/v1/inwen-media-library/delete',_binary '\0','Delete Inwen media library device ','Inwen Libarary','IW_ME_LIB_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395695,'Create Inwen device ','/v1/inwen-device/create',_binary '\0','Create Inwen device ','Inwen','IW_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395696,'Update Inwen device ','/v1/inwen-device/update',_binary '\0','Update Inwen device ','Inwen','IW_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395697,'Get Inwen device ','/v1/inwen-device/get',_binary '\0','Get Inwen device ','Inwen','IW_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395698,'List Inwen device ','/v1/inwen-device/list',_binary '\0','List Inwen device ','Inwen','IW_L',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395699,'Delete Inwen device ','/v1/inwen-device/delete',_binary '\0','Delete Inwen device ','Inwen','IW_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395700,'Create Hub device ','/v1/inwen-device/create-hub',_binary '\0','Create Hub device ','Inwen','IW_H_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395701,'Update Hub device ','/v1/inwen-device/update-hub',_binary '\0','Update Hub device ','Inwen','IW_H_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395702,'List Hub device ','/v1/inwen-device/list-hub',_binary '\0','List Hub device ','Inwen','IW_H_L',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395703,'Get Hub device ','/v1/inwen-device/get-hub',_binary '\0','Get Hub device ','Inwen','IW_H_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395704,'Delete Hub device ','/v1/inwen-device/delete-hub',_binary '\0','Delete Hub device ','Inwen','IW_H_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395705,'Assign media to Inwen device','/v1/inwen-device/create-inwen-devices-medias',_binary '\0','Assign media to Inwen device','Inwen','IW_DE_ME_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395706,'Update media of Inwen device','/v1/inwen-device/update-inwen-devices-medias',_binary '\0','Update media to Inwen device','Inwen','IW_DE_ME_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395707,'Delete media of Inwen device','/v1/inwen-device/delete-inwen-devices-medias',_binary '\0','Delete media of Inwen device','Inwen','IW_DE_ME_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395708,'List media of Inwen device','/v1/inwen-device/get-inwen-devices-medias',_binary '\0','List media of Inwen device','Inwen','IW_DE_ME_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395711,'Create Inwen group','/v1/group-inwen/create',_binary '\0','Create Inwen group','Inwen Group','GRI_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395712,'Update Inwen group','/v1/group-inwen/update',_binary '\0','Update Inwen group','Inwen Group','GRI_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395713,'Delete Inwen group','/v1/group-inwen/delete',_binary '\0','Delete Inwen group','Inwen Group','GRI_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395714,'Get detail Inwen group','/v1/group-inwen/get',_binary '\0','Get detail Inwen group','Inwen Group','GRI_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395715,'List Inwen group','/v1/group-inwen/list',_binary '\0','List Inwen group','Inwen Group','GRI_L',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395716,'Add Inwen to group','/v1/group-inwen/add-inwen-device',_binary '\0','Add Inwen to group','Inwen Group','GRI_IW_ADD',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395717,'Remove Inwen out of group','/v1/group-inwen/remove-inwen-device',_binary '\0','Remove Inwen out of group','Inwen Group','GRI_IW_REM',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395718,'Assign media to group inwen','/v1/group-inwen/create-group-inwens-medias',_binary '\0','Assign media to group inwen','Inwen Group','GRI_ME_C',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395719,'Delete media from group inwen','/v1/group-inwen/delete-group-inwens-medias',_binary '\0','Delete media from group inwen','Inwen Group','GRI_ME_D',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395720,'Get all media of group inwen','/v1/group-inwen/get-all-media-by-group-inwen',_binary '\0','Get all media of group inwen','Inwen Group','GRI_ME_V',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395721,'Update media to group inwen','/v1/group-inwen/update-group-inwens-medias',_binary '\0','Update media to group inwen','Inwen Group','GRI_ME_U',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395726,'Delete queue','/v1/api/delete-queue',_binary '\0','Delete queue','Web Hook','Q_DEL',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395727,'Init queue','/v1/api/init-queue',_binary '\0','Init queue','Web Hook','Q_INIT',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395728,'Webhook','/v1/api/webhook',_binary '\0','Webhook','Web Hook','Q_HOOK',1,'admin','2023-04-08 04:29:18','admin','2023-04-08 04:29:18'),(5722055072395729,'Partner get order','/v1/order/partner_get_order',_binary '\0','Partner get order','Order','O_PART_V_ORD',1,'admin','2022-02-21 07:49:10','admin','2022-02-21 07:49:10'),(5722055072395730,'Partner update order','/v1/order/partner_update_order',_binary '\0','Partner update order','Order','O_PART_U_ORD',1,'admin','2022-02-21 07:49:10','admin','2022-02-21 07:49:10'),(5722055072395731,'Register device for push noti','/v1/notification/register-device',_binary '\0','Register device for push noti','Devices','NOTI_REG_DE',1,'admin','2022-04-26 15:33:44','admin','2022-04-26 15:33:44'),(5722055072395732,'Send msg via notificaiton','/v1/notification/send-notification-to-device',_binary '\0','Send msg via notificaiton','Devices','NOTI_SEND_MSG',1,'admin','2022-04-26 15:33:44','admin','2022-04-26 15:33:44');
/*!40000 ALTER TABLE `db_nails_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_permission_group`
--

DROP TABLE IF EXISTS `db_nails_permission_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_permission_group` (
  `group_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  KEY `FKi109re56lruai5trbtbtwswu6` (`permission_id`),
  KEY `FKkwktf6145nb9dqrgemft4isdi` (`group_id`),
  CONSTRAINT `FKi109re56lruai5trbtbtwswu6` FOREIGN KEY (`permission_id`) REFERENCES `db_nails_permission` (`id`),
  CONSTRAINT `FKkwktf6145nb9dqrgemft4isdi` FOREIGN KEY (`group_id`) REFERENCES `db_nails_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_permission_group`
--

LOCK TABLES `db_nails_permission_group` WRITE;
/*!40000 ALTER TABLE `db_nails_permission_group` DISABLE KEYS */;
INSERT INTO `db_nails_permission_group` VALUES (14,13),(14,12),(14,7),(14,6),(14,5),(14,4),(14,3),(14,9),(14,11),(14,8),(14,56),(14,58),(14,61),(14,60),(14,57),(14,101),(14,100),(14,94),(14,62),(14,10),(14,5722055072395680),(29,5348),(111,60),(19,5303),(113,5381),(113,53856),(113,53857),(113,53858),(16,816),(16,819),(16,5110008571015584),(16,5110006728503712),(16,815),(16,818),(16,5110005807329696),(16,5110007941345696),(16,814),(16,817),(16,5110007351423392),(16,5306),(16,5307),(16,256),(16,259),(16,258),(16,257),(16,260),(16,89),(16,92),(16,342),(16,88),(16,91),(16,343),(16,90),(16,93),(16,250),(16,253),(16,252),(16,249),(16,251),(16,84),(16,87),(16,83),(16,86),(16,85),(16,82),(16,57),(16,60),(16,59),(16,4),(16,5304340104065440),(16,5722055072395680),(16,5722055072395681),(16,5722055072395686),(16,5722055072395682),(16,5722055072395689),(16,5722055072395683),(16,5722055072395695),(16,5722055072395696),(16,5722055072395697),(16,5722055072395698),(16,5722055072395699),(16,5722055072395700),(16,5722055072395701),(16,5722055072395702),(16,5722055072395703),(16,5722055072395704),(16,5722055072395705),(16,5722055072395706),(16,5722055072395707),(16,5722055072395708),(16,5722055072395711),(16,5722055072395714),(16,5722055072395717),(16,5722055072395712),(16,5722055072395715),(16,5722055072395713),(16,5722055072395716),(16,5722055072395720),(16,5722055072395718),(16,5722055072395719),(16,5722055072395721),(16,333),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(15,13),(15,42),(15,43),(15,44),(15,51),(15,52),(15,53),(15,54),(15,56),(15,57),(15,58),(15,60),(15,61),(15,62),(15,94),(15,100),(15,101),(15,249),(15,250),(15,252),(15,253),(15,256),(15,257),(15,260),(15,283),(15,284),(15,349),(15,350),(15,5301),(15,5302),(15,5303),(15,5304),(15,5305),(15,11197),(15,11375),(15,11376),(15,5694131812512160),(15,5694132574761376),(15,258),(15,5694132574761377),(15,5707583279837600),(15,5707582891045280),(15,5722055072395680),(15,5722055072395690),(15,5722055072395691),(15,5722055072395692),(15,5722055072395693),(15,5722055072395694),(15,5722055072395726),(15,5722055072395727),(15,5722055072395728),(112,5308),(112,5694132574761377),(112,5707583279837601),(112,5722055072395680),(112,60),(112,5303),(112,44),(21,333),(21,455),(21,5722055072395730),(21,5722055072395729),(21,361),(21,5022),(21,5019),(21,362),(21,363),(21,4496),(21,5722055072395732),(21,5722055072395731),(25,333),(25,334),(25,361),(25,363),(25,425),(25,426),(25,362),(25,455),(25,4360),(25,4384),(25,5019),(25,5348),(25,5381),(25,5382),(25,4496),(25,7405),(25,7848),(25,63),(25,91),(25,817),(25,86),(25,815),(25,343),(25,4359),(25,5022),(25,5059),(25,5118691159454112),(25,4497),(25,4498),(25,4499),(25,6810),(25,4647),(25,4646),(25,4634),(25,5722055072395732),(25,5722055072395731);
/*!40000 ALTER TABLE `db_nails_permission_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_shop_profile`
--

DROP TABLE IF EXISTS `db_nails_shop_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_shop_profile` (
  `account_id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `sync_pwd` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `url_base` varchar(255) DEFAULT NULL,
  `webhook_token` text,
  `webhook_url` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`account_id`),
  CONSTRAINT `FK5tpycpt9dvlit7bu6otjnhpek` FOREIGN KEY (`account_id`) REFERENCES `db_nails_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_shop_profile`
--

LOCK TABLES `db_nails_shop_profile` WRITE;
/*!40000 ALTER TABLE `db_nails_shop_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_shop_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_store`
--

DROP TABLE IF EXISTS `db_nails_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `banner_path` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `extend_date` datetime DEFAULT NULL,
  `hotline` varchar(255) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `is_ready_qrlive` bit(1) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `number_of_table` int DEFAULT NULL,
  `paypal_client_id` varchar(255) DEFAULT NULL,
  `paypal_client_secret` varchar(255) DEFAULT NULL,
  `paypal_currentcy` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_path_seo` varchar(255) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `settings` text,
  `ver_sync` int DEFAULT '0',
  `zip_code` varchar(255) DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel4h9qmyq5nm2mwgxks9g0xf9` (`account_id`),
  CONSTRAINT `FKel4h9qmyq5nm2mwgxks9g0xf9` FOREIGN KEY (`account_id`) REFERENCES `db_nails_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_store`
--

LOCK TABLES `db_nails_store` WRITE;
/*!40000 ALTER TABLE `db_nails_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_system_setting`
--

DROP TABLE IF EXISTS `db_nails_system_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_system_setting` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `setting_group` varchar(255) DEFAULT NULL,
  `setting_key` varchar(255) DEFAULT NULL,
  `setting_value` text,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_system_setting`
--

LOCK TABLES `db_nails_system_setting` WRITE;
/*!40000 ALTER TABLE `db_nails_system_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_system_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_tablet_device`
--

DROP TABLE IF EXISTS `db_nails_tablet_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_tablet_device` (
  `id` bigint NOT NULL,
  `device_info` varchar(255) DEFAULT NULL,
  `device_setting` varchar(255) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `kind` int DEFAULT NULL,
  `media_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `queue_name` varchar(255) DEFAULT NULL,
  `sub_kind` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `store_id` bigint NOT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK59tm00825bwfyqvn4u0bid8eq` (`store_id`),
  CONSTRAINT `FK59tm00825bwfyqvn4u0bid8eq` FOREIGN KEY (`store_id`) REFERENCES `db_nails_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_tablet_device`
--

LOCK TABLES `db_nails_tablet_device` WRITE;
/*!40000 ALTER TABLE `db_nails_tablet_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_tablet_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_nails_token`
--

DROP TABLE IF EXISTS `db_nails_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_nails_token` (
  `id` bigint NOT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `expired_date` datetime DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `token_name` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  `status` int NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmpnlcxj6qd8mjga6r62hts9lh` (`store_id`),
  CONSTRAINT `FKmpnlcxj6qd8mjga6r62hts9lh` FOREIGN KEY (`store_id`) REFERENCES `db_nails_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_nails_token`
--

LOCK TABLES `db_nails_token` WRITE;
/*!40000 ALTER TABLE `db_nails_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_nails_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` longblob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` longblob,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('abc_client',NULL,'{bcrypt}$2a$12$zlKHpSw7.8asgQFCexLLkudLYkd9wQGElMps2yVG5p4vm2f.CTYcy','read,write','password,refresh_token,client_credentials,authorization_code',NULL,'ROLE_CLIENT,ROLE_TRUSTED_CLIENT',2592000,2592000,NULL,NULL),('customer_client',NULL,'{bcrypt}$2a$12$zlKHpSw7.8asgQFCexLLkudLYkd9wQGElMps2yVG5p4vm2f.CTYcy','read,write','password,refresh_token,client_credentials,authorization_code,client-only',NULL,'ROLE_CLIENT,ROLE_TRUSTED_CLIENT',8640000,2592000,NULL,NULL),('qrlive_end_user_client',NULL,'{bcrypt}$2a$12$zlKHpSw7.8asgQFCexLLkudLYkd9wQGElMps2yVG5p4vm2f.CTYcy','read,write','qrlive_end_user_client,password,client_credentials,authorization_code',NULL,'ROLE_CLIENT,ROLE_TRUSTED_CLIENT',8640000,671000,NULL,NULL),('tablet_client',NULL,'{bcrypt}$2a$12$zlKHpSw7.8asgQFCexLLkudLYkd9wQGElMps2yVG5p4vm2f.CTYcy','read,write','tablet_client,password,client_credentials,authorization_code',NULL,'ROLE_CLIENT,ROLE_TRUSTED_CLIENT',8640000,2592000,NULL,NULL),('table_qr_end_user_client',NULL,'{bcrypt}$2a$12$zlKHpSw7.8asgQFCexLLkudLYkd9wQGElMps2yVG5p4vm2f.CTYcy','read,write','tableqr_end_user_client,password,client_credentials,authorization_code',NULL,'ROLE_CLIENT,ROLE_TRUSTED_CLIENT',8640000,671000,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` longblob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` longblob,
  `authentication` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nails_authentication'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 23:08:40
