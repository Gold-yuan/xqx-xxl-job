-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: xxl-job
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

--
-- Table structure for table `XXL_JOB_QRTZ_BLOB_TRIGGERS`
--
CREATE database if NOT EXISTS `xxl-job` default character set utf8 collate utf8_general_ci;
use `xxl-job`;

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_CALENDARS`
--

LOCK TABLES `XXL_JOB_QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_CRON_TRIGGERS` VALUES ('quartzScheduler','10','5','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','11','4','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','12','3','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','14','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','15','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','16','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','17','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','18','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','19','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','20','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','21','2','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','6','3','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','7','4','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','8','5','0 0/2  * * * ?','Asia/Shanghai'),('quartzScheduler','9','6','0 0/2  * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_JOB_DETAILS`
--

LOCK TABLES `XXL_JOB_QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_JOB_DETAILS` VALUES ('quartzScheduler','10','5',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','11','4',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','12','3',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','14','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','15','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','16','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','17','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','18','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','19','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','20','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','21','2',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','6','3',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','7','4',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','8','5',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('quartzScheduler','9','6',NULL,'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_LOCKS`
--

LOCK TABLES `XXL_JOB_QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_LOCKS` VALUES ('quartzScheduler','STATE_ACCESS'),('quartzScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `XXL_JOB_QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_SCHEDULER_STATE` VALUES ('quartzScheduler','dhcp-9-186-54-961537243037858',1537838232080,5000);
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `XXL_JOB_QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGERS` VALUES ('quartzScheduler','10','5','10','5',NULL,1537344720000,-1,5,'PAUSED','CRON',1537344694000,0,NULL,2,''),('quartzScheduler','11','4','11','4',NULL,1537344840000,-1,5,'PAUSED','CRON',1537344800000,0,NULL,2,''),('quartzScheduler','12','3','12','3',NULL,1537344960000,-1,5,'PAUSED','CRON',1537344866000,0,NULL,2,''),('quartzScheduler','14','2','14','2',NULL,1537427040000,1537426920000,5,'PAUSED','CRON',1537426915000,0,NULL,2,''),('quartzScheduler','15','2','15','2',NULL,1537427040000,-1,5,'PAUSED','CRON',1537426974000,0,NULL,2,''),('quartzScheduler','16','2','16','2',NULL,1537427040000,-1,5,'PAUSED','CRON',1537427033000,0,NULL,2,''),('quartzScheduler','17','2','17','2',NULL,1537427160000,-1,5,'PAUSED','CRON',1537427081000,0,NULL,2,''),('quartzScheduler','18','2','18','2',NULL,1537427160000,-1,5,'PAUSED','CRON',1537427129000,0,NULL,2,''),('quartzScheduler','19','2','19','2',NULL,1537427280000,-1,5,'PAUSED','CRON',1537427180000,0,NULL,2,''),('quartzScheduler','20','2','20','2',NULL,1537427280000,-1,5,'PAUSED','CRON',1537427224000,0,NULL,2,''),('quartzScheduler','21','2','21','2',NULL,1537427400000,1537427280000,5,'PAUSED','CRON',1537427271000,0,NULL,2,''),('quartzScheduler','6','3','6','3',NULL,1537344360000,1537344240000,5,'PAUSED','CRON',1537344235000,0,NULL,2,''),('quartzScheduler','7','4','7','4',NULL,1537344480000,1537344360000,5,'PAUSED','CRON',1537344291000,0,NULL,2,''),('quartzScheduler','8','5','8','5',NULL,1537344480000,-1,5,'PAUSED','CRON',1537344368000,0,NULL,2,''),('quartzScheduler','9','6','9','6',NULL,1537344480000,-1,5,'PAUSED','CRON',1537344412000,0,NULL,2,'');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_GROUP`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL COMMENT 'ִ����AppName',
  `title` varchar(12) NOT NULL COMMENT 'ִ��������',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '����',
  `address_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'ִ������ַ���ͣ�0=�Զ�ע�ᡢ1=�ֶ�¼��',
  `address_list` varchar(512) DEFAULT NULL COMMENT 'ִ������ַ�б����ַ���ŷָ�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_GROUP`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_GROUP` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_GROUP` VALUES (2,'xxl-job-executor-sample','test1',1,1,'9.186.54.135:9995');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_INFO`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT 'ִ��������ID',
  `job_cron` varchar(128) NOT NULL COMMENT '����ִ��CRON',
  `job_desc` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL COMMENT '����',
  `alarm_email` varchar(255) DEFAULT NULL COMMENT '�����ʼ�',
  `executor_route_strategy` varchar(50) DEFAULT NULL COMMENT 'ִ����·�ɲ���',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT 'ִ��������handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT 'ִ�����������',
  `executor_block_strategy` varchar(50) DEFAULT NULL COMMENT '�����������',
  `executor_timeout` int(11) NOT NULL DEFAULT '0' COMMENT '����ִ�г�ʱʱ�䣬��λ��',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT 'ʧ�����Դ���',
  `glue_type` varchar(50) NOT NULL COMMENT 'GLUE����',
  `glue_source` text COMMENT 'GLUEԴ����',
  `glue_remark` varchar(128) DEFAULT NULL COMMENT 'GLUE��ע',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE����ʱ��',
  `child_jobid` varchar(255) DEFAULT NULL COMMENT '������ID��������ŷָ�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_INFO`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_INFO` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_INFO` VALUES (14,2,'0 0/2  * * * ?','test-A-job-status','2018-09-20 15:01:55','2018-09-21 16:38:18','admin','','FIRST','ExecuteBtoAStatusHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:01:55',''),(15,2,'0 0/2  * * * ?','test-B-job-status','2018-09-20 15:02:53','2018-09-21 16:37:47','admin','','FIRST','ExecuteCtoBStatusHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:02:53',''),(16,2,'0 0/2  * * * ?','test-C-job-status','2018-09-20 15:03:53','2018-09-21 16:37:12','admin','','FIRST','ExecuteDtoCStatusHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:03:53',''),(17,2,'0 0/2  * * * ?','test-E-job-status','2018-09-20 15:04:41','2018-09-21 16:36:33','admin','','FIRST','ExecuteEtoDStatusHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:04:41',''),(18,2,'0 0/2  * * * ?','test-E-job','2018-09-20 15:05:29','2018-09-21 16:35:57','admin','','FIRST','ExecuteDtoEJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:05:29',''),(19,2,'0 0/2  * * * ?','test-D-job','2018-09-20 15:06:20','2018-09-21 16:34:52','admin','','FIRST','ExecuteCtoDJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:06:20',''),(20,2,'0 0/2  * * * ?','test-C-job','2018-09-20 15:07:04','2018-09-21 16:34:21','admin','','FIRST','ExecuteBtoCJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:07:04',''),(21,2,'0 0/2  * * * ?','test-B-job','2018-09-20 15:07:51','2018-09-21 16:33:00','admin','','FIRST','ExecuteAtoBJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-09-20 15:07:51','');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_LOG`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT 'ִ��������ID',
  `job_id` int(11) NOT NULL COMMENT '��������ID',
  `executor_address` varchar(255) DEFAULT NULL COMMENT 'ִ������ַ������ִ�еĵ�ַ',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT 'ִ��������handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT 'ִ�����������',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT 'ʧ�����Դ���',
  `trigger_time` datetime DEFAULT NULL COMMENT '����-ʱ��',
  `trigger_code` int(11) NOT NULL COMMENT '����-���',
  `trigger_msg` varchar(2048) DEFAULT NULL COMMENT '����-��־',
  `handle_time` datetime DEFAULT NULL COMMENT 'ִ��-ʱ��',
  `handle_code` int(11) NOT NULL COMMENT 'ִ��-״̬',
  `handle_msg` varchar(2048) DEFAULT NULL COMMENT 'ִ��-��־',
  PRIMARY KEY (`id`),
  KEY `I_trigger_time` (`trigger_time`)
) ENGINE=InnoDB AUTO_INCREMENT=86487 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_LOG`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_LOG` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '��������ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE����',
  `glue_source` text COMMENT 'GLUEԴ����',
  `glue_remark` varchar(128) NOT NULL COMMENT 'GLUE��ע',
  `add_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_REGISTRY`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_REGISTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(255) NOT NULL,
  `registry_key` varchar(255) NOT NULL,
  `registry_value` varchar(255) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_REGISTRY`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_REGISTRY` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_REGISTRY` VALUES (1,'EXECUTOR','xxl-job-executor-sample','9.186.52.219:9991','2018-09-18 06:16:17'),(2,'EXECUTOR','xxl-job-executor-sample-B','127.0.0.1:9992','2018-09-18 06:11:51'),(92,'EXECUTOR','xxl-job-executor-sample','9.186.54.135:8085','2018-09-21 07:07:47'),(95,'EXECUTOR','xxl-job-executor-sample','9.186.54.135:9995','2018-09-25 01:17:15');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25  9:17:16
