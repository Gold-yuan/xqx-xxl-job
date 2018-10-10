-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: ApolloPortalDB
-- ------------------------------------------------------
-- Server version	5.7.23

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

CREATE DATABASE IF NOT EXISTS ApolloPortalDB DEFAULT CHARACTER SET = utf8mb4;

Use ApolloPortalDB;

--
-- Table structure for table `App`
--

DROP TABLE IF EXISTS `App`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `App` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Name` varchar(500) NOT NULL DEFAULT 'default' COMMENT '应用名',
  `OrgId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '部门Id',
  `OrgName` varchar(64) NOT NULL DEFAULT 'default' COMMENT '部门名字',
  `OwnerName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerName',
  `OwnerEmail` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerEmail',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_Name` (`Name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='应用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App`
--

LOCK TABLES `App` WRITE;
/*!40000 ALTER TABLE `App` DISABLE KEYS */;
INSERT INTO `App` VALUES (1,'xxl-job-admin','xxl-job-admin','TEST1','样例部门1','admin','abc@qq.com',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-25 05:44:20'),(2,'xqx-job1','xqx-job1','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(3,'xqx-user','xqx-user','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 06:26:21','apollo','2018-09-18 06:26:21'),(4,'xqx-oauth','xqx-oauth','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(5,'xqx-gateway','xqx-gateway','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(6,'xqx-dashboard','xqx-dashboard','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(7,'xqx-turbine','xqx-turbine','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(8,'xqx-bloomfilter','xqx-bloomfilter','TEST1','样例部门1','apollo','apollo@acme.com',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(9,'xqx-job2','xqx-job2','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(10,'xqx-job3','xqx-job3','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(11,'xqx-job4','xqx-job4','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(12,'xqx-job5','xqx-job5','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(13,'xqx-job-handler','xqx-job-handler','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(14,'xxl-job-getway','xxl-job-getway','TEST2','样例部门2','admin','abc@qq.com',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:00'),(15,'xxl-zipkin','xxl-zipkin','TEST2','样例部门2','admin','abc@qq.com',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(16,'xqx-zipkin-server','xqx-zipkin-server','TEST2','样例部门2','admin','abc@qq.com',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(17,'xqx-zipkin-server','xqx-zipkin-server','TEST2','样例部门2','admin','abc@qq.com',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `App` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AppNamespace`
--

DROP TABLE IF EXISTS `AppNamespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AppNamespace` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `Name` varchar(32) NOT NULL DEFAULT '' COMMENT 'namespace名字，注意，需要全局唯一',
  `AppId` varchar(32) NOT NULL DEFAULT '' COMMENT 'app id',
  `Format` varchar(32) NOT NULL DEFAULT 'properties' COMMENT 'namespace的format类型',
  `IsPublic` bit(1) NOT NULL DEFAULT b'0' COMMENT 'namespace是否为公共',
  `Comment` varchar(64) NOT NULL DEFAULT '' COMMENT '注释',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_AppId` (`AppId`),
  KEY `Name_AppId` (`Name`,`AppId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='应用namespace定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppNamespace`
--

LOCK TABLES `AppNamespace` WRITE;
/*!40000 ALTER TABLE `AppNamespace` DISABLE KEYS */;
INSERT INTO `AppNamespace` VALUES (1,'application','xxl-job-admin','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(2,'application','xqx-job1','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(3,'application','xqx-user','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 06:26:21','apollo','2018-09-18 06:26:21'),(4,'application','xqx-oauth','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(5,'application','xqx-gateway','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(6,'application','xqx-dashboard','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(7,'application','xqx-turbine','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(8,'application','xqx-bloomfilter','properties',_binary '\0','default app namespace',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(9,'application','xqx-job2','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(10,'application','xqx-job3','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(11,'application','xqx-job4','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(12,'application','xqx-job5','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(13,'application','xqx-job-handler','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(14,'application','xxl-job-getway','properties',_binary '\0','default app namespace',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:00'),(15,'application','xxl-zipkin','properties',_binary '\0','default app namespace',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(16,'application','xqx-zipkin-server','properties',_binary '\0','default app namespace',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(17,'application','xqx-zipkin-server','properties',_binary '\0','default app namespace',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `AppNamespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Authorities`
--

DROP TABLE IF EXISTS `Authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Authorities` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Username` varchar(50) NOT NULL,
  `Authority` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authorities`
--

LOCK TABLES `Authorities` WRITE;
/*!40000 ALTER TABLE `Authorities` DISABLE KEYS */;
INSERT INTO `Authorities` VALUES (1,'apollo','ROLE_user'),(2,'admin','ROLE_user');
/*!40000 ALTER TABLE `Authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Consumer`
--

DROP TABLE IF EXISTS `Consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Consumer` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Name` varchar(500) NOT NULL DEFAULT 'default' COMMENT '应用名',
  `OrgId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '部门Id',
  `OrgName` varchar(64) NOT NULL DEFAULT 'default' COMMENT '部门名字',
  `OwnerName` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerName',
  `OwnerEmail` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'ownerEmail',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='开放API消费者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Consumer`
--

LOCK TABLES `Consumer` WRITE;
/*!40000 ALTER TABLE `Consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConsumerAudit`
--

DROP TABLE IF EXISTS `ConsumerAudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsumerAudit` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'Consumer Id',
  `Uri` varchar(1024) NOT NULL DEFAULT '' COMMENT '访问的Uri',
  `Method` varchar(16) NOT NULL DEFAULT '' COMMENT '访问的Method',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_ConsumerId` (`ConsumerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='consumer审计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConsumerAudit`
--

LOCK TABLES `ConsumerAudit` WRITE;
/*!40000 ALTER TABLE `ConsumerAudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConsumerAudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConsumerRole`
--

DROP TABLE IF EXISTS `ConsumerRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsumerRole` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'Consumer Id',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_ConsumerId_RoleId` (`ConsumerId`,`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='consumer和role的绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConsumerRole`
--

LOCK TABLES `ConsumerRole` WRITE;
/*!40000 ALTER TABLE `ConsumerRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConsumerRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConsumerToken`
--

DROP TABLE IF EXISTS `ConsumerToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsumerToken` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `ConsumerId` int(11) unsigned DEFAULT NULL COMMENT 'ConsumerId',
  `Token` varchar(128) NOT NULL DEFAULT '' COMMENT 'token',
  `Expires` datetime NOT NULL DEFAULT '2099-01-01 00:00:00' COMMENT 'token失效时间',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Token` (`Token`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='consumer token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConsumerToken`
--

LOCK TABLES `ConsumerToken` WRITE;
/*!40000 ALTER TABLE `ConsumerToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConsumerToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Favorite`
--

DROP TABLE IF EXISTS `Favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Favorite` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `UserId` varchar(32) NOT NULL DEFAULT 'default' COMMENT '收藏的用户',
  `AppId` varchar(500) NOT NULL DEFAULT 'default' COMMENT 'AppID',
  `Position` int(32) NOT NULL DEFAULT '10000' COMMENT '收藏顺序',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `AppId` (`AppId`(191)),
  KEY `IX_UserId` (`UserId`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='应用收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Favorite`
--

LOCK TABLES `Favorite` WRITE;
/*!40000 ALTER TABLE `Favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `Favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `PermissionType` varchar(32) NOT NULL DEFAULT '' COMMENT '权限类型',
  `TargetId` varchar(256) NOT NULL DEFAULT '' COMMENT '权限对象类型',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_TargetId_PermissionType` (`TargetId`(191),`PermissionType`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COMMENT='permission表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'CreateCluster','xxl-job-admin',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(2,'CreateNamespace','xxl-job-admin',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(3,'AssignRole','xxl-job-admin',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(4,'ModifyNamespace','xxl-job-admin+application',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(5,'ReleaseNamespace','xxl-job-admin+application',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(6,'ModifyNamespace','xxl-job-admin+application+DEV',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(7,'ReleaseNamespace','xxl-job-admin+application+DEV',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(8,'CreateCluster','xqx-job1',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(9,'CreateNamespace','xqx-job1',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(10,'AssignRole','xqx-job1',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(11,'ModifyNamespace','xqx-job1+application',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(12,'ReleaseNamespace','xqx-job1+application',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(13,'ModifyNamespace','xqx-job1+application+DEV',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(14,'ReleaseNamespace','xqx-job1+application+DEV',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(15,'CreateCluster','xqx-user',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(16,'CreateNamespace','xqx-user',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(17,'AssignRole','xqx-user',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(18,'ModifyNamespace','xqx-user+application',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(19,'ReleaseNamespace','xqx-user+application',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(20,'ModifyNamespace','xqx-user+application+DEV',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(21,'ReleaseNamespace','xqx-user+application+DEV',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(22,'CreateCluster','xqx-oauth',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(23,'CreateNamespace','xqx-oauth',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(24,'AssignRole','xqx-oauth',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(25,'ModifyNamespace','xqx-oauth+application',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(26,'ReleaseNamespace','xqx-oauth+application',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(27,'ModifyNamespace','xqx-oauth+application+DEV',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(28,'ReleaseNamespace','xqx-oauth+application+DEV',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(29,'CreateCluster','xqx-gateway',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(30,'CreateNamespace','xqx-gateway',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(31,'AssignRole','xqx-gateway',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(32,'ModifyNamespace','xqx-gateway+application',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(33,'ReleaseNamespace','xqx-gateway+application',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(34,'ModifyNamespace','xqx-gateway+application+DEV',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(35,'ReleaseNamespace','xqx-gateway+application+DEV',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(36,'CreateCluster','xqx-dashboard',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(37,'CreateNamespace','xqx-dashboard',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(38,'AssignRole','xqx-dashboard',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(39,'ModifyNamespace','xqx-dashboard+application',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(40,'ReleaseNamespace','xqx-dashboard+application',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(41,'ModifyNamespace','xqx-dashboard+application+DEV',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(42,'ReleaseNamespace','xqx-dashboard+application+DEV',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(43,'CreateCluster','xqx-turbine',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(44,'CreateNamespace','xqx-turbine',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(45,'AssignRole','xqx-turbine',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(46,'ModifyNamespace','xqx-turbine+application',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(47,'ReleaseNamespace','xqx-turbine+application',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(48,'ModifyNamespace','xqx-turbine+application+DEV',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(49,'ReleaseNamespace','xqx-turbine+application+DEV',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(50,'CreateCluster','xqx-bloomfilter',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(51,'CreateNamespace','xqx-bloomfilter',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(52,'AssignRole','xqx-bloomfilter',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(53,'ModifyNamespace','xqx-bloomfilter+application',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(54,'ReleaseNamespace','xqx-bloomfilter+application',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(55,'ModifyNamespace','xqx-bloomfilter+application+DEV',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(56,'ReleaseNamespace','xqx-bloomfilter+application+DEV',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(57,'CreateCluster','xqx-job2',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(58,'CreateNamespace','xqx-job2',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(59,'AssignRole','xqx-job2',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(60,'ModifyNamespace','xqx-job2+application',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(61,'ReleaseNamespace','xqx-job2+application',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(62,'ModifyNamespace','xqx-job2+application+DEV',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(63,'ReleaseNamespace','xqx-job2+application+DEV',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(64,'CreateCluster','xqx-job3',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(65,'CreateNamespace','xqx-job3',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(66,'AssignRole','xqx-job3',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(67,'ModifyNamespace','xqx-job3+application',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(68,'ReleaseNamespace','xqx-job3+application',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(69,'ModifyNamespace','xqx-job3+application+DEV',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(70,'ReleaseNamespace','xqx-job3+application+DEV',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(71,'CreateCluster','xqx-job4',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(72,'CreateNamespace','xqx-job4',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(73,'AssignRole','xqx-job4',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(74,'ModifyNamespace','xqx-job4+application',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(75,'ReleaseNamespace','xqx-job4+application',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(76,'ModifyNamespace','xqx-job4+application+DEV',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(77,'ReleaseNamespace','xqx-job4+application+DEV',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(78,'CreateCluster','xqx-job5',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(79,'CreateNamespace','xqx-job5',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(80,'AssignRole','xqx-job5',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(81,'ModifyNamespace','xqx-job5+application',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(82,'ReleaseNamespace','xqx-job5+application',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(83,'ModifyNamespace','xqx-job5+application+DEV',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(84,'ReleaseNamespace','xqx-job5+application+DEV',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(85,'CreateCluster','xqx-job-handler',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(86,'CreateNamespace','xqx-job-handler',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(87,'AssignRole','xqx-job-handler',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(88,'ModifyNamespace','xqx-job-handler+application',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(89,'ReleaseNamespace','xqx-job-handler+application',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(90,'ModifyNamespace','xqx-job-handler+application+DEV',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(91,'ReleaseNamespace','xqx-job-handler+application+DEV',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(92,'CreateCluster','xxl-job-getway',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(93,'CreateNamespace','xxl-job-getway',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(94,'AssignRole','xxl-job-getway',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(95,'ModifyNamespace','xxl-job-getway+application',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(96,'ReleaseNamespace','xxl-job-getway+application',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(97,'ModifyNamespace','xxl-job-getway+application+DEV',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(98,'ReleaseNamespace','xxl-job-getway+application+DEV',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(99,'CreateCluster','xxl-zipkin',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(100,'CreateNamespace','xxl-zipkin',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(101,'AssignRole','xxl-zipkin',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(102,'ModifyNamespace','xxl-zipkin+application',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(103,'ReleaseNamespace','xxl-zipkin+application',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(104,'ModifyNamespace','xxl-zipkin+application+DEV',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(105,'ReleaseNamespace','xxl-zipkin+application+DEV',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(106,'CreateCluster','xqx-zipkin-server',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(107,'CreateNamespace','xqx-zipkin-server',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(108,'AssignRole','xqx-zipkin-server',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(109,'ModifyNamespace','xqx-zipkin-server+application',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(110,'ReleaseNamespace','xqx-zipkin-server+application',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(111,'ModifyNamespace','xqx-zipkin-server+application+DEV',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(112,'ReleaseNamespace','xqx-zipkin-server+application+DEV',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(113,'CreateCluster','xqx-zipkin-server',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(114,'CreateNamespace','xqx-zipkin-server',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(115,'AssignRole','xqx-zipkin-server',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(116,'ModifyNamespace','xqx-zipkin-server+application',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(117,'ReleaseNamespace','xqx-zipkin-server+application',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(118,'ModifyNamespace','xqx-zipkin-server+application+DEV',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(119,'ReleaseNamespace','xqx-zipkin-server+application+DEV',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `RoleName` varchar(256) NOT NULL DEFAULT '' COMMENT 'Role name',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_RoleName` (`RoleName`(191)),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'Master+xxl-job-admin',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(2,'ModifyNamespace+xxl-job-admin+application',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(3,'ReleaseNamespace+xxl-job-admin+application',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(4,'ModifyNamespace+xxl-job-admin+application+DEV',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(5,'ReleaseNamespace+xxl-job-admin+application+DEV',_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(6,'Master+xqx-job1',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(7,'ModifyNamespace+xqx-job1+application',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(8,'ReleaseNamespace+xqx-job1+application',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(9,'ModifyNamespace+xqx-job1+application+DEV',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(10,'ReleaseNamespace+xqx-job1+application+DEV',_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(11,'Master+xqx-user',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(12,'ModifyNamespace+xqx-user+application',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(13,'ReleaseNamespace+xqx-user+application',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(14,'ModifyNamespace+xqx-user+application+DEV',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(15,'ReleaseNamespace+xqx-user+application+DEV',_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(16,'Master+xqx-oauth',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(17,'ModifyNamespace+xqx-oauth+application',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(18,'ReleaseNamespace+xqx-oauth+application',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(19,'ModifyNamespace+xqx-oauth+application+DEV',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(20,'ReleaseNamespace+xqx-oauth+application+DEV',_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(21,'Master+xqx-gateway',_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(22,'ModifyNamespace+xqx-gateway+application',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(23,'ReleaseNamespace+xqx-gateway+application',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(24,'ModifyNamespace+xqx-gateway+application+DEV',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(25,'ReleaseNamespace+xqx-gateway+application+DEV',_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(26,'Master+xqx-dashboard',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(27,'ModifyNamespace+xqx-dashboard+application',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(28,'ReleaseNamespace+xqx-dashboard+application',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(29,'ModifyNamespace+xqx-dashboard+application+DEV',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(30,'ReleaseNamespace+xqx-dashboard+application+DEV',_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(31,'Master+xqx-turbine',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(32,'ModifyNamespace+xqx-turbine+application',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(33,'ReleaseNamespace+xqx-turbine+application',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(34,'ModifyNamespace+xqx-turbine+application+DEV',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(35,'ReleaseNamespace+xqx-turbine+application+DEV',_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(36,'Master+xqx-bloomfilter',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(37,'ModifyNamespace+xqx-bloomfilter+application',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(38,'ReleaseNamespace+xqx-bloomfilter+application',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(39,'ModifyNamespace+xqx-bloomfilter+application+DEV',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(40,'ReleaseNamespace+xqx-bloomfilter+application+DEV',_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(41,'Master+xqx-job2',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(42,'ModifyNamespace+xqx-job2+application',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(43,'ReleaseNamespace+xqx-job2+application',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(44,'ModifyNamespace+xqx-job2+application+DEV',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(45,'ReleaseNamespace+xqx-job2+application+DEV',_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(46,'Master+xqx-job3',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(47,'ModifyNamespace+xqx-job3+application',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(48,'ReleaseNamespace+xqx-job3+application',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(49,'ModifyNamespace+xqx-job3+application+DEV',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(50,'ReleaseNamespace+xqx-job3+application+DEV',_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(51,'Master+xqx-job4',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(52,'ModifyNamespace+xqx-job4+application',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(53,'ReleaseNamespace+xqx-job4+application',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(54,'ModifyNamespace+xqx-job4+application+DEV',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(55,'ReleaseNamespace+xqx-job4+application+DEV',_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(56,'Master+xqx-job5',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(57,'ModifyNamespace+xqx-job5+application',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(58,'ReleaseNamespace+xqx-job5+application',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(59,'ModifyNamespace+xqx-job5+application+DEV',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(60,'ReleaseNamespace+xqx-job5+application+DEV',_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(61,'Master+xqx-job-handler',_binary '\0','admin','2018-09-19 02:50:50','admin','2018-09-19 02:50:50'),(62,'ModifyNamespace+xqx-job-handler+application',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(63,'ReleaseNamespace+xqx-job-handler+application',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(64,'ModifyNamespace+xqx-job-handler+application+DEV',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(65,'ReleaseNamespace+xqx-job-handler+application+DEV',_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(66,'Master+xxl-job-getway',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(67,'ModifyNamespace+xxl-job-getway+application',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(68,'ReleaseNamespace+xxl-job-getway+application',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(69,'ModifyNamespace+xxl-job-getway+application+DEV',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(70,'ReleaseNamespace+xxl-job-getway+application+DEV',_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(71,'Master+xxl-zipkin',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(72,'ModifyNamespace+xxl-zipkin+application',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(73,'ReleaseNamespace+xxl-zipkin+application',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(74,'ModifyNamespace+xxl-zipkin+application+DEV',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(75,'ReleaseNamespace+xxl-zipkin+application+DEV',_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(76,'Master+xqx-zipkin-server',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(77,'ModifyNamespace+xqx-zipkin-server+application',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(78,'ReleaseNamespace+xqx-zipkin-server+application',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(79,'ModifyNamespace+xqx-zipkin-server+application+DEV',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(80,'ReleaseNamespace+xqx-zipkin-server+application+DEV',_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(81,'Master+xqx-zipkin-server',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(82,'ModifyNamespace+xqx-zipkin-server+application',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(83,'ReleaseNamespace+xqx-zipkin-server+application',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(84,'ModifyNamespace+xqx-zipkin-server+application+DEV',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(85,'ReleaseNamespace+xqx-zipkin-server+application+DEV',_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RolePermission`
--

DROP TABLE IF EXISTS `RolePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RolePermission` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `PermissionId` int(10) unsigned DEFAULT NULL COMMENT 'Permission Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_PermissionId` (`PermissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COMMENT='角色和权限的绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RolePermission`
--

LOCK TABLES `RolePermission` WRITE;
/*!40000 ALTER TABLE `RolePermission` DISABLE KEYS */;
INSERT INTO `RolePermission` VALUES (1,1,1,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(2,1,2,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(3,1,3,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(4,2,4,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(5,3,5,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(6,4,6,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(7,5,7,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(8,6,8,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(9,6,9,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(10,6,10,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(11,7,11,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(12,8,12,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(13,9,13,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(14,10,14,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(15,11,15,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(16,11,16,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(17,11,17,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(18,12,18,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(19,13,19,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(20,14,20,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(21,15,21,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(22,16,22,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(23,16,23,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(24,16,24,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(25,17,25,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(26,18,26,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(27,19,27,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(28,20,28,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(29,21,29,_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(30,21,30,_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(31,21,31,_binary '\0','apollo','2018-09-18 06:28:11','apollo','2018-09-18 06:28:11'),(32,22,32,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(33,23,33,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(34,24,34,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(35,25,35,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(36,26,36,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(37,26,37,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(38,26,38,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(39,27,39,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(40,28,40,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(41,29,41,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(42,30,42,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(43,31,43,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(44,31,44,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(45,31,45,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(46,32,46,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(47,33,47,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(48,34,48,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(49,35,49,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(50,36,50,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(51,36,51,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(52,36,52,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(53,37,53,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(54,38,54,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(55,39,55,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(56,40,56,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(57,41,57,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(58,41,58,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(59,41,59,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(60,42,60,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(61,43,61,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(62,44,62,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(63,45,63,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(64,46,64,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(65,46,65,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(66,46,66,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(67,47,67,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(68,48,68,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(69,49,69,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(70,50,70,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(71,51,71,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(72,51,72,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(73,51,73,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(74,52,74,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(75,53,75,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(76,54,76,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(77,55,77,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(78,56,78,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(79,56,79,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(80,56,80,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(81,57,81,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(82,58,82,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(83,59,83,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(84,60,84,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(85,61,85,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(86,61,86,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(87,61,87,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(88,62,88,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(89,63,89,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(90,64,90,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(91,65,91,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(92,66,92,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(93,66,93,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(94,66,94,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(95,67,95,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(96,68,96,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(97,69,97,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(98,70,98,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(99,71,99,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(100,71,100,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(101,71,101,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(102,72,102,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(103,73,103,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(104,74,104,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(105,75,105,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(106,76,106,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(107,76,107,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(108,76,108,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(109,77,109,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(110,78,110,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(111,79,111,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(112,80,112,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(113,81,113,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(114,81,114,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(115,81,115,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(116,82,116,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(117,83,117,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(118,84,118,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(119,85,119,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `RolePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServerConfig`
--

DROP TABLE IF EXISTS `ServerConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServerConfig` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Key` varchar(64) NOT NULL DEFAULT 'default' COMMENT '配置项Key',
  `Value` varchar(2048) NOT NULL DEFAULT 'default' COMMENT '配置项值',
  `Comment` varchar(1024) DEFAULT '' COMMENT '注释',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_Key` (`Key`),
  KEY `DataChange_LastTime` (`DataChange_LastTime`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='配置服务自身配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServerConfig`
--

LOCK TABLES `ServerConfig` WRITE;
/*!40000 ALTER TABLE `ServerConfig` DISABLE KEYS */;
INSERT INTO `ServerConfig` VALUES (1,'apollo.portal.envs','dev','可支持的环境列表',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45'),(2,'organizations','[{\"orgId\":\"TEST1\",\"orgName\":\"样例部门1\"},{\"orgId\":\"TEST2\",\"orgName\":\"样例部门2\"}]','部门列表',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45'),(3,'superAdmin','apollo','Portal超级管理员',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45'),(4,'api.readTimeout','10000','http接口read timeout',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45'),(5,'consumer.token.salt','someSalt','consumer token salt',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45'),(6,'admin.createPrivateNamespace.switch','true','是否允许项目管理员创建私有namespace',_binary '\0','default','2018-09-18 03:22:45','','2018-09-18 03:22:45');
/*!40000 ALTER TABLE `ServerConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRole`
--

DROP TABLE IF EXISTS `UserRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRole` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `UserId` varchar(128) DEFAULT '' COMMENT '用户身份标识',
  `RoleId` int(10) unsigned DEFAULT NULL COMMENT 'Role Id',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: deleted, 0: normal',
  `DataChange_CreatedBy` varchar(32) DEFAULT '' COMMENT '创建人邮箱前缀',
  `DataChange_CreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `DataChange_LastModifiedBy` varchar(32) DEFAULT '' COMMENT '最后修改人邮箱前缀',
  `DataChange_LastTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`Id`),
  KEY `IX_DataChange_LastTime` (`DataChange_LastTime`),
  KEY `IX_RoleId` (`RoleId`),
  KEY `IX_UserId_RoleId` (`UserId`,`RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COMMENT='用户和role的绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRole`
--

LOCK TABLES `UserRole` WRITE;
/*!40000 ALTER TABLE `UserRole` DISABLE KEYS */;
INSERT INTO `UserRole` VALUES (1,'apollo',1,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(2,'apollo',2,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(3,'apollo',3,_binary '\0','apollo','2018-09-18 04:36:32','apollo','2018-09-18 04:36:32'),(4,'admin',6,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(5,'admin',7,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(6,'admin',8,_binary '\0','admin','2018-09-18 06:11:29','admin','2018-09-18 06:11:29'),(7,'apollo',11,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(8,'apollo',12,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(9,'apollo',13,_binary '\0','apollo','2018-09-18 06:26:22','apollo','2018-09-18 06:26:22'),(10,'apollo',16,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(11,'apollo',17,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(12,'apollo',18,_binary '\0','apollo','2018-09-18 06:27:14','apollo','2018-09-18 06:27:14'),(13,'apollo',21,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(14,'apollo',22,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(15,'apollo',23,_binary '\0','apollo','2018-09-18 06:28:12','apollo','2018-09-18 06:28:12'),(16,'apollo',26,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(17,'apollo',27,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(18,'apollo',28,_binary '\0','apollo','2018-09-18 06:29:16','apollo','2018-09-18 06:29:16'),(19,'apollo',31,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(20,'apollo',32,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(21,'apollo',33,_binary '\0','apollo','2018-09-18 06:30:38','apollo','2018-09-18 06:30:38'),(22,'apollo',36,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(23,'apollo',37,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(24,'apollo',38,_binary '\0','apollo','2018-09-18 07:06:49','apollo','2018-09-18 07:06:49'),(25,'admin',41,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(26,'admin',42,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(27,'admin',43,_binary '\0','admin','2018-09-18 07:11:15','admin','2018-09-18 07:11:15'),(28,'admin',46,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(29,'admin',47,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(30,'admin',48,_binary '\0','admin','2018-09-18 07:12:18','admin','2018-09-18 07:12:18'),(31,'admin',51,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(32,'admin',52,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(33,'admin',53,_binary '\0','admin','2018-09-18 07:12:51','admin','2018-09-18 07:12:51'),(34,'admin',56,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(35,'admin',57,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(36,'admin',58,_binary '\0','admin','2018-09-18 07:13:19','admin','2018-09-18 07:13:19'),(37,'admin',61,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(38,'admin',62,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(39,'admin',63,_binary '\0','admin','2018-09-19 02:50:51','admin','2018-09-19 02:50:51'),(40,'admin',66,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(41,'admin',67,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(42,'admin',68,_binary '','admin','2018-09-21 06:24:56','apollo','2018-09-21 06:31:01'),(43,'admin',71,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(44,'admin',72,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(45,'admin',73,_binary '','admin','2018-09-25 06:18:23','apollo','2018-09-25 08:21:55'),(46,'admin',2,_binary '\0','apollo','2018-09-25 06:55:38','apollo','2018-09-25 06:55:38'),(47,'admin',3,_binary '\0','apollo','2018-09-25 06:55:40','apollo','2018-09-25 06:55:40'),(48,'admin',76,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(49,'admin',77,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(50,'admin',78,_binary '','admin','2018-09-25 08:22:12','apollo','2018-09-25 08:22:39'),(51,'admin',81,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(52,'admin',82,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54'),(53,'admin',83,_binary '\0','admin','2018-09-25 08:22:54','admin','2018-09-25 08:22:54');
/*!40000 ALTER TABLE `UserRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `Username` varchar(64) NOT NULL DEFAULT 'default' COMMENT '用户名',
  `Password` varchar(64) NOT NULL DEFAULT 'default' COMMENT '密码',
  `Email` varchar(64) NOT NULL DEFAULT 'default' COMMENT '邮箱地址',
  `Enabled` tinyint(4) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'apollo','$2a$10$7r20uS.BQ9uBpf3Baj3uQOZvMVvB1RN3PYoKE94gtz2.WAOuiiwXS','apollo@acme.com',1),(2,'admin','$2a$10$qXLrToWpmAkcdQIsrMl.ru9TYvBohCF38zvnecitP2XWgI5wZvvRa','abc@qq.com',1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25 17:18:44
