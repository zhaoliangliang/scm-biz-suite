-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: retailscm
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `account_set_data`
--

DROP TABLE IF EXISTS `account_set_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_set_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `year_set` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年组',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `accounting_system` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计制度',
  `domestic_currency_code` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '本币代码',
  `domestic_currency_name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '本币名称',
  `opening_bank` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户银行',
  `account_number` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帐户号码',
  `country_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全国运营中心',
  `retail_store` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '双链小超',
  `goods_supplier` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品供应商',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_account_set` (`id`,`version`),
  KEY `idx4effective_date_of_account_set` (`effective_date`),
  KEY `idx4last_update_time_of_account_set` (`last_update_time`),
  KEY `fk4country_center_of_account_set_data` (`country_center`),
  KEY `fk4retail_store_of_account_set_data` (`retail_store`),
  KEY `fk4goods_supplier_of_account_set_data` (`goods_supplier`),
  CONSTRAINT `fk4country_center_of_account_set_data` FOREIGN KEY (`country_center`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4goods_supplier_of_account_set_data` FOREIGN KEY (`goods_supplier`) REFERENCES `goods_supplier_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4retail_store_of_account_set_data` FOREIGN KEY (`retail_store`) REFERENCES `retail_store_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='账套';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_set_data`
--

LOCK TABLES `account_set_data` WRITE;
/*!40000 ALTER TABLE `account_set_data` DISABLE KEYS */;
INSERT INTO `account_set_data` VALUES ('AS000001','账套2017','2017年','2019-07-04','企业会计制度','RMB','人民币','招商银行','33265805054885',NULL,NULL,NULL,'2019-10-15 04:50:45',2),('AS000002','账套2018','2018年','2018-05-25','小企业会计制度','USD','美元','工商银行','332658050548850002',NULL,NULL,NULL,'2019-10-16 18:12:07',2),('AS000003','账套2019','2019年','2017-10-14','合伙制会计制度','RMB','人民币','招商银行','332658050548850003',NULL,NULL,NULL,'2019-10-16 04:28:04',2),('AS000004','账套2017','2017年','2019-03-05','企业会计制度','USD','美元','工商银行','332658050548850004',NULL,NULL,NULL,'2019-10-12 02:27:20',2),('AS000005','账套2018','2018年','2018-05-01','小企业会计制度','RMB','人民币','招商银行','332658050548850005',NULL,NULL,NULL,'2019-10-20 03:12:34',2),('AS000006','账套2019','2019年','2019-09-15','合伙制会计制度','USD','美元','工商银行','332658050548850006',NULL,NULL,NULL,'2019-10-15 13:27:35',3),('AS000007','账套2017','2017年','2018-08-06','企业会计制度','RMB','人民币','招商银行','332658050548850007',NULL,NULL,NULL,'2019-10-28 23:22:02',2),('AS000008','账套2018','2018年','2017-03-10','小企业会计制度','USD','美元','工商银行','332658050548850008',NULL,NULL,NULL,'2019-10-11 23:30:29',2),('AS000009','账套2019','2019年','2018-04-13','合伙制会计制度','RMB','人民币','招商银行','332658050548850009',NULL,NULL,NULL,'2019-10-13 22:56:51',2),('AS000010','账套2017','2017年','2016-11-14','企业会计制度','USD','美元','工商银行','332658050548850010',NULL,NULL,NULL,'2019-10-28 12:24:22',2),('AS000011','账套2018','2018年','2019-08-20','小企业会计制度','RMB','人民币','招商银行','332658050548850011',NULL,NULL,NULL,'2019-10-25 23:35:48',2),('AS000012','账套2019','2019年','2017-09-28','合伙制会计制度','USD','美元','工商银行','332658050548850012',NULL,NULL,NULL,'2019-10-28 08:31:00',2),('AS000013','账套2017','2017年','2017-12-19','企业会计制度','RMB','人民币','招商银行','332658050548850013',NULL,NULL,NULL,'2019-10-27 04:54:15',2),('AS000014','账套2018','2018年','2019-02-07','小企业会计制度','USD','美元','工商银行','332658050548850014',NULL,NULL,NULL,'2019-10-09 06:57:25',2),('AS000015','账套2019','2019年','2018-11-17','合伙制会计制度','RMB','人民币','招商银行','332658050548850015',NULL,NULL,NULL,'2019-10-27 09:28:03',2),('AS000016','账套2017','2017年','2017-04-30','企业会计制度','USD','美元','工商银行','332658050548850016',NULL,NULL,NULL,'2019-10-15 22:19:36',3),('AS000017','2020年账套','2020','2017-01-01','小企业会计制度','CNY','人民币','北京银行','988713',NULL,NULL,NULL,'2020-03-27 18:18:20',2),('AS000018','ddddd','dddd','2016-02-26','0.1','ddd','ddd','dddd','dddd',NULL,NULL,NULL,'2020-04-15 16:52:29',2),('AS000019','dddddd','ddddd','2016-04-13','ddddd','dddddddd','dddddddd','dddddddd','dddddddd','RSCC000001','RS000007','GS000007','2020-04-29 10:18:05',5);
/*!40000 ALTER TABLE `account_set_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_auditing_data`
--

DROP TABLE IF EXISTS `accounting_document_auditing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_auditing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_auditing` (`id`,`version`),
  KEY `idx4make_date_of_accounting_document_auditing` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计凭证的审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_auditing_data`
--

LOCK TABLES `accounting_document_auditing_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_auditing_data` DISABLE KEYS */;
INSERT INTO `accounting_document_auditing_data` VALUES ('ADA000001','财务会计','审核通过，要都审核过了才通过哦','2019-10-14',1);
/*!40000 ALTER TABLE `accounting_document_auditing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_confirmation_data`
--

DROP TABLE IF EXISTS `accounting_document_confirmation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_confirmation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_confirmation` (`id`,`version`),
  KEY `idx4make_date_of_accounting_document_confirmation` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计的确认文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_confirmation_data`
--

LOCK TABLES `accounting_document_confirmation_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_confirmation_data` DISABLE KEYS */;
INSERT INTO `accounting_document_confirmation_data` VALUES ('ADC000001','财务会计','确认通过','2019-09-24',1);
/*!40000 ALTER TABLE `accounting_document_confirmation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_creation_data`
--

DROP TABLE IF EXISTS `accounting_document_creation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_creation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_creation` (`id`,`version`),
  KEY `idx4make_date_of_accounting_document_creation` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计文件的创建';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_creation_data`
--

LOCK TABLES `accounting_document_creation_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_creation_data` DISABLE KEYS */;
INSERT INTO `accounting_document_creation_data` VALUES ('ADC000001','财务会计','确认提交','2017-07-05',1);
/*!40000 ALTER TABLE `accounting_document_creation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_data`
--

DROP TABLE IF EXISTS `accounting_document_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `accounting_document_date` date DEFAULT NULL COMMENT '会计凭证日期',
  `accounting_period` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计期间',
  `document_type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文档类型',
  `creation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建',
  `confirmation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '确认',
  `auditing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审计',
  `posting` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '过账',
  `current_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document` (`id`,`version`),
  KEY `idx4accounting_document_date_of_accounting_document` (`accounting_document_date`),
  KEY `fk4accounting_period_of_accounting_document_data` (`accounting_period`),
  KEY `fk4document_type_of_accounting_document_data` (`document_type`),
  CONSTRAINT `fk4accounting_period_of_accounting_document_data` FOREIGN KEY (`accounting_period`) REFERENCES `accounting_period_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4document_type_of_accounting_document_data` FOREIGN KEY (`document_type`) REFERENCES `accounting_document_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计凭证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_data`
--

LOCK TABLES `accounting_document_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_data` DISABLE KEYS */;
INSERT INTO `accounting_document_data` VALUES ('AD000001','记账凭证','2019-01-17','AP000001','ADT000001',NULL,NULL,NULL,NULL,'CREATED',1),('AD000002','记账凭证0002','2018-05-08','AP000001','ADT000001',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000003','记账凭证0003','2018-07-19','AP000002','ADT000002',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000004','记账凭证0004','2017-09-17','AP000002','ADT000002',NULL,NULL,NULL,NULL,'POSTED',1),('AD000005','记账凭证0005','2019-05-29','AP000003','ADT000003',NULL,NULL,NULL,NULL,'CREATED',1),('AD000006','记账凭证0006','2018-06-29','AP000003','ADT000003',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000007','记账凭证0007','2019-06-15','AP000004','ADT000004',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000008','记账凭证0008','2018-06-05','AP000004','ADT000004',NULL,NULL,NULL,NULL,'POSTED',1),('AD000009','记账凭证0009','2019-09-12','AP000005','ADT000005',NULL,NULL,NULL,NULL,'CREATED',1),('AD000010','记账凭证0010','2017-05-13','AP000005','ADT000005',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000011','记账凭证0011','2018-06-30','AP000006','ADT000006',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000012','记账凭证0012','2017-12-09','AP000006','ADT000006',NULL,NULL,NULL,NULL,'POSTED',1),('AD000013','记账凭证0013','2019-10-06','AP000007','ADT000007',NULL,NULL,NULL,NULL,'CREATED',1),('AD000014','记账凭证0014','2017-11-15','AP000007','ADT000007',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000015','记账凭证0015','2019-01-22','AP000008','ADT000008',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000016','记账凭证0016','2017-06-02','AP000008','ADT000008',NULL,NULL,NULL,NULL,'POSTED',1),('AD000017','记账凭证0017','2017-03-26','AP000009','ADT000009',NULL,NULL,NULL,NULL,'CREATED',1),('AD000018','记账凭证0018','2018-11-15','AP000009','ADT000009',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000019','记账凭证0019','2017-10-29','AP000010','ADT000010',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000020','记账凭证0020','2019-04-25','AP000010','ADT000010',NULL,NULL,NULL,NULL,'POSTED',1),('AD000021','记账凭证0021','2019-04-03','AP000011','ADT000011',NULL,NULL,NULL,NULL,'CREATED',1),('AD000022','记账凭证0022','2017-04-07','AP000011','ADT000011',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000023','记账凭证0023','2017-06-04','AP000012','ADT000012',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000024','记账凭证0024','2017-04-23','AP000012','ADT000012',NULL,NULL,NULL,NULL,'POSTED',1),('AD000025','记账凭证0025','2017-12-06','AP000013','ADT000013',NULL,NULL,NULL,NULL,'CREATED',1),('AD000026','记账凭证0026','2017-12-04','AP000013','ADT000013',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000027','记账凭证0027','2017-06-20','AP000014','ADT000014',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000028','记账凭证0028','2018-10-09','AP000014','ADT000014',NULL,NULL,NULL,NULL,'POSTED',1),('AD000029','记账凭证0029','2016-12-10','AP000015','ADT000015',NULL,NULL,NULL,NULL,'CREATED',1),('AD000030','记账凭证0030','2018-09-26','AP000015','ADT000015',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000031','记账凭证0031','2017-05-21','AP000016','ADT000016',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000032','记账凭证0032','2017-04-03','AP000016','ADT000016',NULL,NULL,NULL,NULL,'POSTED',1),('AD000033','记账凭证0033','2018-02-09','AP000017','ADT000017',NULL,NULL,NULL,NULL,'CREATED',1),('AD000034','记账凭证0034','2017-12-20','AP000017','ADT000017',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000035','记账凭证0035','2017-10-12','AP000018','ADT000018',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000036','记账凭证0036','2019-06-23','AP000018','ADT000018',NULL,NULL,NULL,NULL,'POSTED',1),('AD000037','记账凭证0037','2019-08-16','AP000019','ADT000019',NULL,NULL,NULL,NULL,'CREATED',1),('AD000038','记账凭证0038','2019-07-15','AP000019','ADT000019',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000039','记账凭证0039','2019-07-10','AP000020','ADT000020',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000040','记账凭证0040','2019-01-09','AP000020','ADT000020',NULL,NULL,NULL,NULL,'POSTED',1),('AD000041','记账凭证0041','2017-07-28','AP000021','ADT000021',NULL,NULL,NULL,NULL,'CREATED',1),('AD000042','记账凭证0042','2016-11-11','AP000021','ADT000021',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000043','记账凭证0043','2019-10-15','AP000022','ADT000022',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000044','记账凭证0044','2016-12-29','AP000022','ADT000022',NULL,NULL,NULL,NULL,'POSTED',1),('AD000045','记账凭证0045','2018-01-09','AP000023','ADT000023',NULL,NULL,NULL,NULL,'CREATED',1),('AD000046','记账凭证0046','2017-08-16','AP000023','ADT000023',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000047','记账凭证0047','2018-06-05','AP000024','ADT000024',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000048','记账凭证0048','2019-10-27','AP000024','ADT000024',NULL,NULL,NULL,NULL,'POSTED',1),('AD000049','记账凭证0049','2017-07-30','AP000025','ADT000025',NULL,NULL,NULL,NULL,'CREATED',1),('AD000050','记账凭证0050','2017-11-24','AP000025','ADT000025',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000051','记账凭证0051','2019-09-05','AP000026','ADT000026',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000052','记账凭证0052','2017-10-08','AP000026','ADT000026',NULL,NULL,NULL,NULL,'POSTED',1),('AD000053','记账凭证0053','2017-08-09','AP000027','ADT000027',NULL,NULL,NULL,NULL,'CREATED',1),('AD000054','记账凭证0054','2018-01-25','AP000027','ADT000027',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000055','记账凭证0055','2018-03-14','AP000028','ADT000028',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000056','记账凭证0056','2017-09-20','AP000028','ADT000028',NULL,NULL,NULL,NULL,'POSTED',1),('AD000057','记账凭证0057','2017-09-02','AP000029','ADT000029',NULL,NULL,NULL,NULL,'CREATED',1),('AD000058','记账凭证0058','2019-03-28','AP000029','ADT000029',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000059','记账凭证0059','2018-08-18','AP000030','ADT000030',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000060','记账凭证0060','2019-04-15','AP000030','ADT000030',NULL,NULL,NULL,NULL,'POSTED',1),('AD000061','记账凭证0061','2018-09-20','AP000031','ADT000031',NULL,NULL,NULL,NULL,'CREATED',1),('AD000062','记账凭证0062','2017-12-24','AP000031','ADT000031',NULL,NULL,NULL,NULL,'CONFIRMED',1),('AD000063','记账凭证0063','2017-07-27','AP000032','ADT000032',NULL,NULL,NULL,NULL,'AUDITED',1),('AD000064','记账凭证0064','2019-09-04','AP000032','ADT000032',NULL,NULL,NULL,NULL,'POSTED',1);
/*!40000 ALTER TABLE `accounting_document_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_line_data`
--

DROP TABLE IF EXISTS `accounting_document_line_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_line_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `direct` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '直接',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `accounting_subject` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计科目',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_line` (`id`,`version`),
  KEY `idx4amount_of_accounting_document_line` (`amount`),
  KEY `fk4belongs_to_of_accounting_document_line_data` (`belongs_to`),
  KEY `fk4accounting_subject_of_accounting_document_line_data` (`accounting_subject`),
  CONSTRAINT `fk4accounting_subject_of_accounting_document_line_data` FOREIGN KEY (`accounting_subject`) REFERENCES `accounting_subject_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4belongs_to_of_accounting_document_line_data` FOREIGN KEY (`belongs_to`) REFERENCES `accounting_document_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计凭证行';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_line_data`
--

LOCK TABLES `accounting_document_line_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_line_data` DISABLE KEYS */;
INSERT INTO `accounting_document_line_data` VALUES ('ADL000001','收到存款','AS9999','借',806253.12,'AD000001','AS000001',1),('ADL000002','收到存款0002','AS99990002','贷',820852.25,'AD000001','AS000001',2),('ADL000003','收到存款0003','AS99990003','借',968386.88,'AD000002','AS000001',1),('ADL000004','收到存款0004','AS99990004','贷',885882.50,'AD000002','AS000001',1),('ADL000005','收到存款0005','AS99990005','借',772357.75,'AD000003','AS000002',1),('ADL000006','收到存款0006','AS99990006','贷',852584.00,'AD000003','AS000002',1),('ADL000007','收到存款0007','AS99990007','借',891820.69,'AD000004','AS000002',1),('ADL000008','收到存款0008','AS99990008','贷',922724.62,'AD000004','AS000002',1),('ADL000009','收到存款0009','AS99990009','借',826292.31,'AD000005','AS000003',1),('ADL000010','收到存款0010','AS99990010','贷',870360.38,'AD000005','AS000003',1),('ADL000011','收到存款0011','AS99990011','借',718390.44,'AD000006','AS000003',1),('ADL000012','收到存款0012','AS99990012','贷',894501.25,'AD000006','AS000003',1),('ADL000013','收到存款0013','AS99990013','借',856320.75,'AD000007','AS000004',1),('ADL000014','收到存款0014','AS99990014','贷',815830.88,'AD000007','AS000004',1),('ADL000015','收到存款0015','AS99990015','借',702542.88,'AD000008','AS000004',1),('ADL000016','收到存款0016','AS99990016','贷',841783.62,'AD000008','AS000004',1),('ADL000017','收到存款0017','AS99990017','借',972057.88,'AD000009','AS000005',1),('ADL000018','收到存款0018','AS99990018','贷',766843.12,'AD000009','AS000005',1),('ADL000019','收到存款0019','AS99990019','借',718068.38,'AD000010','AS000005',1),('ADL000020','收到存款0020','AS99990020','贷',953727.75,'AD000010','AS000005',1),('ADL000021','收到存款0021','AS99990021','借',947203.50,'AD000011','AS000006',1),('ADL000022','收到存款0022','AS99990022','贷',942776.88,'AD000011','AS000006',1),('ADL000023','收到存款0023','AS99990023','借',916062.31,'AD000012','AS000006',1),('ADL000024','收到存款0024','AS99990024','贷',958946.06,'AD000012','AS000006',1),('ADL000025','收到存款0025','AS99990025','借',737483.88,'AD000013','AS000007',1),('ADL000026','收到存款0026','AS99990026','贷',942413.19,'AD000013','AS000007',1),('ADL000027','收到存款0027','AS99990027','借',726118.81,'AD000014','AS000007',1),('ADL000028','收到存款0028','AS99990028','贷',884542.00,'AD000014','AS000007',1),('ADL000029','收到存款0029','AS99990029','借',831924.00,'AD000015','AS000008',1),('ADL000030','收到存款0030','AS99990030','贷',807095.56,'AD000015','AS000008',1),('ADL000031','收到存款0031','AS99990031','借',796135.62,'AD000016','AS000008',1),('ADL000032','收到存款0032','AS99990032','贷',804392.88,'AD000016','AS000008',1),('ADL000033','收到存款0033','AS99990033','借',961140.12,'AD000017','AS000009',1),('ADL000034','收到存款0034','AS99990034','贷',729161.81,'AD000017','AS000009',1),('ADL000035','收到存款0035','AS99990035','借',839702.06,'AD000018','AS000009',1),('ADL000036','收到存款0036','AS99990036','贷',915979.00,'AD000018','AS000009',1),('ADL000037','收到存款0037','AS99990037','借',783922.75,'AD000019','AS000010',1),('ADL000038','收到存款0038','AS99990038','贷',755232.00,'AD000019','AS000010',1),('ADL000039','收到存款0039','AS99990039','借',985709.62,'AD000020','AS000010',1),('ADL000040','收到存款0040','AS99990040','贷',836676.38,'AD000020','AS000010',1),('ADL000041','收到存款0041','AS99990041','借',875849.44,'AD000021','AS000011',1),('ADL000042','收到存款0042','AS99990042','贷',938796.12,'AD000021','AS000011',1),('ADL000043','收到存款0043','AS99990043','借',799439.44,'AD000022','AS000011',1),('ADL000044','收到存款0044','AS99990044','贷',858464.50,'AD000022','AS000011',1),('ADL000045','收到存款0045','AS99990045','借',894455.38,'AD000023','AS000012',1),('ADL000046','收到存款0046','AS99990046','贷',824470.50,'AD000023','AS000012',1),('ADL000047','收到存款0047','AS99990047','借',893906.12,'AD000024','AS000012',1),('ADL000048','收到存款0048','AS99990048','贷',833631.44,'AD000024','AS000012',1),('ADL000049','收到存款0049','AS99990049','借',722857.31,'AD000025','AS000013',1),('ADL000050','收到存款0050','AS99990050','贷',832047.81,'AD000025','AS000013',1),('ADL000051','收到存款0051','AS99990051','借',980210.31,'AD000026','AS000013',1),('ADL000052','收到存款0052','AS99990052','贷',792990.00,'AD000026','AS000013',1),('ADL000053','收到存款0053','AS99990053','借',914030.94,'AD000027','AS000014',1),('ADL000054','收到存款0054','AS99990054','贷',731445.12,'AD000027','AS000014',1),('ADL000055','收到存款0055','AS99990055','借',717063.25,'AD000028','AS000014',1),('ADL000056','收到存款0056','AS99990056','贷',758309.50,'AD000028','AS000014',1),('ADL000057','收到存款0057','AS99990057','借',841779.75,'AD000029','AS000015',1),('ADL000058','收到存款0058','AS99990058','贷',743481.06,'AD000029','AS000015',1),('ADL000059','收到存款0059','AS99990059','借',708242.69,'AD000030','AS000015',1),('ADL000060','收到存款0060','AS99990060','贷',724873.38,'AD000030','AS000015',1),('ADL000061','收到存款0061','AS99990061','借',973759.75,'AD000031','AS000016',1),('ADL000062','收到存款0062','AS99990062','贷',883567.56,'AD000031','AS000016',1),('ADL000063','收到存款0063','AS99990063','借',729851.62,'AD000032','AS000016',1),('ADL000064','收到存款0064','AS99990064','贷',918112.38,'AD000032','AS000016',1),('ADL000065','收到存款0065','AS99990065','借',833123.69,'AD000033','AS000017',1),('ADL000066','收到存款0066','AS99990066','贷',781452.44,'AD000033','AS000017',1),('ADL000067','收到存款0067','AS99990067','借',746867.56,'AD000034','AS000017',1),('ADL000068','收到存款0068','AS99990068','贷',731002.62,'AD000034','AS000017',1),('ADL000069','收到存款0069','AS99990069','借',811545.31,'AD000035','AS000018',1),('ADL000070','收到存款0070','AS99990070','贷',730803.56,'AD000035','AS000018',1),('ADL000071','收到存款0071','AS99990071','借',794145.62,'AD000036','AS000018',1),('ADL000072','收到存款0072','AS99990072','贷',831763.31,'AD000036','AS000018',1),('ADL000073','收到存款0073','AS99990073','借',832297.88,'AD000037','AS000019',1),('ADL000074','收到存款0074','AS99990074','贷',785714.19,'AD000037','AS000019',1),('ADL000075','收到存款0075','AS99990075','借',695248.88,'AD000038','AS000019',1),('ADL000076','收到存款0076','AS99990076','贷',978107.50,'AD000038','AS000019',1),('ADL000077','收到存款0077','AS99990077','借',988635.75,'AD000039','AS000020',1),('ADL000078','收到存款0078','AS99990078','贷',790148.56,'AD000039','AS000020',1),('ADL000079','收到存款0079','AS99990079','借',881973.56,'AD000040','AS000020',1),('ADL000080','收到存款0080','AS99990080','贷',892381.12,'AD000040','AS000020',1),('ADL000081','收到存款0081','AS99990081','借',925078.12,'AD000041','AS000021',1),('ADL000082','收到存款0082','AS99990082','贷',716196.94,'AD000041','AS000021',1),('ADL000083','收到存款0083','AS99990083','借',961474.75,'AD000042','AS000021',1),('ADL000084','收到存款0084','AS99990084','贷',915420.31,'AD000042','AS000021',1),('ADL000085','收到存款0085','AS99990085','借',902455.62,'AD000043','AS000022',1),('ADL000086','收到存款0086','AS99990086','贷',951002.12,'AD000043','AS000022',1),('ADL000087','收到存款0087','AS99990087','借',960781.38,'AD000044','AS000022',1),('ADL000088','收到存款0088','AS99990088','贷',751635.75,'AD000044','AS000022',1),('ADL000089','收到存款0089','AS99990089','借',891814.31,'AD000045','AS000023',1),('ADL000090','收到存款0090','AS99990090','贷',869063.69,'AD000045','AS000023',1),('ADL000091','收到存款0091','AS99990091','借',796166.94,'AD000046','AS000023',1),('ADL000092','收到存款0092','AS99990092','贷',728499.19,'AD000046','AS000023',1),('ADL000093','收到存款0093','AS99990093','借',790463.56,'AD000047','AS000024',1),('ADL000094','收到存款0094','AS99990094','贷',948685.44,'AD000047','AS000024',1),('ADL000095','收到存款0095','AS99990095','借',888965.12,'AD000048','AS000024',1),('ADL000096','收到存款0096','AS99990096','贷',738788.50,'AD000048','AS000024',1),('ADL000097','收到存款0097','AS99990097','借',909788.50,'AD000049','AS000025',1),('ADL000098','收到存款0098','AS99990098','贷',945202.06,'AD000049','AS000025',1),('ADL000099','收到存款0099','AS99990099','借',712671.75,'AD000050','AS000025',1),('ADL000100','收到存款0100','AS99990100','贷',945083.81,'AD000050','AS000025',1),('ADL000101','收到存款0101','AS99990101','借',898894.06,'AD000051','AS000026',1),('ADL000102','收到存款0102','AS99990102','贷',807223.69,'AD000051','AS000026',1),('ADL000103','收到存款0103','AS99990103','借',895444.75,'AD000052','AS000026',1),('ADL000104','收到存款0104','AS99990104','贷',981440.75,'AD000052','AS000026',1),('ADL000105','收到存款0105','AS99990105','借',801565.62,'AD000053','AS000027',1),('ADL000106','收到存款0106','AS99990106','贷',779738.88,'AD000053','AS000027',1),('ADL000107','收到存款0107','AS99990107','借',928359.12,'AD000054','AS000027',1),('ADL000108','收到存款0108','AS99990108','贷',757481.12,'AD000054','AS000027',1),('ADL000109','收到存款0109','AS99990109','借',708423.88,'AD000055','AS000028',1),('ADL000110','收到存款0110','AS99990110','贷',758760.75,'AD000055','AS000028',1),('ADL000111','收到存款0111','AS99990111','借',768957.81,'AD000056','AS000028',1),('ADL000112','收到存款0112','AS99990112','贷',832566.12,'AD000056','AS000028',1),('ADL000113','收到存款0113','AS99990113','借',981023.94,'AD000057','AS000029',1),('ADL000114','收到存款0114','AS99990114','贷',719158.75,'AD000057','AS000029',1),('ADL000115','收到存款0115','AS99990115','借',740600.50,'AD000058','AS000029',1),('ADL000116','收到存款0116','AS99990116','贷',893087.00,'AD000058','AS000029',1),('ADL000117','收到存款0117','AS99990117','借',737879.94,'AD000059','AS000030',1),('ADL000118','收到存款0118','AS99990118','贷',963005.81,'AD000059','AS000030',1),('ADL000119','收到存款0119','AS99990119','借',853121.56,'AD000060','AS000030',1),('ADL000120','收到存款0120','AS99990120','贷',837477.25,'AD000060','AS000030',1),('ADL000121','收到存款0121','AS99990121','借',756105.25,'AD000061','AS000031',1),('ADL000122','收到存款0122','AS99990122','贷',745381.25,'AD000061','AS000031',1),('ADL000123','收到存款0123','AS99990123','借',709427.50,'AD000062','AS000031',1),('ADL000124','收到存款0124','AS99990124','贷',766589.31,'AD000062','AS000031',1),('ADL000125','收到存款0125','AS99990125','借',767507.81,'AD000063','AS000032',1),('ADL000126','收到存款0126','AS99990126','贷',979185.81,'AD000063','AS000032',1),('ADL000127','收到存款0127','AS99990127','借',747405.62,'AD000064','AS000032',1),('ADL000128','收到存款0128','AS99990128','贷',794781.56,'AD000064','AS000032',1);
/*!40000 ALTER TABLE `accounting_document_line_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_posting_data`
--

DROP TABLE IF EXISTS `accounting_document_posting_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_posting_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_posting` (`id`,`version`),
  KEY `idx4make_date_of_accounting_document_posting` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计凭证过帐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_posting_data`
--

LOCK TABLES `accounting_document_posting_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_posting_data` DISABLE KEYS */;
INSERT INTO `accounting_document_posting_data` VALUES ('ADP000001','财务会计','审核通过，要都审核过了才通过哦','2017-04-18',1);
/*!40000 ALTER TABLE `accounting_document_posting_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_document_type_data`
--

DROP TABLE IF EXISTS `accounting_document_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_document_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(280) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `accounting_period` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计期间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_document_type` (`id`,`version`),
  KEY `fk4accounting_period_of_accounting_document_type_data` (`accounting_period`),
  CONSTRAINT `fk4accounting_period_of_accounting_document_type_data` FOREIGN KEY (`accounting_period`) REFERENCES `account_set_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计凭证类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_document_type_data`
--

LOCK TABLES `accounting_document_type_data` WRITE;
/*!40000 ALTER TABLE `accounting_document_type_data` DISABLE KEYS */;
INSERT INTO `accounting_document_type_data` VALUES ('ADT000001','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。','AS000001',1),('ADT000002','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0002','AS000001',1),('ADT000003','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0003','AS000002',1),('ADT000004','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0004','AS000002',1),('ADT000005','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0005','AS000003',1),('ADT000006','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0006','AS000003',1),('ADT000007','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0007','AS000004',1),('ADT000008','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0008','AS000004',1),('ADT000009','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0009','AS000005',1),('ADT000010','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0010','AS000005',1),('ADT000011','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0011','AS000006',1),('ADT000012','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0012','AS000006',1),('ADT000013','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0013','AS000007',1),('ADT000014','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0014','AS000007',1),('ADT000015','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0015','AS000008',1),('ADT000016','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0016','AS000008',1),('ADT000017','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0017','AS000009',1),('ADT000018','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0018','AS000009',1),('ADT000019','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0019','AS000010',1),('ADT000020','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0020','AS000010',1),('ADT000021','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0021','AS000011',1),('ADT000022','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0022','AS000011',1),('ADT000023','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0023','AS000012',1),('ADT000024','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0024','AS000012',1),('ADT000025','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0025','AS000013',1),('ADT000026','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0026','AS000013',1),('ADT000027','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0027','AS000014',1),('ADT000028','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0028','AS000014',1),('ADT000029','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0029','AS000015',1),('ADT000030','付款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0030','AS000015',1),('ADT000031','记账凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0031','AS000016',1),('ADT000032','收款凭证','又称记账凭单，是会计人员根据审核无误的原始凭证按照经济业务事项的内容加以分类，并据以确定会计分录后所填制的会计凭证。它是登记账簿的直接依据。0032','AS000010',3),('ADT000033','原始单据','单据单据单据单据单据单据单据单据单据','AS000017',1);
/*!40000 ALTER TABLE `accounting_document_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_period_data`
--

DROP TABLE IF EXISTS `accounting_period_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_period_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `account_set` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账套',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_period` (`id`,`version`),
  KEY `idx4start_date_of_accounting_period` (`start_date`),
  KEY `idx4end_date_of_accounting_period` (`end_date`),
  KEY `fk4account_set_of_accounting_period_data` (`account_set`),
  CONSTRAINT `fk4account_set_of_accounting_period_data` FOREIGN KEY (`account_set`) REFERENCES `account_set_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计期间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_period_data`
--

LOCK TABLES `accounting_period_data` WRITE;
/*!40000 ALTER TABLE `accounting_period_data` DISABLE KEYS */;
INSERT INTO `accounting_period_data` VALUES ('AP000001','2017年1月','2018-07-31','2017-03-17','AS000001',1),('AP000002','2017年2月','2018-01-19','2019-05-02','AS000001',1),('AP000003','2017年3月','2018-06-25','2018-12-11','AS000002',1),('AP000004','2017年4月','2018-04-24','2017-08-12','AS000002',1),('AP000005','2017年5月','2016-11-03','2019-01-25','AS000003',1),('AP000006','2017年6月','2018-12-02','2017-12-23','AS000003',1),('AP000007','2017年7月','2017-09-15','2017-01-01','AS000004',1),('AP000008','2017年8月','2019-03-20','2017-10-10','AS000004',1),('AP000009','2017年9月','2018-09-07','2018-08-15','AS000005',1),('AP000010','2017年10月','2017-11-03','2019-03-01','AS000005',1),('AP000011','2017年11月','2017-03-20','2018-06-08','AS000006',1),('AP000012','2017年12月','2017-09-17','2017-11-23','AS000006',1),('AP000013','2017年1月','2019-01-19','2019-04-15','AS000007',1),('AP000014','2017年2月','2019-07-29','2018-12-15','AS000007',1),('AP000015','2017年3月','2019-05-26','2018-11-12','AS000008',1),('AP000016','2017年4月','2018-09-20','2017-12-19','AS000008',1),('AP000017','2017年5月','2016-12-02','2018-11-01','AS000009',1),('AP000018','2017年6月','2019-04-26','2018-08-12','AS000009',1),('AP000019','2017年7月','2019-04-16','2018-04-16','AS000010',1),('AP000020','2017年8月','2019-10-19','2017-08-11','AS000010',1),('AP000021','2017年9月','2018-05-15','2019-09-23','AS000011',1),('AP000022','2017年10月','2017-02-25','2017-04-28','AS000011',1),('AP000023','2017年11月','2017-03-24','2017-12-11','AS000012',1),('AP000024','2017年12月','2018-10-02','2017-08-07','AS000012',1),('AP000025','2017年1月','2017-05-11','2017-12-17','AS000013',1),('AP000026','2017年2月','2017-06-15','2019-01-26','AS000013',1),('AP000027','2017年3月','2019-04-17','2019-05-25','AS000014',1),('AP000028','2017年4月','2017-02-01','2018-12-16','AS000014',1),('AP000029','2017年5月','2019-07-06','2019-08-18','AS000015',1),('AP000030','2017年6月','2017-04-14','2019-03-03','AS000015',1),('AP000031','2017年7月','2019-03-31','2018-08-15','AS000016',1),('AP000032','2017年8月','2017-10-08','2018-07-02','AS000016',1);
/*!40000 ALTER TABLE `accounting_period_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounting_subject_data`
--

DROP TABLE IF EXISTS `accounting_subject_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_subject_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `accounting_subject_code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计科目代码',
  `accounting_subject_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计科目名称',
  `accounting_subject_class_code` int(11) DEFAULT NULL COMMENT '会计科目类别代码',
  `accounting_subject_class_name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会计科目类别名称',
  `account_set` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账套',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_accounting_subject` (`id`,`version`),
  KEY `idx4accounting_subject_class_code_of_accounting_subject` (`accounting_subject_class_code`),
  KEY `fk4account_set_of_accounting_subject_data` (`account_set`),
  CONSTRAINT `fk4account_set_of_accounting_subject_data` FOREIGN KEY (`account_set`) REFERENCES `account_set_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会计科目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_subject_data`
--

LOCK TABLES `accounting_subject_data` WRITE;
/*!40000 ALTER TABLE `accounting_subject_data` DISABLE KEYS */;
INSERT INTO `accounting_subject_data` VALUES ('AS000001','AS9999','银行存款',1,'资产类','AS000001',1),('AS000002','AS99990002','银行存款0002',2,'负债类','AS000001',1),('AS000003','AS99990003','银行存款0003',3,'共同类','AS000002',1),('AS000004','AS99990004','银行存款0004',4,'所有者权益类','AS000002',1),('AS000005','AS99990005','银行存款0005',5,'成本类','AS000003',1),('AS000006','AS99990006','银行存款0006',6,'损益类','AS000003',1),('AS000007','AS99990007','银行存款0007',1,'资产类','AS000004',1),('AS000008','AS99990008','银行存款0008',2,'负债类','AS000004',1),('AS000009','AS99990009','银行存款0009',3,'共同类','AS000005',1),('AS000010','AS99990010','银行存款0010',4,'所有者权益类','AS000005',1),('AS000011','AS99990011','银行存款0011',5,'成本类','AS000006',2),('AS000012','AS99990012','银行存款0012',6,'损益类','AS000006',1),('AS000013','AS99990013','银行存款0013',1,'资产类','AS000007',1),('AS000014','AS99990014','银行存款0014',2,'负债类','AS000007',1),('AS000015','AS99990015','银行存款0015',3,'共同类','AS000008',1),('AS000016','AS99990016','银行存款0016',4,'所有者权益类','AS000008',1),('AS000017','AS99990017','银行存款0017',5,'成本类','AS000009',1),('AS000018','AS99990018','银行存款0018',6,'损益类','AS000009',1),('AS000019','AS99990019','银行存款0019',1,'资产类','AS000010',1),('AS000020','AS99990020','银行存款0020',2,'负债类','AS000010',1),('AS000021','AS99990021','银行存款0021',3,'共同类','AS000011',1),('AS000022','AS99990022','银行存款0022',4,'所有者权益类','AS000011',1),('AS000023','AS99990023','银行存款0023',5,'成本类','AS000012',1),('AS000024','AS99990024','银行存款0024',6,'损益类','AS000012',1),('AS000025','AS99990025','银行存款0025',1,'资产类','AS000013',1),('AS000026','AS99990026','银行存款0026',2,'负债类','AS000013',1),('AS000027','AS99990027','银行存款0027',3,'共同类','AS000014',1),('AS000028','AS99990028','银行存款0028',4,'所有者权益类','AS000014',1),('AS000029','AS99990029','银行存款0029',5,'成本类','AS000015',1),('AS000030','AS99990030','银行存款0030',6,'损益类','AS000015',1),('AS000031','AS99990031','银行存款0031',1,'资产类','AS000016',1),('AS000032','AS99990032','银行存款0032',2,'负债类','AS000016',1);
/*!40000 ALTER TABLE `accounting_subject_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_container_data`
--

DROP TABLE IF EXISTS `candidate_container_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_container_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_candidate_container` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='候选人容器';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_container_data`
--

LOCK TABLES `candidate_container_data` WRITE;
/*!40000 ALTER TABLE `candidate_container_data` DISABLE KEYS */;
INSERT INTO `candidate_container_data` VALUES ('CC000001','我只是一个容器',1);
/*!40000 ALTER TABLE `candidate_container_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_element_data`
--

DROP TABLE IF EXISTS `candidate_element_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_element_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `image` varchar(512) CHARACTER SET ascii DEFAULT NULL COMMENT '图片',
  `container` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '容器',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_candidate_element` (`id`,`version`),
  KEY `fk4container_of_candidate_element_data` (`container`),
  CONSTRAINT `fk4container_of_candidate_element_data` FOREIGN KEY (`container`) REFERENCES `candidate_container_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='候选人元素';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_element_data`
--

LOCK TABLES `candidate_element_data` WRITE;
/*!40000 ALTER TABLE `candidate_element_data` DISABLE KEYS */;
INSERT INTO `candidate_element_data` VALUES ('CE000001','搜索到的匹配字段','类型描述','https://demo.doublechaintech.com/demodata/imageManager/genImage/100/400/200/grey/','CC000001',1),('CE000002','搜索到的匹配字段0002','类型描述0002','https://demo.doublechaintech.com/demodata/imageManager/genImage/100/400/200/grey/','CC000001',1);
/*!40000 ALTER TABLE `candidate_element_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_data`
--

DROP TABLE IF EXISTS `catalog_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `sub_count` int(11) DEFAULT NULL COMMENT '子数',
  `amount` decimal(6,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_catalog` (`id`,`version`),
  KEY `idx4sub_count_of_catalog` (`sub_count`),
  KEY `idx4amount_of_catalog` (`amount`),
  KEY `fk4owner_of_catalog_data` (`owner`),
  CONSTRAINT `fk4owner_of_catalog_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='目录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_data`
--

LOCK TABLES `catalog_data` WRITE;
/*!40000 ALTER TABLE `catalog_data` DISABLE KEYS */;
INSERT INTO `catalog_data` VALUES ('C000001','水果蔬菜',NULL,10,9.00,2),('C000002','肉禽蛋奶',NULL,9,8.48,2),('C000003','123123奥术大师多阿萨德',NULL,8,22.00,5),('C000004','苹果手机124696',NULL,6,2.00,10),('C000005','mac computer',NULL,10,9998.00,3),('C000006','iPhone 11 黑色',NULL,1,5499.00,4),('C000007','系统特殊产品列表001','RSCC000001',1,12.00,3),('C000008','系统默认产品列表001',NULL,0,100.00,8),('C000009','商品分类111111111','RSCC000001',1,1111.00,3),('C000010','kdkdkdfd dfdfdfd','RSCC000001',2,100.00,4);
/*!40000 ALTER TABLE `catalog_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_event_data`
--

DROP TABLE IF EXISTS `city_event_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_event_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `city_service_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市服务中心',
  `description` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_city_event` (`id`,`version`),
  KEY `idx4mobile_of_city_event` (`mobile`),
  KEY `idx4last_update_time_of_city_event` (`last_update_time`),
  KEY `fk4city_service_center_of_city_event_data` (`city_service_center`),
  CONSTRAINT `fk4city_service_center_of_city_event_data` FOREIGN KEY (`city_service_center`) REFERENCES `retail_store_city_service_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='城市活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_event_data`
--

LOCK TABLES `city_event_data` WRITE;
/*!40000 ALTER TABLE `city_event_data` DISABLE KEYS */;
INSERT INTO `city_event_data` VALUES ('CE000001','小超见面会','13677778888','RSCSC000001','给大家讲解小超的发展蓝图','2019-10-28 15:12:39',1),('CE000002','双链小超说明会','13900000002','RSCSC000001','给大家讲解小超的发展蓝图0002','2019-10-29 10:33:15',1),('CE000003','小超见面会','13900000003','RSCSC000002','给大家讲解小超的发展蓝图0003','2019-10-13 16:37:38',1),('CE000004','双链小超说明会','13900000004','RSCSC000002','给大家讲解小超的发展蓝图0004','2019-10-26 18:04:18',1),('CE000005','小超见面会','13900000005','RSCSC000003','给大家讲解小超的发展蓝图0005','2019-10-08 16:11:00',1),('CE000006','双链小超说明会','13900000006','RSCSC000003','给大家讲解小超的发展蓝图0006','2019-10-26 14:43:47',1),('CE000007','小超见面会','13900000007','RSCSC000004','给大家讲解小超的发展蓝图0007','2019-10-22 12:30:08',1),('CE000008','双链小超说明会','13900000008','RSCSC000004','给大家讲解小超的发展蓝图0008','2019-10-17 02:59:35',1);
/*!40000 ALTER TABLE `city_event_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_partner_data`
--

DROP TABLE IF EXISTS `city_partner_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_partner_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `city_service_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市服务中心',
  `description` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_city_partner` (`id`,`version`),
  KEY `idx4mobile_of_city_partner` (`mobile`),
  KEY `idx4last_update_time_of_city_partner` (`last_update_time`),
  KEY `fk4city_service_center_of_city_partner_data` (`city_service_center`),
  CONSTRAINT `fk4city_service_center_of_city_partner_data` FOREIGN KEY (`city_service_center`) REFERENCES `retail_store_city_service_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='城市合伙人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_partner_data`
--

LOCK TABLES `city_partner_data` WRITE;
/*!40000 ALTER TABLE `city_partner_data` DISABLE KEYS */;
INSERT INTO `city_partner_data` VALUES ('CP000001','曾倩','13677778888','RSCSC000003','负责开拓市场，具有极强的开拓能力','2019-10-26 17:03:19',3),('CP000002','黄风格','13900000002',NULL,'负责开拓市场，具有极强的开拓能力0002','2019-10-18 11:30:16',2),('CP000003','郭超','13900000003','RSCSC000002','负责开拓市场，具有极强的开拓能力0003','2019-10-19 15:10:18',1),('CP000004','曾倩','13900000004','RSCSC000002','负责开拓市场，具有极强的开拓能力0004','2019-10-08 03:10:15',1),('CP000005','黄风格','13900000005','RSCSC000003','负责开拓市场，具有极强的开拓能力0005','2019-10-26 16:14:41',1),('CP000006','郭超','13900000006','RSCSC000003','负责开拓市场，具有极强的开拓能力0006','2019-10-14 01:43:27',1),('CP000007','曾倩','13900000007','RSCSC000004','负责开拓市场，具有极强的开拓能力0007','2019-10-28 22:56:39',1),('CP000008','黄风格','13900000008','RSCSC000004','负责开拓市场，具有极强的开拓能力0008','2019-10-12 23:02:24',1),('CP000009','黄色','15689752636','RSCSC000003','让开请让开让开开开开','2019-12-25 14:15:48',2),('CP000010','卡卡','13378765674','RSCSC000004','让开开开啊开啊卡卡','2019-12-25 14:19:32',2),('CP000011','卡卡','13378765674','RSCSC000001','让开开开啊开啊卡卡','2019-12-25 14:19:32',1),('CP000012','test3','13000000000','RSCSC000001','00000','2020-04-20 01:37:00',1);
/*!40000 ALTER TABLE `city_partner_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_training_data`
--

DROP TABLE IF EXISTS `company_training_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_training_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `instructor` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '讲师',
  `training_course_type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '培训课程类型',
  `time_start` date DEFAULT NULL COMMENT '时间开始',
  `duration_hours` int(11) DEFAULT NULL COMMENT '持续时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_company_training` (`id`,`version`),
  KEY `idx4time_start_of_company_training` (`time_start`),
  KEY `idx4duration_hours_of_company_training` (`duration_hours`),
  KEY `idx4last_update_time_of_company_training` (`last_update_time`),
  KEY `fk4company_of_company_training_data` (`company`),
  KEY `fk4instructor_of_company_training_data` (`instructor`),
  KEY `fk4training_course_type_of_company_training_data` (`training_course_type`),
  CONSTRAINT `fk4company_of_company_training_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4instructor_of_company_training_data` FOREIGN KEY (`instructor`) REFERENCES `instructor_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4training_course_type_of_company_training_data` FOREIGN KEY (`training_course_type`) REFERENCES `training_course_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公司培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_training_data`
--

LOCK TABLES `company_training_data` WRITE;
/*!40000 ALTER TABLE `company_training_data` DISABLE KEYS */;
INSERT INTO `company_training_data` VALUES ('CT000001','入职培训',NULL,NULL,NULL,'2018-05-20',3,'2019-10-23 13:53:20',2),('CT000002','入职培训0002',NULL,NULL,NULL,'2018-09-06',3,'2019-10-16 20:35:44',2),('CT000003','入职培训0003',NULL,NULL,NULL,'2018-06-02',3,'2019-10-10 16:51:44',3),('CT000004','入职培训0004',NULL,NULL,NULL,'2016-12-22',3,'2019-10-11 12:23:46',2),('CT000005','商务合作','RSCC000001','I000001','TCT000001','2020-05-02',2,'2020-05-02 00:42:43',1),('CT000006','高级护肤老师','RSCC000001','I000003','TCT000002','2020-05-08',3,'2020-05-08 21:51:53',2);
/*!40000 ALTER TABLE `company_training_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_approval_data`
--

DROP TABLE IF EXISTS `consumer_order_approval_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_approval_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `approve_time` date DEFAULT NULL COMMENT '批准时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_approval` (`id`,`version`),
  KEY `idx4approve_time_of_consumer_order_approval` (`approve_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者的订单审批';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_approval_data`
--

LOCK TABLES `consumer_order_approval_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_approval_data` DISABLE KEYS */;
INSERT INTO `consumer_order_approval_data` VALUES ('COA000001','批准者','2019-08-11',1);
/*!40000 ALTER TABLE `consumer_order_approval_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_confirmation_data`
--

DROP TABLE IF EXISTS `consumer_order_confirmation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_confirmation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `confirm_time` date DEFAULT NULL COMMENT '确认时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_confirmation` (`id`,`version`),
  KEY `idx4confirm_time_of_consumer_order_confirmation` (`confirm_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='客户订单确认';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_confirmation_data`
--

LOCK TABLES `consumer_order_confirmation_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_confirmation_data` DISABLE KEYS */;
INSERT INTO `consumer_order_confirmation_data` VALUES ('COC000001','确认者','2018-09-01',1);
/*!40000 ALTER TABLE `consumer_order_confirmation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_data`
--

DROP TABLE IF EXISTS `consumer_order_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `consumer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消费者',
  `confirmation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '确认',
  `approval` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '验收',
  `processing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理',
  `shipment` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装运',
  `delivery` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '送货',
  `store` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商场',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `current_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order` (`id`,`version`),
  KEY `idx4last_update_time_of_consumer_order` (`last_update_time`),
  KEY `fk4consumer_of_consumer_order_data` (`consumer`),
  KEY `fk4store_of_consumer_order_data` (`store`),
  CONSTRAINT `fk4consumer_of_consumer_order_data` FOREIGN KEY (`consumer`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4store_of_consumer_order_data` FOREIGN KEY (`store`) REFERENCES `retail_store_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_data`
--

LOCK TABLES `consumer_order_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_data` DISABLE KEYS */;
INSERT INTO `consumer_order_data` VALUES ('CO000001','消费订单','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000009','2019-10-25 01:12:46','CONFIRMED',6),('CO000002','消费订单0002','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000001','2019-10-16 18:21:22','APPROVED',1),('CO000003','消费订单0003','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000002','2019-10-12 02:49:03','PROCESSED',1),('CO000004','消费订单0004','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000002','2019-10-23 20:41:38','SHIPPED',1),('CO000005','消费订单0005','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000003','2019-10-20 11:18:20','DELIVERED',1),('CO000006','消费订单0006','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000003','2019-10-27 15:04:28','CONFIRMED',1),('CO000007','消费订单0007','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000004','2019-10-20 12:51:01','APPROVED',1),('CO000008','消费订单0008','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000004','2019-10-10 18:34:56','PROCESSED',1),('CO000009','消费订单0009','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000005','2019-10-26 10:34:27','SHIPPED',1),('CO000010','消费订单0010','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000005','2019-10-15 23:06:41','DELIVERED',1),('CO000011','消费订单0011','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000006','2019-10-23 12:22:27','CONFIRMED',1),('CO000012','消费订单0012','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000006','2019-10-22 15:29:55','APPROVED',1),('CO000013','消费订单0013','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000007','2019-10-11 05:18:09','PROCESSED',1),('CO000014','消费订单0014','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000007','2019-10-08 04:05:37','SHIPPED',1),('CO000015','消费订单0015','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000008','2019-10-20 13:46:23','DELIVERED',1),('CO000016','消费订单0016','RSM000002',NULL,NULL,NULL,NULL,NULL,'RS000008','2019-10-11 15:01:43','CONFIRMED',1),('CO000017','客户1','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000001','2020-04-05 23:11:15','INIT',2),('CO000018','13900000007','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000007','2020-04-05 23:15:30','INIT',1),('CO000019','阿里云VPN连接','RSM000012',NULL,NULL,NULL,NULL,NULL,'RS000001','2020-05-26 15:27:20',NULL,2),('CO000020','weiqicloud','RSM000001',NULL,NULL,NULL,NULL,NULL,'RS000009','2020-06-26 14:13:56',NULL,1),('CO000021','11q','RSM000012',NULL,NULL,NULL,NULL,NULL,'RS000001','2020-07-08 17:22:16',NULL,1),('CO000022','11q','RSM000012',NULL,NULL,NULL,NULL,NULL,'RS000001','2020-07-08 17:22:16',NULL,1),('CO000023','233','RSM000012',NULL,NULL,NULL,NULL,NULL,'RS000001','2020-07-15 02:57:35',NULL,2);
/*!40000 ALTER TABLE `consumer_order_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_delivery_data`
--

DROP TABLE IF EXISTS `consumer_order_delivery_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_delivery_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `delivery_time` date DEFAULT NULL COMMENT '交货时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_delivery` (`id`,`version`),
  KEY `idx4delivery_time_of_consumer_order_delivery` (`delivery_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者订单交货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_delivery_data`
--

LOCK TABLES `consumer_order_delivery_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_delivery_data` DISABLE KEYS */;
INSERT INTO `consumer_order_delivery_data` VALUES ('COD000001','送货者','2018-11-17',1);
/*!40000 ALTER TABLE `consumer_order_delivery_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_line_item_data`
--

DROP TABLE IF EXISTS `consumer_order_line_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_line_item_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `sku_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `sku_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `price` decimal(5,2) DEFAULT NULL COMMENT '价格',
  `quantity` decimal(7,2) DEFAULT NULL COMMENT '数量',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '金额',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_line_item` (`id`,`version`),
  KEY `idx4sku_id_of_consumer_order_line_item` (`sku_id`),
  KEY `idx4price_of_consumer_order_line_item` (`price`),
  KEY `idx4quantity_of_consumer_order_line_item` (`quantity`),
  KEY `idx4amount_of_consumer_order_line_item` (`amount`),
  KEY `idx4last_update_time_of_consumer_order_line_item` (`last_update_time`),
  KEY `fk4biz_order_of_consumer_order_line_item_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_consumer_order_line_item_data` FOREIGN KEY (`biz_order`) REFERENCES `consumer_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者订单行项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_line_item_data`
--

LOCK TABLES `consumer_order_line_item_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_line_item_data` DISABLE KEYS */;
INSERT INTO `consumer_order_line_item_data` VALUES ('COLI000001',NULL,'SKU','大瓶可乐',5.37,860.35,8020.19,'2019-10-16 16:54:31',2),('COLI000002','CO000002','SKU0002','大瓶可乐0002',5.09,757.34,8524.39,'2019-10-14 15:34:19',2),('COLI000003','CO000002','SKU0003','大瓶可乐0003',4.44,825.49,7371.71,'2019-10-25 01:56:35',1),('COLI000004','CO000002','SKU0004','大瓶可乐0004',5.76,22.00,9841.32,'2019-10-19 07:15:31',2),('COLI000005','CO000003','SKU0005','大瓶可乐0005',5.23,717.23,7082.06,'2019-10-10 06:11:13',1),('COLI000006','CO000003','SKU0006','大瓶可乐0006',5.43,866.74,7061.34,'2019-10-12 22:04:56',1),('COLI000007','CO000004','SKU0007','大瓶可乐0007',4.53,959.46,9358.55,'2019-10-23 23:38:03',1),('COLI000008','CO000004','SKU0008','大瓶可乐0008',5.92,719.19,8287.63,'2019-10-28 18:43:01',1),('COLI000009','CO000005','SKU0009','大瓶可乐0009',4.59,737.28,8494.68,'2019-10-29 07:02:25',1),('COLI000010','CO000005','SKU0010','大瓶可乐0010',4.52,836.85,8743.99,'2019-10-13 16:01:48',1),('COLI000011','CO000006','SKU0011','大瓶可乐0011',5.13,747.61,7079.39,'2019-10-26 17:25:02',1),('COLI000012','CO000006','SKU0012','大瓶可乐0012',5.26,866.61,9927.59,'2019-10-23 18:05:35',1),('COLI000013','CO000007','SKU0013','大瓶可乐0013',5.10,814.30,7996.71,'2019-10-10 17:04:50',1),('COLI000014','CO000007','SKU0014','大瓶可乐0014',5.39,995.35,9015.00,'2019-10-27 05:00:37',1),('COLI000015','CO000008','SKU0015','大瓶可乐0015',5.11,738.48,8453.98,'2019-10-11 10:49:36',1),('COLI000016','CO000008','SKU0016','大瓶可乐0016',4.96,820.96,8384.69,'2019-10-09 15:50:20',1),('COLI000017','CO000009','SKU0017','大瓶可乐0017',4.22,979.83,9527.00,'2019-10-23 05:37:09',1),('COLI000018','CO000009','SKU0018','大瓶可乐0018',4.44,974.03,7369.43,'2019-10-10 22:53:12',1),('COLI000019','CO000010','SKU0019','大瓶可乐0019',4.29,889.59,8960.37,'2019-10-19 19:21:45',1),('COLI000020','CO000010','SKU0020','大瓶可乐0020',5.05,973.50,9601.63,'2019-10-11 20:51:17',1),('COLI000021','CO000011','SKU0021','大瓶可乐0021',5.80,840.78,7211.28,'2019-10-21 23:08:19',1),('COLI000022','CO000011','SKU0022','大瓶可乐0022',4.49,824.26,9565.15,'2019-10-11 00:06:53',1),('COLI000023','CO000012','SKU0023','大瓶可乐0023',5.55,726.55,7975.09,'2019-10-12 19:53:23',1),('COLI000024','CO000012','SKU0024','大瓶可乐0024',5.37,890.10,8216.71,'2019-10-24 07:59:19',1),('COLI000025','CO000013','SKU0025','大瓶可乐0025',4.47,722.28,8680.90,'2019-10-27 08:19:06',1),('COLI000026','CO000013','SKU0026','大瓶可乐0026',5.02,800.15,7790.22,'2019-10-08 04:31:02',1),('COLI000027','CO000014','SKU0027','大瓶可乐0027',4.50,832.09,8695.47,'2019-10-25 07:23:25',1),('COLI000028','CO000014','SKU0028','大瓶可乐0028',4.48,771.92,7147.29,'2019-10-18 12:59:21',1),('COLI000029','CO000015','SKU0029','大瓶可乐0029',5.50,765.53,8223.69,'2019-10-16 18:36:45',1),('COLI000030','CO000015','SKU0030','大瓶可乐0030',4.36,859.28,9287.29,'2019-10-26 23:18:49',1),('COLI000031','CO000016','SKU0031','大瓶可乐0031',5.32,715.18,9143.96,'2019-10-16 09:04:03',1),('COLI000032','CO000016','SKU0032','大瓶可乐0032',4.94,758.58,9880.13,'2019-10-23 17:42:40',1),('COLI000033',NULL,'1','fad',1.00,1.00,1.00,'2020-01-16 01:51:53',2),('COLI000034',NULL,'dd','ddd',111.00,111.00,1111.00,'2020-02-06 00:37:45',2),('COLI000035','CO000001','888','苹果',120.00,20.00,1200.00,'2020-03-05 21:03:38',3),('COLI000036','CO000001','1','产品',12.00,12.00,12.00,'2020-05-04 19:15:27',1),('COLI000037','CO000017','dfadsf','asdfasd',111.00,22.00,1.00,'2020-05-08 17:53:47',4),('COLI000038','CO000001','1','产品',12.00,12.00,12.00,'2020-07-19 14:45:01',1),('COLI000039','CO000001','1','产品',12.00,12.00,12.00,'2020-07-19 15:25:21',1);
/*!40000 ALTER TABLE `consumer_order_line_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_payment_group_data`
--

DROP TABLE IF EXISTS `consumer_order_payment_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_payment_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `card_number` varchar(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡号码',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_payment_group` (`id`,`version`),
  KEY `fk4biz_order_of_consumer_order_payment_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_consumer_order_payment_group_data` FOREIGN KEY (`biz_order`) REFERENCES `consumer_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者订单付款组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_payment_group_data`
--

LOCK TABLES `consumer_order_payment_group_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_payment_group_data` DISABLE KEYS */;
INSERT INTO `consumer_order_payment_group_data` VALUES ('COPG000001','信用卡','CO000001','4111 1111 1111 - ',1),('COPG000002','支付宝','CO000001','4111 1111 1111 - 0002',1),('COPG000003','微信支付','CO000002','4111 1111 1111 - 0003',1),('COPG000004','信用卡','CO000002','4111 1111 1111 - 0004',1),('COPG000005','支付宝','CO000003','4111 1111 1111 - 0005',1),('COPG000006','微信支付','CO000003','4111 1111 1111 - 0006',1),('COPG000007','信用卡','CO000004','4111 1111 1111 - 0007',1),('COPG000008','支付宝','CO000004','4111 1111 1111 - 0008',1),('COPG000009','微信支付','CO000005','4111 1111 1111 - 0009',1),('COPG000010','信用卡','CO000005','4111 1111 1111 - 0010',1),('COPG000011','支付宝','CO000006','4111 1111 1111 - 0011',1),('COPG000012','微信支付','CO000006','4111 1111 1111 - 0012',1),('COPG000013','信用卡','CO000007','4111 1111 1111 - 0013',1),('COPG000014','支付宝','CO000007','4111 1111 1111 - 0014',1),('COPG000015','微信支付','CO000008','4111 1111 1111 - 0015',1),('COPG000016','信用卡','CO000008','4111 1111 1111 - 0016',1),('COPG000017','支付宝','CO000009','4111 1111 1111 - 0017',1),('COPG000018','微信支付','CO000009','4111 1111 1111 - 0018',1),('COPG000019','信用卡','CO000010','4111 1111 1111 - 0019',1),('COPG000020','支付宝','CO000010','4111 1111 1111 - 0020',1),('COPG000021','微信支付','CO000011','4111 1111 1111 - 0021',1),('COPG000022','信用卡','CO000011','4111 1111 1111 - 0022',1),('COPG000023','支付宝','CO000012','4111 1111 1111 - 0023',1),('COPG000024','微信支付','CO000012','4111 1111 1111 - 0024',1),('COPG000025','信用卡','CO000013','4111 1111 1111 - 0025',1),('COPG000026','支付宝','CO000013','4111 1111 1111 - 0026',1),('COPG000027','微信支付','CO000014','4111 1111 1111 - 0027',1),('COPG000028','信用卡','CO000014','4111 1111 1111 - 0028',1),('COPG000029','支付宝','CO000015','4111 1111 1111 - 0029',1),('COPG000030','微信支付','CO000015','4111 1111 1111 - 0030',1),('COPG000031','信用卡','CO000016','4111 1111 1111 - 0031',1),('COPG000032','支付宝','CO000016','4111 1111 1111 - 0032',1),('COPG000033','国家wnjekl','CO000001','meg海棠花h',1),('COPG000034','test','CO000001','13123123',1),('COPG000035','qwdqwd','CO000001','12312312',1),('COPG000036','123123','CO000001','123123',1),('COPG000037','qwdqwd','CO000001','qwdqwd',1),('COPG000038','qwdqwd','CO000001','12312312',1);
/*!40000 ALTER TABLE `consumer_order_payment_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_price_adjustment_data`
--

DROP TABLE IF EXISTS `consumer_order_price_adjustment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_price_adjustment_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `amount` decimal(7,2) DEFAULT NULL COMMENT '金额',
  `provider` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_price_adjustment` (`id`,`version`),
  KEY `idx4amount_of_consumer_order_price_adjustment` (`amount`),
  KEY `fk4biz_order_of_consumer_order_price_adjustment_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_consumer_order_price_adjustment_data` FOREIGN KEY (`biz_order`) REFERENCES `consumer_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费品价格调整';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_price_adjustment_data`
--

LOCK TABLES `consumer_order_price_adjustment_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_price_adjustment_data` DISABLE KEYS */;
INSERT INTO `consumer_order_price_adjustment_data` VALUES ('COPA000001','端午促销','CO000001',559.54,'供货商',1),('COPA000002','端午促销0002','CO000001',489.63,'小超老板',2),('COPA000003','端午促销0003','CO000002',448.73,'广告赞助',1),('COPA000004','端午促销0004','CO000002',500.00,'供货商',2),('COPA000005','端午促销0005','CO000003',431.17,'小超老板',1),('COPA000006','端午促销0006','CO000003',461.99,'广告赞助',1),('COPA000007','端午促销0007','CO000004',573.94,'供货商',1),('COPA000008','端午促销0008','CO000004',424.78,'小超老板',1),('COPA000009','端午促销0009','CO000005',508.79,'广告赞助',1),('COPA000010','端午促销0010','CO000005',485.08,'供货商',1),('COPA000011','端午促销0011','CO000006',590.74,'小超老板',1),('COPA000012','端午促销0012','CO000006',572.69,'广告赞助',1),('COPA000013','端午促销0013','CO000007',457.47,'供货商',1),('COPA000014','端午促销0014','CO000007',529.01,'小超老板',1),('COPA000015','端午促销0015','CO000008',431.87,'广告赞助',1),('COPA000016','端午促销0016','CO000008',531.00,'供货商',1),('COPA000017','端午促销0017','CO000009',556.69,'小超老板',1),('COPA000018','端午促销0018','CO000009',449.54,'广告赞助',1),('COPA000019','端午促销0019','CO000010',551.54,'供货商',1),('COPA000020','端午促销0020','CO000010',528.24,'小超老板',1),('COPA000021','端午促销0021','CO000011',460.16,'广告赞助',1),('COPA000022','端午促销0022','CO000011',489.08,'供货商',1),('COPA000023','端午促销0023','CO000012',547.08,'小超老板',1),('COPA000024','端午促销0024','CO000012',583.38,'广告赞助',1),('COPA000025','端午促销0025','CO000013',513.22,'供货商',1),('COPA000026','端午促销0026','CO000013',553.32,'小超老板',1),('COPA000027','端午促销0027','CO000014',460.61,'广告赞助',1),('COPA000028','端午促销0028','CO000014',507.93,'供货商',1),('COPA000029','端午促销0029','CO000015',558.29,'小超老板',1),('COPA000030','端午促销0030','CO000015',511.10,'广告赞助',1),('COPA000031','端午促销0031','CO000016',429.33,'供货商',1),('COPA000032','端午促销0032','CO000016',574.06,'小超老板',1),('COPA000033','111','CO000001',2.00,'445555',2);
/*!40000 ALTER TABLE `consumer_order_price_adjustment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_processing_data`
--

DROP TABLE IF EXISTS `consumer_order_processing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_processing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `process_time` date DEFAULT NULL COMMENT '过程的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_processing` (`id`,`version`),
  KEY `idx4process_time_of_consumer_order_processing` (`process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者的订单处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_processing_data`
--

LOCK TABLES `consumer_order_processing_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_processing_data` DISABLE KEYS */;
INSERT INTO `consumer_order_processing_data` VALUES ('COP000001','处理者','2017-12-15',1);
/*!40000 ALTER TABLE `consumer_order_processing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_shipment_data`
--

DROP TABLE IF EXISTS `consumer_order_shipment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_shipment_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `ship_time` date DEFAULT NULL COMMENT '船的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_shipment` (`id`,`version`),
  KEY `idx4ship_time_of_consumer_order_shipment` (`ship_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费者的订单发货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_shipment_data`
--

LOCK TABLES `consumer_order_shipment_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_shipment_data` DISABLE KEYS */;
INSERT INTO `consumer_order_shipment_data` VALUES ('COS000001','运货者','2018-03-19',1);
/*!40000 ALTER TABLE `consumer_order_shipment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_order_shipping_group_data`
--

DROP TABLE IF EXISTS `consumer_order_shipping_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_order_shipping_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `amount` decimal(7,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_consumer_order_shipping_group` (`id`,`version`),
  KEY `idx4amount_of_consumer_order_shipping_group` (`amount`),
  KEY `fk4biz_order_of_consumer_order_shipping_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_consumer_order_shipping_group_data` FOREIGN KEY (`biz_order`) REFERENCES `consumer_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消费订单送货分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_order_shipping_group_data`
--

LOCK TABLES `consumer_order_shipping_group_data` WRITE;
/*!40000 ALTER TABLE `consumer_order_shipping_group_data` DISABLE KEYS */;
INSERT INTO `consumer_order_shipping_group_data` VALUES ('COSG000001','送货到刘强家',NULL,594.51,2),('COSG000002','送货到刘强家0002',NULL,498.43,2),('COSG000003','送货到刘强家0003','CO000002',436.00,1),('COSG000004','送货到刘强家0004','CO000002',487.97,1),('COSG000005','送货到刘强家0005','CO000003',590.43,1),('COSG000006','送货到刘强家0006','CO000003',558.54,1),('COSG000007','送货到刘强家0007','CO000004',596.10,1),('COSG000008','送货到刘强家0008','CO000004',546.18,1),('COSG000009','送货到刘强家0009','CO000005',453.13,1),('COSG000010','送货到刘强家0010','CO000005',426.21,1),('COSG000011','送货到刘强家0011','CO000006',585.25,1),('COSG000012','送货到刘强家0012','CO000006',512.83,1),('COSG000013','送货到刘强家0013','CO000007',589.37,1),('COSG000014','送货到刘强家0014','CO000007',554.41,1),('COSG000015','送货到刘强家0015','CO000008',478.13,1),('COSG000016','送货到刘强家0016','CO000008',447.29,1),('COSG000017','送货到刘强家0017','CO000009',577.49,1),('COSG000018','送货到刘强家0018','CO000009',453.06,1),('COSG000019','送货到刘强家0019','CO000010',521.46,1),('COSG000020','送货到刘强家0020','CO000010',465.17,1),('COSG000021','送货到刘强家0021','CO000011',575.04,1),('COSG000022','送货到刘强家0022','CO000011',541.11,1),('COSG000023','送货到刘强家0023','CO000012',437.20,1),('COSG000024','送货到刘强家0024','CO000012',448.35,1),('COSG000025','送货到刘强家0025','CO000013',437.67,1),('COSG000026','送货到刘强家0026','CO000013',514.15,1),('COSG000027','送货到刘强家0027','CO000014',542.41,1),('COSG000028','送货到刘强家0028','CO000014',444.21,1),('COSG000029','送货到刘强家0029','CO000015',536.87,1),('COSG000030','送货到刘强家0030','CO000015',548.97,1),('COSG000031','送货到刘强家0031','CO000016',434.32,1),('COSG000032','送货到刘强家0032','CO000016',423.28,1),('COSG000033','abc','CO000001',10002.00,2);
/*!40000 ALTER TABLE `consumer_order_shipping_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `damage_space_data`
--

DROP TABLE IF EXISTS `damage_space_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `damage_space_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_damage_space` (`id`,`version`),
  KEY `idx4latitude_of_damage_space` (`latitude`),
  KEY `idx4longitude_of_damage_space` (`longitude`),
  KEY `idx4last_update_time_of_damage_space` (`last_update_time`),
  KEY `fk4warehouse_of_damage_space_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_damage_space_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='残次货物存放区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damage_space_data`
--

LOCK TABLES `damage_space_data` WRITE;
/*!40000 ALTER TABLE `damage_space_data` DISABLE KEYS */;
INSERT INTO `damage_space_data` VALUES ('DS000001','成都龙泉驿飞鹤路20号仓库损坏货物堆放区','02887654321','1876平方米',42.555867,130.014203,NULL,'2019-10-26 17:37:20',2),('DS000002','成都龙泉驿飞鹤路20号仓库损坏货物堆放区0002','028876543210002','1876平方米0002',41.781166,130.347400,NULL,'2019-10-23 01:24:39',2),('DS000003','成都龙泉驿飞鹤路20号仓库损坏货物堆放区0003','028876543210003','1876平方米0003',40.904364,130.251370,'W000002','2019-10-15 00:56:19',1),('DS000004','成都龙泉驿飞鹤路20号仓库损坏货物堆放区0004','028876543210004','1876平方米0004',40.836367,130.248194,'W000002','2019-10-26 22:35:42',1);
/*!40000 ALTER TABLE `damage_space_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance_data`
--

DROP TABLE IF EXISTS `employee_attendance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendance_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `enter_time` date DEFAULT NULL COMMENT '进入时间',
  `leave_time` date DEFAULT NULL COMMENT '离开的时候',
  `duration_hours` int(11) DEFAULT NULL COMMENT '持续时间',
  `remark` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_attendance` (`id`,`version`),
  KEY `idx4enter_time_of_employee_attendance` (`enter_time`),
  KEY `idx4leave_time_of_employee_attendance` (`leave_time`),
  KEY `idx4duration_hours_of_employee_attendance` (`duration_hours`),
  KEY `fk4employee_of_employee_attendance_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_attendance_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance_data`
--

LOCK TABLES `employee_attendance_data` WRITE;
/*!40000 ALTER TABLE `employee_attendance_data` DISABLE KEYS */;
INSERT INTO `employee_attendance_data` VALUES ('EA000001','E000001','2017-08-07','2017-07-14',7,'今天状态不错啊',1),('EA000002','E000001','2018-06-18','2019-04-23',8,'今天状态不错啊0002',1),('EA000003','E000002','2018-03-19','2018-01-31',7,'今天状态不错啊0003',1),('EA000004','E000002','2018-08-04','2018-02-11',7,'今天状态不错啊0004',1),('EA000005','E000003','2018-03-29','2018-03-25',7,'今天状态不错啊0005',1),('EA000006','E000003','2018-02-24','2019-04-21',6,'今天状态不错啊0006',1),('EA000007','E000004','2017-08-06','2019-09-14',7,'今天状态不错啊0007',1),('EA000008','E000004','2018-11-04','2017-11-16',8,'今天状态不错啊0008',1),('EA000009','E000005','2016-11-07','2018-03-04',8,'今天状态不错啊0009',1),('EA000010','E000005','2018-04-25','2018-09-16',8,'今天状态不错啊0010',1),('EA000011','E000006','2019-05-25','2017-07-28',7,'今天状态不错啊0011',1),('EA000012','E000006','2018-07-15','2017-07-26',7,'今天状态不错啊0012',1),('EA000013','E000007','2018-07-06','2019-05-24',7,'今天状态不错啊0013',1),('EA000014','E000007','2019-06-21','2018-01-08',7,'今天状态不错啊0014',1),('EA000015','E000008','2017-06-18','2017-04-02',7,'今天状态不错啊0015',1),('EA000016','E000008','2017-03-26','2017-01-24',6,'今天状态不错啊0016',1),('EA000017','E000009','2019-04-23','2019-08-30',6,'今天状态不错啊0017',1),('EA000018','E000009','2017-03-18','2018-04-07',8,'今天状态不错啊0018',1),('EA000019','E000010','2017-10-14','2019-05-09',7,'今天状态不错啊0019',1),('EA000020','E000010','2018-06-27','2018-03-22',8,'今天状态不错啊0020',1),('EA000021','E000011','2019-02-18','2019-07-16',7,'今天状态不错啊0021',1),('EA000022','E000011','2019-03-02','2017-04-28',7,'今天状态不错啊0022',1),('EA000023','E000012','2019-10-07','2018-06-07',7,'今天状态不错啊0023',1),('EA000024','E000012','2019-02-17','2019-06-29',7,'今天状态不错啊0024',1),('EA000025','E000013','2019-05-18','2019-04-11',7,'今天状态不错啊0025',1),('EA000026','E000013','2019-04-15','2017-09-18',7,'今天状态不错啊0026',1),('EA000027','E000014','2017-01-26','2018-10-09',8,'今天状态不错啊0027',1),('EA000028','E000014','2017-04-04','2018-07-13',8,'今天状态不错啊0028',1),('EA000029','E000015','2017-03-27','2019-03-12',6,'今天状态不错啊0029',1),('EA000030','E000015','2019-06-02','2018-05-03',7,'今天状态不错啊0030',1),('EA000031','E000016','2017-09-29','2017-05-30',6,'今天状态不错啊0031',1),('EA000032','E000016','2018-06-24','2019-08-27',7,'今天状态不错啊0032',1);
/*!40000 ALTER TABLE `employee_attendance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_award_data`
--

DROP TABLE IF EXISTS `employee_award_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_award_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `complete_time` date DEFAULT NULL COMMENT '完成时间',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `remark` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_award` (`id`,`version`),
  KEY `idx4complete_time_of_employee_award` (`complete_time`),
  KEY `fk4employee_of_employee_award_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_award_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工嘉奖';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_award_data`
--

LOCK TABLES `employee_award_data` WRITE;
/*!40000 ALTER TABLE `employee_award_data` DISABLE KEYS */;
INSERT INTO `employee_award_data` VALUES ('EA000001','E000001','2017-08-08','明星员工','考试成绩当年第一名',1),('EA000002','E000001','2017-05-14','销售之星','考试成绩当年第一名0002',1),('EA000003','E000002','2018-10-02','技术之星','考试成绩当年第一名0003',1),('EA000004','E000002','2018-04-28','管理之星','考试成绩当年第一名0004',1),('EA000005','E000003','2019-06-11','终身成就奖','考试成绩当年第一名0005',1),('EA000006','E000003','2019-06-05','明星员工','考试成绩当年第一名0006',1),('EA000007','E000004','2019-02-24','销售之星','考试成绩当年第一名0007',1),('EA000008','E000004','2017-11-13','技术之星','考试成绩当年第一名0008',1),('EA000009','E000005','2017-02-15','管理之星','考试成绩当年第一名0009',1),('EA000010','E000005','2017-10-28','终身成就奖','考试成绩当年第一名0010',1),('EA000011','E000006','2017-03-01','明星员工','考试成绩当年第一名0011',1),('EA000012','E000006','2018-08-22','销售之星','考试成绩当年第一名0012',1),('EA000013','E000007','2019-01-28','技术之星','考试成绩当年第一名0013',1),('EA000014','E000007','2018-11-14','管理之星','考试成绩当年第一名0014',1),('EA000015','E000008','2017-08-24','终身成就奖','考试成绩当年第一名0015',1),('EA000016','E000008','2017-10-11','明星员工','考试成绩当年第一名0016',1),('EA000017','E000009','2018-12-11','销售之星','考试成绩当年第一名0017',1),('EA000018','E000009','2019-03-14','技术之星','考试成绩当年第一名0018',1),('EA000019','E000010','2018-09-27','管理之星','考试成绩当年第一名0019',1),('EA000020','E000010','2019-01-26','终身成就奖','考试成绩当年第一名0020',1),('EA000021','E000011','2019-08-25','明星员工','考试成绩当年第一名0021',1),('EA000022','E000011','2019-06-10','销售之星','考试成绩当年第一名0022',1),('EA000023','E000012','2019-10-05','技术之星','考试成绩当年第一名0023',1),('EA000024','E000012','2018-09-15','管理之星','考试成绩当年第一名0024',1),('EA000025','E000013','2018-11-22','终身成就奖','考试成绩当年第一名0025',1),('EA000026','E000013','2016-10-31','明星员工','考试成绩当年第一名0026',1),('EA000027','E000014','2018-04-27','销售之星','考试成绩当年第一名0027',1),('EA000028','E000014','2017-11-25','技术之星','考试成绩当年第一名0028',1),('EA000029','E000015','2016-11-11','管理之星','考试成绩当年第一名0029',1),('EA000030','E000015','2019-05-11','终身成就奖','考试成绩当年第一名0030',1),('EA000031','E000016','2018-01-25','明星员工','考试成绩当年第一名0031',1),('EA000032','E000016','2019-06-24','销售之星','考试成绩当年第一名0032',1);
/*!40000 ALTER TABLE `employee_award_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_boarding_data`
--

DROP TABLE IF EXISTS `employee_boarding_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_boarding_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `employ_time` date DEFAULT NULL COMMENT '使用时间',
  `comments` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_boarding` (`id`,`version`),
  KEY `idx4employ_time_of_employee_boarding` (`employ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工入职';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_boarding_data`
--

LOCK TABLES `employee_boarding_data` WRITE;
/*!40000 ALTER TABLE `employee_boarding_data` DISABLE KEYS */;
INSERT INTO `employee_boarding_data` VALUES ('EB000001','人力资源部','2017-06-19','欢迎加入植物医生大家庭',1);
/*!40000 ALTER TABLE `employee_boarding_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_company_training_data`
--

DROP TABLE IF EXISTS `employee_company_training_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_company_training_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `training` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '训练',
  `scoring` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评分',
  `current_status` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_company_training` (`id`,`version`),
  KEY `fk4employee_of_employee_company_training_data` (`employee`),
  KEY `fk4training_of_employee_company_training_data` (`training`),
  CONSTRAINT `fk4employee_of_employee_company_training_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4training_of_employee_company_training_data` FOREIGN KEY (`training`) REFERENCES `company_training_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工参与的公司培训';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_company_training_data`
--

LOCK TABLES `employee_company_training_data` WRITE;
/*!40000 ALTER TABLE `employee_company_training_data` DISABLE KEYS */;
INSERT INTO `employee_company_training_data` VALUES ('ECT000001','E000001','CT000001',NULL,'SCORED',1),('ECT000002','E000001','CT000001',NULL,'SCORED0002',1),('ECT000003','E000002','CT000001',NULL,'SCORED0003',1),('ECT000004','E000002','CT000001',NULL,'SCORED0004',1),('ECT000005','E000003','CT000001',NULL,'SCORED0005',1),('ECT000006','E000003','CT000001',NULL,'SCORED0006',1),('ECT000007','E000004','CT000001',NULL,'SCORED0007',1),('ECT000008','E000004','CT000001',NULL,'SCORED0008',1),('ECT000009','E000005','CT000002',NULL,'SCORED0009',1),('ECT000010','E000005','CT000002',NULL,'SCORED0010',1),('ECT000011','E000006','CT000002',NULL,'SCORED0011',1),('ECT000012','E000006','CT000002',NULL,'SCORED0012',1),('ECT000013','E000007','CT000002',NULL,'SCORED0013',1),('ECT000014','E000007','CT000002',NULL,'SCORED0014',1),('ECT000015','E000008','CT000002',NULL,'SCORED0015',1),('ECT000016','E000008','CT000002',NULL,'SCORED0016',1),('ECT000017','E000009','CT000003',NULL,'SCORED0017',1),('ECT000018','E000009','CT000003',NULL,'SCORED0018',1),('ECT000019','E000010','CT000003',NULL,'SCORED0019',1),('ECT000020','E000010','CT000003',NULL,'SCORED0020',1),('ECT000021','E000011','CT000003',NULL,'SCORED0021',1),('ECT000022','E000011','CT000003',NULL,'SCORED0022',1),('ECT000023','E000012','CT000003',NULL,'SCORED0023',1),('ECT000024','E000012','CT000003',NULL,'SCORED0024',1),('ECT000025','E000013','CT000004',NULL,'SCORED0025',1),('ECT000026','E000013','CT000004',NULL,'SCORED0026',1),('ECT000027','E000014','CT000004',NULL,'SCORED0027',1),('ECT000028','E000014','CT000004',NULL,'SCORED0028',1),('ECT000029','E000015','CT000004',NULL,'SCORED0029',1),('ECT000030','E000015','CT000004',NULL,'SCORED0030',1),('ECT000031','E000016','CT000004',NULL,'SCORED0031',1),('ECT000032','E000016','CT000004',NULL,'SCORED0032',1),('ECT000033','E000018','CT000006','S000001',NULL,1),('ECT000034','E000001','CT000005','S000001',NULL,2);
/*!40000 ALTER TABLE `employee_company_training_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_data`
--

DROP TABLE IF EXISTS `employee_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `title` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `department` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  `family_name` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓',
  `given_name` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `city` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市',
  `address` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `cell_phone` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `occupation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职业',
  `responsible_for` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责',
  `current_salary_grade` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目前工资等级',
  `salary_account` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工资账户',
  `job_application` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作申请',
  `profession_interview` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '专业面试',
  `hr_interview` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人力资源部面试',
  `offer_approval` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审批工作要约',
  `offer_acceptance` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接受工作要约',
  `employee_boarding` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工入职',
  `termination` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '雇佣终止',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `current_status` varchar(88) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee` (`id`,`version`),
  KEY `idx4cell_phone_of_employee` (`cell_phone`),
  KEY `idx4last_update_time_of_employee` (`last_update_time`),
  KEY `fk4company_of_employee_data` (`company`),
  KEY `fk4department_of_employee_data` (`department`),
  KEY `fk4occupation_of_employee_data` (`occupation`),
  KEY `fk4responsible_for_of_employee_data` (`responsible_for`),
  KEY `fk4current_salary_grade_of_employee_data` (`current_salary_grade`),
  CONSTRAINT `fk4company_of_employee_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4current_salary_grade_of_employee_data` FOREIGN KEY (`current_salary_grade`) REFERENCES `salary_grade_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4department_of_employee_data` FOREIGN KEY (`department`) REFERENCES `level_three_department_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4occupation_of_employee_data` FOREIGN KEY (`occupation`) REFERENCES `occupation_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4responsible_for_of_employee_data` FOREIGN KEY (`responsible_for`) REFERENCES `responsibility_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_data`
--

LOCK TABLES `employee_data` WRITE;
/*!40000 ALTER TABLE `employee_data` DISABLE KEYS */;
INSERT INTO `employee_data` VALUES ('E000001',NULL,'程序员','LTD000002','张','文强','share@163.com','北京','学院路234号','18677778888','OT000001','RT000001','SG000002','6226 7788 9908',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-10 04:24:01','JOB_APPLIED',6),('E000002',NULL,'程序员0002',NULL,'王','大伟','2@qq.com','天津','学院路234号0002','13900000002',NULL,NULL,NULL,'6226 7788 9908 0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-27 07:56:47','PASSED_WITH_PROFESSION',2),('E000003',NULL,'程序员0003',NULL,'李','字章','3@qq.com','成都','学院路234号0003','13900000003',NULL,NULL,NULL,'6226 7788 9908 0003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-20 15:48:36','PASSED_BY_HR',2),('E000004',NULL,'程序员0004',NULL,'贺','文强','4@qq.com','上海','学院路234号0004','13900000004',NULL,NULL,NULL,'6226 7788 9908 0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-13 00:33:28','OFFER_APPROVED',2),('E000005',NULL,'程序员0005',NULL,'张','大伟','5@qq.com','深圳','学院路234号0005','13900000005',NULL,NULL,NULL,'6226 7788 9908 0005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-14 06:58:39','OFFER_ACCEPTED',2),('E000006',NULL,'程序员0006',NULL,'王','字章','6@qq.com','广州','学院路234号0006','13900000006',NULL,NULL,NULL,'6226 7788 9908 0006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-11 11:46:16','EMPLOYEE_BOARDED',2),('E000007',NULL,'程序员0007',NULL,'李','文强','7@qq.com','西安','学院路234号0007','13900000007',NULL,NULL,NULL,'6226 7788 9908 0007',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-21 12:40:35','TERMINATED',2),('E000008',NULL,'程序员0008',NULL,'贺','大伟','8@qq.com','北京','学院路234号0008','13900000008',NULL,NULL,NULL,'6226 7788 9908 0008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-27 04:26:10','JOB_APPLIED',2),('E000009',NULL,'程序员0009',NULL,'张','字章','9@qq.com','天津','学院路234号0009','13900000009',NULL,NULL,NULL,'6226 7788 9908 0009',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-21 23:53:49','PASSED_WITH_PROFESSION',2),('E000010',NULL,'程序员0010',NULL,'王','文强','10@qq.com','成都','学院路234号0010','13900000010',NULL,NULL,NULL,'6226 7788 9908 0010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-25 15:28:25','PASSED_BY_HR',2),('E000011',NULL,'程序员0011',NULL,'李','大伟','11@qq.com','上海','学院路234号0011','13900000011',NULL,NULL,NULL,'6226 7788 9908 0011',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-13 06:06:45','OFFER_APPROVED',2),('E000012',NULL,'程序员0012',NULL,'贺','字章','12@qq.com','深圳','学院路234号0012','13900000012',NULL,NULL,NULL,'6226 7788 9908 0012',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-12 15:09:30','OFFER_ACCEPTED',2),('E000013',NULL,'程序员0013',NULL,'张','文强','13@qq.com','广州','学院路234号0013','13900000013',NULL,NULL,NULL,'6226 7788 9908 0013',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 06:21:34','EMPLOYEE_BOARDED',2),('E000014',NULL,'程序员0014',NULL,'王','大伟','14@qq.com','西安','学院路234号0014','13900000014',NULL,NULL,NULL,'6226 7788 9908 0014',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 03:59:11','TERMINATED',2),('E000015',NULL,'程序员0015',NULL,'李','字章','15@qq.com','北京','学院路234号0015','13900000015',NULL,NULL,NULL,'6226 7788 9908 0015',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 23:31:21','JOB_APPLIED',2),('E000016',NULL,'程序员0016',NULL,'贺','文强','16@qq.com','天津','学院路234号0016','13900000016',NULL,NULL,NULL,'6226 7788 9908 0016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-11 22:01:57','PASSED_WITH_PROFESSION',4),('E000017',NULL,'支付中心-轮询调度',NULL,'支','支付中','21312@thu231data.com','支付中','支付中','18899999999',NULL,NULL,NULL,'支付中心-轮询调度',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-09 17:12:33','INIT',2),('E000018','RSCC000001','CEO','LTD000001','汪','汪汪','123@163.com','伦敦市','埃菲尔大街','18212341234','OT000001','RT000001','SG000002','666555666555666555666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-28 15:43:27',NULL,1);
/*!40000 ALTER TABLE `employee_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_education_data`
--

DROP TABLE IF EXISTS `employee_education_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_education_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `complete_time` date DEFAULT NULL COMMENT '完成时间',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `remark` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_education` (`id`,`version`),
  KEY `idx4complete_time_of_employee_education` (`complete_time`),
  KEY `fk4employee_of_employee_education_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_education_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工教育';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_education_data`
--

LOCK TABLES `employee_education_data` WRITE;
/*!40000 ALTER TABLE `employee_education_data` DISABLE KEYS */;
INSERT INTO `employee_education_data` VALUES ('EE000001','E000001','2017-06-17','小学','考试成绩当年第一名',1),('EE000002','E000001','2019-09-02','初中','考试成绩当年第一名0002',1),('EE000003','E000002','2018-09-03','高中','考试成绩当年第一名0003',1),('EE000004','E000002','2017-01-27','大学','考试成绩当年第一名0004',1),('EE000005','E000003','2019-03-23','硕士','考试成绩当年第一名0005',1),('EE000006','E000003','2019-04-23','博士','考试成绩当年第一名0006',1),('EE000007','E000004','2018-10-20','职业教育','考试成绩当年第一名0007',1),('EE000008','E000004','2019-04-12','小学','考试成绩当年第一名0008',1),('EE000009','E000005','2019-08-08','初中','考试成绩当年第一名0009',1),('EE000010','E000005','2017-09-17','高中','考试成绩当年第一名0010',1),('EE000011','E000006','2018-04-20','大学','考试成绩当年第一名0011',1),('EE000012','E000006','2017-05-16','硕士','考试成绩当年第一名0012',1),('EE000013','E000007','2018-07-29','博士','考试成绩当年第一名0013',1),('EE000014','E000007','2018-08-07','职业教育','考试成绩当年第一名0014',1),('EE000015','E000008','2017-08-15','小学','考试成绩当年第一名0015',1),('EE000016','E000008','2019-05-23','初中','考试成绩当年第一名0016',1),('EE000017','E000009','2016-12-13','高中','考试成绩当年第一名0017',1),('EE000018','E000009','2018-01-11','大学','考试成绩当年第一名0018',1),('EE000019','E000010','2016-12-02','硕士','考试成绩当年第一名0019',1),('EE000020','E000010','2017-07-08','博士','考试成绩当年第一名0020',1),('EE000021','E000011','2019-06-21','职业教育','考试成绩当年第一名0021',1),('EE000022','E000011','2017-08-23','小学','考试成绩当年第一名0022',1),('EE000023','E000012','2017-06-11','初中','考试成绩当年第一名0023',1),('EE000024','E000012','2017-02-22','高中','考试成绩当年第一名0024',1),('EE000025','E000013','2018-08-19','大学','考试成绩当年第一名0025',1),('EE000026','E000013','2018-10-12','硕士','考试成绩当年第一名0026',1),('EE000027','E000014','2018-10-26','博士','考试成绩当年第一名0027',1),('EE000028','E000014','2019-07-11','职业教育','考试成绩当年第一名0028',1),('EE000029','E000015','2018-08-15','小学','考试成绩当年第一名0029',1),('EE000030','E000015','2019-10-13','初中','考试成绩当年第一名0030',1),('EE000031','E000016','2016-12-11','高中','考试成绩当年第一名0031',1),('EE000032','E000016','2017-04-17','大学','考试成绩当年第一名0032',1);
/*!40000 ALTER TABLE `employee_education_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_interview_data`
--

DROP TABLE IF EXISTS `employee_interview_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_interview_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `interview_type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面试类型',
  `remark` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_interview` (`id`,`version`),
  KEY `fk4employee_of_employee_interview_data` (`employee`),
  KEY `fk4interview_type_of_employee_interview_data` (`interview_type`),
  CONSTRAINT `fk4employee_of_employee_interview_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4interview_type_of_employee_interview_data` FOREIGN KEY (`interview_type`) REFERENCES `interview_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工面试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_interview_data`
--

LOCK TABLES `employee_interview_data` WRITE;
/*!40000 ALTER TABLE `employee_interview_data` DISABLE KEYS */;
INSERT INTO `employee_interview_data` VALUES ('EI000001','E000001','IT000001','结果不错，面试通过！',1),('EI000002','E000001','IT000001','结果不错，面试通过！0002',1),('EI000003','E000002','IT000001','结果不错，面试通过！0003',1),('EI000004','E000002','IT000001','结果不错，面试通过！0004',1),('EI000005','E000003','IT000001','结果不错，面试通过！0005',1),('EI000006','E000003','IT000001','结果不错，面试通过！0006',1),('EI000007','E000004','IT000001','结果不错，面试通过！0007',1),('EI000008','E000004','IT000001','结果不错，面试通过！0008',1),('EI000009','E000005','IT000001','结果不错，面试通过！0009',1),('EI000010','E000005','IT000001','结果不错，面试通过！0010',1),('EI000011','E000006','IT000001','结果不错，面试通过！0011',1),('EI000012','E000006','IT000001','结果不错，面试通过！0012',1),('EI000013','E000007','IT000001','结果不错，面试通过！0013',1),('EI000014','E000007','IT000001','结果不错，面试通过！0014',1),('EI000015','E000008','IT000001','结果不错，面试通过！0015',1),('EI000016','E000008','IT000001','结果不错，面试通过！0016',1),('EI000017','E000009','IT000002','结果不错，面试通过！0017',1),('EI000018','E000009','IT000002','结果不错，面试通过！0018',1),('EI000019','E000010','IT000002','结果不错，面试通过！0019',1),('EI000020','E000010','IT000002','结果不错，面试通过！0020',1),('EI000021','E000011','IT000002','结果不错，面试通过！0021',1),('EI000022','E000011','IT000002','结果不错，面试通过！0022',1),('EI000023','E000012','IT000002','结果不错，面试通过！0023',1),('EI000024','E000012','IT000002','结果不错，面试通过！0024',1),('EI000025','E000013','IT000002','结果不错，面试通过！0025',1),('EI000026','E000013','IT000002','结果不错，面试通过！0026',1),('EI000027','E000014','IT000002','结果不错，面试通过！0027',1),('EI000028','E000014','IT000002','结果不错，面试通过！0028',1),('EI000029','E000015','IT000002','结果不错，面试通过！0029',1),('EI000030','E000015','IT000002','结果不错，面试通过！0030',1),('EI000031','E000016','IT000002','结果不错，面试通过！0031',1),('EI000032','E000016','IT000002','结果不错，面试通过！0032',1),('EI000033','E000018','IT000002','总裁的儿子',2),('EI000034','E000001','IT000002','总裁的儿子',1),('EI000035','E000001','IT000001','面试合格，准许通过006',1),('EI000036','E000001','IT000001','面试合格，准许通过！',1),('EI000037','E000001','IT000002','长得太帅，面试失败',1),('EI000038','E000001','IT000002','不知道我是谁 ，面试失败',1),('EI000039','E000001','IT000001','总裁儿子的朋友，面试通过',1),('EI000040','E000001','IT000002','面试优秀，允许通过',1),('EI000041','E000001','IT000001','没有背景，面试不通过',1),('EI000042','E000001','IT000001','面试合格，允许通过！',1),('EI000043','E000001','IT000002','面试合格，允许通过！',1),('EI000044','E000001','IT000001','面试合格，允许通过！',1),('EI000045','E000001','IT000001','面试合格，允许通过！',1),('EI000046','E000001','IT000002','面试合格，允许通过！',1);
/*!40000 ALTER TABLE `employee_interview_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_data`
--

DROP TABLE IF EXISTS `employee_leave_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `leave_duration_hour` int(11) DEFAULT NULL COMMENT '请假时长',
  `remark` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_leave` (`id`,`version`),
  KEY `idx4leave_duration_hour_of_employee_leave` (`leave_duration_hour`),
  KEY `fk4who_of_employee_leave_data` (`who`),
  KEY `fk4type_of_employee_leave_data` (`type`),
  CONSTRAINT `fk4type_of_employee_leave_data` FOREIGN KEY (`type`) REFERENCES `leave_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4who_of_employee_leave_data` FOREIGN KEY (`who`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='请假记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave_data`
--

LOCK TABLES `employee_leave_data` WRITE;
/*!40000 ALTER TABLE `employee_leave_data` DISABLE KEYS */;
INSERT INTO `employee_leave_data` VALUES ('EL000001','E000001','LT000001',8,'请年假，出去耍！！！！',1),('EL000002','E000001','LT000001',8,'请年假，出去耍！！！！0002',2),('EL000003','E000002','LT000001',7,'请年假，出去耍！！！！0003',1),('EL000004','E000002','LT000001',7,'请年假，出去耍！！！！0004',1),('EL000005','E000003','LT000001',8,'请年假，出去耍！！！！0005',1),('EL000006','E000003','LT000001',8,'请年假，出去耍！！！！0006',1),('EL000007','E000004','LT000001',7,'请年假，出去耍！！！！0007',1),('EL000008','E000004','LT000001',6,'请年假，出去耍！！！！0008',1),('EL000009','E000005','LT000001',7,'请年假，出去耍！！！！0009',1),('EL000010','E000005','LT000001',8,'请年假，出去耍！！！！0010',1),('EL000011','E000006','LT000001',8,'请年假，出去耍！！！！0011',1),('EL000012','E000006','LT000001',7,'请年假，出去耍！！！！0012',1),('EL000013','E000007','LT000001',7,'请年假，出去耍！！！！0013',1),('EL000014','E000007','LT000001',8,'请年假，出去耍！！！！0014',1),('EL000015','E000008','LT000001',7,'请年假，出去耍！！！！0015',1),('EL000016','E000008','LT000001',8,'请年假，出去耍！！！！0016',1),('EL000017','E000009','LT000002',8,'请年假，出去耍！！！！0017',1),('EL000018','E000009','LT000002',7,'请年假，出去耍！！！！0018',1),('EL000019','E000010','LT000002',8,'请年假，出去耍！！！！0019',1),('EL000020','E000010','LT000002',8,'请年假，出去耍！！！！0020',1),('EL000021','E000011','LT000002',8,'请年假，出去耍！！！！0021',1),('EL000022','E000011','LT000002',7,'请年假，出去耍！！！！0022',1),('EL000023','E000012','LT000002',8,'请年假，出去耍！！！！0023',1),('EL000024','E000012','LT000002',7,'请年假，出去耍！！！！0024',1),('EL000025','E000013','LT000002',7,'请年假，出去耍！！！！0025',1),('EL000026','E000013','LT000002',8,'请年假，出去耍！！！！0026',1),('EL000027','E000014','LT000002',7,'请年假，出去耍！！！！0027',1),('EL000028','E000014','LT000002',8,'请年假，出去耍！！！！0028',1),('EL000029','E000015','LT000002',8,'请年假，出去耍！！！！0029',1),('EL000030','E000015','LT000002',8,'请年假，出去耍！！！！0030',1),('EL000031','E000016','LT000002',8,'请年假，出去耍！！！！0031',1),('EL000032','E000016','LT000002',6,'请年假，出去耍！！！！0032',1);
/*!40000 ALTER TABLE `employee_leave_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_performance_data`
--

DROP TABLE IF EXISTS `employee_performance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_performance_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `performance_comment` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '绩效评价',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_performance` (`id`,`version`),
  KEY `fk4employee_of_employee_performance_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_performance_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工绩效';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_performance_data`
--

LOCK TABLES `employee_performance_data` WRITE;
/*!40000 ALTER TABLE `employee_performance_data` DISABLE KEYS */;
INSERT INTO `employee_performance_data` VALUES ('EP000001','E000001','业绩vule goog',2),('EP000002','E000002','绩效大大的不错0002',2),('EP000003','E000002','绩效大大的不错0003',1),('EP000004','E000002','绩效大大的不错0004',1),('EP000005','E000003','绩效大大的不错0005',1),('EP000006','E000003','绩效大大的不错0006',1),('EP000007','E000004','绩效大大的不错0007',1),('EP000008','E000004','绩效大大的不错0008',1),('EP000009','E000005','绩效大大的不错0009',1),('EP000010','E000005','绩效大大的不错0010',1),('EP000011','E000006','绩效大大的不错0011',1),('EP000012','E000006','绩效大大的不错0012',1),('EP000013','E000007','绩效大大的不错0013',1),('EP000014','E000007','绩效大大的不错0014',1),('EP000015','E000008','绩效大大的不错0015',1),('EP000016','E000008','绩效大大的不错0016',1),('EP000017','E000009','绩效大大的不错0017',1),('EP000018','E000009','绩效大大的不错0018',1),('EP000019','E000010','绩效大大的不错0019',1),('EP000020','E000010','绩效大大的不错0020',1),('EP000021','E000011','绩效大大的不错0021',1),('EP000022','E000011','绩效大大的不错0022',1),('EP000023','E000012','绩效大大的不错0023',1),('EP000024','E000012','绩效大大的不错0024',1),('EP000025','E000013','绩效大大的不错0025',1),('EP000026','E000013','绩效大大的不错0026',1),('EP000027','E000014','绩效大大的不错0027',1),('EP000028','E000014','绩效大大的不错0028',1),('EP000029','E000015','绩效大大的不错0029',1),('EP000030','E000015','绩效大大的不错0030',1),('EP000031','E000016','绩效大大的不错0031',1),('EP000032','E000016','绩效大大的不错0032',1),('EP000033','E000001','干得漂亮',1);
/*!40000 ALTER TABLE `employee_performance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_qualifier_data`
--

DROP TABLE IF EXISTS `employee_qualifier_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_qualifier_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `qualified_time` date DEFAULT NULL COMMENT '合格的时间',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `level` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水平',
  `remark` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_qualifier` (`id`,`version`),
  KEY `idx4qualified_time_of_employee_qualifier` (`qualified_time`),
  KEY `fk4employee_of_employee_qualifier_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_qualifier_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工资质';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_qualifier_data`
--

LOCK TABLES `employee_qualifier_data` WRITE;
/*!40000 ALTER TABLE `employee_qualifier_data` DISABLE KEYS */;
INSERT INTO `employee_qualifier_data` VALUES ('EQ000001','E000001','2016-12-11','认证药剂师','高级','考试成绩当年第一名',1),('EQ000002','E000001','2019-06-07','认证架构师','中级','考试成绩当年第一名0002',1),('EQ000003','E000002','2017-10-13','认证会计师','初级','考试成绩当年第一名0003',1),('EQ000004','E000002','2017-04-19','认证经济师','高级','考试成绩当年第一名0004',1),('EQ000005','E000003','2019-05-31','OCP','中级','考试成绩当年第一名0005',1),('EQ000006','E000003','2018-06-22','CCNA','初级','考试成绩当年第一名0006',1),('EQ000007','E000004','2019-08-06','CCNP','高级','考试成绩当年第一名0007',1),('EQ000008','E000004','2018-01-27','认证药剂师','中级','考试成绩当年第一名0008',1),('EQ000009','E000005','2017-04-18','认证架构师','初级','考试成绩当年第一名0009',1),('EQ000010','E000005','2018-08-21','认证会计师','高级','考试成绩当年第一名0010',1),('EQ000011','E000006','2017-01-11','认证经济师','中级','考试成绩当年第一名0011',1),('EQ000012','E000006','2017-07-14','OCP','初级','考试成绩当年第一名0012',1),('EQ000013','E000007','2018-02-09','CCNA','高级','考试成绩当年第一名0013',1),('EQ000014','E000007','2017-05-16','CCNP','中级','考试成绩当年第一名0014',1),('EQ000015','E000008','2017-08-26','认证药剂师','初级','考试成绩当年第一名0015',1),('EQ000016','E000008','2019-03-23','认证架构师','高级','考试成绩当年第一名0016',1),('EQ000017','E000009','2018-10-31','认证会计师','中级','考试成绩当年第一名0017',1),('EQ000018','E000009','2018-01-23','认证经济师','初级','考试成绩当年第一名0018',1),('EQ000019','E000010','2018-12-19','OCP','高级','考试成绩当年第一名0019',1),('EQ000020','E000010','2017-03-21','CCNA','中级','考试成绩当年第一名0020',1),('EQ000021','E000011','2019-10-24','CCNP','初级','考试成绩当年第一名0021',1),('EQ000022','E000011','2017-06-28','认证药剂师','高级','考试成绩当年第一名0022',1),('EQ000023','E000012','2017-03-02','认证架构师','中级','考试成绩当年第一名0023',1),('EQ000024','E000012','2017-01-03','认证会计师','初级','考试成绩当年第一名0024',1),('EQ000025','E000013','2019-05-22','认证经济师','高级','考试成绩当年第一名0025',1),('EQ000026','E000013','2018-04-16','OCP','中级','考试成绩当年第一名0026',1),('EQ000027','E000014','2017-02-28','CCNA','初级','考试成绩当年第一名0027',1),('EQ000028','E000014','2017-10-16','CCNP','高级','考试成绩当年第一名0028',1),('EQ000029','E000015','2017-03-18','认证药剂师','中级','考试成绩当年第一名0029',1),('EQ000030','E000015','2017-06-10','认证架构师','初级','考试成绩当年第一名0030',1),('EQ000031','E000016','2016-11-20','认证会计师','高级','考试成绩当年第一名0031',1),('EQ000032','E000016','2018-11-09','认证经济师','中级','考试成绩当年第一名0032',1);
/*!40000 ALTER TABLE `employee_qualifier_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_sheet_data`
--

DROP TABLE IF EXISTS `employee_salary_sheet_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary_sheet_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `current_salary_grade` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目前工资等级',
  `base_salary` decimal(8,2) DEFAULT NULL COMMENT '基本工资',
  `bonus` decimal(8,2) DEFAULT NULL COMMENT '奖金',
  `reward` decimal(8,2) DEFAULT NULL COMMENT '奖励',
  `personal_tax` decimal(7,2) DEFAULT NULL COMMENT '个人所得税',
  `social_security` decimal(8,2) DEFAULT NULL COMMENT '社会保险',
  `housing_found` decimal(8,2) DEFAULT NULL COMMENT '住房公积金',
  `job_insurance` decimal(5,2) DEFAULT NULL COMMENT '失业保险',
  `paying_off` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工资支付',
  `current_status` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_salary_sheet` (`id`,`version`),
  KEY `idx4base_salary_of_employee_salary_sheet` (`base_salary`),
  KEY `idx4bonus_of_employee_salary_sheet` (`bonus`),
  KEY `idx4reward_of_employee_salary_sheet` (`reward`),
  KEY `idx4personal_tax_of_employee_salary_sheet` (`personal_tax`),
  KEY `idx4social_security_of_employee_salary_sheet` (`social_security`),
  KEY `idx4housing_found_of_employee_salary_sheet` (`housing_found`),
  KEY `idx4job_insurance_of_employee_salary_sheet` (`job_insurance`),
  KEY `fk4employee_of_employee_salary_sheet_data` (`employee`),
  KEY `fk4current_salary_grade_of_employee_salary_sheet_data` (`current_salary_grade`),
  CONSTRAINT `fk4current_salary_grade_of_employee_salary_sheet_data` FOREIGN KEY (`current_salary_grade`) REFERENCES `salary_grade_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4employee_of_employee_salary_sheet_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工资单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_sheet_data`
--

LOCK TABLES `employee_salary_sheet_data` WRITE;
/*!40000 ALTER TABLE `employee_salary_sheet_data` DISABLE KEYS */;
INSERT INTO `employee_salary_sheet_data` VALUES ('ESS000001','E000001','SG000001',2816.94,751.49,904.92,687.91,879.77,1028.73,8.46,NULL,'PAID_OFF',1),('ESS000002','E000001','SG000001',2167.24,934.64,825.13,590.04,859.27,859.82,7.58,NULL,'PAID_OFF0002',1),('ESS000003','E000001','SG000001',2817.40,727.57,849.11,590.95,772.05,1130.19,6.86,NULL,'PAID_OFF0003',1),('ESS000004','E000001','SG000001',2893.83,720.61,872.92,642.67,850.71,1110.51,7.37,NULL,'PAID_OFF0004',1),('ESS000005','E000002','SG000001',2777.06,784.47,965.77,563.11,944.46,996.83,7.09,NULL,'PAID_OFF0005',1),('ESS000006','E000002','SG000001',2891.28,967.48,853.31,639.02,981.56,878.90,8.66,NULL,'PAID_OFF0006',1),('ESS000007','E000002','SG000001',2240.55,863.90,930.25,625.44,786.12,858.28,6.23,NULL,'PAID_OFF0007',1),('ESS000008','E000002','SG000001',2788.97,998.46,928.38,622.86,893.96,1133.07,6.32,NULL,'PAID_OFF0008',1),('ESS000009','E000003','SG000001',2849.19,921.00,819.28,708.15,1001.65,881.75,8.60,NULL,'PAID_OFF0009',1),('ESS000010','E000003','SG000001',2602.08,972.48,804.18,777.33,938.24,880.05,7.04,NULL,'PAID_OFF0010',1),('ESS000011','E000003','SG000001',2965.49,716.32,761.16,787.15,1032.75,866.47,8.01,NULL,'PAID_OFF0011',1),('ESS000012','E000003','SG000001',2829.47,707.97,927.90,605.98,1082.42,1090.67,6.68,NULL,'PAID_OFF0012',1),('ESS000013','E000004','SG000001',2465.29,970.32,731.54,773.21,1053.63,1177.17,7.23,NULL,'PAID_OFF0013',1),('ESS000014','E000004','SG000001',2766.93,867.62,750.70,784.35,1072.36,1167.37,7.23,NULL,'PAID_OFF0014',1),('ESS000015','E000004','SG000001',2399.98,979.18,867.66,777.20,989.70,1104.58,8.27,NULL,'PAID_OFF0015',1),('ESS000016','E000004','SG000001',2994.52,977.65,800.98,713.75,848.41,1188.11,7.46,NULL,'PAID_OFF0016',1),('ESS000017','E000005','SG000001',2890.10,950.08,960.88,627.21,951.98,1155.74,8.79,NULL,'PAID_OFF0017',1),('ESS000018','E000005','SG000001',2103.96,805.78,832.51,679.29,924.01,980.09,6.99,NULL,'PAID_OFF0018',1),('ESS000019','E000005','SG000001',2843.06,869.72,849.77,747.83,1046.56,1218.08,7.64,NULL,'PAID_OFF0019',1),('ESS000020','E000005','SG000001',2560.18,926.13,828.24,592.28,927.57,892.96,8.27,NULL,'PAID_OFF0020',1),('ESS000021','E000006','SG000001',2929.35,935.24,827.13,758.24,868.70,950.91,7.25,NULL,'PAID_OFF0021',1),('ESS000022','E000006','SG000001',2721.81,787.62,838.05,645.36,936.36,1066.88,8.83,NULL,'PAID_OFF0022',1),('ESS000023','E000006','SG000001',2479.88,874.97,902.17,572.20,901.67,1188.12,6.99,NULL,'PAID_OFF0023',1),('ESS000024','E000006','SG000001',2344.94,780.39,869.55,646.24,772.02,877.07,7.35,NULL,'PAID_OFF0024',1),('ESS000025','E000007','SG000001',2173.32,787.42,712.46,776.71,786.26,1005.83,7.74,NULL,'PAID_OFF0025',1),('ESS000026','E000007','SG000001',2870.81,772.00,981.57,692.24,991.81,1025.86,8.37,NULL,'PAID_OFF0026',1),('ESS000027','E000007','SG000001',2744.40,865.60,851.02,775.95,1010.08,990.78,8.60,NULL,'PAID_OFF0027',1),('ESS000028','E000007','SG000001',2694.96,806.39,919.55,730.90,1032.89,1124.98,6.28,NULL,'PAID_OFF0028',1),('ESS000029','E000008','SG000001',2307.89,929.02,984.23,647.77,1037.62,1101.72,8.48,NULL,'PAID_OFF0029',1),('ESS000030','E000008','SG000001',2173.27,716.11,787.97,563.00,1079.75,1075.37,7.33,NULL,'PAID_OFF0030',1),('ESS000031','E000008','SG000001',2239.33,901.47,865.19,768.97,946.95,1036.25,8.72,'PO000001','PAID_OFF0031',2),('ESS000032','E000008','SG000002',2554.64,770.07,954.36,758.71,796.21,1012.98,7.42,'PO000001','PAID_OFF0032',6),('ESS000033','E000009','SG000002',2979.59,886.06,748.17,642.12,838.93,1148.59,6.44,NULL,'PAID_OFF0033',1),('ESS000034','E000009','SG000002',2813.73,743.64,990.76,787.10,856.69,867.98,6.41,NULL,'PAID_OFF0034',1),('ESS000035','E000009','SG000002',2423.32,756.07,946.88,738.70,961.11,951.65,8.44,NULL,'PAID_OFF0035',1),('ESS000036','E000009','SG000002',2984.59,766.53,967.65,643.09,880.06,1122.85,8.34,NULL,'PAID_OFF0036',1),('ESS000037','E000010','SG000002',2559.68,795.21,843.16,565.24,790.80,1134.44,7.75,NULL,'PAID_OFF0037',1),('ESS000038','E000010','SG000002',2263.34,839.64,948.45,772.45,1017.03,913.25,6.69,NULL,'PAID_OFF0038',1),('ESS000039','E000010','SG000002',2945.36,749.22,888.53,746.86,1072.44,909.47,6.46,NULL,'PAID_OFF0039',1),('ESS000040','E000010','SG000002',2132.63,760.41,987.68,620.04,916.47,984.47,7.08,NULL,'PAID_OFF0040',1),('ESS000041','E000011','SG000002',2612.43,948.40,873.07,668.44,849.30,924.67,7.01,NULL,'PAID_OFF0041',1),('ESS000042','E000011','SG000002',2784.51,705.81,797.32,587.53,872.52,1198.60,6.40,NULL,'PAID_OFF0042',1),('ESS000043','E000011','SG000002',2932.63,898.87,899.14,595.32,1032.11,1126.93,6.83,NULL,'PAID_OFF0043',1),('ESS000044','E000011','SG000002',2737.60,870.34,819.61,607.51,906.47,920.58,8.31,NULL,'PAID_OFF0044',1),('ESS000045','E000012','SG000002',2236.68,837.96,944.67,765.27,1087.84,975.90,6.42,NULL,'PAID_OFF0045',1),('ESS000046','E000012','SG000002',2208.98,979.15,976.42,597.83,968.19,1088.42,7.80,NULL,'PAID_OFF0046',1),('ESS000047','E000012','SG000002',2915.54,784.15,953.05,737.44,980.72,1089.01,7.48,NULL,'PAID_OFF0047',1),('ESS000048','E000012','SG000002',2744.38,803.85,869.84,776.11,974.18,897.34,8.63,NULL,'PAID_OFF0048',1),('ESS000049','E000013','SG000002',2417.59,763.58,733.57,692.04,922.76,1009.36,8.09,NULL,'PAID_OFF0049',1),('ESS000050','E000013','SG000002',2512.35,920.03,991.41,682.55,831.04,1149.70,7.61,NULL,'PAID_OFF0050',1),('ESS000051','E000013','SG000002',2304.44,852.06,999.96,753.10,898.62,1033.60,8.84,NULL,'PAID_OFF0051',1),('ESS000052','E000013','SG000002',2539.55,808.07,880.26,641.57,848.55,901.39,8.81,NULL,'PAID_OFF0052',1),('ESS000053','E000014','SG000002',2294.73,768.98,841.08,575.47,889.55,1055.18,7.49,NULL,'PAID_OFF0053',1),('ESS000054','E000014','SG000002',2110.74,714.85,722.41,773.59,1019.13,1105.82,7.12,NULL,'PAID_OFF0054',1),('ESS000055','E000014','SG000002',2217.69,799.32,993.37,762.62,905.43,978.87,8.39,NULL,'PAID_OFF0055',1),('ESS000056','E000014','SG000002',2872.20,943.35,731.92,728.97,822.39,1106.53,6.83,NULL,'PAID_OFF0056',1),('ESS000057','E000015','SG000002',2826.98,794.17,727.80,767.91,914.19,880.13,7.86,NULL,'PAID_OFF0057',1),('ESS000058','E000015','SG000002',2691.33,709.53,928.73,736.89,917.72,1038.51,7.47,NULL,'PAID_OFF0058',1),('ESS000059','E000015','SG000002',2597.24,721.07,948.89,751.22,930.45,920.00,8.42,NULL,'PAID_OFF0059',1),('ESS000060','E000015','SG000002',2610.39,814.68,867.49,658.52,889.74,909.63,8.36,NULL,'PAID_OFF0060',1),('ESS000061','E000016','SG000002',2810.22,954.63,919.27,693.01,924.47,1200.42,6.55,NULL,'PAID_OFF0061',1),('ESS000062','E000016','SG000002',2547.93,997.52,760.92,620.28,840.98,1214.05,7.99,NULL,'PAID_OFF0062',1),('ESS000063','E000016','SG000002',2439.07,835.40,931.37,695.96,773.88,1155.18,8.31,NULL,'PAID_OFF0063',1),('ESS000064','E000016','SG000002',2797.07,707.20,931.24,560.44,945.11,871.06,8.16,'PO000013','PAID_OFF0064',3);
/*!40000 ALTER TABLE `employee_salary_sheet_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skill_data`
--

DROP TABLE IF EXISTS `employee_skill_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_skill_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `skill_type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '技能类型',
  `description` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_skill` (`id`,`version`),
  KEY `fk4employee_of_employee_skill_data` (`employee`),
  KEY `fk4skill_type_of_employee_skill_data` (`skill_type`),
  CONSTRAINT `fk4employee_of_employee_skill_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4skill_type_of_employee_skill_data` FOREIGN KEY (`skill_type`) REFERENCES `skill_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工技能';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skill_data`
--

LOCK TABLES `employee_skill_data` WRITE;
/*!40000 ALTER TABLE `employee_skill_data` DISABLE KEYS */;
INSERT INTO `employee_skill_data` VALUES ('ES000001','E000001','ST000001','UI设计师',2),('ES000002',NULL,NULL,'高手高手高高手0002',2),('ES000003','E000002','ST000001','高手高手高高手0003',1),('ES000004','E000002','ST000001','高手高手高高手0004',1),('ES000005','E000003','ST000001','高手高手高高手0005',1),('ES000006','E000003','ST000001','高手高手高高手0006',1),('ES000007','E000004','ST000001','高手高手高高手0007',1),('ES000008','E000004','ST000001','高手高手高高手0008',1),('ES000009','E000005','ST000001','高手高手高高手0009',1),('ES000010','E000005','ST000001','高手高手高高手0010',1),('ES000011','E000006','ST000001','高手高手高高手0011',1),('ES000012','E000006','ST000001','高手高手高高手0012',1),('ES000013','E000007','ST000001','高手高手高高手0013',1),('ES000014','E000007','ST000001','高手高手高高手0014',1),('ES000015','E000008','ST000001','高手高手高高手0015',1),('ES000016','E000008','ST000001','高手高手高高手0016',1),('ES000017','E000009','ST000002','高手高手高高手0017',1),('ES000018','E000009','ST000002','高手高手高高手0018',1),('ES000019','E000010','ST000002','高手高手高高手0019',1),('ES000020','E000010','ST000002','高手高手高高手0020',1),('ES000021','E000011','ST000002','高手高手高高手0021',1),('ES000022','E000011','ST000002','高手高手高高手0022',1),('ES000023','E000012','ST000002','高手高手高高手0023',1),('ES000024','E000012','ST000002','高手高手高高手0024',1),('ES000025','E000013','ST000002','高手高手高高手0025',1),('ES000026','E000013','ST000002','高手高手高高手0026',1),('ES000027','E000014','ST000002','高手高手高高手0027',1),('ES000028','E000014','ST000002','高手高手高高手0028',1),('ES000029','E000015','ST000002','高手高手高高手0029',1),('ES000030','E000015','ST000002','高手高手高高手0030',1),('ES000031','E000016','ST000002','高手高手高高手0031',1),('ES000032','E000016','ST000002','高手高手高高手0032',1),('ES000033','E000001','ST000001','前端开发',2),('ES000034','E000001','ST000003','后台开发',2),('ES000035','E000001','ST000002','熟练Sqlserver',3),('ES000037','E000001','ST000001','熟练',1);
/*!40000 ALTER TABLE `employee_skill_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_work_experience_data`
--

DROP TABLE IF EXISTS `employee_work_experience_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_work_experience_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `employee` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  `start` date DEFAULT NULL COMMENT '开始',
  `end` date DEFAULT NULL COMMENT '结束',
  `company` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(84) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_employee_work_experience` (`id`,`version`),
  KEY `idx4start_of_employee_work_experience` (`start`),
  KEY `idx4end_of_employee_work_experience` (`end`),
  KEY `fk4employee_of_employee_work_experience_data` (`employee`),
  CONSTRAINT `fk4employee_of_employee_work_experience_data` FOREIGN KEY (`employee`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工工作经验';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_work_experience_data`
--

LOCK TABLES `employee_work_experience_data` WRITE;
/*!40000 ALTER TABLE `employee_work_experience_data` DISABLE KEYS */;
INSERT INTO `employee_work_experience_data` VALUES ('EWE000001','E000001','2018-08-04','2018-04-24','丝芙兰化妆品公司','在此期间取得非常好的绩效，赢得了客户的信赖',1),('EWE000002','E000001','2019-07-01','2017-03-19','丝芙兰化妆品公司0002','在此期间取得非常好的绩效，赢得了客户的信赖0002',1),('EWE000003','E000002','2018-07-07','2019-02-18','丝芙兰化妆品公司0003','在此期间取得非常好的绩效，赢得了客户的信赖0003',1),('EWE000004','E000002','2018-06-19','2018-05-30','丝芙兰化妆品公司0004','在此期间取得非常好的绩效，赢得了客户的信赖0004',1),('EWE000005','E000003','2018-10-31','2018-03-02','丝芙兰化妆品公司0005','在此期间取得非常好的绩效，赢得了客户的信赖0005',1),('EWE000006','E000003','2018-02-28','2018-09-27','丝芙兰化妆品公司0006','在此期间取得非常好的绩效，赢得了客户的信赖0006',1),('EWE000007','E000004','2018-01-01','2018-09-13','丝芙兰化妆品公司0007','在此期间取得非常好的绩效，赢得了客户的信赖0007',1),('EWE000008','E000004','2019-08-27','2019-05-03','丝芙兰化妆品公司0008','在此期间取得非常好的绩效，赢得了客户的信赖0008',1),('EWE000009','E000005','2016-12-21','2019-03-28','丝芙兰化妆品公司0009','在此期间取得非常好的绩效，赢得了客户的信赖0009',1),('EWE000010','E000005','2017-08-24','2018-01-26','丝芙兰化妆品公司0010','在此期间取得非常好的绩效，赢得了客户的信赖0010',1),('EWE000011','E000006','2018-08-15','2018-10-10','丝芙兰化妆品公司0011','在此期间取得非常好的绩效，赢得了客户的信赖0011',1),('EWE000012','E000006','2017-11-29','2018-09-02','丝芙兰化妆品公司0012','在此期间取得非常好的绩效，赢得了客户的信赖0012',1),('EWE000013','E000007','2019-01-08','2018-10-25','丝芙兰化妆品公司0013','在此期间取得非常好的绩效，赢得了客户的信赖0013',1),('EWE000014','E000007','2018-09-19','2019-03-16','丝芙兰化妆品公司0014','在此期间取得非常好的绩效，赢得了客户的信赖0014',1),('EWE000015','E000008','2019-08-03','2019-06-16','丝芙兰化妆品公司0015','在此期间取得非常好的绩效，赢得了客户的信赖0015',1),('EWE000016','E000008','2017-12-20','2017-09-05','丝芙兰化妆品公司0016','在此期间取得非常好的绩效，赢得了客户的信赖0016',1),('EWE000017','E000009','2017-09-16','2019-04-16','丝芙兰化妆品公司0017','在此期间取得非常好的绩效，赢得了客户的信赖0017',1),('EWE000018','E000009','2018-02-02','2017-06-02','丝芙兰化妆品公司0018','在此期间取得非常好的绩效，赢得了客户的信赖0018',1),('EWE000019','E000010','2018-02-20','2018-01-23','丝芙兰化妆品公司0019','在此期间取得非常好的绩效，赢得了客户的信赖0019',1),('EWE000020','E000010','2017-06-29','2019-02-05','丝芙兰化妆品公司0020','在此期间取得非常好的绩效，赢得了客户的信赖0020',1),('EWE000021','E000011','2018-03-30','2016-12-25','丝芙兰化妆品公司0021','在此期间取得非常好的绩效，赢得了客户的信赖0021',1),('EWE000022','E000011','2016-12-06','2016-11-09','丝芙兰化妆品公司0022','在此期间取得非常好的绩效，赢得了客户的信赖0022',1),('EWE000023','E000012','2017-01-13','2017-07-02','丝芙兰化妆品公司0023','在此期间取得非常好的绩效，赢得了客户的信赖0023',1),('EWE000024','E000012','2017-02-18','2018-11-17','丝芙兰化妆品公司0024','在此期间取得非常好的绩效，赢得了客户的信赖0024',1),('EWE000025','E000013','2017-11-23','2017-01-02','丝芙兰化妆品公司0025','在此期间取得非常好的绩效，赢得了客户的信赖0025',1),('EWE000026','E000013','2017-08-14','2019-01-04','丝芙兰化妆品公司0026','在此期间取得非常好的绩效，赢得了客户的信赖0026',1),('EWE000027','E000014','2016-12-16','2019-07-25','丝芙兰化妆品公司0027','在此期间取得非常好的绩效，赢得了客户的信赖0027',1),('EWE000028','E000014','2017-01-01','2018-08-13','丝芙兰化妆品公司0028','在此期间取得非常好的绩效，赢得了客户的信赖0028',1),('EWE000029','E000015','2018-03-29','2019-01-21','丝芙兰化妆品公司0029','在此期间取得非常好的绩效，赢得了客户的信赖0029',1),('EWE000030','E000015','2018-09-30','2018-11-02','丝芙兰化妆品公司0030','在此期间取得非常好的绩效，赢得了客户的信赖0030',1),('EWE000031','E000016','2018-12-06','2017-06-17','丝芙兰化妆品公司0031','在此期间取得非常好的绩效，赢得了客户的信赖0031',1),('EWE000032','E000016','2018-11-16','2017-08-28','丝芙兰化妆品公司0032','在此期间取得非常好的绩效，赢得了客户的信赖0032',1);
/*!40000 ALTER TABLE `employee_work_experience_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_attendance_data`
--

DROP TABLE IF EXISTS `event_attendance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_attendance_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `potential_customer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '潜在的客户',
  `city_event` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市活动',
  `description` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_event_attendance` (`id`,`version`),
  KEY `fk4potential_customer_of_event_attendance_data` (`potential_customer`),
  KEY `fk4city_event_of_event_attendance_data` (`city_event`),
  CONSTRAINT `fk4city_event_of_event_attendance_data` FOREIGN KEY (`city_event`) REFERENCES `city_event_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4potential_customer_of_event_attendance_data` FOREIGN KEY (`potential_customer`) REFERENCES `potential_customer_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='活动的参与情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_attendance_data`
--

LOCK TABLES `event_attendance_data` WRITE;
/*!40000 ALTER TABLE `event_attendance_data` DISABLE KEYS */;
INSERT INTO `event_attendance_data` VALUES ('EA000001','小超见面会参加信息','PC000001','CE000001','体会不错，考虑加盟1111',2),('EA000002','小超见面会参加信息0002','PC000001','CE000001','体会不错，考虑加盟0002',1),('EA000003','小超见面会参加信息0003','PC000002','CE000001','体会不错，考虑加盟0003',1),('EA000004','小超见面会参加信息0004','PC000002','CE000001','体会不错，考虑加盟0004',1),('EA000005','小超见面会参加信息0005','PC000003','CE000002','体会不错，考虑加盟0005',1),('EA000006','小超见面会参加信息0006','PC000003','CE000002','体会不错，考虑加盟0006',1),('EA000007','小超见面会参加信息0007','PC000004','CE000002','体会不错，考虑加盟0007',1),('EA000008','小超见面会参加信息0008','PC000004','CE000002','体会不错，考虑加盟0008',1),('EA000009','小超见面会参加信息0009','PC000005','CE000003','体会不错，考虑加盟0009',1),('EA000010','小超见面会参加信息0010','PC000005','CE000003','体会不错，考虑加盟0010',1),('EA000011','小超见面会参加信息0011','PC000006','CE000003','体会不错，考虑加盟0011',1),('EA000012','小超见面会参加信息0012','PC000006','CE000003','体会不错，考虑加盟0012',1),('EA000013','小超见面会参加信息0013','PC000007','CE000004','体会不错，考虑加盟0013',1),('EA000014','小超见面会参加信息0014','PC000007','CE000004','体会不错，考虑加盟0014',1),('EA000015','小超见面会参加信息0015','PC000008','CE000004','体会不错，考虑加盟0015',1),('EA000016','小超见面会参加信息0016','PC000008','CE000004','体会不错，考虑加盟0016',1),('EA000017','小超见面会参加信息0017','PC000009','CE000005','体会不错，考虑加盟0017',1),('EA000018','小超见面会参加信息0018','PC000009','CE000005','体会不错，考虑加盟0018',1),('EA000019','小超见面会参加信息0019','PC000010','CE000005','体会不错，考虑加盟0019',1),('EA000020','小超见面会参加信息0020','PC000010','CE000005','体会不错，考虑加盟0020',1),('EA000021','小超见面会参加信息0021','PC000011','CE000006','体会不错，考虑加盟0021',1),('EA000022','小超见面会参加信息0022','PC000011','CE000006','体会不错，考虑加盟0022',1),('EA000023','小超见面会参加信息0023','PC000012','CE000006','体会不错，考虑加盟0023',1),('EA000024','小超见面会参加信息0024','PC000012','CE000006','体会不错，考虑加盟0024',1),('EA000025','小超见面会参加信息0025','PC000013','CE000007','体会不错，考虑加盟0025',1),('EA000026','小超见面会参加信息0026','PC000013','CE000007','体会不错，考虑加盟0026',1),('EA000027','小超见面会参加信息0027','PC000014','CE000007','体会不错，考虑加盟0027',1),('EA000028','小超见面会参加信息0028','PC000014','CE000007','体会不错，考虑加盟0028',1),('EA000029','小超见面会参加信息0029','PC000015','CE000008','体会不错，考虑加盟0029',1),('EA000030','小超见面会参加信息0030','PC000015','CE000008','体会不错，考虑加盟0030',1),('EA000031','小超见面会参加信息0031','PC000016','CE000008','体会不错，考虑加盟0031',1),('EA000032','小超见面会参加信息0032','PC000016','CE000008','体会不错，考虑加盟0032',1),('EA000033','小超见面会参加信息','PC000001','CE000004','体会不错，考虑加盟1111',1);
/*!40000 ALTER TABLE `event_attendance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_action_data`
--

DROP TABLE IF EXISTS `form_action_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_action_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `label` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签',
  `locale_key` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '语言环境的关键',
  `action_key` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行动的关键',
  `level` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水平',
  `url` varchar(168) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'url',
  `form` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '形式',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_form_action` (`id`,`version`),
  KEY `fk4form_of_form_action_data` (`form`),
  CONSTRAINT `fk4form_of_form_action_data` FOREIGN KEY (`form`) REFERENCES `generic_form_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='表单动作';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_action_data`
--

LOCK TABLES `form_action_data` WRITE;
/*!40000 ALTER TABLE `form_action_data` DISABLE KEYS */;
INSERT INTO `form_action_data` VALUES ('FA000001','功能','name','save','default','genericFormManager/name/name0002/name0003/','GF000001',1),('FA000002','功能0002','name0002','update','warning','genericFormManager/name/name0002/name0003/0002','GF000001',1);
/*!40000 ALTER TABLE `form_action_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_field_data`
--

DROP TABLE IF EXISTS `form_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `label` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签',
  `locale_key` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '语言环境的关键',
  `parameter_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参数名称',
  `type` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `form` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '形式',
  `placeholder` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '占位符',
  `default_value` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '默认值',
  `description` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `field_group` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段组',
  `minimum_value` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最小值',
  `maximum_value` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最大值',
  `required` tinyint(4) DEFAULT NULL COMMENT '要求',
  `disabled` tinyint(4) DEFAULT NULL COMMENT '禁用',
  `custom_rendering` tinyint(4) DEFAULT NULL COMMENT '自定义渲染',
  `candidate_values` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '候选人的价值观',
  `suggest_values` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建议值',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_form_field` (`id`,`version`),
  KEY `fk4form_of_form_field_data` (`form`),
  CONSTRAINT `fk4form_of_form_field_data` FOREIGN KEY (`form`) REFERENCES `generic_form_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='表单字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_field_data`
--

LOCK TABLES `form_field_data` WRITE;
/*!40000 ALTER TABLE `form_field_data` DISABLE KEYS */;
INSERT INTO `form_field_data` VALUES ('FF000001','姓名','name','name','text','GF000001','姓名就是你身份证上的名字','李一一','姓名就是你身份证上的名字','基础信息','maybe any value','a value expression',1,1,1,'','',1),('FF000002','年龄','age','name0002','longtext','GF000001','姓名就是你身份证上的名字0002','李一一0002','姓名就是你身份证上的名字0002','扩展信息','maybe any value0002','a value expression0002',1,1,1,'','',1);
/*!40000 ALTER TABLE `form_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_field_message_data`
--

DROP TABLE IF EXISTS `form_field_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_message_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `parameter_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参数名称',
  `form` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '形式',
  `level` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水平',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_form_field_message` (`id`,`version`),
  KEY `fk4form_of_form_field_message_data` (`form`),
  CONSTRAINT `fk4form_of_form_field_message_data` FOREIGN KEY (`form`) REFERENCES `generic_form_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='表单字段的信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_field_message_data`
--

LOCK TABLES `form_field_message_data` WRITE;
/*!40000 ALTER TABLE `form_field_message_data` DISABLE KEYS */;
INSERT INTO `form_field_message_data` VALUES ('FFM000001','输入错误','name','GF000001','success',1),('FFM000002','输入错误0002','name0002','GF000001','info',1);
/*!40000 ALTER TABLE `form_field_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_message_data`
--

DROP TABLE IF EXISTS `form_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_message_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `form` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '形式',
  `level` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水平',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_form_message` (`id`,`version`),
  KEY `fk4form_of_form_message_data` (`form`),
  CONSTRAINT `fk4form_of_form_message_data` FOREIGN KEY (`form`) REFERENCES `generic_form_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='表单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_message_data`
--

LOCK TABLES `form_message_data` WRITE;
/*!40000 ALTER TABLE `form_message_data` DISABLE KEYS */;
INSERT INTO `form_message_data` VALUES ('FM000001','字段组合错误','GF000001','success',1),('FM000002','字段组合错误0002','GF000001','info',1);
/*!40000 ALTER TABLE `form_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_form_data`
--

DROP TABLE IF EXISTS `generic_form_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_form_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `description` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_generic_form` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通用的形式';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_form_data`
--

LOCK TABLES `generic_form_data` WRITE;
/*!40000 ALTER TABLE `generic_form_data` DISABLE KEYS */;
INSERT INTO `generic_form_data` VALUES ('GF000001','登记输入单','姓名就是你身份证上的名字',1);
/*!40000 ALTER TABLE `generic_form_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_allocation_data`
--

DROP TABLE IF EXISTS `goods_allocation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_allocation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(84) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `goods_shelf` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货架',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_allocation` (`id`,`version`),
  KEY `idx4latitude_of_goods_allocation` (`latitude`),
  KEY `idx4longitude_of_goods_allocation` (`longitude`),
  KEY `fk4goods_shelf_of_goods_allocation_data` (`goods_shelf`),
  CONSTRAINT `fk4goods_shelf_of_goods_allocation_data` FOREIGN KEY (`goods_shelf`) REFERENCES `goods_shelf_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_allocation_data`
--

LOCK TABLES `goods_allocation_data` WRITE;
/*!40000 ALTER TABLE `goods_allocation_data` DISABLE KEYS */;
INSERT INTO `goods_allocation_data` VALUES ('GA000001','成都龙泉驿飞鹤路20号存货区货架20号货位',42.690561,132.200587,'GS000001',1),('GA000002','成都龙泉驿飞鹤路20号存货区货架20号货位0002',41.979539,129.468638,'GS000001',1),('GA000003','成都龙泉驿飞鹤路20号存货区货架20号货位0003',40.472898,131.434046,'GS000002',1),('GA000004','成都龙泉驿飞鹤路20号存货区货架20号货位0004',41.519775,129.966940,'GS000002',1),('GA000005','成都龙泉驿飞鹤路20号存货区货架20号货位0005',41.151147,130.535881,'GS000003',1),('GA000006','成都龙泉驿飞鹤路20号存货区货架20号货位0006',40.218404,130.340004,'GS000003',1),('GA000007','成都龙泉驿飞鹤路20号存货区货架20号货位0007',40.367028,131.059302,'GS000004',1),('GA000008','成都龙泉驿飞鹤路20号存货区货架20号货位0008',41.601033,130.475107,'GS000004',1),('GA000009','成都龙泉驿飞鹤路20号存货区货架20号货位0009',40.750938,132.073254,'GS000005',1),('GA000010','成都龙泉驿飞鹤路20号存货区货架20号货位0010',41.025509,130.396838,'GS000005',1),('GA000011','成都龙泉驿飞鹤路20号存货区货架20号货位0011',41.047112,132.273327,'GS000006',1),('GA000012','成都龙泉驿飞鹤路20号存货区货架20号货位0012',40.306298,131.807921,'GS000006',1),('GA000013','成都龙泉驿飞鹤路20号存货区货架20号货位0013',40.458806,130.464530,'GS000007',1),('GA000014','成都龙泉驿飞鹤路20号存货区货架20号货位0014',40.385237,130.197263,'GS000007',1),('GA000015','成都龙泉驿飞鹤路20号存货区货架20号货位0015',41.669658,132.045682,'GS000008',1),('GA000016','成都龙泉驿飞鹤路20号存货区货架20号货位0016',41.279698,130.259716,'GS000008',1);
/*!40000 ALTER TABLE `goods_allocation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_data`
--

DROP TABLE IF EXISTS `goods_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `rfid` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RFID',
  `uom` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '计量单位',
  `max_package` int(11) DEFAULT NULL COMMENT '最大包装',
  `expire_time` date DEFAULT NULL COMMENT '到期时间',
  `sku` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SKU',
  `receiving_space` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收货区',
  `goods_allocation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货位',
  `smart_pallet` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '智能托盘',
  `shipping_space` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发货区',
  `transport_task` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运输任务',
  `retail_store` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '双链小超',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `retail_store_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生超的订单',
  `packaging` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '包装',
  `current_status` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods` (`id`,`version`),
  KEY `idx4max_package_of_goods` (`max_package`),
  KEY `idx4expire_time_of_goods` (`expire_time`),
  KEY `fk4sku_of_goods_data` (`sku`),
  KEY `fk4receiving_space_of_goods_data` (`receiving_space`),
  KEY `fk4goods_allocation_of_goods_data` (`goods_allocation`),
  KEY `fk4smart_pallet_of_goods_data` (`smart_pallet`),
  KEY `fk4shipping_space_of_goods_data` (`shipping_space`),
  KEY `fk4transport_task_of_goods_data` (`transport_task`),
  KEY `fk4retail_store_of_goods_data` (`retail_store`),
  KEY `fk4biz_order_of_goods_data` (`biz_order`),
  KEY `fk4retail_store_order_of_goods_data` (`retail_store_order`),
  CONSTRAINT `fk4biz_order_of_goods_data` FOREIGN KEY (`biz_order`) REFERENCES `supply_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4goods_allocation_of_goods_data` FOREIGN KEY (`goods_allocation`) REFERENCES `goods_allocation_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4receiving_space_of_goods_data` FOREIGN KEY (`receiving_space`) REFERENCES `receiving_space_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4retail_store_of_goods_data` FOREIGN KEY (`retail_store`) REFERENCES `retail_store_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4retail_store_order_of_goods_data` FOREIGN KEY (`retail_store_order`) REFERENCES `retail_store_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4shipping_space_of_goods_data` FOREIGN KEY (`shipping_space`) REFERENCES `shipping_space_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4sku_of_goods_data` FOREIGN KEY (`sku`) REFERENCES `sku_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4smart_pallet_of_goods_data` FOREIGN KEY (`smart_pallet`) REFERENCES `smart_pallet_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4transport_task_of_goods_data` FOREIGN KEY (`transport_task`) REFERENCES `transport_task_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_data`
--

LOCK TABLES `goods_data` WRITE;
/*!40000 ALTER TABLE `goods_data` DISABLE KEYS */;
INSERT INTO `goods_data` VALUES ('G000001','可口可乐','RF99192','件',10,'2019-05-15','S000001','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED',1),('G000002','可口可乐0002','RF991920002','箱',9,'2018-11-30','S000001','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0002',1),('G000003','可口可乐0003','RF991920003','件',8,'2019-01-04','S000002','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0003',1),('G000004','可口可乐0004','RF991920004','箱',10,'2018-02-25','S000002','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0004',1),('G000005','可口可乐0005','RF991920005','件',8,'2017-12-21','S000003','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0005',1),('G000006','可口可乐0006','RF991920006','箱',10,'2018-04-15','S000003','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0006',1),('G000007','可口可乐0007','RF991920007','件',10,'2018-03-28','S000004','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0007',1),('G000008','可口可乐0008','RF991920008','箱',10,'2019-03-28','S000004','RS000001','GA000001','SP000001','SS000001','TT000001','RS000001','SO000001','RSO000001',NULL,'PACKED0008',1),('G000009','可口可乐0009','RF991920009','件',10,'2019-06-13','S000005','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0009',1),('G000010','可口可乐0010','RF991920010','箱',9,'2018-04-29','S000005','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0010',1),('G000011','可口可乐0011','RF991920011','件',10,'2018-05-07','S000006','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0011',1),('G000012','可口可乐0012','RF991920012','箱',10,'2019-07-17','S000006','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0012',1),('G000013','可口可乐0013','RF991920013','件',8,'2018-03-22','S000007','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0013',1),('G000014','可口可乐0014','RF991920014','箱',10,'2019-04-01','S000007','RS000001','GA000002','SP000001','SS000001','TT000002','RS000001','SO000001','RSO000002',NULL,'PACKED0014',2),('G000015','可口可乐0015','RF991920015','件',9,'2018-02-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PACKED0015',2),('G000016','可口可乐0016','RF991920016','箱',8,'2017-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PACKED0016',2),('G000017','可口可乐0017','RF991920017','件',10,'2016-12-26','S000009','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0017',1),('G000018','可口可乐0018','RF991920018','箱',9,'2019-05-16','S000009','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0018',1),('G000019','可口可乐0019','RF991920019','件',9,'2018-12-18','S000010','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0019',1),('G000020','可口可乐0020','RF991920020','箱',9,'2018-10-17','S000010','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0020',1),('G000021','可口可乐0021','RF991920021','件',8,'2017-08-05','S000011','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0021',1),('G000022','可口可乐0022','RF991920022','箱',10,'2017-09-12','S000011','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0022',1),('G000023','可口可乐0023','RF991920023','件',10,'2018-11-22','S000012','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0023',1),('G000024','可口可乐0024','RF991920024','箱',8,'2016-12-16','S000012','RS000001','GA000003','SP000001','SS000001','TT000003','RS000002','SO000001','RSO000003',NULL,'PACKED0024',1),('G000025','可口可乐0025','RF991920025','件',8,'2018-07-11','S000013','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0025',1),('G000026','可口可乐0026','RF991920026','箱',10,'2019-08-11','S000013','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0026',1),('G000027','可口可乐0027','RF991920027','件',8,'2018-09-12','S000014','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0027',1),('G000028','可口可乐0028','RF991920028','箱',9,'2019-04-28','S000014','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0028',1),('G000029','可口可乐0029','RF991920029','件',9,'2018-11-07','S000015','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0029',1),('G000030','可口可乐0030','RF991920030','箱',10,'2017-04-25','S000015','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0030',1),('G000031','可口可乐0031','RF991920031','件',10,'2017-01-28','S000016','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000004',NULL,'PACKED0031',1),('G000032','薄膜','RF991920032','张',10,'2019-07-12','S000016','RS000001','GA000004','SP000001','SS000001','TT000004','RS000002','SO000001','RSO000005',NULL,'PACKED0032',5),('G000033','可口可乐0033','RF991920033','件',9,'2017-05-19','S000017','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0033',1),('G000034','可口可乐0034','RF991920034','箱',10,'2019-05-01','S000017','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0034',1),('G000035','可口可乐0035','RF991920035','件',8,'2019-06-09','S000018','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0035',1),('G000036','可口可乐0036','RF991920036','箱',9,'2019-05-06','S000018','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0036',1),('G000037','可口可乐0037','RF991920037','件',10,'2017-05-17','S000019','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0037',1),('G000038','可口可乐0038','RF991920038','箱',10,'2018-03-12','S000019','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0038',1),('G000039','可口可乐0039','RF991920039','件',9,'2017-04-27','S000020','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0039',1),('G000040','可口可乐0040','RF991920040','箱',8,'2018-12-28','S000020','RS000002','GA000005','SP000002','SS000002','TT000005','RS000003','SO000002','RSO000005',NULL,'PACKED0040',1),('G000041','可口可乐0041','RF991920041','件',10,'2018-01-17','S000021','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0041',1),('G000042','可口可乐0042','RF991920042','箱',8,'2017-03-07','S000021','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0042',1),('G000043','可口可乐0043','RF991920043','件',10,'2018-12-03','S000022','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0043',1),('G000044','可口可乐0044','RF991920044','箱',9,'2019-03-08','S000022','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0044',1),('G000045','可口可乐0045','RF991920045','件',9,'2019-09-08','S000023','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0045',1),('G000046','可口可乐0046','RF991920046','箱',10,'2018-09-05','S000023','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0046',1),('G000047','可口可乐0047','RF991920047','件',10,'2017-01-17','S000024','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0047',1),('G000048','可口可乐0048','RF991920048','箱',10,'2018-12-02','S000024','RS000002','GA000006','SP000002','SS000002','TT000006','RS000003','SO000002','RSO000006',NULL,'PACKED0048',1),('G000049','可口可乐0049','RF991920049','件',8,'2019-03-11','S000025','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0049',1),('G000050','可口可乐0050','RF991920050','箱',9,'2018-07-25','S000025','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0050',1),('G000051','可口可乐0051','RF991920051','件',8,'2018-06-28','S000026','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0051',1),('G000052','可口可乐0052','RF991920052','箱',8,'2017-09-18','S000026','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0052',1),('G000053','可口可乐0053','RF991920053','件',9,'2018-04-14','S000027','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0053',1),('G000054','可口可乐0054','RF991920054','箱',10,'2018-09-05','S000027','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0054',1),('G000055','可口可乐0055','RF991920055','件',8,'2019-09-16','S000028','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0055',1),('G000056','可口可乐0056','RF991920056','箱',10,'2019-10-17','S000028','RS000002','GA000007','SP000002','SS000002','TT000007','RS000004','SO000002','RSO000007',NULL,'PACKED0056',1),('G000057','可口可乐0057','RF991920057','件',9,'2019-09-22','S000029','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0057',1),('G000058','可口可乐0058','RF991920058','箱',10,'2019-04-09','S000029','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0058',1),('G000059','可口可乐0059','RF991920059','件',10,'2018-04-03','S000030','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0059',1),('G000060','可口可乐0060','RF991920060','箱',8,'2017-06-05','S000030','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0060',1),('G000061','可口可乐0061','RF991920061','件',8,'2017-04-24','S000031','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0061',1),('G000062','可口可乐0062','RF991920062','箱',10,'2017-01-04','S000031','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0062',1),('G000063','可口可乐0063','RF991920063','件',9,'2018-04-18','S000032','RS000002','GA000008','SP000002','SS000002','TT000008','RS000008','SO000002','RSO000008',NULL,'PACKED0063',3),('G000064','可口可乐0064','RF991920064','箱',8,'2018-06-15','S000032','RS000002','GA000008','SP000002','SS000002','TT000008','RS000004','SO000002','RSO000008',NULL,'PACKED0064',1),('G000065','可口可乐0065','RF991920065','件',10,'2019-06-08','S000033','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0065',1),('G000066','可口可乐0066','RF991920066','箱',10,'2016-11-26','S000033','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0066',1),('G000067','可口可乐0067','RF991920067','件',8,'2019-04-10','S000034','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0067',1),('G000068','可口可乐0068','RF991920068','箱',8,'2018-08-23','S000034','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0068',1),('G000069','可口可乐0069','RF991920069','件',9,'2017-07-17','S000035','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0069',1),('G000070','可口可乐0070','RF991920070','箱',10,'2019-04-06','S000035','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0070',1),('G000071','可口可乐0071','RF991920071','件',10,'2019-06-25','S000036','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0071',1),('G000072','可口可乐0072','RF991920072','箱',9,'2018-06-13','S000036','RS000003','GA000009','SP000003','SS000003','TT000009','RS000005','SO000003','RSO000009',NULL,'PACKED0072',1),('G000073','可口可乐0073','RF991920073','件',9,'2018-09-14','S000037','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0073',1),('G000074','可口可乐0074','RF991920074','箱',8,'2018-07-17','S000037','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0074',1),('G000075','可口可乐0075','RF991920075','件',8,'2019-02-10','S000038','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0075',1),('G000076','可口可乐0076','RF991920076','箱',8,'2019-05-09','S000038','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0076',1),('G000077','可口可乐0077','RF991920077','件',10,'2019-03-14','S000039','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0077',1),('G000078','可口可乐0078','RF991920078','箱',9,'2018-08-28','S000039','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0078',1),('G000079','可口可乐0079','RF991920079','件',10,'2017-01-12','S000040','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0079',1),('G000080','可口可乐0080','RF991920080','箱',10,'2019-10-03','S000040','RS000003','GA000010','SP000003','SS000003','TT000010','RS000005','SO000003','RSO000010',NULL,'PACKED0080',1),('G000081','可口可乐0081','RF991920081','件',9,'2018-10-15','S000041','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0081',1),('G000082','可口可乐0082','RF991920082','箱',9,'2019-03-05','S000041','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0082',1),('G000083','可口可乐0083','RF991920083','件',9,'2017-05-28','S000042','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0083',1),('G000084','可口可乐0084','RF991920084','箱',8,'2019-03-19','S000042','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0084',1),('G000085','可口可乐0085','RF991920085','件',8,'2017-02-01','S000043','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0085',1),('G000086','可口可乐0086','RF991920086','箱',9,'2017-06-02','S000043','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0086',1),('G000087','可口可乐0087','RF991920087','件',9,'2017-11-11','S000044','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0087',1),('G000088','可口可乐0088','RF991920088','箱',9,'2019-05-27','S000044','RS000003','GA000011','SP000003','SS000003','TT000011','RS000006','SO000003','RSO000011',NULL,'PACKED0088',1),('G000089','可口可乐0089','RF991920089','件',8,'2018-03-13','S000045','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0089',1),('G000090','可口可乐0090','RF991920090','箱',9,'2018-05-28','S000045','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0090',1),('G000091','可口可乐0091','RF991920091','件',8,'2017-11-02','S000046','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0091',1),('G000092','可口可乐0092','RF991920092','箱',8,'2017-02-27','S000046','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0092',1),('G000093','可口可乐0093','RF991920093','件',8,'2019-07-22','S000047','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0093',1),('G000094','可口可乐0094','RF991920094','箱',10,'2018-03-05','S000047','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0094',1),('G000095','可口可乐0095','RF991920095','件',9,'2017-04-28','S000048','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0095',1),('G000096','可口可乐0096','RF991920096','箱',9,'2018-06-16','S000048','RS000003','GA000012','SP000003','SS000003','TT000012','RS000006','SO000003','RSO000012',NULL,'PACKED0096',1),('G000097','可口可乐0097','RF991920097','件',9,'2018-08-11','S000049','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0097',1),('G000098','可口可乐0098','RF991920098','箱',10,'2016-11-24','S000049','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0098',1),('G000099','可口可乐0099','RF991920099','件',9,'2019-02-01','S000050','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0099',1),('G000100','可口可乐0100','RF991920100','箱',8,'2019-02-28','S000050','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0100',1),('G000101','可口可乐0101','RF991920101','件',9,'2017-10-16','S000051','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0101',1),('G000102','可口可乐0102','RF991920102','箱',10,'2016-11-06','S000051','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0102',1),('G000103','可口可乐0103','RF991920103','件',8,'2018-03-06','S000052','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0103',1),('G000104','可口可乐0104','RF991920104','箱',8,'2018-12-07','S000052','RS000004','GA000013','SP000004','SS000004','TT000013','RS000007','SO000004','RSO000013',NULL,'PACKED0104',1),('G000105','可口可乐0105','RF991920105','件',9,'2017-11-26','S000053','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0105',1),('G000106','可口可乐0106','RF991920106','箱',10,'2018-02-08','S000053','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0106',1),('G000107','可口可乐0107','RF991920107','件',8,'2017-03-17','S000054','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0107',1),('G000108','可口可乐0108','RF991920108','箱',9,'2018-08-16','S000054','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0108',1),('G000109','可口可乐0109','RF991920109','件',8,'2017-11-30','S000055','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0109',1),('G000110','可口可乐0110','RF991920110','箱',9,'2019-07-30','S000055','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0110',1),('G000111','可口可乐0111','RF991920111','件',10,'2019-10-09','S000056','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0111',1),('G000112','可口可乐0112','RF991920112','箱',9,'2018-01-17','S000056','RS000004','GA000014','SP000004','SS000004','TT000014','RS000007','SO000004','RSO000014',NULL,'PACKED0112',1),('G000113','可口可乐0113','RF991920113','件',9,'2018-09-21','S000057','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0113',1),('G000114','可口可乐0114','RF991920114','箱',10,'2018-09-27','S000057','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0114',1),('G000115','可口可乐0115','RF991920115','件',8,'2017-12-22','S000058','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0115',1),('G000116','可口可乐0116','RF991920116','箱',8,'2016-11-29','S000058','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0116',1),('G000117','可口可乐0117','RF991920117','件',9,'2017-06-05','S000059','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0117',1),('G000118','可口可乐0118','RF991920118','箱',8,'2019-02-17','S000059','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0118',1),('G000119','可口可乐0119','RF991920119','件',9,'2017-12-02','S000060','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0119',1),('G000120','可口可乐0120','RF991920120','箱',9,'2019-05-22','S000060','RS000004','GA000015','SP000004','SS000004','TT000015','RS000008','SO000004','RSO000015',NULL,'PACKED0120',1),('G000121','可口可乐0121','RF991920121','件',8,'2018-02-24','S000061','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0121',1),('G000122','可口可乐0122','RF991920122','箱',10,'2019-07-12','S000061','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0122',1),('G000123','可口可乐0123','RF991920123','件',10,'2018-09-01','S000062','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0123',1),('G000124','可口可乐0124','RF991920124','箱',8,'2019-07-09','S000062','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0124',1),('G000125','可口可乐0125','RF991920125','件',8,'2017-06-18','S000063','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0125',1),('G000126','可口可乐0126','RF991920126','箱',10,'2019-05-09','S000063','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0126',1),('G000127','可口可乐0127','RF991920127','件',9,'2016-12-18','S000064','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0127',1),('G000128','可口可乐0128','RF991920128','箱',10,'2017-06-22','S000064','RS000004','GA000016','SP000004','SS000004','TT000016','RS000008','SO000004','RSO000016',NULL,'PACKED0128',1);
/*!40000 ALTER TABLE `goods_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_movement_data`
--

DROP TABLE IF EXISTS `goods_movement_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_movement_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `move_time` datetime DEFAULT NULL COMMENT '移动时间',
  `facility` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设施',
  `facility_id` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备ID',
  `from_ip` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '从IP',
  `user_agent` varchar(444) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户代理',
  `session_id` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会话ID',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `goods` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_movement` (`id`,`version`),
  KEY `idx4move_time_of_goods_movement` (`move_time`),
  KEY `idx4facility_id_of_goods_movement` (`facility_id`),
  KEY `idx4session_id_of_goods_movement` (`session_id`),
  KEY `idx4latitude_of_goods_movement` (`latitude`),
  KEY `idx4longitude_of_goods_movement` (`longitude`),
  KEY `fk4goods_of_goods_movement_data` (`goods`),
  CONSTRAINT `fk4goods_of_goods_movement_data` FOREIGN KEY (`goods`) REFERENCES `goods_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货物移动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_movement_data`
--

LOCK TABLES `goods_movement_data` WRITE;
/*!40000 ALTER TABLE `goods_movement_data` DISABLE KEYS */;
INSERT INTO `goods_movement_data` VALUES ('GM000001','2019-10-23 08:25:23','仓库货位','仓库货位','192.168.20.1','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B405','FTYUIOLJYT^*(PLKJYT)',42.523409,131.150426,'G000001',1),('GM000002','2019-10-17 16:00:52','卡车','卡车','192.168.20.10002','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050002','FTYUIOLJYT^*(PLKJYT)0002',40.750225,130.142115,'G000001',1),('GM000003','2019-10-19 06:10:02','小超','小超','192.168.20.10003','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050003','FTYUIOLJYT^*(PLKJYT)0003',42.574791,130.819160,'G000002',1),('GM000004','2019-10-28 13:06:56','仓库货位','仓库货位','192.168.20.10004','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050004','FTYUIOLJYT^*(PLKJYT)0004',42.049941,129.803867,'G000002',1),('GM000005','2019-10-27 21:44:39','卡车','卡车','192.168.20.10005','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050005','FTYUIOLJYT^*(PLKJYT)0005',41.062733,129.612845,'G000003',1),('GM000006','2019-10-17 11:21:54','小超','小超','192.168.20.10006','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050006','FTYUIOLJYT^*(PLKJYT)0006',41.745660,131.132330,'G000003',1),('GM000007','2019-10-29 13:23:54','仓库货位','仓库货位','192.168.20.10007','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050007','FTYUIOLJYT^*(PLKJYT)0007',41.800487,130.769045,'G000004',1),('GM000008','2019-10-10 21:24:00','卡车','卡车','192.168.20.10008','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050008','FTYUIOLJYT^*(PLKJYT)0008',41.725128,131.637521,'G000004',1),('GM000009','2019-10-17 12:51:29','小超','小超','192.168.20.10009','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050009','FTYUIOLJYT^*(PLKJYT)0009',41.650661,129.662515,'G000005',1),('GM000010','2019-10-09 18:17:54','仓库货位','仓库货位','192.168.20.10010','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050010','FTYUIOLJYT^*(PLKJYT)0010',42.585866,130.398637,'G000005',1),('GM000011','2019-10-12 23:14:35','卡车','卡车','192.168.20.10011','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050011','FTYUIOLJYT^*(PLKJYT)0011',42.672079,130.761186,'G000006',1),('GM000012','2019-10-21 14:41:53','小超','小超','192.168.20.10012','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050012','FTYUIOLJYT^*(PLKJYT)0012',42.038636,129.313157,'G000006',1),('GM000013','2019-10-29 05:15:59','仓库货位','仓库货位','192.168.20.10013','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050013','FTYUIOLJYT^*(PLKJYT)0013',42.747721,131.924085,'G000007',1),('GM000014','2019-10-17 20:22:03','卡车','卡车','192.168.20.10014','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050014','FTYUIOLJYT^*(PLKJYT)0014',41.038086,130.317433,'G000007',1),('GM000015','2019-10-23 17:43:01','小超','小超','192.168.20.10015','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050015','FTYUIOLJYT^*(PLKJYT)0015',41.147006,130.531664,'G000008',1),('GM000016','2019-10-18 05:37:07','仓库货位','仓库货位','192.168.20.10016','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050016','FTYUIOLJYT^*(PLKJYT)0016',41.388026,131.038392,'G000008',1),('GM000017','2019-10-22 23:04:45','卡车','卡车','192.168.20.10017','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050017','FTYUIOLJYT^*(PLKJYT)0017',42.347402,131.979636,'G000009',1),('GM000018','2019-10-09 11:08:52','小超','小超','192.168.20.10018','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050018','FTYUIOLJYT^*(PLKJYT)0018',41.646690,129.918984,'G000009',1),('GM000019','2019-10-26 17:40:27','仓库货位','仓库货位','192.168.20.10019','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050019','FTYUIOLJYT^*(PLKJYT)0019',41.637255,131.916174,'G000010',1),('GM000020','2019-10-10 09:52:01','卡车','卡车','192.168.20.10020','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050020','FTYUIOLJYT^*(PLKJYT)0020',41.583408,129.410806,'G000010',1),('GM000021','2019-10-13 17:27:01','小超','小超','192.168.20.10021','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050021','FTYUIOLJYT^*(PLKJYT)0021',41.406255,131.301255,'G000011',1),('GM000022','2019-10-24 12:46:48','仓库货位','仓库货位','192.168.20.10022','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050022','FTYUIOLJYT^*(PLKJYT)0022',41.176319,130.052083,'G000011',1),('GM000023','2019-10-17 20:10:24','卡车','卡车','192.168.20.10023','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050023','FTYUIOLJYT^*(PLKJYT)0023',39.854931,131.973625,'G000012',1),('GM000024','2019-10-27 17:15:13','小超','小超','192.168.20.10024','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050024','FTYUIOLJYT^*(PLKJYT)0024',42.420468,131.744431,'G000012',1),('GM000025','2019-10-18 20:18:55','仓库货位','仓库货位','192.168.20.10025','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050025','FTYUIOLJYT^*(PLKJYT)0025',40.513625,131.748598,'G000013',1),('GM000026','2019-10-23 04:31:20','卡车','卡车','192.168.20.10026','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050026','FTYUIOLJYT^*(PLKJYT)0026',42.282042,129.544999,'G000013',1),('GM000027','2019-10-28 10:44:04','小超','小超','192.168.20.10027','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050027','FTYUIOLJYT^*(PLKJYT)0027',40.738641,129.477478,'G000014',1),('GM000028','2019-10-21 18:56:16','仓库货位','仓库货位','192.168.20.10028','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050028','FTYUIOLJYT^*(PLKJYT)0028',39.998368,129.429550,'G000014',1),('GM000029','2019-10-10 19:24:54','卡车','卡车','192.168.20.10029','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050029','FTYUIOLJYT^*(PLKJYT)0029',41.173570,130.581409,'G000015',1),('GM000030','2019-10-28 13:45:39','小超','小超','192.168.20.10030','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050030','FTYUIOLJYT^*(PLKJYT)0030',41.110908,131.525347,'G000015',1),('GM000031','2019-10-09 18:05:16','仓库货位','仓库货位','192.168.20.10031','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050031','FTYUIOLJYT^*(PLKJYT)0031',41.342546,131.948908,'G000016',1),('GM000032','2019-10-16 13:41:20','卡车','卡车','192.168.20.10032','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050032','FTYUIOLJYT^*(PLKJYT)0032',40.921910,131.919561,'G000016',1),('GM000033','2019-10-09 22:40:51','小超','小超','192.168.20.10033','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050033','FTYUIOLJYT^*(PLKJYT)0033',41.535439,132.143047,'G000017',1),('GM000034','2019-10-15 16:54:52','仓库货位','仓库货位','192.168.20.10034','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050034','FTYUIOLJYT^*(PLKJYT)0034',40.292193,130.619131,'G000017',1),('GM000035','2019-10-08 22:07:58','卡车','卡车','192.168.20.10035','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050035','FTYUIOLJYT^*(PLKJYT)0035',41.299470,129.502599,'G000018',1),('GM000036','2019-10-29 13:16:04','小超','小超','192.168.20.10036','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050036','FTYUIOLJYT^*(PLKJYT)0036',42.420998,132.261950,'G000018',1),('GM000037','2019-10-09 10:01:09','仓库货位','仓库货位','192.168.20.10037','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050037','FTYUIOLJYT^*(PLKJYT)0037',40.154688,131.108344,'G000019',1),('GM000038','2019-10-11 19:55:17','卡车','卡车','192.168.20.10038','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050038','FTYUIOLJYT^*(PLKJYT)0038',41.557832,129.588067,'G000019',1),('GM000039','2019-10-16 21:13:47','小超','小超','192.168.20.10039','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050039','FTYUIOLJYT^*(PLKJYT)0039',40.980129,131.903856,'G000020',1),('GM000040','2019-10-09 00:01:13','仓库货位','仓库货位','192.168.20.10040','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050040','FTYUIOLJYT^*(PLKJYT)0040',39.845160,130.194880,'G000020',1),('GM000041','2019-10-19 16:22:07','卡车','卡车','192.168.20.10041','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050041','FTYUIOLJYT^*(PLKJYT)0041',40.391855,131.457715,'G000021',1),('GM000042','2019-10-17 08:43:39','小超','小超','192.168.20.10042','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050042','FTYUIOLJYT^*(PLKJYT)0042',41.049951,132.084416,'G000021',1),('GM000043','2019-10-21 18:13:20','仓库货位','仓库货位','192.168.20.10043','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050043','FTYUIOLJYT^*(PLKJYT)0043',42.762606,130.394940,'G000022',1),('GM000044','2019-10-11 21:39:28','卡车','卡车','192.168.20.10044','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050044','FTYUIOLJYT^*(PLKJYT)0044',41.946991,131.716645,'G000022',1),('GM000045','2019-10-26 20:25:09','小超','小超','192.168.20.10045','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050045','FTYUIOLJYT^*(PLKJYT)0045',42.365279,131.139193,'G000023',1),('GM000046','2019-10-24 07:24:39','仓库货位','仓库货位','192.168.20.10046','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050046','FTYUIOLJYT^*(PLKJYT)0046',42.219087,130.603921,'G000023',1),('GM000047','2019-10-25 10:56:18','卡车','卡车','192.168.20.10047','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050047','FTYUIOLJYT^*(PLKJYT)0047',40.899389,131.038953,'G000024',1),('GM000048','2019-10-18 18:07:29','小超','小超','192.168.20.10048','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050048','FTYUIOLJYT^*(PLKJYT)0048',40.855679,129.702258,'G000024',1),('GM000049','2019-10-28 06:58:25','仓库货位','仓库货位','192.168.20.10049','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050049','FTYUIOLJYT^*(PLKJYT)0049',39.961958,131.711164,'G000025',1),('GM000050','2019-10-16 18:26:45','卡车','卡车','192.168.20.10050','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050050','FTYUIOLJYT^*(PLKJYT)0050',40.094632,130.400075,'G000025',1),('GM000051','2019-10-08 14:44:44','小超','小超','192.168.20.10051','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050051','FTYUIOLJYT^*(PLKJYT)0051',41.323805,131.551260,'G000026',1),('GM000052','2019-10-13 09:05:24','仓库货位','仓库货位','192.168.20.10052','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050052','FTYUIOLJYT^*(PLKJYT)0052',41.660298,130.589637,'G000026',1),('GM000053','2019-10-28 05:11:07','卡车','卡车','192.168.20.10053','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050053','FTYUIOLJYT^*(PLKJYT)0053',41.281113,130.120849,'G000027',1),('GM000054','2019-10-28 06:11:00','小超','小超','192.168.20.10054','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050054','FTYUIOLJYT^*(PLKJYT)0054',41.618196,131.086784,'G000027',1),('GM000055','2019-10-09 09:14:02','仓库货位','仓库货位','192.168.20.10055','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050055','FTYUIOLJYT^*(PLKJYT)0055',42.373412,131.841389,'G000028',1),('GM000056','2019-10-21 23:05:07','卡车','卡车','192.168.20.10056','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050056','FTYUIOLJYT^*(PLKJYT)0056',42.072412,129.387406,'G000028',1),('GM000057','2019-10-19 02:15:22','小超','小超','192.168.20.10057','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050057','FTYUIOLJYT^*(PLKJYT)0057',42.036356,130.167160,'G000029',1),('GM000058','2019-10-08 00:50:12','仓库货位','仓库货位','192.168.20.10058','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050058','FTYUIOLJYT^*(PLKJYT)0058',40.671028,129.901634,'G000029',1),('GM000059','2019-10-23 09:04:44','卡车','卡车','192.168.20.10059','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050059','FTYUIOLJYT^*(PLKJYT)0059',41.824931,130.772512,'G000030',1),('GM000060','2019-10-12 10:16:56','小超','小超','192.168.20.10060','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050060','FTYUIOLJYT^*(PLKJYT)0060',42.718530,131.267004,'G000030',1),('GM000061','2019-10-15 18:11:10','仓库货位','仓库货位','192.168.20.10061','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050061','FTYUIOLJYT^*(PLKJYT)0061',41.874988,132.121339,'G000031',1),('GM000062','2019-10-12 06:59:26','卡车','卡车','192.168.20.10062','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050062','FTYUIOLJYT^*(PLKJYT)0062',42.398306,131.128324,'G000031',1),('GM000063','2019-10-21 17:47:01','小超','小超','192.168.20.10063','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050063','FTYUIOLJYT^*(PLKJYT)0063',40.833491,131.961063,'G000032',1),('GM000064','2019-10-26 22:20:57','仓库货位','仓库货位','192.168.20.10064','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050064','FTYUIOLJYT^*(PLKJYT)0064',40.225304,131.793841,'G000032',1),('GM000065','2019-10-16 20:15:01','卡车','卡车','192.168.20.10065','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050065','FTYUIOLJYT^*(PLKJYT)0065',42.286827,129.434852,'G000033',1),('GM000066','2019-10-19 17:48:49','小超','小超','192.168.20.10066','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050066','FTYUIOLJYT^*(PLKJYT)0066',42.436042,129.984456,'G000033',1),('GM000067','2019-10-28 18:43:57','仓库货位','仓库货位','192.168.20.10067','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050067','FTYUIOLJYT^*(PLKJYT)0067',42.348519,129.785687,'G000034',1),('GM000068','2019-10-14 08:44:47','卡车','卡车','192.168.20.10068','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050068','FTYUIOLJYT^*(PLKJYT)0068',42.403882,131.425457,'G000034',1),('GM000069','2019-10-21 09:39:10','小超','小超','192.168.20.10069','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050069','FTYUIOLJYT^*(PLKJYT)0069',41.770066,130.451334,'G000035',1),('GM000070','2019-10-08 07:01:35','仓库货位','仓库货位','192.168.20.10070','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050070','FTYUIOLJYT^*(PLKJYT)0070',41.680524,131.369716,'G000035',1),('GM000071','2019-10-16 20:22:38','卡车','卡车','192.168.20.10071','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050071','FTYUIOLJYT^*(PLKJYT)0071',40.339278,131.152697,'G000036',1),('GM000072','2019-10-28 07:36:27','小超','小超','192.168.20.10072','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050072','FTYUIOLJYT^*(PLKJYT)0072',42.514661,131.259132,'G000036',1),('GM000073','2019-10-29 09:38:01','仓库货位','仓库货位','192.168.20.10073','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050073','FTYUIOLJYT^*(PLKJYT)0073',40.198058,130.557894,'G000037',1),('GM000074','2019-10-23 20:47:55','卡车','卡车','192.168.20.10074','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050074','FTYUIOLJYT^*(PLKJYT)0074',41.305645,131.239626,'G000037',1),('GM000075','2019-10-21 05:28:02','小超','小超','192.168.20.10075','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050075','FTYUIOLJYT^*(PLKJYT)0075',41.705110,131.974349,'G000038',1),('GM000076','2019-10-28 11:26:11','仓库货位','仓库货位','192.168.20.10076','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050076','FTYUIOLJYT^*(PLKJYT)0076',41.799719,131.147140,'G000038',1),('GM000077','2019-10-26 01:01:42','卡车','卡车','192.168.20.10077','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050077','FTYUIOLJYT^*(PLKJYT)0077',39.888498,131.260938,'G000039',1),('GM000078','2019-10-21 14:45:49','小超','小超','192.168.20.10078','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050078','FTYUIOLJYT^*(PLKJYT)0078',40.830157,132.021399,'G000039',1),('GM000079','2019-10-08 06:46:22','仓库货位','仓库货位','192.168.20.10079','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050079','FTYUIOLJYT^*(PLKJYT)0079',42.068644,131.756700,'G000040',1),('GM000080','2019-10-10 19:58:46','卡车','卡车','192.168.20.10080','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050080','FTYUIOLJYT^*(PLKJYT)0080',40.207512,131.214852,'G000040',1),('GM000081','2019-10-28 12:39:36','小超','小超','192.168.20.10081','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050081','FTYUIOLJYT^*(PLKJYT)0081',42.715389,131.252688,'G000041',1),('GM000082','2019-10-22 15:36:56','仓库货位','仓库货位','192.168.20.10082','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050082','FTYUIOLJYT^*(PLKJYT)0082',42.164806,131.421049,'G000041',1),('GM000083','2019-10-18 18:11:08','卡车','卡车','192.168.20.10083','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050083','FTYUIOLJYT^*(PLKJYT)0083',42.754738,132.165498,'G000042',1),('GM000084','2019-10-09 14:51:53','小超','小超','192.168.20.10084','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050084','FTYUIOLJYT^*(PLKJYT)0084',42.502999,131.515081,'G000042',1),('GM000085','2019-10-09 18:24:48','仓库货位','仓库货位','192.168.20.10085','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050085','FTYUIOLJYT^*(PLKJYT)0085',42.724258,130.646910,'G000043',1),('GM000086','2019-10-21 23:30:50','卡车','卡车','192.168.20.10086','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050086','FTYUIOLJYT^*(PLKJYT)0086',40.728498,132.184768,'G000043',1),('GM000087','2019-10-12 18:22:29','小超','小超','192.168.20.10087','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050087','FTYUIOLJYT^*(PLKJYT)0087',40.143661,129.941449,'G000044',1),('GM000088','2019-10-19 21:17:06','仓库货位','仓库货位','192.168.20.10088','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050088','FTYUIOLJYT^*(PLKJYT)0088',40.756122,132.031636,'G000044',1),('GM000089','2019-10-23 09:58:18','卡车','卡车','192.168.20.10089','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050089','FTYUIOLJYT^*(PLKJYT)0089',41.112469,131.205881,'G000045',1),('GM000090','2019-10-25 13:09:04','小超','小超','192.168.20.10090','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050090','FTYUIOLJYT^*(PLKJYT)0090',41.913057,130.872716,'G000045',1),('GM000091','2019-10-21 20:45:32','仓库货位','仓库货位','192.168.20.10091','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050091','FTYUIOLJYT^*(PLKJYT)0091',40.254009,132.070433,'G000046',1),('GM000092','2019-10-25 06:46:38','卡车','卡车','192.168.20.10092','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050092','FTYUIOLJYT^*(PLKJYT)0092',42.532671,129.505704,'G000046',1),('GM000093','2019-10-14 04:49:12','小超','小超','192.168.20.10093','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050093','FTYUIOLJYT^*(PLKJYT)0093',42.119099,131.555482,'G000047',1),('GM000094','2019-10-16 13:02:49','仓库货位','仓库货位','192.168.20.10094','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050094','FTYUIOLJYT^*(PLKJYT)0094',40.397834,131.479718,'G000047',1),('GM000095','2019-10-23 21:11:57','卡车','卡车','192.168.20.10095','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050095','FTYUIOLJYT^*(PLKJYT)0095',40.859112,131.679636,'G000048',1),('GM000096','2019-10-15 09:11:32','小超','小超','192.168.20.10096','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050096','FTYUIOLJYT^*(PLKJYT)0096',39.973821,130.600748,'G000048',1),('GM000097','2019-10-23 06:47:43','仓库货位','仓库货位','192.168.20.10097','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050097','FTYUIOLJYT^*(PLKJYT)0097',40.332721,132.091290,'G000049',1),('GM000098','2019-10-28 01:12:54','卡车','卡车','192.168.20.10098','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050098','FTYUIOLJYT^*(PLKJYT)0098',40.068346,131.795000,'G000049',1),('GM000099','2019-10-18 15:08:54','小超','小超','192.168.20.10099','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050099','FTYUIOLJYT^*(PLKJYT)0099',42.670144,131.727252,'G000050',1),('GM000100','2019-10-16 17:16:07','仓库货位','仓库货位','192.168.20.10100','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050100','FTYUIOLJYT^*(PLKJYT)0100',42.344222,129.744803,'G000050',1),('GM000101','2019-10-16 00:26:19','卡车','卡车','192.168.20.10101','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050101','FTYUIOLJYT^*(PLKJYT)0101',41.170512,131.515927,'G000051',1),('GM000102','2019-10-13 02:00:07','小超','小超','192.168.20.10102','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050102','FTYUIOLJYT^*(PLKJYT)0102',42.577305,130.731936,'G000051',1),('GM000103','2019-10-24 01:23:25','仓库货位','仓库货位','192.168.20.10103','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050103','FTYUIOLJYT^*(PLKJYT)0103',41.129933,132.181349,'G000052',1),('GM000104','2019-10-18 19:01:17','卡车','卡车','192.168.20.10104','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050104','FTYUIOLJYT^*(PLKJYT)0104',41.553302,131.593562,'G000052',1),('GM000105','2019-10-19 07:25:59','小超','小超','192.168.20.10105','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050105','FTYUIOLJYT^*(PLKJYT)0105',40.808540,129.716400,'G000053',1),('GM000106','2019-10-22 02:02:11','仓库货位','仓库货位','192.168.20.10106','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050106','FTYUIOLJYT^*(PLKJYT)0106',41.901830,131.478925,'G000053',1),('GM000107','2019-10-23 11:10:46','卡车','卡车','192.168.20.10107','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050107','FTYUIOLJYT^*(PLKJYT)0107',40.153419,132.042665,'G000054',1),('GM000108','2019-10-17 09:25:20','小超','小超','192.168.20.10108','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050108','FTYUIOLJYT^*(PLKJYT)0108',42.610513,131.443387,'G000054',1),('GM000109','2019-10-29 08:19:50','仓库货位','仓库货位','192.168.20.10109','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050109','FTYUIOLJYT^*(PLKJYT)0109',40.650625,129.990032,'G000055',1),('GM000110','2019-10-15 05:13:36','卡车','卡车','192.168.20.10110','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050110','FTYUIOLJYT^*(PLKJYT)0110',40.597301,132.223859,'G000055',1),('GM000111','2019-10-26 20:20:33','小超','小超','192.168.20.10111','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050111','FTYUIOLJYT^*(PLKJYT)0111',40.723992,130.256525,'G000056',1),('GM000112','2019-10-17 21:35:34','仓库货位','仓库货位','192.168.20.10112','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050112','FTYUIOLJYT^*(PLKJYT)0112',39.962540,132.090370,'G000056',1),('GM000113','2019-10-12 04:21:30','卡车','卡车','192.168.20.10113','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050113','FTYUIOLJYT^*(PLKJYT)0113',41.512108,129.458603,'G000057',1),('GM000114','2019-10-29 08:01:49','小超','小超','192.168.20.10114','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050114','FTYUIOLJYT^*(PLKJYT)0114',40.826277,131.387283,'G000057',1),('GM000115','2019-10-12 20:07:41','仓库货位','仓库货位','192.168.20.10115','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050115','FTYUIOLJYT^*(PLKJYT)0115',41.609390,130.280765,'G000058',1),('GM000116','2019-10-11 03:45:34','卡车','卡车','192.168.20.10116','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050116','FTYUIOLJYT^*(PLKJYT)0116',40.179071,130.579803,'G000058',1),('GM000117','2019-10-28 01:33:15','小超','小超','192.168.20.10117','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050117','FTYUIOLJYT^*(PLKJYT)0117',40.064922,129.872634,'G000059',1),('GM000118','2019-10-21 20:46:46','仓库货位','仓库货位','192.168.20.10118','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050118','FTYUIOLJYT^*(PLKJYT)0118',42.650030,131.763190,'G000059',1),('GM000119','2019-10-15 16:17:32','卡车','卡车','192.168.20.10119','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050119','FTYUIOLJYT^*(PLKJYT)0119',40.596619,129.829452,'G000060',1),('GM000120','2019-10-18 21:05:55','小超','小超','192.168.20.10120','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050120','FTYUIOLJYT^*(PLKJYT)0120',42.503494,132.019926,'G000060',1),('GM000121','2019-10-29 09:13:33','仓库货位','仓库货位','192.168.20.10121','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050121','FTYUIOLJYT^*(PLKJYT)0121',40.741754,129.901318,'G000061',1),('GM000122','2019-10-22 22:16:03','卡车','卡车','192.168.20.10122','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050122','FTYUIOLJYT^*(PLKJYT)0122',42.510723,130.711534,'G000061',1),('GM000123','2019-10-21 01:28:56','小超','小超','192.168.20.10123','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050123','FTYUIOLJYT^*(PLKJYT)0123',40.562323,130.096413,'G000062',1),('GM000124','2019-10-19 16:35:03','仓库货位','仓库货位','192.168.20.10124','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050124','FTYUIOLJYT^*(PLKJYT)0124',41.365990,130.144542,'G000062',1),('GM000125','2019-10-29 01:32:08','卡车','卡车','192.168.20.10125','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050125','FTYUIOLJYT^*(PLKJYT)0125',42.229712,129.428369,'G000063',1),('GM000126','2019-10-08 14:43:32','小超','小超','192.168.20.10126','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050126','FTYUIOLJYT^*(PLKJYT)0126',40.303920,131.572897,'G000063',1),('GM000127','2019-10-22 21:50:08','仓库货位','仓库货位','192.168.20.10127','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050127','FTYUIOLJYT^*(PLKJYT)0127',40.393284,129.577955,'G000064',1),('GM000128','2019-10-27 15:35:17','卡车','卡车','192.168.20.10128','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050128','FTYUIOLJYT^*(PLKJYT)0128',42.068744,130.601111,'G000064',1),('GM000129','2019-10-16 03:42:14','小超','小超','192.168.20.10129','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050129','FTYUIOLJYT^*(PLKJYT)0129',41.897746,131.330164,'G000065',1),('GM000130','2019-10-24 11:52:54','仓库货位','仓库货位','192.168.20.10130','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050130','FTYUIOLJYT^*(PLKJYT)0130',40.944034,130.783370,'G000065',1),('GM000131','2019-10-29 13:13:52','卡车','卡车','192.168.20.10131','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050131','FTYUIOLJYT^*(PLKJYT)0131',40.251226,131.460901,'G000066',1),('GM000132','2019-10-28 15:42:09','小超','小超','192.168.20.10132','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050132','FTYUIOLJYT^*(PLKJYT)0132',40.496597,131.014132,'G000066',1),('GM000133','2019-10-26 00:53:23','仓库货位','仓库货位','192.168.20.10133','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050133','FTYUIOLJYT^*(PLKJYT)0133',41.997228,131.699806,'G000067',1),('GM000134','2019-10-27 10:27:56','卡车','卡车','192.168.20.10134','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050134','FTYUIOLJYT^*(PLKJYT)0134',41.859522,131.756577,'G000067',1),('GM000135','2019-10-29 04:38:01','小超','小超','192.168.20.10135','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050135','FTYUIOLJYT^*(PLKJYT)0135',39.936834,129.419944,'G000068',1),('GM000136','2019-10-10 17:14:54','仓库货位','仓库货位','192.168.20.10136','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050136','FTYUIOLJYT^*(PLKJYT)0136',41.881228,129.728160,'G000068',1),('GM000137','2019-10-15 01:50:18','卡车','卡车','192.168.20.10137','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050137','FTYUIOLJYT^*(PLKJYT)0137',42.251433,130.499336,'G000069',1),('GM000138','2019-10-12 02:03:04','小超','小超','192.168.20.10138','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050138','FTYUIOLJYT^*(PLKJYT)0138',40.420053,129.469868,'G000069',1),('GM000139','2019-10-11 04:15:00','仓库货位','仓库货位','192.168.20.10139','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050139','FTYUIOLJYT^*(PLKJYT)0139',41.149891,129.577539,'G000070',1),('GM000140','2019-10-24 12:24:31','卡车','卡车','192.168.20.10140','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050140','FTYUIOLJYT^*(PLKJYT)0140',41.353039,130.770528,'G000070',1),('GM000141','2019-10-16 07:18:24','小超','小超','192.168.20.10141','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050141','FTYUIOLJYT^*(PLKJYT)0141',40.507290,130.172100,'G000071',1),('GM000142','2019-10-19 04:43:38','仓库货位','仓库货位','192.168.20.10142','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050142','FTYUIOLJYT^*(PLKJYT)0142',39.894551,130.843118,'G000071',1),('GM000143','2019-10-25 13:57:42','卡车','卡车','192.168.20.10143','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050143','FTYUIOLJYT^*(PLKJYT)0143',41.265691,129.319959,'G000072',1),('GM000144','2019-10-22 14:39:42','小超','小超','192.168.20.10144','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050144','FTYUIOLJYT^*(PLKJYT)0144',42.252214,129.990817,'G000072',1),('GM000145','2019-10-25 11:51:41','仓库货位','仓库货位','192.168.20.10145','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050145','FTYUIOLJYT^*(PLKJYT)0145',40.461649,129.828333,'G000073',1),('GM000146','2019-10-24 11:59:11','卡车','卡车','192.168.20.10146','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050146','FTYUIOLJYT^*(PLKJYT)0146',41.166960,130.431126,'G000073',1),('GM000147','2019-10-14 23:31:49','小超','小超','192.168.20.10147','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050147','FTYUIOLJYT^*(PLKJYT)0147',41.852354,131.634830,'G000074',1),('GM000148','2019-10-25 07:12:53','仓库货位','仓库货位','192.168.20.10148','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050148','FTYUIOLJYT^*(PLKJYT)0148',40.938947,131.532406,'G000074',1),('GM000149','2019-10-18 06:54:26','卡车','卡车','192.168.20.10149','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050149','FTYUIOLJYT^*(PLKJYT)0149',40.094413,132.229341,'G000075',1),('GM000150','2019-10-11 22:09:28','小超','小超','192.168.20.10150','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050150','FTYUIOLJYT^*(PLKJYT)0150',41.095735,130.664542,'G000075',1),('GM000151','2019-10-16 21:33:54','仓库货位','仓库货位','192.168.20.10151','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050151','FTYUIOLJYT^*(PLKJYT)0151',42.539431,129.638388,'G000076',1),('GM000152','2019-10-13 13:01:53','卡车','卡车','192.168.20.10152','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050152','FTYUIOLJYT^*(PLKJYT)0152',41.142698,129.770865,'G000076',1),('GM000153','2019-10-12 11:08:52','小超','小超','192.168.20.10153','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050153','FTYUIOLJYT^*(PLKJYT)0153',42.342259,129.939207,'G000077',1),('GM000154','2019-10-20 20:57:38','仓库货位','仓库货位','192.168.20.10154','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050154','FTYUIOLJYT^*(PLKJYT)0154',42.093520,129.869296,'G000077',1),('GM000155','2019-10-28 17:13:30','卡车','卡车','192.168.20.10155','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050155','FTYUIOLJYT^*(PLKJYT)0155',42.015183,131.994887,'G000078',1),('GM000156','2019-10-15 19:48:51','小超','小超','192.168.20.10156','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050156','FTYUIOLJYT^*(PLKJYT)0156',42.721334,131.614764,'G000078',1),('GM000157','2019-10-26 12:04:49','仓库货位','仓库货位','192.168.20.10157','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050157','FTYUIOLJYT^*(PLKJYT)0157',41.729285,129.687743,'G000079',1),('GM000158','2019-10-25 12:38:58','卡车','卡车','192.168.20.10158','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050158','FTYUIOLJYT^*(PLKJYT)0158',41.225126,129.570949,'G000079',1),('GM000159','2019-10-13 03:52:42','小超','小超','192.168.20.10159','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050159','FTYUIOLJYT^*(PLKJYT)0159',39.878127,130.995999,'G000080',1),('GM000160','2019-10-19 02:09:08','仓库货位','仓库货位','192.168.20.10160','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050160','FTYUIOLJYT^*(PLKJYT)0160',41.063345,129.606400,'G000080',1),('GM000161','2019-10-14 21:02:05','卡车','卡车','192.168.20.10161','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050161','FTYUIOLJYT^*(PLKJYT)0161',42.134790,132.194486,'G000081',1),('GM000162','2019-10-23 10:12:45','小超','小超','192.168.20.10162','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050162','FTYUIOLJYT^*(PLKJYT)0162',39.874872,131.147917,'G000081',1),('GM000163','2019-10-19 03:51:30','仓库货位','仓库货位','192.168.20.10163','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050163','FTYUIOLJYT^*(PLKJYT)0163',39.797988,131.164749,'G000082',1),('GM000164','2019-10-10 03:33:29','卡车','卡车','192.168.20.10164','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050164','FTYUIOLJYT^*(PLKJYT)0164',41.259884,130.583233,'G000082',1),('GM000165','2019-10-09 17:24:34','小超','小超','192.168.20.10165','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050165','FTYUIOLJYT^*(PLKJYT)0165',40.623514,130.440827,'G000083',1),('GM000166','2019-10-16 12:31:58','仓库货位','仓库货位','192.168.20.10166','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050166','FTYUIOLJYT^*(PLKJYT)0166',41.818525,130.736468,'G000083',1),('GM000167','2019-10-17 12:52:14','卡车','卡车','192.168.20.10167','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050167','FTYUIOLJYT^*(PLKJYT)0167',41.951881,129.376447,'G000084',1),('GM000168','2019-10-15 13:18:59','小超','小超','192.168.20.10168','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050168','FTYUIOLJYT^*(PLKJYT)0168',40.598159,129.765285,'G000084',1),('GM000169','2019-10-23 02:48:37','仓库货位','仓库货位','192.168.20.10169','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050169','FTYUIOLJYT^*(PLKJYT)0169',41.290020,130.645913,'G000085',1),('GM000170','2019-10-25 13:09:51','卡车','卡车','192.168.20.10170','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050170','FTYUIOLJYT^*(PLKJYT)0170',40.350504,130.410451,'G000085',1),('GM000171','2019-10-08 01:28:03','小超','小超','192.168.20.10171','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050171','FTYUIOLJYT^*(PLKJYT)0171',40.993578,131.648247,'G000086',1),('GM000172','2019-10-09 10:32:06','仓库货位','仓库货位','192.168.20.10172','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050172','FTYUIOLJYT^*(PLKJYT)0172',40.883789,130.019515,'G000086',1),('GM000173','2019-10-19 15:30:07','卡车','卡车','192.168.20.10173','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050173','FTYUIOLJYT^*(PLKJYT)0173',40.376543,132.001774,'G000087',1),('GM000174','2019-10-26 13:22:22','小超','小超','192.168.20.10174','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050174','FTYUIOLJYT^*(PLKJYT)0174',40.963683,130.060108,'G000087',1),('GM000175','2019-10-24 18:10:13','仓库货位','仓库货位','192.168.20.10175','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050175','FTYUIOLJYT^*(PLKJYT)0175',39.886950,129.939420,'G000088',1),('GM000176','2019-10-22 08:08:06','卡车','卡车','192.168.20.10176','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050176','FTYUIOLJYT^*(PLKJYT)0176',40.587025,130.719170,'G000088',1),('GM000177','2019-10-24 20:22:50','小超','小超','192.168.20.10177','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050177','FTYUIOLJYT^*(PLKJYT)0177',41.512452,130.554186,'G000089',1),('GM000178','2019-10-28 21:46:48','仓库货位','仓库货位','192.168.20.10178','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050178','FTYUIOLJYT^*(PLKJYT)0178',41.957090,131.076939,'G000089',1),('GM000179','2019-10-25 06:13:49','卡车','卡车','192.168.20.10179','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050179','FTYUIOLJYT^*(PLKJYT)0179',40.789148,131.526083,'G000090',1),('GM000180','2019-10-23 05:31:57','小超','小超','192.168.20.10180','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050180','FTYUIOLJYT^*(PLKJYT)0180',39.826286,131.064344,'G000090',1),('GM000181','2019-10-22 22:19:24','仓库货位','仓库货位','192.168.20.10181','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050181','FTYUIOLJYT^*(PLKJYT)0181',40.793656,131.478074,'G000091',1),('GM000182','2019-10-25 03:54:06','卡车','卡车','192.168.20.10182','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050182','FTYUIOLJYT^*(PLKJYT)0182',42.255927,129.915437,'G000091',1),('GM000183','2019-10-27 12:56:12','小超','小超','192.168.20.10183','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050183','FTYUIOLJYT^*(PLKJYT)0183',40.804857,131.767066,'G000092',1),('GM000184','2019-10-08 18:27:48','仓库货位','仓库货位','192.168.20.10184','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050184','FTYUIOLJYT^*(PLKJYT)0184',41.752283,131.959497,'G000092',1),('GM000185','2019-10-09 17:43:40','卡车','卡车','192.168.20.10185','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050185','FTYUIOLJYT^*(PLKJYT)0185',42.571573,129.389821,'G000093',1),('GM000186','2019-10-09 06:42:20','小超','小超','192.168.20.10186','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050186','FTYUIOLJYT^*(PLKJYT)0186',41.668826,131.847667,'G000093',1),('GM000187','2019-10-26 19:08:29','仓库货位','仓库货位','192.168.20.10187','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050187','FTYUIOLJYT^*(PLKJYT)0187',41.849924,131.361779,'G000094',1),('GM000188','2019-10-20 20:10:08','卡车','卡车','192.168.20.10188','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050188','FTYUIOLJYT^*(PLKJYT)0188',40.977049,130.554383,'G000094',1),('GM000189','2019-10-16 17:51:08','小超','小超','192.168.20.10189','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050189','FTYUIOLJYT^*(PLKJYT)0189',42.253968,132.263653,'G000095',1),('GM000190','2019-10-15 16:25:20','仓库货位','仓库货位','192.168.20.10190','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050190','FTYUIOLJYT^*(PLKJYT)0190',39.778876,129.752973,'G000095',1),('GM000191','2019-10-12 01:43:49','卡车','卡车','192.168.20.10191','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050191','FTYUIOLJYT^*(PLKJYT)0191',40.060915,129.516371,'G000096',1),('GM000192','2019-10-22 10:24:29','小超','小超','192.168.20.10192','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050192','FTYUIOLJYT^*(PLKJYT)0192',41.304484,131.346888,'G000096',1),('GM000193','2019-10-14 03:27:50','仓库货位','仓库货位','192.168.20.10193','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050193','FTYUIOLJYT^*(PLKJYT)0193',40.133798,131.975322,'G000097',1),('GM000194','2019-10-10 13:01:13','卡车','卡车','192.168.20.10194','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050194','FTYUIOLJYT^*(PLKJYT)0194',42.667936,129.592768,'G000097',1),('GM000195','2019-10-24 15:53:37','小超','小超','192.168.20.10195','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050195','FTYUIOLJYT^*(PLKJYT)0195',41.166659,131.781143,'G000098',1),('GM000196','2019-10-13 17:52:35','仓库货位','仓库货位','192.168.20.10196','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050196','FTYUIOLJYT^*(PLKJYT)0196',40.162609,130.319455,'G000098',1),('GM000197','2019-10-29 16:51:48','卡车','卡车','192.168.20.10197','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050197','FTYUIOLJYT^*(PLKJYT)0197',41.257305,129.483620,'G000099',1),('GM000198','2019-10-15 06:01:05','小超','小超','192.168.20.10198','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050198','FTYUIOLJYT^*(PLKJYT)0198',42.707895,129.309207,'G000099',1),('GM000199','2019-10-16 18:26:46','仓库货位','仓库货位','192.168.20.10199','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050199','FTYUIOLJYT^*(PLKJYT)0199',41.998549,130.700131,'G000100',1),('GM000200','2019-10-19 20:00:37','卡车','卡车','192.168.20.10200','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050200','FTYUIOLJYT^*(PLKJYT)0200',39.812497,130.935327,'G000100',1),('GM000201','2019-10-29 10:59:36','小超','小超','192.168.20.10201','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050201','FTYUIOLJYT^*(PLKJYT)0201',40.619021,131.178800,'G000101',1),('GM000202','2019-10-24 04:50:13','仓库货位','仓库货位','192.168.20.10202','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050202','FTYUIOLJYT^*(PLKJYT)0202',40.717989,131.256642,'G000101',1),('GM000203','2019-10-23 06:31:41','卡车','卡车','192.168.20.10203','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050203','FTYUIOLJYT^*(PLKJYT)0203',41.858393,129.822917,'G000102',1),('GM000204','2019-10-15 06:13:31','小超','小超','192.168.20.10204','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050204','FTYUIOLJYT^*(PLKJYT)0204',42.614929,129.956527,'G000102',1),('GM000205','2019-10-09 20:50:50','仓库货位','仓库货位','192.168.20.10205','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050205','FTYUIOLJYT^*(PLKJYT)0205',40.528891,131.976801,'G000103',1),('GM000206','2019-10-28 19:06:06','卡车','卡车','192.168.20.10206','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050206','FTYUIOLJYT^*(PLKJYT)0206',41.883950,129.926165,'G000103',1),('GM000207','2019-10-27 07:22:03','小超','小超','192.168.20.10207','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050207','FTYUIOLJYT^*(PLKJYT)0207',41.785840,131.069192,'G000104',1),('GM000208','2019-10-24 10:46:42','仓库货位','仓库货位','192.168.20.10208','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050208','FTYUIOLJYT^*(PLKJYT)0208',40.373106,131.962539,'G000104',1),('GM000209','2019-10-19 08:35:33','卡车','卡车','192.168.20.10209','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050209','FTYUIOLJYT^*(PLKJYT)0209',41.835660,130.319205,'G000105',1),('GM000210','2019-10-18 02:35:05','小超','小超','192.168.20.10210','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050210','FTYUIOLJYT^*(PLKJYT)0210',41.962704,130.656127,'G000105',1),('GM000211','2019-10-20 06:48:23','仓库货位','仓库货位','192.168.20.10211','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050211','FTYUIOLJYT^*(PLKJYT)0211',41.871878,131.908261,'G000106',1),('GM000212','2019-10-23 13:15:57','卡车','卡车','192.168.20.10212','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050212','FTYUIOLJYT^*(PLKJYT)0212',42.038320,131.146839,'G000106',1),('GM000213','2019-10-22 23:52:28','小超','小超','192.168.20.10213','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050213','FTYUIOLJYT^*(PLKJYT)0213',40.810734,129.351200,'G000107',1),('GM000214','2019-10-11 05:38:21','仓库货位','仓库货位','192.168.20.10214','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050214','FTYUIOLJYT^*(PLKJYT)0214',40.455513,132.235405,'G000107',1),('GM000215','2019-10-12 02:12:01','卡车','卡车','192.168.20.10215','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050215','FTYUIOLJYT^*(PLKJYT)0215',40.650687,129.318591,'G000108',1),('GM000216','2019-10-16 09:03:47','小超','小超','192.168.20.10216','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050216','FTYUIOLJYT^*(PLKJYT)0216',40.865276,129.447977,'G000108',1),('GM000217','2019-10-12 00:18:51','仓库货位','仓库货位','192.168.20.10217','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050217','FTYUIOLJYT^*(PLKJYT)0217',39.898117,131.193314,'G000109',1),('GM000218','2019-10-23 14:36:22','卡车','卡车','192.168.20.10218','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050218','FTYUIOLJYT^*(PLKJYT)0218',42.622874,129.801307,'G000109',1),('GM000219','2019-10-28 04:16:14','小超','小超','192.168.20.10219','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050219','FTYUIOLJYT^*(PLKJYT)0219',42.269074,130.026728,'G000110',1),('GM000220','2019-10-26 04:46:47','仓库货位','仓库货位','192.168.20.10220','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050220','FTYUIOLJYT^*(PLKJYT)0220',41.434835,131.332596,'G000110',1),('GM000221','2019-10-28 23:49:13','卡车','卡车','192.168.20.10221','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050221','FTYUIOLJYT^*(PLKJYT)0221',42.218638,129.397564,'G000111',1),('GM000222','2019-10-14 11:10:52','小超','小超','192.168.20.10222','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050222','FTYUIOLJYT^*(PLKJYT)0222',40.436183,132.210362,'G000111',1),('GM000223','2019-10-13 12:32:43','仓库货位','仓库货位','192.168.20.10223','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050223','FTYUIOLJYT^*(PLKJYT)0223',41.580995,131.090278,'G000112',1),('GM000224','2019-10-14 09:27:15','卡车','卡车','192.168.20.10224','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050224','FTYUIOLJYT^*(PLKJYT)0224',41.824216,129.589817,'G000112',1),('GM000225','2019-10-19 18:01:47','小超','小超','192.168.20.10225','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050225','FTYUIOLJYT^*(PLKJYT)0225',42.680553,129.384651,'G000113',1),('GM000226','2019-10-20 15:18:31','仓库货位','仓库货位','192.168.20.10226','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050226','FTYUIOLJYT^*(PLKJYT)0226',39.814092,132.117870,'G000113',1),('GM000227','2019-10-12 20:32:40','卡车','卡车','192.168.20.10227','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050227','FTYUIOLJYT^*(PLKJYT)0227',40.544136,129.486388,'G000114',1),('GM000228','2019-10-08 01:07:13','小超','小超','192.168.20.10228','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050228','FTYUIOLJYT^*(PLKJYT)0228',42.598300,130.319621,'G000114',1),('GM000229','2019-10-21 04:08:58','仓库货位','仓库货位','192.168.20.10229','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050229','FTYUIOLJYT^*(PLKJYT)0229',41.793715,130.896189,'G000115',1),('GM000230','2019-10-20 13:02:20','卡车','卡车','192.168.20.10230','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050230','FTYUIOLJYT^*(PLKJYT)0230',42.775671,130.340949,'G000115',1),('GM000231','2019-10-18 20:16:16','小超','小超','192.168.20.10231','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050231','FTYUIOLJYT^*(PLKJYT)0231',42.306295,131.995053,'G000116',1),('GM000232','2019-10-28 08:11:12','仓库货位','仓库货位','192.168.20.10232','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050232','FTYUIOLJYT^*(PLKJYT)0232',42.220421,129.902374,'G000116',1),('GM000233','2019-10-25 23:30:48','卡车','卡车','192.168.20.10233','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050233','FTYUIOLJYT^*(PLKJYT)0233',40.810882,132.264477,'G000117',1),('GM000234','2019-10-22 17:29:49','小超','小超','192.168.20.10234','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050234','FTYUIOLJYT^*(PLKJYT)0234',41.457913,131.699927,'G000117',1),('GM000235','2019-10-23 06:02:31','仓库货位','仓库货位','192.168.20.10235','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050235','FTYUIOLJYT^*(PLKJYT)0235',41.161270,131.325754,'G000118',1),('GM000236','2019-10-15 08:31:43','卡车','卡车','192.168.20.10236','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050236','FTYUIOLJYT^*(PLKJYT)0236',39.937150,132.122382,'G000118',1),('GM000237','2019-10-26 04:28:47','小超','小超','192.168.20.10237','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050237','FTYUIOLJYT^*(PLKJYT)0237',41.627340,131.602137,'G000119',1),('GM000238','2019-10-19 01:08:13','仓库货位','仓库货位','192.168.20.10238','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050238','FTYUIOLJYT^*(PLKJYT)0238',41.291805,130.434316,'G000119',1),('GM000239','2019-10-18 17:14:43','卡车','卡车','192.168.20.10239','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050239','FTYUIOLJYT^*(PLKJYT)0239',40.127209,130.126399,'G000120',1),('GM000240','2019-10-25 03:32:18','小超','小超','192.168.20.10240','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050240','FTYUIOLJYT^*(PLKJYT)0240',41.178833,131.785338,'G000120',1),('GM000241','2019-10-21 19:41:03','仓库货位','仓库货位','192.168.20.10241','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050241','FTYUIOLJYT^*(PLKJYT)0241',40.958899,131.845017,'G000121',1),('GM000242','2019-10-24 19:31:42','卡车','卡车','192.168.20.10242','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050242','FTYUIOLJYT^*(PLKJYT)0242',41.009115,129.472188,'G000121',1),('GM000243','2019-10-24 22:38:07','小超','小超','192.168.20.10243','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050243','FTYUIOLJYT^*(PLKJYT)0243',41.254899,132.235170,'G000122',1),('GM000244','2019-10-28 00:48:32','仓库货位','仓库货位','192.168.20.10244','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050244','FTYUIOLJYT^*(PLKJYT)0244',40.036211,131.117791,'G000122',1),('GM000245','2019-10-15 13:31:38','卡车','卡车','192.168.20.10245','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050245','FTYUIOLJYT^*(PLKJYT)0245',40.688425,130.944012,'G000123',1),('GM000246','2019-10-16 03:28:36','小超','小超','192.168.20.10246','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050246','FTYUIOLJYT^*(PLKJYT)0246',42.561218,129.295676,'G000123',1),('GM000247','2019-10-10 03:16:50','仓库货位','仓库货位','192.168.20.10247','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050247','FTYUIOLJYT^*(PLKJYT)0247',39.909153,129.288841,'G000124',1),('GM000248','2019-10-13 10:24:12','卡车','卡车','192.168.20.10248','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050248','FTYUIOLJYT^*(PLKJYT)0248',40.423286,129.966240,'G000124',1),('GM000249','2019-10-14 16:42:33','小超','小超','192.168.20.10249','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050249','FTYUIOLJYT^*(PLKJYT)0249',41.922438,130.395079,'G000125',1),('GM000250','2019-10-29 15:19:15','仓库货位','仓库货位','192.168.20.10250','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050250','FTYUIOLJYT^*(PLKJYT)0250',40.471729,129.890411,'G000125',1),('GM000251','2019-10-29 07:38:48','卡车','卡车','192.168.20.10251','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050251','FTYUIOLJYT^*(PLKJYT)0251',40.183517,130.585313,'G000126',1),('GM000252','2019-10-10 11:26:54','小超','小超','192.168.20.10252','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050252','FTYUIOLJYT^*(PLKJYT)0252',42.117591,129.324194,'G000126',1),('GM000253','2019-10-26 03:02:45','仓库货位','仓库货位','192.168.20.10253','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050253','FTYUIOLJYT^*(PLKJYT)0253',41.231939,129.721456,'G000127',1),('GM000254','2019-10-18 17:08:50','卡车','卡车','192.168.20.10254','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050254','FTYUIOLJYT^*(PLKJYT)0254',42.616374,129.293100,'G000127',1),('GM000255','2019-10-12 08:57:42','小超','小超','192.168.20.10255','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050255','FTYUIOLJYT^*(PLKJYT)0255',42.306697,130.913506,'G000128',1),('GM000256','2019-10-28 15:37:38','仓库货位','仓库货位','192.168.20.10256','Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B4050256','FTYUIOLJYT^*(PLKJYT)0256',39.981389,132.007562,'G000128',1);
/*!40000 ALTER TABLE `goods_movement_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_packaging_data`
--

DROP TABLE IF EXISTS `goods_packaging_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_packaging_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `package_name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '包的名字',
  `rfid` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RFID',
  `package_time` date DEFAULT NULL COMMENT '包的时间',
  `description` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_packaging` (`id`,`version`),
  KEY `idx4package_time_of_goods_packaging` (`package_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货物包装';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_packaging_data`
--

LOCK TABLES `goods_packaging_data` WRITE;
/*!40000 ALTER TABLE `goods_packaging_data` DISABLE KEYS */;
INSERT INTO `goods_packaging_data` VALUES ('GP000001','王煜东','RF99192','2017-03-16','打包完成，准备起运',1);
/*!40000 ALTER TABLE `goods_packaging_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_shelf_data`
--

DROP TABLE IF EXISTS `goods_shelf_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_shelf_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `storage_space` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存货区',
  `supplier_space` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商的空间',
  `damage_space` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残次货物存放区',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_shelf` (`id`,`version`),
  KEY `idx4last_update_time_of_goods_shelf` (`last_update_time`),
  KEY `fk4storage_space_of_goods_shelf_data` (`storage_space`),
  KEY `fk4supplier_space_of_goods_shelf_data` (`supplier_space`),
  KEY `fk4damage_space_of_goods_shelf_data` (`damage_space`),
  CONSTRAINT `fk4damage_space_of_goods_shelf_data` FOREIGN KEY (`damage_space`) REFERENCES `damage_space_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4storage_space_of_goods_shelf_data` FOREIGN KEY (`storage_space`) REFERENCES `storage_space_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4supplier_space_of_goods_shelf_data` FOREIGN KEY (`supplier_space`) REFERENCES `supplier_space_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货架';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_shelf_data`
--

LOCK TABLES `goods_shelf_data` WRITE;
/*!40000 ALTER TABLE `goods_shelf_data` DISABLE KEYS */;
INSERT INTO `goods_shelf_data` VALUES ('GS000001','成都龙泉驿飞鹤路20号存货区货架','SS000001','SS000001','DS000001','2019-10-26 23:23:33',1),('GS000002','成都龙泉驿飞鹤路20号存货区货架0002','SS000001','SS000001','DS000001','2019-10-27 15:14:24',1),('GS000003','成都龙泉驿飞鹤路20号存货区货架0003','SS000002','SS000002','DS000002','2019-10-25 04:40:58',1),('GS000004','成都龙泉驿飞鹤路20号存货区货架0004','SS000002','SS000002','DS000002','2019-10-08 22:21:27',2),('GS000005','成都龙泉驿飞鹤路20号存货区货架0005','SS000003','SS000003','DS000003','2019-10-21 13:50:39',1),('GS000006','成都龙泉驿飞鹤路20号存货区货架0006','SS000003','SS000003','DS000003','2019-10-09 09:08:40',1),('GS000007','成都龙泉驿飞鹤路20号存货区货架0007','SS000004','SS000004','DS000004','2019-10-08 15:05:18',1),('GS000008','成都龙泉驿飞鹤路20号存货区货架0008','SS000004','SS000004','DS000004','2019-10-13 03:16:52',1);
/*!40000 ALTER TABLE `goods_shelf_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_shelf_stock_count_data`
--

DROP TABLE IF EXISTS `goods_shelf_stock_count_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_shelf_stock_count_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `count_time` date DEFAULT NULL COMMENT '计数时间',
  `summary` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '概览',
  `shelf` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '架',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_shelf_stock_count` (`id`,`version`),
  KEY `idx4count_time_of_goods_shelf_stock_count` (`count_time`),
  KEY `fk4shelf_of_goods_shelf_stock_count_data` (`shelf`),
  CONSTRAINT `fk4shelf_of_goods_shelf_stock_count_data` FOREIGN KEY (`shelf`) REFERENCES `goods_shelf_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='货架库存盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_shelf_stock_count_data`
--

LOCK TABLES `goods_shelf_stock_count_data` WRITE;
/*!40000 ALTER TABLE `goods_shelf_stock_count_data` DISABLE KEYS */;
INSERT INTO `goods_shelf_stock_count_data` VALUES ('GSSC000001','每日盘点','2019-09-11','使用先进的rfid技术，没有任何错误','GS000001',1),('GSSC000002','每周盘点','2018-06-18','使用先进的rfid技术，没有任何错误0002','GS000001',1),('GSSC000003','每月盘点','2018-12-05','使用先进的rfid技术，没有任何错误0003','GS000002',1),('GSSC000004','年终盘点','2017-07-08','使用先进的rfid技术，没有任何错误0004','GS000002',1),('GSSC000005','每日盘点','2016-11-20','使用先进的rfid技术，没有任何错误0005','GS000003',1),('GSSC000006','每周盘点','2017-05-09','使用先进的rfid技术，没有任何错误0006','GS000003',1),('GSSC000007','每月盘点','2019-01-15','使用先进的rfid技术，没有任何错误0007','GS000004',1),('GSSC000008','年终盘点','2018-04-03','使用先进的rfid技术，没有任何错误0008','GS000004',1),('GSSC000009','每日盘点','2017-08-31','使用先进的rfid技术，没有任何错误0009','GS000005',1),('GSSC000010','每周盘点','2017-07-15','使用先进的rfid技术，没有任何错误0010','GS000005',1),('GSSC000011','每月盘点','2017-10-15','使用先进的rfid技术，没有任何错误0011','GS000006',1),('GSSC000012','年终盘点','2017-11-08','使用先进的rfid技术，没有任何错误0012','GS000006',1),('GSSC000013','每日盘点','2018-06-15','使用先进的rfid技术，没有任何错误0013','GS000007',1),('GSSC000014','每周盘点','2018-09-13','使用先进的rfid技术，没有任何错误0014','GS000007',1),('GSSC000015','每月盘点','2017-06-27','使用先进的rfid技术，没有任何错误0015','GS000008',1),('GSSC000016','年终盘点','2019-03-08','使用先进的rfid技术，没有任何错误0016','GS000008',1);
/*!40000 ALTER TABLE `goods_shelf_stock_count_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_supplier_data`
--

DROP TABLE IF EXISTS `goods_supplier_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_supplier_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `supply_product` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应产品',
  `belong_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `description` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_goods_supplier` (`id`,`version`),
  KEY `idx4contact_number_of_goods_supplier` (`contact_number`),
  KEY `idx4last_update_time_of_goods_supplier` (`last_update_time`),
  KEY `fk4belong_to_of_goods_supplier_data` (`belong_to`),
  CONSTRAINT `fk4belong_to_of_goods_supplier_data` FOREIGN KEY (`belong_to`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_supplier_data`
--

LOCK TABLES `goods_supplier_data` WRITE;
/*!40000 ALTER TABLE `goods_supplier_data` DISABLE KEYS */;
INSERT INTO `goods_supplier_data` VALUES ('GS000001','宝洁','洗护用品',NULL,'18677889999','啤酒饮料矿泉水，香肠瓜子方便面都提供','2019-10-21 16:08:53',2),('GS000002','中粮','食品',NULL,'13900000002','啤酒饮料矿泉水，香肠瓜子方便面都提供0002','2019-10-27 00:35:22',2),('GS000003','林先生','888',NULL,'13665989895','林先生家的猫','2019-12-02 14:58:43',2),('GS000004','周勇','ggg',NULL,'15666794049','fgfgfg','2020-02-27 23:20:19',2),('GS000005','王朔1','卢本伟一',NULL,'13335183886','非常好的系统','2020-04-06 11:34:39',4),('GS000006','五常县五常县','五常县五常县','RSCC000001','13506005824','蒂法蒂法五常县五常县','2020-05-11 15:16:37',1),('GS000007','test1','test1','RSCC000001','17711111111','test1','2020-06-30 17:59:06',1),('GS000008','金瑞','薄膜','RSCC000001','13789288881','各种薄膜方方面面提供','2020-07-31 10:21:30',1),('GS000009','东集数码','pda,平板电脑','RSCC000001','13900000001','质量还不错','2020-08-01 23:46:58',1);
/*!40000 ALTER TABLE `goods_supplier_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_interview_data`
--

DROP TABLE IF EXISTS `hr_interview_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr_interview_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `interview_time` date DEFAULT NULL COMMENT '面试时间',
  `comments` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_hr_interview` (`id`,`version`),
  KEY `idx4interview_time_of_hr_interview` (`interview_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='人力资源部面试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_interview_data`
--

LOCK TABLES `hr_interview_data` WRITE;
/*!40000 ALTER TABLE `hr_interview_data` DISABLE KEYS */;
INSERT INTO `hr_interview_data` VALUES ('HI000001','人力资源部','2017-05-12','软技能，责任感，气质不错啊',1);
/*!40000 ALTER TABLE `hr_interview_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_lines`
--

DROP TABLE IF EXISTS `info_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_lines` (
  `line` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_lines`
--

LOCK TABLES `info_lines` WRITE;
/*!40000 ALTER TABLE `info_lines` DISABLE KEYS */;
INSERT INTO `info_lines` VALUES ('   SSSSSSSSSSSSSSS                                                                                                                  !!! '),(' SS:::::::::::::::S                                                                                                                !!:!!'),('S:::::SSSSSS::::::S                                                                                                                !:::!'),('S:::::S     SSSSSSS                                                                                                                !:::!'),('S:::::S            uuuuuu    uuuuuu      cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeee        ssssssssss       ssssssssss   !:::!'),('S:::::S            u::::u    u::::u    cc:::::::::::::::c  cc:::::::::::::::c  ee::::::::::::ee    ss::::::::::s    ss::::::::::s  !:::!'),(' S::::SSSS         u::::u    u::::u   c:::::::::::::::::c c:::::::::::::::::c e::::::eeeee:::::eess:::::::::::::s ss:::::::::::::s !:::!'),('  SS::::::SSSSS    u::::u    u::::u  c:::::::cccccc:::::cc:::::::cccccc:::::ce::::::e     e:::::es::::::ssss:::::ss::::::ssss:::::s!:::!'),('    SSS::::::::SS  u::::u    u::::u  c::::::c     cccccccc::::::c     ccccccce:::::::eeeee::::::e s:::::s  ssssss  s:::::s  ssssss !:::!'),('       SSSSSS::::S u::::u    u::::u  c:::::c             c:::::c             e:::::::::::::::::e    s::::::s         s::::::s      !:::!'),('            S:::::Su::::u    u::::u  c:::::c             c:::::c             e::::::eeeeeeeeeee        s::::::s         s::::::s   !!:!!'),('            S:::::Su:::::uuuu:::::u  c::::::c     cccccccc::::::c     ccccccce:::::::e           ssssss   s:::::s ssssss   s:::::s  !!! '),('SSSSSSS     S:::::Su:::::::::::::::uuc:::::::cccccc:::::cc:::::::cccccc:::::ce::::::::e          s:::::ssss::::::ss:::::ssss::::::s     '),('S::::::SSSSSS:::::S u:::::::::::::::u c:::::::::::::::::c c:::::::::::::::::c e::::::::eeeeeeee  s::::::::::::::s s::::::::::::::s  !!! '),('S:::::::::::::::SS   uu::::::::uu:::u  cc:::::::::::::::c  cc:::::::::::::::c  ee:::::::::::::e   s:::::::::::ss   s:::::::::::ss  !!:!!'),(' SSSSSSSSSSSSSSS       uuuuuuuu  uuuu    cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeeeee    sssssssssss      sssssssssss     !!! ');
/*!40000 ALTER TABLE `info_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_data`
--

DROP TABLE IF EXISTS `instructor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `family_name` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓',
  `given_name` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名',
  `cell_phone` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `introduction` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '介绍',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_instructor` (`id`,`version`),
  KEY `idx4cell_phone_of_instructor` (`cell_phone`),
  KEY `idx4last_update_time_of_instructor` (`last_update_time`),
  KEY `fk4company_of_instructor_data` (`company`),
  CONSTRAINT `fk4company_of_instructor_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='讲师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_data`
--

LOCK TABLES `instructor_data` WRITE;
/*!40000 ALTER TABLE `instructor_data` DISABLE KEYS */;
INSERT INTO `instructor_data` VALUES ('I000001','高级讲师','张','文强','18699990000','instructor@gmail.com',NULL,'这是一个长长长长长长长长的介绍','2019-10-27 04:24:28',2),('I000002','高级讲师0002','王','大伟','13900000002','2@qq.com',NULL,'这是一个长长长长长长长长的介绍0002','2019-10-13 08:27:18',2),('I000003','护肤讲师','陈','文','13333333333','13333333333@163.com','RSCC000001','皮肤科学士学位','2020-05-08 21:49:51',2);
/*!40000 ALTER TABLE `instructor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_type_data`
--

DROP TABLE IF EXISTS `interview_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `detail_description` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_interview_type` (`id`,`version`),
  KEY `fk4company_of_interview_type_data` (`company`),
  CONSTRAINT `fk4company_of_interview_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='面试类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_type_data`
--

LOCK TABLES `interview_type_data` WRITE;
/*!40000 ALTER TABLE `interview_type_data` DISABLE KEYS */;
INSERT INTO `interview_type_data` VALUES ('IT000001','INTRVW00','RSCC000001','特别情况面试','故事还得从遥远的古代开始.................................................',1),('IT000002','INTRVW000002','RSCC000001','离职面试','故事还得从遥远的古代开始.................................................0002',1);
/*!40000 ALTER TABLE `interview_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_application_data`
--

DROP TABLE IF EXISTS `job_application_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_application_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `application_time` date DEFAULT NULL COMMENT '申请时间',
  `who` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_job_application` (`id`,`version`),
  KEY `idx4application_time_of_job_application` (`application_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工作申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_application_data`
--

LOCK TABLES `job_application_data` WRITE;
/*!40000 ALTER TABLE `job_application_data` DISABLE KEYS */;
INSERT INTO `job_application_data` VALUES ('JA000001','2017-02-03','申请者本人','我觉得我符合职位要求，请给我一个机会为公司发展做出贡献，谢谢！',1);
/*!40000 ALTER TABLE `job_application_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keypair_identity_data`
--

DROP TABLE IF EXISTS `keypair_identity_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keypair_identity_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `public_key` longtext COLLATE utf8mb4_unicode_ci,
  `key_type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sec_user` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keypair_identity_data`
--

LOCK TABLES `keypair_identity_data` WRITE;
/*!40000 ALTER TABLE `keypair_identity_data` DISABLE KEYS */;
INSERT INTO `keypair_identity_data` VALUES ('KI000001','ssssssssssssssssssss','sdsdd','SU000018','2020-07-19 23:21:41',1);
/*!40000 ALTER TABLE `keypair_identity_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_type_data`
--

DROP TABLE IF EXISTS `leave_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `detail_description` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_leave_type` (`id`,`version`),
  KEY `fk4company_of_leave_type_data` (`company`),
  CONSTRAINT `fk4company_of_leave_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='请假类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_type_data`
--

LOCK TABLES `leave_type_data` WRITE;
/*!40000 ALTER TABLE `leave_type_data` DISABLE KEYS */;
INSERT INTO `leave_type_data` VALUES ('LT000001','LT0000','RSCC000001','带薪年假','故事还得从遥远的古代开始.................................................',1),('LT000002','LT00000002','RSCC000001','病假','故事还得从遥远的古代开始.................................................0002',1);
/*!40000 ALTER TABLE `leave_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_one_category_data`
--

DROP TABLE IF EXISTS `level_one_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_one_category_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `catalog` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目录',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_one_category` (`id`,`version`),
  KEY `fk4catalog_of_level_one_category_data` (`catalog`),
  CONSTRAINT `fk4catalog_of_level_one_category_data` FOREIGN KEY (`catalog`) REFERENCES `catalog_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='一级分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_one_category_data`
--

LOCK TABLES `level_one_category_data` WRITE;
/*!40000 ALTER TABLE `level_one_category_data` DISABLE KEYS */;
INSERT INTO `level_one_category_data` VALUES ('LOC000001','C000001','水果蔬菜',1),('LOC000002','C000001','肉禽蛋奶',1),('LOC000003','C000002','冷热速食',1),('LOC000004','C000002','休闲食品',2),('LOC000005','C000004','美容彩妆',2),('LOC000006','C000006','dawa',2),('LOC000007','C000007','测试',1),('LOC000008','C000007','侧撒是的',1),('LOC000009','C000010','产品',1);
/*!40000 ALTER TABLE `level_one_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_one_department_data`
--

DROP TABLE IF EXISTS `level_one_department_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_one_department_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `manager` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经理',
  `founded` date DEFAULT NULL COMMENT '成立',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_one_department` (`id`,`version`),
  KEY `idx4founded_of_level_one_department` (`founded`),
  KEY `fk4belongs_to_of_level_one_department_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_level_one_department_data` FOREIGN KEY (`belongs_to`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='一级部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_one_department_data`
--

LOCK TABLES `level_one_department_data` WRITE;
/*!40000 ALTER TABLE `level_one_department_data` DISABLE KEYS */;
INSERT INTO `level_one_department_data` VALUES ('LOD000001',NULL,'供应链部','主要执行集团信息系统建设，维护，规划','刘强','2018-03-30',2),('LOD000002',NULL,'采购部','主要执行集团信息系统建设，维护，规划0002','王大锤2','2017-05-25',4),('LOD000003','RSCC000001','运行中心销售部','运行中心销售部','张勇','2020-04-01',2),('LOD000004','RSCC000001','product_id','sdgfgd','fdsgf','2020-06-25',1),('LOD000005','RSCC000001','product_id','描述222','fdsgf','2020-06-25',2);
/*!40000 ALTER TABLE `level_one_department_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_three_category_data`
--

DROP TABLE IF EXISTS `level_three_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_three_category_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `parent_category` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父类',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_three_category` (`id`,`version`),
  KEY `fk4parent_category_of_level_three_category_data` (`parent_category`),
  CONSTRAINT `fk4parent_category_of_level_three_category_data` FOREIGN KEY (`parent_category`) REFERENCES `level_two_category_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='三级分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_three_category_data`
--

LOCK TABLES `level_three_category_data` WRITE;
/*!40000 ALTER TABLE `level_three_category_data` DISABLE KEYS */;
INSERT INTO `level_three_category_data` VALUES ('LTC000001','LTC000001','水果蔬菜',1),('LTC000002','LTC000001','肉禽蛋奶',1),('LTC000003','LTC000002','冷热速食',1),('LTC000004','LTC000002','休闲食品',1),('LTC000005','LTC000003','酒水饮料',1),('LTC000006','LTC000003','粮油调味',1),('LTC000007','LTC000004','清洁日化',1),('LTC000008','LTC000004','家居用品',1),('LTC000009','LTC000005','鲜花蛋糕',1),('LTC000010','LTC000005','医药健康',1),('LTC000011','LTC000006','水果蔬菜',1),('LTC000012','LTC000006','肉禽蛋奶',1),('LTC000013','LTC000007','冷热速食',1),('LTC000014','LTC000007','休闲食品',1),('LTC000015','LTC000008','酒水饮料',1),('LTC000016','LTC000008','粮油调味',1),('LTC000017','LTC000016','唇妆',1),('LTC000018','LTC000016','眼妆',1),('LTC000019','LTC000016','精油',1),('LTC000020','LTC000016','美甲',1),('LTC000021','LTC000016','美容工具',1),('LTC000022','LTC000016','香水',1),('LTC000023','LTC000016','面部彩妆',1),('LTC000024','LTC000016','底妆',1),('LTC000025','LTC000016','彩妆套装',1);
/*!40000 ALTER TABLE `level_three_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_three_department_data`
--

DROP TABLE IF EXISTS `level_three_department_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_three_department_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `name` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `founded` date DEFAULT NULL COMMENT '成立',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_three_department` (`id`,`version`),
  KEY `idx4founded_of_level_three_department` (`founded`),
  KEY `fk4belongs_to_of_level_three_department_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_level_three_department_data` FOREIGN KEY (`belongs_to`) REFERENCES `level_two_department_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='三级部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_three_department_data`
--

LOCK TABLES `level_three_department_data` WRITE;
/*!40000 ALTER TABLE `level_three_department_data` DISABLE KEYS */;
INSERT INTO `level_three_department_data` VALUES ('LTD000001','LTD000001','信息系统部大数据清洗组','主要执行集团信息系统建设，维护，规划','2019-05-11',1),('LTD000002','LTD000001','信息系统部大数据运算组','主要执行集团信息系统建设，维护，规划0002','2019-04-20',1),('LTD000003','LTD000002','信息系统部大数据解决方案组','主要执行集团信息系统建设，维护，规划0003','2017-09-30',1),('LTD000004','LTD000002','信息系统部大数据清洗组','主要执行集团信息系统建设，维护，规划0004','2019-09-10',1),('LTD000005','LTD000003','信息系统部大数据运算组','主要执行集团信息系统建设，维护，规划0005','2017-05-19',1),('LTD000006','LTD000003','信息系统部大数据解决方案组','主要执行集团信息系统建设，维护，规划0006','2019-02-18',1),('LTD000007','LTD000004','信息系统部大数据清洗组','主要执行集团信息系统建设，维护，规划0007','2018-09-09',1),('LTD000008','LTD000004','信息系统部大数据运算组','主要执行集团信息系统建设，维护，规划0008','2019-08-16',1);
/*!40000 ALTER TABLE `level_three_department_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_two_category_data`
--

DROP TABLE IF EXISTS `level_two_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_two_category_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `parent_category` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父类',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_two_category` (`id`,`version`),
  KEY `fk4parent_category_of_level_two_category_data` (`parent_category`),
  CONSTRAINT `fk4parent_category_of_level_two_category_data` FOREIGN KEY (`parent_category`) REFERENCES `level_one_category_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='二级分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_two_category_data`
--

LOCK TABLES `level_two_category_data` WRITE;
/*!40000 ALTER TABLE `level_two_category_data` DISABLE KEYS */;
INSERT INTO `level_two_category_data` VALUES ('LTC000001','LOC000001','水果蔬菜',1),('LTC000002','LOC000001','肉禽蛋奶',1),('LTC000003','LOC000002','冷热速食',1),('LTC000004','LOC000002','休闲食品',1),('LTC000005','LOC000003','酒水饮料',1),('LTC000006','LOC000003','粮油调味',1),('LTC000007','LOC000004','清洁日化',1),('LTC000008','LOC000004','家居用品',1),('LTC000009','LOC000005','美容护肤',3),('LTC000010',NULL,'面膜',2),('LTC000011',NULL,'洗面奶',2),('LTC000012',NULL,'眼霜',2),('LTC000013',NULL,'香水',2),('LTC000014','LOC000005','男士护肤',2),('LTC000015','LOC000005','身体护理',2),('LTC000016','LOC000005','彩妆香氛',2),('LTC000017','LOC000009','撒大声地',1);
/*!40000 ALTER TABLE `level_two_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_two_department_data`
--

DROP TABLE IF EXISTS `level_two_department_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_two_department_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `founded` date DEFAULT NULL COMMENT '成立',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_level_two_department` (`id`,`version`),
  KEY `idx4founded_of_level_two_department` (`founded`),
  KEY `fk4belongs_to_of_level_two_department_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_level_two_department_data` FOREIGN KEY (`belongs_to`) REFERENCES `level_one_department_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='二级部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_two_department_data`
--

LOCK TABLES `level_two_department_data` WRITE;
/*!40000 ALTER TABLE `level_two_department_data` DISABLE KEYS */;
INSERT INTO `level_two_department_data` VALUES ('LTD000001','LOD000001','信息系统部大数据部门','主要执行集团信息系统建设，维护，规划','2018-05-05',1),('LTD000002','LOD000001','信息系统部大数据部门0002','主要执行集团信息系统建设，维护，规划0002','2017-05-05',1),('LTD000003','LOD000002','信息系统部大数据部门0003','主要执行集团信息系统建设，维护，规划0003','2019-08-17',1),('LTD000004','LOD000002','信息系统部大数据部门0004','主要执行集团信息系统建设，维护，规划0004','2017-04-07',1);
/*!40000 ALTER TABLE `level_two_department_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_access_data`
--

DROP TABLE IF EXISTS `list_access_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_access_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `internal_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内部名称',
  `read_permission` tinyint(4) DEFAULT NULL COMMENT '读权限',
  `create_permission` tinyint(4) DEFAULT NULL COMMENT '创建权限',
  `delete_permission` tinyint(4) DEFAULT NULL COMMENT '删除权限',
  `update_permission` tinyint(4) DEFAULT NULL COMMENT '更新权限',
  `execution_permission` tinyint(4) DEFAULT NULL COMMENT '执行权限',
  `app` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_list_access` (`id`,`version`),
  KEY `fk4app_of_list_access_data` (`app`),
  CONSTRAINT `fk4app_of_list_access_data` FOREIGN KEY (`app`) REFERENCES `user_app_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='访问列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_access_data`
--

LOCK TABLES `list_access_data` WRITE;
/*!40000 ALTER TABLE `list_access_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_access_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history_data`
--

DROP TABLE IF EXISTS `login_history_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_history_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `from_ip` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '从IP',
  `description` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `sec_user` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SEC的用户',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_login_history` (`id`,`version`),
  KEY `idx4login_time_of_login_history` (`login_time`),
  KEY `fk4sec_user_of_login_history_data` (`sec_user`),
  CONSTRAINT `fk4sec_user_of_login_history_data` FOREIGN KEY (`sec_user`) REFERENCES `sec_user_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录历史';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history_data`
--

LOCK TABLES `login_history_data` WRITE;
/*!40000 ALTER TABLE `login_history_data` DISABLE KEYS */;
INSERT INTO `login_history_data` VALUES ('LH000001','2020-08-01 09:30:28','113.104.212.13','成功登陆','SU000004',1),('LH000002','2020-08-01 09:39:58','113.201.134.219','成功登陆','SU000012',1),('LH000003','2020-08-01 12:25:04','220.129.63.72','成功登陆','SU000021',1),('LH000004','2020-08-01 14:42:25','122.245.9.82','成功登陆','SU000012',1),('LH000005','2020-08-01 14:44:45','39.88.231.169','成功登陆','SU000012',1),('LH000006','2020-08-01 14:46:29','39.88.231.169','成功登陆','SU000006',1),('LH000007','2020-08-01 15:27:49','220.248.121.99','密码错误','SU000001',1),('LH000008','2020-08-01 15:28:14','220.248.121.99','成功登陆','SU000001',1),('LH000009','2020-08-01 15:37:40','111.61.159.16','成功登陆','SU000012',1),('LH000010','2020-08-01 17:31:31','183.213.177.219','成功登陆','SU000001',1),('LH000011','2020-08-01 17:33:55','183.213.177.219','成功登陆','SU000002',1),('LH000012','2020-08-01 20:19:55','223.73.84.181','成功登陆','SU000001',1),('LH000013','2020-08-01 21:11:00','223.104.3.136','成功登陆','SU000009',1),('LH000014','2020-08-01 21:40:57','120.244.140.210','成功登陆','SU000011',1),('LH000015','2020-08-01 21:42:17','120.244.140.210','成功登陆','SU000012',1),('LH000016','2020-08-01 21:43:22','120.244.140.210','成功登陆','SU000001',1),('LH000017','2020-08-01 23:49:03','103.138.53.156','成功登陆','SU000006',1),('LH000018','2020-08-01 23:50:25','120.244.140.210','成功登陆','SU000002',1),('LH000019','2020-08-01 23:50:59','120.244.140.210','成功登陆','SU000003',1),('LH000020','2020-08-01 23:51:30','120.244.140.210','成功登陆','SU000009',1),('LH000021','2020-08-01 23:52:43','120.244.140.210','成功登陆','SU000021',1);
/*!40000 ALTER TABLE `login_history_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_reward_point_data`
--

DROP TABLE IF EXISTS `member_reward_point_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_reward_point_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `point` int(11) DEFAULT NULL COMMENT '点',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_member_reward_point` (`id`,`version`),
  KEY `idx4point_of_member_reward_point` (`point`),
  KEY `fk4owner_of_member_reward_point_data` (`owner`),
  CONSTRAINT `fk4owner_of_member_reward_point_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员奖励点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_reward_point_data`
--

LOCK TABLES `member_reward_point_data` WRITE;
/*!40000 ALTER TABLE `member_reward_point_data` DISABLE KEYS */;
INSERT INTO `member_reward_point_data` VALUES ('MRP000001','购买积分',19,'RSM000001',1),('MRP000002','每月购买清单',15,'RSM000003',2),('MRP000003','购买积分',18,'RSM000002',1),('MRP000004','每月购买清单',20,'RSM000002',1);
/*!40000 ALTER TABLE `member_reward_point_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_reward_point_redemption_data`
--

DROP TABLE IF EXISTS `member_reward_point_redemption_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_reward_point_redemption_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `point` int(11) DEFAULT NULL COMMENT '点',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_member_reward_point_redemption` (`id`,`version`),
  KEY `idx4point_of_member_reward_point_redemption` (`point`),
  KEY `fk4owner_of_member_reward_point_redemption_data` (`owner`),
  CONSTRAINT `fk4owner_of_member_reward_point_redemption_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员奖励点赎回';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_reward_point_redemption_data`
--

LOCK TABLES `member_reward_point_redemption_data` WRITE;
/*!40000 ALTER TABLE `member_reward_point_redemption_data` DISABLE KEYS */;
INSERT INTO `member_reward_point_redemption_data` VALUES ('MRPR000001','积分换锅',18,'RSM000001',1),('MRPR000002','积分换刀',16,'RSM000001',1),('MRPR000003','积分换锅',16,'RSM000002',1),('MRPR000004','积分换刀',15,'RSM000002',1);
/*!40000 ALTER TABLE `member_reward_point_redemption_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wishlist_data`
--

DROP TABLE IF EXISTS `member_wishlist_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wishlist_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_member_wishlist` (`id`,`version`),
  KEY `fk4owner_of_member_wishlist_data` (`owner`),
  CONSTRAINT `fk4owner_of_member_wishlist_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wishlist_data`
--

LOCK TABLES `member_wishlist_data` WRITE;
/*!40000 ALTER TABLE `member_wishlist_data` DISABLE KEYS */;
INSERT INTO `member_wishlist_data` VALUES ('MW000001','每周购买清单','RSM000001',1),('MW000002','每月购买清单','RSM000001',1),('MW000003','每周购买清单','RSM000002',1),('MW000004','每月购买清单','RSM000002',1);
/*!40000 ALTER TABLE `member_wishlist_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wishlist_product_data`
--

DROP TABLE IF EXISTS `member_wishlist_product_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wishlist_product_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_member_wishlist_product` (`id`,`version`),
  KEY `fk4owner_of_member_wishlist_product_data` (`owner`),
  CONSTRAINT `fk4owner_of_member_wishlist_product_data` FOREIGN KEY (`owner`) REFERENCES `member_wishlist_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员收藏产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wishlist_product_data`
--

LOCK TABLES `member_wishlist_product_data` WRITE;
/*!40000 ALTER TABLE `member_wishlist_product_data` DISABLE KEYS */;
INSERT INTO `member_wishlist_product_data` VALUES ('MWP000001','农夫山泉','MW000001',1),('MWP000002','利箭口香糖','MW000001',1),('MWP000003','农夫山泉','MW000002',1),('MWP000004','利箭口香糖','MW000002',1),('MWP000005','农夫山泉','MW000003',1),('MWP000006','利箭口香糖','MW000003',1),('MWP000007','农夫山泉','MW000004',1),('MWP000008','利箭口香糖','MW000004',1);
/*!40000 ALTER TABLE `member_wishlist_product_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_access_data`
--

DROP TABLE IF EXISTS `object_access_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_access_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `object_type` varchar(112) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对象类型',
  `list1` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表',
  `list2` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '清单',
  `list3` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目录3',
  `list4` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '清单',
  `list5` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '列表6',
  `list6` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'list6',
  `list7` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'list7',
  `list8` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'list8',
  `list9` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'list9',
  `app` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_object_access` (`id`,`version`),
  KEY `fk4app_of_object_access_data` (`app`),
  CONSTRAINT `fk4app_of_object_access_data` FOREIGN KEY (`app`) REFERENCES `user_app_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='对象访问';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_access_data`
--

LOCK TABLES `object_access_data` WRITE;
/*!40000 ALTER TABLE `object_access_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_access_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation_type_data`
--

DROP TABLE IF EXISTS `occupation_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `detail_description` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_occupation_type` (`id`,`version`),
  KEY `fk4company_of_occupation_type_data` (`company`),
  CONSTRAINT `fk4company_of_occupation_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='职位类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation_type_data`
--

LOCK TABLES `occupation_type_data` WRITE;
/*!40000 ALTER TABLE `occupation_type_data` DISABLE KEYS */;
INSERT INTO `occupation_type_data` VALUES ('OT000001','OT0000','RSCC000001','需求分析员','故事还得从遥远的古代开始.................................................',1),('OT000002','OT00000002','RSCC000001','软件工程师','故事还得从遥远的古代开始.................................................0002',1);
/*!40000 ALTER TABLE `occupation_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_acceptance_data`
--

DROP TABLE IF EXISTS `offer_acceptance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_acceptance_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `accept_time` date DEFAULT NULL COMMENT '接受时间',
  `comments` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_offer_acceptance` (`id`,`version`),
  KEY `idx4accept_time_of_offer_acceptance` (`accept_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='接受工作要约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_acceptance_data`
--

LOCK TABLES `offer_acceptance_data` WRITE;
/*!40000 ALTER TABLE `offer_acceptance_data` DISABLE KEYS */;
INSERT INTO `offer_acceptance_data` VALUES ('OA000001','申请者','2019-05-18','谢谢，我一个月内上班',1);
/*!40000 ALTER TABLE `offer_acceptance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_approval_data`
--

DROP TABLE IF EXISTS `offer_approval_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_approval_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `approve_time` date DEFAULT NULL COMMENT '批准时间',
  `comments` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_offer_approval` (`id`,`version`),
  KEY `idx4approve_time_of_offer_approval` (`approve_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='审批工作要约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_approval_data`
--

LOCK TABLES `offer_approval_data` WRITE;
/*!40000 ALTER TABLE `offer_approval_data` DISABLE KEYS */;
INSERT INTO `offer_approval_data` VALUES ('OA000001','总经理','2018-04-17','该员工发展潜力不错，',1);
/*!40000 ALTER TABLE `offer_approval_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `original_voucher_auditing_data`
--

DROP TABLE IF EXISTS `original_voucher_auditing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `original_voucher_auditing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_original_voucher_auditing` (`id`,`version`),
  KEY `idx4make_date_of_original_voucher_auditing` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='原始凭证的审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `original_voucher_auditing_data`
--

LOCK TABLES `original_voucher_auditing_data` WRITE;
/*!40000 ALTER TABLE `original_voucher_auditing_data` DISABLE KEYS */;
INSERT INTO `original_voucher_auditing_data` VALUES ('OVA000001','财务会计','审核通过，要都审核过了才通过哦','2017-11-01',1);
/*!40000 ALTER TABLE `original_voucher_auditing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `original_voucher_confirmation_data`
--

DROP TABLE IF EXISTS `original_voucher_confirmation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `original_voucher_confirmation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_original_voucher_confirmation` (`id`,`version`),
  KEY `idx4make_date_of_original_voucher_confirmation` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='原始凭证的确认';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `original_voucher_confirmation_data`
--

LOCK TABLES `original_voucher_confirmation_data` WRITE;
/*!40000 ALTER TABLE `original_voucher_confirmation_data` DISABLE KEYS */;
INSERT INTO `original_voucher_confirmation_data` VALUES ('OVC000001','财务会计','确认通过','2017-06-22',1);
/*!40000 ALTER TABLE `original_voucher_confirmation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `original_voucher_creation_data`
--

DROP TABLE IF EXISTS `original_voucher_creation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `original_voucher_creation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `comments` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_original_voucher_creation` (`id`,`version`),
  KEY `idx4make_date_of_original_voucher_creation` (`make_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='原始凭证制作';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `original_voucher_creation_data`
--

LOCK TABLES `original_voucher_creation_data` WRITE;
/*!40000 ALTER TABLE `original_voucher_creation_data` DISABLE KEYS */;
INSERT INTO `original_voucher_creation_data` VALUES ('OVC000001','财务会计','确认提交','2018-07-27',1);
/*!40000 ALTER TABLE `original_voucher_creation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `original_voucher_data`
--

DROP TABLE IF EXISTS `original_voucher_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `original_voucher_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `made_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '由',
  `received_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '受',
  `voucher_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '凭证类型',
  `voucher_image` varchar(512) CHARACTER SET ascii DEFAULT NULL COMMENT '凭证图像',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `creation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建',
  `confirmation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '确认',
  `auditing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审计',
  `current_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_original_voucher` (`id`,`version`),
  KEY `fk4belongs_to_of_original_voucher_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_original_voucher_data` FOREIGN KEY (`belongs_to`) REFERENCES `accounting_document_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='原始凭证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `original_voucher_data`
--

LOCK TABLES `original_voucher_data` WRITE;
/*!40000 ALTER TABLE `original_voucher_data` DISABLE KEYS */;
INSERT INTO `original_voucher_data` VALUES ('OV000001','这是手写的发票','李亚青','本公司','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000001',NULL,NULL,NULL,'CREATED',1),('OV000002','这是手写的发票0002','李亚青0002','本公司0002','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000001',NULL,NULL,NULL,'CONFIRMED',1),('OV000003','这是手写的发票0003','李亚青0003','本公司0003','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000002',NULL,NULL,NULL,'AUDITED',1),('OV000004','这是手写的发票0004','李亚青0004','本公司0004','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000002',NULL,NULL,NULL,'CREATED',1),('OV000005','这是手写的发票0005','李亚青0005','本公司0005','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000003',NULL,NULL,NULL,'CONFIRMED',1),('OV000006','这是手写的发票0006','李亚青0006','本公司0006','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000003',NULL,NULL,NULL,'AUDITED',1),('OV000007','这是手写的发票0007','李亚青0007','本公司0007','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000004',NULL,NULL,NULL,'CREATED',1),('OV000008','这是手写的发票0008','李亚青0008','本公司0008','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000004',NULL,NULL,NULL,'CONFIRMED',1),('OV000009','这是手写的发票0009','李亚青0009','本公司0009','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000005',NULL,NULL,NULL,'AUDITED',1),('OV000010','这是手写的发票0010','李亚青0010','本公司0010','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000005',NULL,NULL,NULL,'CREATED',1),('OV000011','这是手写的发票0011','李亚青0011','本公司0011','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000006',NULL,NULL,NULL,'CONFIRMED',1),('OV000012','这是手写的发票0012','李亚青0012','本公司0012','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000006',NULL,NULL,NULL,'AUDITED',1),('OV000013','这是手写的发票0013','李亚青0013','本公司0013','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000007',NULL,NULL,NULL,'CREATED',1),('OV000014','这是手写的发票0014','李亚青0014','本公司0014','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000007',NULL,NULL,NULL,'CONFIRMED',1),('OV000015','这是手写的发票0015','李亚青0015','本公司0015','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000008',NULL,NULL,NULL,'AUDITED',1),('OV000016','这是手写的发票0016','李亚青0016','本公司0016','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000008',NULL,NULL,NULL,'CREATED',1),('OV000017','这是手写的发票0017','李亚青0017','本公司0017','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000009',NULL,NULL,NULL,'CONFIRMED',1),('OV000018','这是手写的发票0018','李亚青0018','本公司0018','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000009',NULL,NULL,NULL,'AUDITED',1),('OV000019','这是手写的发票0019','李亚青0019','本公司0019','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000010',NULL,NULL,NULL,'CREATED',1),('OV000020','这是手写的发票0020','李亚青0020','本公司0020','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000010',NULL,NULL,NULL,'CONFIRMED',1),('OV000021','这是手写的发票0021','李亚青0021','本公司0021','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000011',NULL,NULL,NULL,'AUDITED',1),('OV000022','这是手写的发票0022','李亚青0022','本公司0022','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000011',NULL,NULL,NULL,'CREATED',1),('OV000023','这是手写的发票0023','李亚青0023','本公司0023','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000012',NULL,NULL,NULL,'CONFIRMED',1),('OV000024','这是手写的发票0024','李亚青0024','本公司0024','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000012',NULL,NULL,NULL,'AUDITED',1),('OV000025','这是手写的发票0025','李亚青0025','本公司0025','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000013',NULL,NULL,NULL,'CREATED',1),('OV000026','这是手写的发票0026','李亚青0026','本公司0026','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000013',NULL,NULL,NULL,'CONFIRMED',1),('OV000027','这是手写的发票0027','李亚青0027','本公司0027','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000014',NULL,NULL,NULL,'AUDITED',1),('OV000028','这是手写的发票0028','李亚青0028','本公司0028','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000014',NULL,NULL,NULL,'CREATED',1),('OV000029','这是手写的发票0029','李亚青0029','本公司0029','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000015',NULL,NULL,NULL,'CONFIRMED',1),('OV000030','这是手写的发票0030','李亚青0030','本公司0030','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000015',NULL,NULL,NULL,'AUDITED',1),('OV000031','这是手写的发票0031','李亚青0031','本公司0031','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000016',NULL,NULL,NULL,'CREATED',1),('OV000032','这是手写的发票0032','李亚青0032','本公司0032','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000016',NULL,NULL,NULL,'CONFIRMED',1),('OV000033','这是手写的发票0033','李亚青0033','本公司0033','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000017',NULL,NULL,NULL,'AUDITED',1),('OV000034','这是手写的发票0034','李亚青0034','本公司0034','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000017',NULL,NULL,NULL,'CREATED',1),('OV000035','这是手写的发票0035','李亚青0035','本公司0035','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000018',NULL,NULL,NULL,'CONFIRMED',1),('OV000036','这是手写的发票0036','李亚青0036','本公司0036','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000018',NULL,NULL,NULL,'AUDITED',1),('OV000037','这是手写的发票0037','李亚青0037','本公司0037','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000019',NULL,NULL,NULL,'CREATED',1),('OV000038','这是手写的发票0038','李亚青0038','本公司0038','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000019',NULL,NULL,NULL,'CONFIRMED',1),('OV000039','这是手写的发票0039','李亚青0039','本公司0039','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000020',NULL,NULL,NULL,'AUDITED',1),('OV000040','这是手写的发票0040','李亚青0040','本公司0040','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000020',NULL,NULL,NULL,'CREATED',1),('OV000041','这是手写的发票0041','李亚青0041','本公司0041','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000021',NULL,NULL,NULL,'CONFIRMED',1),('OV000042','这是手写的发票0042','李亚青0042','本公司0042','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000021',NULL,NULL,NULL,'AUDITED',1),('OV000043','这是手写的发票0043','李亚青0043','本公司0043','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000022',NULL,NULL,NULL,'CREATED',1),('OV000044','这是手写的发票0044','李亚青0044','本公司0044','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000022',NULL,NULL,NULL,'CONFIRMED',1),('OV000045','这是手写的发票0045','李亚青0045','本公司0045','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000023',NULL,NULL,NULL,'AUDITED',1),('OV000046','这是手写的发票0046','李亚青0046','本公司0046','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000023',NULL,NULL,NULL,'CREATED',1),('OV000047','这是手写的发票0047','李亚青0047','本公司0047','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000024',NULL,NULL,NULL,'CONFIRMED',1),('OV000048','这是手写的发票0048','李亚青0048','本公司0048','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000024',NULL,NULL,NULL,'AUDITED',1),('OV000049','这是手写的发票0049','李亚青0049','本公司0049','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000025',NULL,NULL,NULL,'CREATED',1),('OV000050','这是手写的发票0050','李亚青0050','本公司0050','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000025',NULL,NULL,NULL,'CONFIRMED',1),('OV000051','这是手写的发票0051','李亚青0051','本公司0051','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000026',NULL,NULL,NULL,'AUDITED',1),('OV000052','这是手写的发票0052','李亚青0052','本公司0052','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000026',NULL,NULL,NULL,'CREATED',1),('OV000053','这是手写的发票0053','李亚青0053','本公司0053','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000027',NULL,NULL,NULL,'CONFIRMED',1),('OV000054','这是手写的发票0054','李亚青0054','本公司0054','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000027',NULL,NULL,NULL,'AUDITED',1),('OV000055','这是手写的发票0055','李亚青0055','本公司0055','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000028',NULL,NULL,NULL,'CREATED',1),('OV000056','这是手写的发票0056','李亚青0056','本公司0056','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000028',NULL,NULL,NULL,'CONFIRMED',1),('OV000057','这是手写的发票0057','李亚青0057','本公司0057','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000029',NULL,NULL,NULL,'AUDITED',1),('OV000058','这是手写的发票0058','李亚青0058','本公司0058','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000029',NULL,NULL,NULL,'CREATED',1),('OV000059','这是手写的发票0059','李亚青0059','本公司0059','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000030',NULL,NULL,NULL,'CONFIRMED',1),('OV000060','这是手写的发票0060','李亚青0060','本公司0060','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000030',NULL,NULL,NULL,'AUDITED',1),('OV000061','这是手写的发票0061','李亚青0061','本公司0061','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000031',NULL,NULL,NULL,'CREATED',1),('OV000062','这是手写的发票0062','李亚青0062','本公司0062','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000031',NULL,NULL,NULL,'CONFIRMED',1),('OV000063','这是手写的发票0063','李亚青0063','本公司0063','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000032',NULL,NULL,NULL,'AUDITED',1),('OV000064','这是手写的发票0064','李亚青0064','本公司0064','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000032',NULL,NULL,NULL,'CREATED',1),('OV000065','这是手写的发票0065','李亚青0065','本公司0065','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000033',NULL,NULL,NULL,'CONFIRMED',1),('OV000066','这是手写的发票0066','李亚青0066','本公司0066','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000033',NULL,NULL,NULL,'AUDITED',1),('OV000067','这是手写的发票0067','李亚青0067','本公司0067','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000034',NULL,NULL,NULL,'CREATED',1),('OV000068','这是手写的发票0068','李亚青0068','本公司0068','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000034',NULL,NULL,NULL,'CONFIRMED',1),('OV000069','这是手写的发票0069','李亚青0069','本公司0069','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000035',NULL,NULL,NULL,'AUDITED',1),('OV000070','这是手写的发票0070','李亚青0070','本公司0070','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000035',NULL,NULL,NULL,'CREATED',1),('OV000071','这是手写的发票0071','李亚青0071','本公司0071','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000036',NULL,NULL,NULL,'CONFIRMED',1),('OV000072','这是手写的发票0072','李亚青0072','本公司0072','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000036',NULL,NULL,NULL,'AUDITED',1),('OV000073','这是手写的发票0073','李亚青0073','本公司0073','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000037',NULL,NULL,NULL,'CREATED',1),('OV000074','这是手写的发票0074','李亚青0074','本公司0074','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000037',NULL,NULL,NULL,'CONFIRMED',1),('OV000075','这是手写的发票0075','李亚青0075','本公司0075','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000038',NULL,NULL,NULL,'AUDITED',1),('OV000076','这是手写的发票0076','李亚青0076','本公司0076','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000038',NULL,NULL,NULL,'CREATED',1),('OV000077','这是手写的发票0077','李亚青0077','本公司0077','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000039',NULL,NULL,NULL,'CONFIRMED',1),('OV000078','这是手写的发票0078','李亚青0078','本公司0078','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000039',NULL,NULL,NULL,'AUDITED',1),('OV000079','这是手写的发票0079','李亚青0079','本公司0079','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000040',NULL,NULL,NULL,'CREATED',1),('OV000080','这是手写的发票0080','李亚青0080','本公司0080','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000040',NULL,NULL,NULL,'CONFIRMED',1),('OV000081','这是手写的发票0081','李亚青0081','本公司0081','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000041',NULL,NULL,NULL,'AUDITED',1),('OV000082','这是手写的发票0082','李亚青0082','本公司0082','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000041',NULL,NULL,NULL,'CREATED',1),('OV000083','这是手写的发票0083','李亚青0083','本公司0083','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000042',NULL,NULL,NULL,'CONFIRMED',1),('OV000084','这是手写的发票0084','李亚青0084','本公司0084','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000042',NULL,NULL,NULL,'AUDITED',1),('OV000085','这是手写的发票0085','李亚青0085','本公司0085','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000043',NULL,NULL,NULL,'CREATED',1),('OV000086','这是手写的发票0086','李亚青0086','本公司0086','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000043',NULL,NULL,NULL,'CONFIRMED',1),('OV000087','这是手写的发票0087','李亚青0087','本公司0087','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000044',NULL,NULL,NULL,'AUDITED',1),('OV000088','这是手写的发票0088','李亚青0088','本公司0088','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000044',NULL,NULL,NULL,'CREATED',1),('OV000089','这是手写的发票0089','李亚青0089','本公司0089','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000045',NULL,NULL,NULL,'CONFIRMED',1),('OV000090','这是手写的发票0090','李亚青0090','本公司0090','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000045',NULL,NULL,NULL,'AUDITED',1),('OV000091','这是手写的发票0091','李亚青0091','本公司0091','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000046',NULL,NULL,NULL,'CREATED',1),('OV000092','这是手写的发票0092','李亚青0092','本公司0092','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000046',NULL,NULL,NULL,'CONFIRMED',1),('OV000093','这是手写的发票0093','李亚青0093','本公司0093','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000047',NULL,NULL,NULL,'AUDITED',1),('OV000094','这是手写的发票0094','李亚青0094','本公司0094','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000047',NULL,NULL,NULL,'CREATED',1),('OV000095','这是手写的发票0095','李亚青0095','本公司0095','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000048',NULL,NULL,NULL,'CONFIRMED',1),('OV000096','这是手写的发票0096','李亚青0096','本公司0096','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000048',NULL,NULL,NULL,'AUDITED',1),('OV000097','这是手写的发票0097','李亚青0097','本公司0097','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000049',NULL,NULL,NULL,'CREATED',1),('OV000098','这是手写的发票0098','李亚青0098','本公司0098','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000049',NULL,NULL,NULL,'CONFIRMED',1),('OV000099','这是手写的发票0099','李亚青0099','本公司0099','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000050',NULL,NULL,NULL,'AUDITED',1),('OV000100','这是手写的发票0100','李亚青0100','本公司0100','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000050',NULL,NULL,NULL,'CREATED',1),('OV000101','这是手写的发票0101','李亚青0101','本公司0101','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000051',NULL,NULL,NULL,'CONFIRMED',1),('OV000102','这是手写的发票0102','李亚青0102','本公司0102','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000051',NULL,NULL,NULL,'AUDITED',1),('OV000103','这是手写的发票0103','李亚青0103','本公司0103','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000052',NULL,NULL,NULL,'CREATED',1),('OV000104','这是手写的发票0104','李亚青0104','本公司0104','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000052',NULL,NULL,NULL,'CONFIRMED',1),('OV000105','这是手写的发票0105','李亚青0105','本公司0105','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000053',NULL,NULL,NULL,'AUDITED',1),('OV000106','这是手写的发票0106','李亚青0106','本公司0106','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000053',NULL,NULL,NULL,'CREATED',1),('OV000107','这是手写的发票0107','李亚青0107','本公司0107','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000054',NULL,NULL,NULL,'CONFIRMED',1),('OV000108','这是手写的发票0108','李亚青0108','本公司0108','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000054',NULL,NULL,NULL,'AUDITED',1),('OV000109','这是手写的发票0109','李亚青0109','本公司0109','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000055',NULL,NULL,NULL,'CREATED',1),('OV000110','这是手写的发票0110','李亚青0110','本公司0110','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000055',NULL,NULL,NULL,'CONFIRMED',1),('OV000111','这是手写的发票0111','李亚青0111','本公司0111','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000056',NULL,NULL,NULL,'AUDITED',1),('OV000112','这是手写的发票0112','李亚青0112','本公司0112','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000056',NULL,NULL,NULL,'CREATED',1),('OV000113','这是手写的发票0113','李亚青0113','本公司0113','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000057',NULL,NULL,NULL,'CONFIRMED',1),('OV000114','这是手写的发票0114','李亚青0114','本公司0114','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000057',NULL,NULL,NULL,'AUDITED',1),('OV000115','这是手写的发票0115','李亚青0115','本公司0115','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000058',NULL,NULL,NULL,'CREATED',1),('OV000116','这是手写的发票0116','李亚青0116','本公司0116','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000058',NULL,NULL,NULL,'CONFIRMED',1),('OV000117','这是手写的发票0117','李亚青0117','本公司0117','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000059',NULL,NULL,NULL,'AUDITED',1),('OV000118','这是手写的发票0118','李亚青0118','本公司0118','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000059',NULL,NULL,NULL,'CREATED',1),('OV000119','这是手写的发票0119','李亚青0119','本公司0119','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000060',NULL,NULL,NULL,'CONFIRMED',1),('OV000120','这是手写的发票0120','李亚青0120','本公司0120','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000060',NULL,NULL,NULL,'AUDITED',1),('OV000121','这是手写的发票0121','李亚青0121','本公司0121','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000061',NULL,NULL,NULL,'CREATED',1),('OV000122','这是手写的发票0122','李亚青0122','本公司0122','出库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000061',NULL,NULL,NULL,'CONFIRMED',1),('OV000123','这是手写的发票0123','李亚青0123','本公司0123','入库单','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000062',NULL,NULL,NULL,'AUDITED',1),('OV000124','这是手写的发票0124','李亚青0124','本公司0124','存款回执','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000062',NULL,NULL,NULL,'CREATED',1),('OV000125','这是手写的发票0125','李亚青0125','本公司0125','验收证明','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000063',NULL,NULL,NULL,'CONFIRMED',1),('OV000126','这是手写的发票0126','李亚青0126','本公司0126','借款凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000063',NULL,NULL,NULL,'AUDITED',1),('OV000127','这是手写的发票0127','李亚青0127','本公司0127','原始凭证','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000064',NULL,NULL,NULL,'CREATED',1),('OV000128','这是手写的发票0128','李亚青0128','本公司0128','发票','https://demo.doublechaintech.com/demodata/imageManager/genImage/goodthing00/400/200/grey/','AD000064',NULL,NULL,NULL,'CONFIRMED',1);
/*!40000 ALTER TABLE `original_voucher_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paying_off_data`
--

DROP TABLE IF EXISTS `paying_off_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paying_off_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `paid_for` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付',
  `paid_time` date DEFAULT NULL COMMENT '支付时间',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_paying_off` (`id`,`version`),
  KEY `idx4paid_time_of_paying_off` (`paid_time`),
  KEY `idx4amount_of_paying_off` (`amount`),
  KEY `fk4paid_for_of_paying_off_data` (`paid_for`),
  CONSTRAINT `fk4paid_for_of_paying_off_data` FOREIGN KEY (`paid_for`) REFERENCES `employee_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工资支付';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paying_off_data`
--

LOCK TABLES `paying_off_data` WRITE;
/*!40000 ALTER TABLE `paying_off_data` DISABLE KEYS */;
INSERT INTO `paying_off_data` VALUES ('PO000001','出纳','E000001','2017-11-18',5195.97,1),('PO000002','出纳0002','E000001','2017-02-16',3869.70,1),('PO000003','出纳0003','E000002','2017-08-26',4150.64,1),('PO000004','出纳0004','E000002','2019-05-06',4412.68,1),('PO000005','出纳0005','E000003','2018-07-22',4484.48,1),('PO000006','出纳0006','E000003','2019-03-05',4500.08,1),('PO000007','出纳0007','E000004','2018-12-15',4830.25,1),('PO000008','出纳0008','E000004','2018-10-18',4551.79,1),('PO000009','出纳0009','E000005','2018-11-26',4340.75,1),('PO000010','出纳0010','E000005','2018-12-04',3835.77,1),('PO000011','出纳0011','E000006','2018-01-05',4892.43,1),('PO000012','出纳0012','E000006','2017-02-26',4887.37,1),('PO000013','出纳0013','E000007','2017-04-11',4226.83,1),('PO000014','出纳0014','E000007','2019-08-28',5002.38,1),('PO000015','出纳0015','E000008','2018-09-02',4220.11,1),('PO000016','出纳0016','E000008','2017-04-24',4741.94,1),('PO000017','出纳0017','E000009','2019-02-02',3839.35,1),('PO000018','出纳0018','E000009','2017-11-28',4812.72,1),('PO000019','出纳0019','E000010','2019-02-21',4107.12,1),('PO000020','出纳0020','E000010','2017-02-02',4753.22,1),('PO000021','出纳0021','E000011','2019-05-09',4718.38,1),('PO000022','出纳0022','E000011','2018-06-14',4415.81,1),('PO000023','出纳0023','E000012','2018-06-17',3760.80,1),('PO000024','出纳0024','E000012','2019-07-19',4972.03,1),('PO000025','出纳0025','E000013','2019-08-21',4176.59,1),('PO000026','出纳0026','E000013','2018-04-26',3816.51,1),('PO000027','出纳0027','E000014','2017-11-24',5111.68,1),('PO000028','出纳0028','E000014','2018-01-14',3944.05,1),('PO000029','出纳0029','E000015','2017-03-20',4021.41,1),('PO000030','出纳0030','E000015','2017-12-09',4991.57,1),('PO000031','出纳0031','E000016','2018-06-22',4326.62,1),('PO000032','出纳0032','E000016','2017-04-18',4499.47,1);
/*!40000 ALTER TABLE `paying_off_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_customer_contact_data`
--

DROP TABLE IF EXISTS `potential_customer_contact_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `potential_customer_contact_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `contact_date` date DEFAULT NULL COMMENT '接触日期',
  `contact_method` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接触法',
  `potential_customer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '潜在的客户',
  `city_partner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市合伙人',
  `contact_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接触',
  `description` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_potential_customer_contact` (`id`,`version`),
  KEY `idx4contact_date_of_potential_customer_contact` (`contact_date`),
  KEY `idx4last_update_time_of_potential_customer_contact` (`last_update_time`),
  KEY `fk4potential_customer_of_potential_customer_contact_data` (`potential_customer`),
  KEY `fk4city_partner_of_potential_customer_contact_data` (`city_partner`),
  KEY `fk4contact_to_of_potential_customer_contact_data` (`contact_to`),
  CONSTRAINT `fk4city_partner_of_potential_customer_contact_data` FOREIGN KEY (`city_partner`) REFERENCES `city_partner_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4contact_to_of_potential_customer_contact_data` FOREIGN KEY (`contact_to`) REFERENCES `potential_customer_contact_person_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4potential_customer_of_potential_customer_contact_data` FOREIGN KEY (`potential_customer`) REFERENCES `potential_customer_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='潜在客户联系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_customer_contact_data`
--

LOCK TABLES `potential_customer_contact_data` WRITE;
/*!40000 ALTER TABLE `potential_customer_contact_data` DISABLE KEYS */;
INSERT INTO `potential_customer_contact_data` VALUES ('PCC000001','和连载客户的联系记录','2017-09-06','电话','PC000001','CP000001','PCCP000001','转化希望很大','2019-10-15 00:43:13',1),('PCC000002','和连载客户的联系记录0002','2018-09-04','短信','PC000001','CP000001','PCCP000001','转化希望很大0002','2019-10-27 19:26:51',1),('PCC000003','和连载客户的联系记录0003','2018-10-04','登门拜访','PC000001','CP000001','PCCP000002','转化希望很大0003','2019-10-22 22:10:57',1),('PCC000004','和连载客户的联系记录0004','2017-02-06','活动聊天','PC000001','CP000001','PCCP000002','转化希望很大0004','2019-10-21 23:09:57',1),('PCC000005','和连载客户的联系记录0005','2017-02-27','电话','PC000002','CP000001','PCCP000003','转化希望很大0005','2019-10-14 13:24:05',1),('PCC000006','和连载客户的联系记录0006','2018-05-28','短信','PC000002','CP000001','PCCP000003','转化希望很大0006','2019-10-17 23:25:51',1),('PCC000007','和连载客户的联系记录0007','2013-07-11','登门拜访','PC000002','CP000001','PCCP000004','转化希望很大0007','2019-10-14 22:38:30',3),('PCC000008','和连载客户的联系记录0008','2019-07-13','活动聊天','PC000016','CP000001','PCCP000004','转化希望很大0008','2019-10-27 04:30:54',3),('PCC000009','和连载客户的联系记录0009','2017-11-10','电话','PC000003','CP000002','PCCP000005','转化希望很大0009','2019-10-26 11:04:56',1),('PCC000010','和连载客户的联系记录0010','2017-09-30','短信','PC000003','CP000002','PCCP000005','转化希望很大0010','2019-10-27 10:18:38',1),('PCC000011','和连载客户的联系记录0011','2019-03-07','登门拜访','PC000003','CP000002','PCCP000006','转化希望很大0011','2019-10-29 09:32:35',1),('PCC000012','和连载客户的联系记录0012','2018-10-28','活动聊天','PC000003','CP000002','PCCP000006','转化希望很大0012','2019-10-08 15:38:29',1),('PCC000013','和连载客户的联系记录0013','2018-06-29','电话','PC000004','CP000002','PCCP000007','转化希望很大0013','2019-10-16 10:31:09',1),('PCC000014','和连载客户的联系记录0014','2017-12-13','短信','PC000004','CP000002','PCCP000007','转化希望很大0014','2019-10-18 01:40:06',1),('PCC000015','和连载客户的联系记录0015','2018-01-11','登门拜访','PC000004','CP000002','PCCP000008','转化希望很大0015','2019-10-16 05:07:39',1),('PCC000016','和连载客户的联系记录0016','2019-10-28','活动聊天','PC000004','CP000002','PCCP000008','转化希望很大0016','2019-10-10 04:17:21',1),('PCC000017','和连载客户的联系记录0017','2017-09-05','电话','PC000005','CP000003','PCCP000009','转化希望很大0017','2019-10-13 13:39:53',1),('PCC000018','和连载客户的联系记录0018','2018-06-28','短信','PC000005','CP000003','PCCP000009','转化希望很大0018','2019-10-29 05:25:52',1),('PCC000019','和连载客户的联系记录0019','2017-09-29','登门拜访','PC000005','CP000003','PCCP000010','转化希望很大0019','2019-10-10 19:58:37',1),('PCC000020','和连载客户的联系记录0020','2016-12-17','活动聊天','PC000005','CP000003','PCCP000010','转化希望很大0020','2019-10-25 12:08:29',1),('PCC000021','和连载客户的联系记录0021','2019-10-20','电话','PC000006','CP000003','PCCP000011','转化希望很大0021','2019-10-12 05:22:25',1),('PCC000022','和连载客户的联系记录0022','2019-06-25','短信','PC000006','CP000003','PCCP000011','转化希望很大0022','2019-10-09 07:50:41',1),('PCC000023','和连载客户的联系记录0023','2019-07-02','登门拜访','PC000006','CP000003','PCCP000012','转化希望很大0023','2019-10-29 14:34:27',1),('PCC000024','和连载客户的联系记录0024','2018-06-12','活动聊天','PC000006','CP000003','PCCP000012','转化希望很大0024','2019-10-21 15:59:21',1),('PCC000025','和连载客户的联系记录0025','2018-01-18','电话','PC000007','CP000004','PCCP000013','转化希望很大0025','2019-10-09 19:45:51',1),('PCC000026','和连载客户的联系记录0026','2017-06-24','短信','PC000007','CP000004','PCCP000013','转化希望很大0026','2019-10-15 23:00:13',1),('PCC000027','和连载客户的联系记录0027','2017-01-07','登门拜访','PC000007','CP000004','PCCP000014','转化希望很大0027','2019-10-10 18:26:12',1),('PCC000028','和连载客户的联系记录0028','2019-01-29','活动聊天','PC000007','CP000004','PCCP000014','转化希望很大0028','2019-10-11 05:00:44',1),('PCC000029','和连载客户的联系记录0029','2019-08-29','电话','PC000008','CP000004','PCCP000015','转化希望很大0029','2019-10-12 04:43:47',1),('PCC000030','和连载客户的联系记录0030','2019-04-26','短信','PC000008','CP000004','PCCP000015','转化希望很大0030','2019-10-26 03:05:26',1),('PCC000031','和连载客户的联系记录0031','2019-06-21','登门拜访','PC000008','CP000004','PCCP000016','转化希望很大0031','2019-10-29 14:50:01',1),('PCC000032','和连载客户的联系记录0032','2018-09-26','活动聊天','PC000008','CP000004','PCCP000016','转化希望很大0032','2019-10-09 02:13:09',1),('PCC000033','和连载客户的联系记录0033','2017-01-20','电话','PC000009','CP000005','PCCP000017','转化希望很大0033','2019-10-18 22:18:36',1),('PCC000034','和连载客户的联系记录0034','2018-05-27','短信','PC000009','CP000005','PCCP000017','转化希望很大0034','2019-10-27 11:53:07',1),('PCC000035','和连载客户的联系记录0035','2017-06-23','登门拜访','PC000009','CP000005','PCCP000018','转化希望很大0035','2019-10-14 16:53:17',1),('PCC000036','和连载客户的联系记录0036','2019-04-10','活动聊天','PC000009','CP000005','PCCP000018','转化希望很大0036','2019-10-22 03:54:24',1),('PCC000037','和连载客户的联系记录0037','2019-05-21','电话','PC000010','CP000005','PCCP000019','转化希望很大0037','2019-10-28 11:37:21',1),('PCC000038','和连载客户的联系记录0038','2019-08-30','短信','PC000010','CP000005','PCCP000019','转化希望很大0038','2019-10-15 14:41:10',1),('PCC000039','和连载客户的联系记录0039','2018-12-29','登门拜访','PC000010','CP000005','PCCP000020','转化希望很大0039','2019-10-14 21:03:46',1),('PCC000040','和连载客户的联系记录0040','2017-06-17','活动聊天','PC000010','CP000005','PCCP000020','转化希望很大0040','2019-10-27 11:59:12',1),('PCC000041','和连载客户的联系记录0041','2019-09-12','电话','PC000011','CP000006','PCCP000021','转化希望很大0041','2019-10-20 18:03:28',1),('PCC000042','和连载客户的联系记录0042','2017-01-04','短信','PC000011','CP000006','PCCP000021','转化希望很大0042','2019-10-09 12:24:16',1),('PCC000043','和连载客户的联系记录0043','2018-09-30','登门拜访','PC000011','CP000006','PCCP000022','转化希望很大0043','2019-10-14 01:02:20',1),('PCC000044','和连载客户的联系记录0044','2018-03-07','活动聊天','PC000011','CP000006','PCCP000022','转化希望很大0044','2019-10-10 21:26:08',1),('PCC000045','和连载客户的联系记录0045','2019-09-06','电话','PC000012','CP000006','PCCP000023','转化希望很大0045','2019-10-11 13:26:27',1),('PCC000046','和连载客户的联系记录0046','2017-01-19','短信','PC000012','CP000006','PCCP000023','转化希望很大0046','2019-10-28 06:11:03',1),('PCC000047','和连载客户的联系记录0047','2017-07-07','登门拜访','PC000012','CP000006','PCCP000024','转化希望很大0047','2019-10-25 22:47:20',1),('PCC000048','和连载客户的联系记录0048','2017-12-24','活动聊天','PC000012','CP000006','PCCP000024','转化希望很大0048','2019-10-10 18:55:11',1),('PCC000049','和连载客户的联系记录0049','2018-10-13','电话','PC000013','CP000007','PCCP000025','转化希望很大0049','2019-10-16 08:03:47',1),('PCC000050','和连载客户的联系记录0050','2017-05-28','短信','PC000013','CP000007','PCCP000025','转化希望很大0050','2019-10-20 05:29:42',1),('PCC000051','和连载客户的联系记录0051','2019-05-26','登门拜访','PC000013','CP000007','PCCP000026','转化希望很大0051','2019-10-24 06:38:34',1),('PCC000052','和连载客户的联系记录0052','2017-09-18','活动聊天','PC000013','CP000007','PCCP000026','转化希望很大0052','2019-10-09 00:02:54',1),('PCC000053','和连载客户的联系记录0053','2019-02-12','电话','PC000014','CP000007','PCCP000027','转化希望很大0053','2019-10-28 10:05:18',1),('PCC000054','和连载客户的联系记录0054','2016-11-03','短信','PC000014','CP000007','PCCP000027','转化希望很大0054','2019-10-27 08:51:36',1),('PCC000055','和连载客户的联系记录0055','2016-12-13','登门拜访','PC000014','CP000007','PCCP000028','转化希望很大0055','2019-10-13 07:57:22',1),('PCC000056','和连载客户的联系记录0056','2018-11-22','活动聊天','PC000014','CP000007','PCCP000028','转化希望很大0056','2019-10-18 16:54:34',1),('PCC000057','和连载客户的联系记录0057','2017-06-02','电话','PC000015','CP000008','PCCP000029','转化希望很大0057','2019-10-13 11:13:58',1),('PCC000058','和连载客户的联系记录0058','2018-02-17','短信','PC000015','CP000008','PCCP000029','转化希望很大0058','2019-10-17 15:21:42',1),('PCC000059','和连载客户的联系记录0059','2019-09-13','登门拜访','PC000015','CP000008','PCCP000030','转化希望很大0059','2019-10-24 12:58:55',1),('PCC000060','和连载客户的联系记录0060','2018-12-17','活动聊天','PC000015','CP000008','PCCP000030','转化希望很大0060','2019-10-24 19:44:26',1),('PCC000061','和连载客户的联系记录0061','2019-01-12','电话','PC000016','CP000008','PCCP000031','转化希望很大0061','2019-10-14 11:25:34',1),('PCC000062','和连载客户的联系记录0062','2018-04-15','短信','PC000016','CP000008','PCCP000031','转化希望很大0062','2019-10-29 04:29:22',1),('PCC000063','和连载客户的联系记录0063','2017-07-15','登门拜访','PC000016','CP000008','PCCP000032','转化希望很大0063','2019-10-26 12:20:43',1),('PCC000064','和连载客户的联系记录0064','2018-08-09','活动聊天','PC000016','CP000008','PCCP000032','转化希望很大0064','2019-10-28 19:11:06',1),('PCC000065','和连载客户的联系记录0007','2013-07-11','登门拜访','PC000003','CP000001','PCCP000004','转化希望很大0007','2020-07-17 17:01:37',1),('PCC000066','和连载客户的联系记录0008','2013-07-11','登门拜访','PC000003','CP000001','PCCP000004','转化希望很大0007','2020-07-17 17:16:10',2);
/*!40000 ALTER TABLE `potential_customer_contact_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_customer_contact_person_data`
--

DROP TABLE IF EXISTS `potential_customer_contact_person_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `potential_customer_contact_person_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `potential_customer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '潜在的客户',
  `description` varchar(96) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_potential_customer_contact_person` (`id`,`version`),
  KEY `idx4mobile_of_potential_customer_contact_person` (`mobile`),
  KEY `fk4potential_customer_of_potential_customer_contact_person_data` (`potential_customer`),
  CONSTRAINT `fk4potential_customer_of_potential_customer_contact_person_data` FOREIGN KEY (`potential_customer`) REFERENCES `potential_customer_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='潜在客户联络人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_customer_contact_person_data`
--

LOCK TABLES `potential_customer_contact_person_data` WRITE;
/*!40000 ALTER TABLE `potential_customer_contact_person_data` DISABLE KEYS */;
INSERT INTO `potential_customer_contact_person_data` VALUES ('PCCP000001','唐小姐','13612348888','PC000001','这人在决策中战友较大的权重，密切观察中.....',2),('PCCP000002','赵先生0002','13900000002','PC000001','这人在决策中战友较大的权重，密切观察中.....0002',1),('PCCP000003','赵先生0003','13900000003','PC000002','这人在决策中战友较大的权重，密切观察中.....0003',1),('PCCP000004','赵先生0004','13900000004','PC000002','这人在决策中战友较大的权重，密切观察中.....0004',1),('PCCP000005','赵先生0005','13900000005','PC000003','这人在决策中战友较大的权重，密切观察中.....0005',1),('PCCP000006','赵先生0006','13900000006','PC000003','这人在决策中战友较大的权重，密切观察中.....0006',1),('PCCP000007','赵先生0007','13900000007','PC000004','这人在决策中战友较大的权重，密切观察中.....0007',1),('PCCP000008','赵先生0008','13900000008','PC000004','这人在决策中战友较大的权重，密切观察中.....0008',1),('PCCP000009','赵先生0009','13900000009','PC000005','这人在决策中战友较大的权重，密切观察中.....0009',1),('PCCP000010','赵先生0010','13900000010','PC000005','这人在决策中战友较大的权重，密切观察中.....0010',1),('PCCP000011','赵先生0011','13900000011','PC000006','这人在决策中战友较大的权重，密切观察中.....0011',1),('PCCP000012','赵先生0012','13900000012','PC000006','这人在决策中战友较大的权重，密切观察中.....0012',1),('PCCP000013','赵先生0013','13900000013','PC000007','这人在决策中战友较大的权重，密切观察中.....0013',1),('PCCP000014','赵先生0014','13900000014','PC000007','这人在决策中战友较大的权重，密切观察中.....0014',1),('PCCP000015','赵先生0015','13900000015','PC000008','这人在决策中战友较大的权重，密切观察中.....0015',1),('PCCP000016','赵先生0016','13900000016','PC000008','这人在决策中战友较大的权重，密切观察中.....0016',1),('PCCP000017','赵先生0017','13900000017','PC000009','这人在决策中战友较大的权重，密切观察中.....0017',1),('PCCP000018','赵先生0018','13900000018','PC000009','这人在决策中战友较大的权重，密切观察中.....0018',1),('PCCP000019','赵先生0019','13900000019','PC000010','这人在决策中战友较大的权重，密切观察中.....0019',1),('PCCP000020','赵先生0020','13900000020','PC000010','这人在决策中战友较大的权重，密切观察中.....0020',1),('PCCP000021','赵先生0021','13900000021','PC000011','这人在决策中战友较大的权重，密切观察中.....0021',1),('PCCP000022','赵先生0022','13900000022','PC000011','这人在决策中战友较大的权重，密切观察中.....0022',1),('PCCP000023','赵先生0023','13900000023','PC000012','这人在决策中战友较大的权重，密切观察中.....0023',1),('PCCP000024','赵先生0024','13900000024','PC000012','这人在决策中战友较大的权重，密切观察中.....0024',1),('PCCP000025','赵先生0025','13900000025','PC000013','这人在决策中战友较大的权重，密切观察中.....0025',1),('PCCP000026','赵先生0026','13900000026','PC000013','这人在决策中战友较大的权重，密切观察中.....0026',1),('PCCP000027','赵先生0027','13900000027','PC000014','这人在决策中战友较大的权重，密切观察中.....0027',1),('PCCP000028','赵先生0028','13900000028','PC000014','这人在决策中战友较大的权重，密切观察中.....0028',1),('PCCP000029','赵先生0029','13900000029','PC000015','这人在决策中战友较大的权重，密切观察中.....0029',1),('PCCP000030','赵先生0030','13900000030','PC000015','这人在决策中战友较大的权重，密切观察中.....0030',1),('PCCP000031','赵先生0031','13900000031','PC000016','这人在决策中战友较大的权重，密切观察中.....0031',1),('PCCP000032','赵先生0032','13900000032','PC000016','这人在决策中战友较大的权重，密切观察中.....0032',1),('PCCP000033','赵先生0003','13918360003','PC000001','这人在决策中战友较大的权重，密切观察中.....0002',1),('PCCP000034','唐先生','13600008888','PC000001','酷酷的.....',1),('PCCP000035','唐小糖','13345619652','PC000001','可爱多可爱点呀',2);
/*!40000 ALTER TABLE `potential_customer_contact_person_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_customer_data`
--

DROP TABLE IF EXISTS `potential_customer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `potential_customer_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `city_service_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市服务中心',
  `city_partner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市合伙人',
  `description` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_potential_customer` (`id`,`version`),
  KEY `idx4mobile_of_potential_customer` (`mobile`),
  KEY `idx4last_update_time_of_potential_customer` (`last_update_time`),
  KEY `fk4city_service_center_of_potential_customer_data` (`city_service_center`),
  KEY `fk4city_partner_of_potential_customer_data` (`city_partner`),
  CONSTRAINT `fk4city_partner_of_potential_customer_data` FOREIGN KEY (`city_partner`) REFERENCES `city_partner_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4city_service_center_of_potential_customer_data` FOREIGN KEY (`city_service_center`) REFERENCES `retail_store_city_service_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='潜在的客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_customer_data`
--

LOCK TABLES `potential_customer_data` WRITE;
/*!40000 ALTER TABLE `potential_customer_data` DISABLE KEYS */;
INSERT INTO `potential_customer_data` VALUES ('PC000001','曾倩','13677778888','RSCSC000001','CP000010','负责开拓市场，具有极强的开拓能力','2019-10-18 22:17:38',2),('PC000002','黄风格','13900000002','RSCSC000001','CP000001','负责开拓市场，具有极强的开拓能力0002','2019-10-25 20:35:48',1),('PC000003','郭超','13900000003','RSCSC000001','CP000002','负责开拓市场，具有极强的开拓能力0003','2019-10-28 20:20:14',1),('PC000004','曾倩','13900000004','RSCSC000001','CP000002','负责开拓市场，具有极强的开拓能力0004','2019-10-11 18:49:46',1),('PC000005','黄风格','13900000005','RSCSC000002','CP000003','负责开拓市场，具有极强的开拓能力0005','2019-10-28 00:17:04',1),('PC000006','郭超','13900000006','RSCSC000002','CP000003','负责开拓市场，具有极强的开拓能力0006','2019-10-10 01:36:27',1),('PC000007','曾倩','13900000007','RSCSC000002','CP000004','负责开拓市场，具有极强的开拓能力0007','2019-10-23 08:59:57',1),('PC000008','黄风格','13900000008','RSCSC000002','CP000004','负责开拓市场，具有极强的开拓能力0008','2019-10-27 11:38:54',1),('PC000009','郭超','13900000009','RSCSC000003','CP000005','负责开拓市场，具有极强的开拓能力0009','2019-10-14 17:03:35',1),('PC000010','曾倩','13900000010','RSCSC000003','CP000005','负责开拓市场，具有极强的开拓能力0010','2019-10-29 13:31:06',1),('PC000011','黄风格','13900000011','RSCSC000003','CP000006','负责开拓市场，具有极强的开拓能力0011','2019-10-20 16:19:08',1),('PC000012','郭超','13900000012','RSCSC000003','CP000006','负责开拓市场，具有极强的开拓能力0012','2019-10-27 11:21:33',1),('PC000013','曾倩','13900000013','RSCSC000004','CP000007','负责开拓市场，具有极强的开拓能力0013','2019-10-17 09:27:55',1),('PC000014','黄风格','13900000014','RSCSC000004','CP000007','负责开拓市场，具有极强的开拓能力0014','2019-10-28 07:16:58',1),('PC000015','郭超','13900000015','RSCSC000004','CP000008','负责开拓市场，具有极强的开拓能力0015','2019-10-26 19:08:02',1),('PC000016','曾倩','13900000016','RSCSC000004','CP000008','负责开拓市场，具有极强的开拓能力0016','2019-10-28 11:16:36',1),('PC000017','张三','19900999988',NULL,NULL,'合伙人呵呵呵呵呵呵','2020-04-23 10:34:47',2),('PC000018','123132313','13312312312','RSCSC000005','CP000001','负责开拓市场，具有极强的开拓能力00021222','2020-07-03 13:20:42',1),('PC000019','大头','17825446914',NULL,NULL,'特别优秀  棒棒棒','2020-07-17 17:03:11',3);
/*!40000 ALTER TABLE `potential_customer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_data`
--

DROP TABLE IF EXISTS `product_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `parent_category` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父类',
  `origin` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产地',
  `remark` varchar(88) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `brand` varchar(92) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '品牌',
  `picture` varchar(512) CHARACTER SET ascii DEFAULT NULL COMMENT '图片',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_product` (`id`,`version`),
  KEY `idx4last_update_time_of_product` (`last_update_time`),
  KEY `fk4parent_category_of_product_data` (`parent_category`),
  CONSTRAINT `fk4parent_category_of_product_data` FOREIGN KEY (`parent_category`) REFERENCES `level_three_category_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_data`
--

LOCK TABLES `product_data` WRITE;
/*!40000 ALTER TABLE `product_data` DISABLE KEYS */;
INSERT INTO `product_data` VALUES ('P000001','啤酒','LTC000001','四川','可口可乐，销售百年的糖水，获得了全世界额青睐','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-24 11:33:27',1),('P000002','可乐','LTC000001','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0002','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0002','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-26 03:29:40',1),('P000003','久久鸭','LTC000002','江苏','可口可乐，销售百年的糖水，获得了全世界额青睐0003','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0003','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-18 21:10:35',1),('P000004','啤酒','LTC000002','安徽','可口可乐，销售百年的糖水，获得了全世界额青睐0004','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0004','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-13 17:32:45',1),('P000005','可乐','LTC000003','日本','可口可乐，销售百年的糖水，获得了全世界额青睐0005','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0005','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-17 16:49:12',1),('P000006','久久鸭','LTC000003','法国','可口可乐，销售百年的糖水，获得了全世界额青睐0006','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0006','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-16 00:28:25',1),('P000007','啤酒','LTC000004','四川','可口可乐，销售百年的糖水，获得了全世界额青睐0007','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0007','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-16 16:52:33',1),('P000008','可乐','LTC000004','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0008','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0008','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-18 02:03:24',1),('P000009','久久鸭','LTC000005','江苏','可口可乐，销售百年的糖水，获得了全世界额青睐0009','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0009','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-15 08:48:28',1),('P000010','啤酒','LTC000005','安徽','可口可乐，销售百年的糖水，获得了全世界额青睐0010','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0010','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-25 18:21:43',1),('P000011','可乐','LTC000006','日本','可口可乐，销售百年的糖水，获得了全世界额青睐0011','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0011','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-23 08:03:54',1),('P000012','久久鸭','LTC000006','法国','可口可乐，销售百年的糖水，获得了全世界额青睐0012','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0012','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-12 15:39:25',1),('P000013','啤酒','LTC000007','四川','可口可乐，销售百年的糖水，获得了全世界额青睐0013','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0013','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-11 02:14:32',1),('P000014','可乐','LTC000007','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0014','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0014','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-11 20:59:40',1),('P000015','久久鸭','LTC000008','江苏','可口可乐，销售百年的糖水，获得了全世界额青睐0015','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0015','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-20 17:36:36',1),('P000016','啤酒','LTC000008','安徽','可口可乐，销售百年的糖水，获得了全世界额青睐0016','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0016','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-20 02:00:50',1),('P000017','可乐','LTC000009','日本','可口可乐，销售百年的糖水，获得了全世界额青睐0017','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0017','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-28 19:31:54',1),('P000018','久久鸭','LTC000009','法国','可口可乐，销售百年的糖水，获得了全世界额青睐0018','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0018','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-14 14:43:14',1),('P000019','啤酒','LTC000010','四川','可口可乐，销售百年的糖水，获得了全世界额青睐0019','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0019','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-15 08:31:32',1),('P000020','可乐','LTC000010','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0020','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0020','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-27 23:31:17',1),('P000021','久久鸭','LTC000011','江苏','可口可乐，销售百年的糖水，获得了全世界额青睐0021','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0021','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-11 02:38:31',1),('P000022','啤酒','LTC000011','安徽','可口可乐，销售百年的糖水，获得了全世界额青睐0022','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0022','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-12 18:32:23',1),('P000023','可乐','LTC000012','日本','可口可乐，销售百年的糖水，获得了全世界额青睐0023','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0023','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-26 21:01:27',1),('P000024','久久鸭','LTC000012','法国','可口可乐，销售百年的糖水，获得了全世界额青睐0024','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0024','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-29 17:01:40',1),('P000025','啤酒','LTC000013','四川','可口可乐，销售百年的糖水，获得了全世界额青睐0025','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0025','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-11 11:18:11',1),('P000026','可乐','LTC000013','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0026','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0026','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-23 02:50:20',1),('P000027','久久鸭','LTC000014','江苏','可口可乐，销售百年的糖水，获得了全世界额青睐0027','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0027','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-20 01:14:30',1),('P000028','啤酒','LTC000014','安徽','可口可乐，销售百年的糖水，获得了全世界额青睐0028','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0028','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-28 16:42:34',1),('P000029','可乐','LTC000015','日本','可口可乐，销售百年的糖水，获得了全世界额青睐0029','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0029','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-14 22:56:18',1),('P000030','久久鸭','LTC000015','法国','可口可乐，销售百年的糖水，获得了全世界额青睐0030','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0030','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-20 08:50:18',1),('P000031','啤酒','LTC000016','四川','可口可乐，销售百年的糖水，获得了全世界额青睐0031','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0031','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-18 23:20:42',1),('P000032','可乐','LTC000016','广东','可口可乐，销售百年的糖水，获得了全世界额青睐0032','品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品牌品0032','https://demo.doublechaintech.com/demodata/imageManager/genImage/this is a looooooooooog00/400/200/grey/','2019-10-22 05:50:54',1),('P000033','VDL贝壳提亮液','LTC000025','韩国','网红妆前乳，底妆第一步','VDL贝壳贝',NULL,'2019-12-25 15:04:29',1);
/*!40000 ALTER TABLE `product_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_supply_duration_data`
--

DROP TABLE IF EXISTS `product_supply_duration_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_supply_duration_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `duration` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '持续时间',
  `price` decimal(8,2) DEFAULT NULL COMMENT '价格',
  `product` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_product_supply_duration` (`id`,`version`),
  KEY `idx4quantity_of_product_supply_duration` (`quantity`),
  KEY `idx4price_of_product_supply_duration` (`price`),
  KEY `fk4product_of_product_supply_duration_data` (`product`),
  CONSTRAINT `fk4product_of_product_supply_duration_data` FOREIGN KEY (`product`) REFERENCES `supplier_product_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品供应时间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_supply_duration_data`
--

LOCK TABLES `product_supply_duration_data` WRITE;
/*!40000 ALTER TABLE `product_supply_duration_data` DISABLE KEYS */;
INSERT INTO `product_supply_duration_data` VALUES ('PSD000001',100,'现货',7536.34,'SP000001',1),('PSD000002',200,'两天',9908.27,'SP000001',1),('PSD000003',500,'三天',8002.05,'SP000002',1),('PSD000004',100,'一周',7244.66,'SP000002',1),('PSD000005',200,'现货',8175.89,'SP000003',1),('PSD000006',500,'两天',8066.63,'SP000003',1),('PSD000007',100,'三天',9237.11,'SP000004',1),('PSD000008',200,'一周',7219.40,'SP000004',1),('PSD000009',500,'11111',0.00,'SP000011',1),('PSD000010',1,'3个月',2500.00,'SP000013',2),('PSD000011',10,'3个月',2200.00,'SP000013',1),('PSD000012',100,'3个月',1801.00,'SP000013',2);
/*!40000 ALTER TABLE `product_supply_duration_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession_interview_data`
--

DROP TABLE IF EXISTS `profession_interview_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession_interview_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `interview_time` date DEFAULT NULL COMMENT '面试时间',
  `comments` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_profession_interview` (`id`,`version`),
  KEY `idx4interview_time_of_profession_interview` (`interview_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='专业面试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession_interview_data`
--

LOCK TABLES `profession_interview_data` WRITE;
/*!40000 ALTER TABLE `profession_interview_data` DISABLE KEYS */;
INSERT INTO `profession_interview_data` VALUES ('PI000001','技术部','2017-03-25','能力各方面表现不错，进入下一轮',1);
/*!40000 ALTER TABLE `profession_interview_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province_center_department_data`
--

DROP TABLE IF EXISTS `province_center_department_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province_center_department_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `founded` date DEFAULT NULL COMMENT '成立',
  `province_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省中心',
  `manager` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经理',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_province_center_department` (`id`,`version`),
  KEY `idx4founded_of_province_center_department` (`founded`),
  KEY `fk4province_center_of_province_center_department_data` (`province_center`),
  CONSTRAINT `fk4province_center_of_province_center_department_data` FOREIGN KEY (`province_center`) REFERENCES `retail_store_province_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='省中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province_center_department_data`
--

LOCK TABLES `province_center_department_data` WRITE;
/*!40000 ALTER TABLE `province_center_department_data` DISABLE KEYS */;
INSERT INTO `province_center_department_data` VALUES ('PCD000001','供应链部','2019-03-14','RSPC000001','刘强',1),('PCD000002','采购部','2018-03-24','RSPC000001','王德宏',1),('PCD000003','管理部','2017-11-16','RSPC000002','刘强',1),('PCD000004','财务部','2017-01-29','RSPC000002','王德宏',1);
/*!40000 ALTER TABLE `province_center_department_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province_center_employee_data`
--

DROP TABLE IF EXISTS `province_center_employee_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province_center_employee_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `founded` date DEFAULT NULL COMMENT '成立',
  `department` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  `province_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省中心',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_province_center_employee` (`id`,`version`),
  KEY `idx4mobile_of_province_center_employee` (`mobile`),
  KEY `idx4founded_of_province_center_employee` (`founded`),
  KEY `fk4department_of_province_center_employee_data` (`department`),
  KEY `fk4province_center_of_province_center_employee_data` (`province_center`),
  CONSTRAINT `fk4department_of_province_center_employee_data` FOREIGN KEY (`department`) REFERENCES `province_center_department_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4province_center_of_province_center_employee_data` FOREIGN KEY (`province_center`) REFERENCES `retail_store_province_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='省中心员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province_center_employee_data`
--

LOCK TABLES `province_center_employee_data` WRITE;
/*!40000 ALTER TABLE `province_center_employee_data` DISABLE KEYS */;
INSERT INTO `province_center_employee_data` VALUES ('PCE000001','刘强','13999998888','wangdehong@yatang.cn','2018-06-08','PCD000001','RSPC000001',1),('PCE000002','王德宏','13900000002','liuqiang@yatang.cn','2019-04-08','PCD000001','RSPC000001',1),('PCE000003','刘强','13900000003','wangdehong@yatang.cn','2017-01-04','PCD000002','RSPC000001',1),('PCE000004','王德宏','13900000004','liuqiang@yatang.cn','2018-06-20','PCD000001','RSPC000004',3),('PCE000005','刘强','13900000005','wangdehong@yatang.cn','2018-09-30','PCD000003','RSPC000002',1),('PCE000006','王德宏','13900000006','liuqiang@yatang.cn','2017-01-10','PCD000003','RSPC000002',1),('PCE000007','刘强','13900000007','wangdehong@yatang.cn','2019-03-27','PCD000004','RSPC000002',1),('PCE000008','王德宏','13900000008','liuqiang@yatang.cn','2017-09-10','PCD000004','RSPC000002',1),('PCE000009','hgjgh','13544784266','ghjgh','2020-06-03','PCD000003','RSPC000007',1),('PCE000010','员工','15151929302','1@123.com','2020-07-08','PCD000002','RSPC000008',1);
/*!40000 ALTER TABLE `province_center_employee_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_holiday_data`
--

DROP TABLE IF EXISTS `public_holiday_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_holiday_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_public_holiday` (`id`,`version`),
  KEY `fk4company_of_public_holiday_data` (`company`),
  CONSTRAINT `fk4company_of_public_holiday_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公共假日';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_holiday_data`
--

LOCK TABLES `public_holiday_data` WRITE;
/*!40000 ALTER TABLE `public_holiday_data` DISABLE KEYS */;
INSERT INTO `public_holiday_data` VALUES ('PH000001','PH00','RSCC000001','元旦节','节日快乐，万事如意！',1),('PH000002','PH000002','RSCC000001','春节','节日快乐，万事如意！0002',1);
/*!40000 ALTER TABLE `public_holiday_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_key_type_data`
--

DROP TABLE IF EXISTS `public_key_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_key_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_key_type_data`
--

LOCK TABLES `public_key_type_data` WRITE;
/*!40000 ALTER TABLE `public_key_type_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `public_key_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_link_data`
--

DROP TABLE IF EXISTS `quick_link_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_link_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  `image_path` varchar(512) CHARACTER SET ascii DEFAULT NULL COMMENT '图片路径',
  `link_target` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接的目标',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `app` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_quick_link` (`id`,`version`),
  KEY `idx4create_time_of_quick_link` (`create_time`),
  KEY `fk4app_of_quick_link_data` (`app`),
  CONSTRAINT `fk4app_of_quick_link_data` FOREIGN KEY (`app`) REFERENCES `user_app_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快速链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_link_data`
--

LOCK TABLES `quick_link_data` WRITE;
/*!40000 ALTER TABLE `quick_link_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `quick_link_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiving_space_data`
--

DROP TABLE IF EXISTS `receiving_space_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiving_space_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `description` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_receiving_space` (`id`,`version`),
  KEY `idx4latitude_of_receiving_space` (`latitude`),
  KEY `idx4longitude_of_receiving_space` (`longitude`),
  KEY `idx4last_update_time_of_receiving_space` (`last_update_time`),
  KEY `fk4warehouse_of_receiving_space_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_receiving_space_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收货区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiving_space_data`
--

LOCK TABLES `receiving_space_data` WRITE;
/*!40000 ALTER TABLE `receiving_space_data` DISABLE KEYS */;
INSERT INTO `receiving_space_data` VALUES ('RS000001','成都龙泉驿飞鹤路20号仓库卸货区','02887654321','每个收货区可以供一辆车卸货','1876平方米','W000001',42.182602,130.914341,'2019-10-12 01:54:04',1),('RS000002','成都龙泉驿飞鹤路20号仓库卸货区0002','028876543210002','每个收货区可以供一辆车卸货0002','1876平方米0002','W000001',41.491094,131.543345,'2019-10-24 15:53:22',2),('RS000003','成都龙泉驿飞鹤路20号仓库卸货区0003','028876543210003','每个收货区可以供一辆车卸货0003','1876平方米0003','W000002',40.992174,130.531752,'2019-10-23 08:56:15',1),('RS000004','成都龙泉驿飞鹤路20号仓库卸货区0004','028876543210004','每个收货区可以供一辆车卸货0004','1876平方米0004','W000002',42.133056,130.931763,'2019-10-11 22:59:07',1);
/*!40000 ALTER TABLE `receiving_space_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsibility_type_data`
--

DROP TABLE IF EXISTS `responsibility_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsibility_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `base_description` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基本描述',
  `detail_description` varchar(116) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_responsibility_type` (`id`,`version`),
  KEY `fk4company_of_responsibility_type_data` (`company`),
  CONSTRAINT `fk4company_of_responsibility_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='责任类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsibility_type_data`
--

LOCK TABLES `responsibility_type_data` WRITE;
/*!40000 ALTER TABLE `responsibility_type_data` DISABLE KEYS */;
INSERT INTO `responsibility_type_data` VALUES ('RT000001','S0000','RSCC000001','合规管理','负责集团及其他分公司信息系统有效运作，并使集团在技术上领先',1),('RT000002','S00000002','RSCC000001','财务管理','负责集团及其他分公司信息系统有效运作，并使集团在技术上领先0002',1);
/*!40000 ALTER TABLE `responsibility_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_city_service_center_data`
--

DROP TABLE IF EXISTS `retail_store_city_service_center_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_city_service_center_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `founded` date DEFAULT NULL COMMENT '成立',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_city_service_center` (`id`,`version`),
  KEY `idx4founded_of_retail_store_city_service_center` (`founded`),
  KEY `idx4last_update_time_of_retail_store_city_service_center` (`last_update_time`),
  KEY `fk4belongs_to_of_retail_store_city_service_center_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_retail_store_city_service_center_data` FOREIGN KEY (`belongs_to`) REFERENCES `retail_store_province_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超城市服务中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_city_service_center_data`
--

LOCK TABLES `retail_store_city_service_center_data` WRITE;
/*!40000 ALTER TABLE `retail_store_city_service_center_data` DISABLE KEYS */;
INSERT INTO `retail_store_city_service_center_data` VALUES ('RSCSC000001','双链小超成都办事处','2017-02-03','RSPC000002','2019-10-27 21:36:22',3),('RSCSC000002','双链小超绵阳办事处','2018-05-16','RSPC000001','2019-10-14 19:40:33',1),('RSCSC000003','双链小超巴中办事处','2018-08-23','RSPC000002','2019-10-14 17:49:32',1),('RSCSC000004','双链小超成都办事处','2019-01-24','RSPC000002','2019-10-09 19:42:32',1),('RSCSC000005','地产类sdfggdfgfgfgdfgdg','2020-06-01','RSPC000001','2020-06-01 23:55:39',1),('RSCSC000006','服务中心','2020-07-01','RSPC000008','2020-07-08 15:30:15',1);
/*!40000 ALTER TABLE `retail_store_city_service_center_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_closing_data`
--

DROP TABLE IF EXISTS `retail_store_closing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_closing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_closing` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商店关闭';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_closing_data`
--

LOCK TABLES `retail_store_closing_data` WRITE;
/*!40000 ALTER TABLE `retail_store_closing_data` DISABLE KEYS */;
INSERT INTO `retail_store_closing_data` VALUES ('RSC000001','关闭',1);
/*!40000 ALTER TABLE `retail_store_closing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_country_center_data`
--

DROP TABLE IF EXISTS `retail_store_country_center_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_country_center_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `service_number` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务号码',
  `founded` date DEFAULT NULL COMMENT '成立',
  `web_site` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站',
  `address` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `operated_by` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '由',
  `legal_representative` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '法定代表人',
  `description` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_country_center` (`id`,`version`),
  KEY `idx4founded_of_retail_store_country_center` (`founded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超全国运营中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_country_center_data`
--

LOCK TABLES `retail_store_country_center_data` WRITE;
/*!40000 ALTER TABLE `retail_store_country_center_data` DISABLE KEYS */;
INSERT INTO `retail_store_country_center_data` VALUES ('RSCC000001','双链小超中国国运营中心','4000-800-','2016-11-11','https://www.doublechaintech.com/','四川省成都市天府新区双链大厦','双链集团','张喜来','中国中心正式成立，恭喜恭喜',1);
/*!40000 ALTER TABLE `retail_store_country_center_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_creation_data`
--

DROP TABLE IF EXISTS `retail_store_creation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_creation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_creation` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超的创作';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_creation_data`
--

LOCK TABLES `retail_store_creation_data` WRITE;
/*!40000 ALTER TABLE `retail_store_creation_data` DISABLE KEYS */;
INSERT INTO `retail_store_creation_data` VALUES ('RSC000001','已经建好了',1);
/*!40000 ALTER TABLE `retail_store_creation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_data`
--

DROP TABLE IF EXISTS `retail_store_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `telephone` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `owner` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `retail_store_country_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '双链小超全国运营中心',
  `city_service_center` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市服务中心',
  `creation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建',
  `investment_invitation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '招商',
  `franchising` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '加盟',
  `decoration` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装修',
  `opening` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开业',
  `closing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关闭',
  `founded` date DEFAULT NULL COMMENT '成立',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `description` varchar(84) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `current_status` varchar(72) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store` (`id`,`version`),
  KEY `idx4founded_of_retail_store` (`founded`),
  KEY `idx4latitude_of_retail_store` (`latitude`),
  KEY `idx4longitude_of_retail_store` (`longitude`),
  KEY `idx4last_update_time_of_retail_store` (`last_update_time`),
  KEY `fk4retail_store_country_center_of_retail_store_data` (`retail_store_country_center`),
  KEY `fk4city_service_center_of_retail_store_data` (`city_service_center`),
  CONSTRAINT `fk4city_service_center_of_retail_store_data` FOREIGN KEY (`city_service_center`) REFERENCES `retail_store_city_service_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4retail_store_country_center_of_retail_store_data` FOREIGN KEY (`retail_store_country_center`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_data`
--

LOCK TABLES `retail_store_data` WRITE;
/*!40000 ALTER TABLE `retail_store_data` DISABLE KEYS */;
INSERT INTO `retail_store_data` VALUES ('RS000001','中和社区小超','02887654321','吕刚',NULL,'RSCSC000006',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-26',39.783170,132.152480,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让','2019-10-15 04:39:18','CREATED',5),('RS000002','华阳社区小超','028876543210002','吕刚0002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-10',40.376701,131.811116,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0002','2019-10-28 22:00:47','INVESTMENT_INVITED',2),('RS000003','大源社区小超','028876543210003','吕刚0003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-21',40.390555,131.840701,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0003','2019-10-18 17:16:31','FRANCHISED',2),('RS000004','中和社区小超','028876543210004','吕刚0004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-22',41.629067,131.247542,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0004','2019-10-21 12:32:03','DECORATED',2),('RS000005','华阳社区小超','028876543210005','吕刚0005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-29',41.985184,130.632195,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0005','2019-10-21 18:10:50','OPENNED',2),('RS000006','大源社区小超','028876543210006','吕刚0006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-21',41.708360,129.687881,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0006','2019-10-26 23:01:35','CLOSED',2),('RS000007','中和社区小超','028876543210007','吕刚0007',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-24',41.576193,130.173448,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0007','2019-10-16 14:39:16','CREATED',2),('RS000008','华阳社区小超1312312311','028876543210008','吕刚0008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-18',40.273606,129.994496,'啤酒饮料矿泉水，香肠瓜子方便面, 请让一让0008','2019-10-24 10:20:06','INVESTMENT_INVITED',5),('RS000009','北京办事处','87654321','北京业主','RSCC000001','RSCSC000004','RSC000001','RSII000001','RSF000001','RSD000001','RSO000001','RSC000001','2020-06-01',110.000000,120.000000,'经纬度随便填写的','2020-06-11 14:01:48',NULL,1);
/*!40000 ALTER TABLE `retail_store_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_decoration_data`
--

DROP TABLE IF EXISTS `retail_store_decoration_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_decoration_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_decoration` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超装修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_decoration_data`
--

LOCK TABLES `retail_store_decoration_data` WRITE;
/*!40000 ALTER TABLE `retail_store_decoration_data` DISABLE KEYS */;
INSERT INTO `retail_store_decoration_data` VALUES ('RSD000001','装修',1);
/*!40000 ALTER TABLE `retail_store_decoration_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_franchising_data`
--

DROP TABLE IF EXISTS `retail_store_franchising_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_franchising_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_franchising` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超的特许经营';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_franchising_data`
--

LOCK TABLES `retail_store_franchising_data` WRITE;
/*!40000 ALTER TABLE `retail_store_franchising_data` DISABLE KEYS */;
INSERT INTO `retail_store_franchising_data` VALUES ('RSF000001','谢谢加盟',1);
/*!40000 ALTER TABLE `retail_store_franchising_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_investment_invitation_data`
--

DROP TABLE IF EXISTS `retail_store_investment_invitation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_investment_invitation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_investment_invitation` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超招商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_investment_invitation_data`
--

LOCK TABLES `retail_store_investment_invitation_data` WRITE;
/*!40000 ALTER TABLE `retail_store_investment_invitation_data` DISABLE KEYS */;
INSERT INTO `retail_store_investment_invitation_data` VALUES ('RSII000001','欢迎前来咨询',1);
/*!40000 ALTER TABLE `retail_store_investment_invitation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_member_address_data`
--

DROP TABLE IF EXISTS `retail_store_member_address_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_member_address_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `mobile_phone` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '移动电话',
  `address` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_member_address` (`id`,`version`),
  KEY `idx4mobile_phone_of_retail_store_member_address` (`mobile_phone`),
  KEY `fk4owner_of_retail_store_member_address_data` (`owner`),
  CONSTRAINT `fk4owner_of_retail_store_member_address_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='零售店会员地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_member_address_data`
--

LOCK TABLES `retail_store_member_address_data` WRITE;
/*!40000 ALTER TABLE `retail_store_member_address_data` DISABLE KEYS */;
INSERT INTO `retail_store_member_address_data` VALUES ('RSMA000001','家里','RSM000001','18099887766','四川省成都市科学城北路33号',1),('RSMA000002','办公室','RSM000001','13900000002','四川省成都市科学城北路33号0002',1),('RSMA000003','出差临时地址','RSM000002','13900000003','四川省成都市科学城北路33号0003',1),('RSMA000004','家里','RSM000002','13900000004','四川省成都市科学城北路33号0004',1);
/*!40000 ALTER TABLE `retail_store_member_address_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_member_coupon_data`
--

DROP TABLE IF EXISTS `retail_store_member_coupon_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_member_coupon_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `number` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_member_coupon` (`id`,`version`),
  KEY `idx4last_update_time_of_retail_store_member_coupon` (`last_update_time`),
  KEY `fk4owner_of_retail_store_member_coupon_data` (`owner`),
  CONSTRAINT `fk4owner_of_retail_store_member_coupon_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超会员优惠券';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_member_coupon_data`
--

LOCK TABLES `retail_store_member_coupon_data` WRITE;
/*!40000 ALTER TABLE `retail_store_member_coupon_data` DISABLE KEYS */;
INSERT INTO `retail_store_member_coupon_data` VALUES ('RSMC000001','优惠券','RSM000001','CP00001','2019-10-19 03:28:20',1),('RSMC000002','优惠券0002','RSM000001','CP000010002','2019-10-24 14:49:58',1),('RSMC000003','优惠券0003','RSM000002','CP000010003','2019-10-16 20:14:27',1),('RSMC000004','优惠券0004','RSM000002','CP000010004','2019-10-13 20:34:43',1);
/*!40000 ALTER TABLE `retail_store_member_coupon_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_member_data`
--

DROP TABLE IF EXISTS `retail_store_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_member_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mobile_phone` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '移动电话',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_member` (`id`,`version`),
  KEY `idx4mobile_phone_of_retail_store_member` (`mobile_phone`),
  KEY `fk4owner_of_retail_store_member_data` (`owner`),
  CONSTRAINT `fk4owner_of_retail_store_member_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_member_data`
--

LOCK TABLES `retail_store_member_data` WRITE;
/*!40000 ALTER TABLE `retail_store_member_data` DISABLE KEYS */;
INSERT INTO `retail_store_member_data` VALUES ('RSM000001','李亚青','18099887766',NULL,2),('RSM000002','李亚青00022','13922220002',NULL,3),('RSM000003','电商平台架构演进','17316886802',NULL,2),('RSM000004','电商平台架构演进','17316886802',NULL,2),('RSM000005','电商平台架构演进','17316886802',NULL,2),('RSM000006','电商平台架构演进','17316886802',NULL,2),('RSM000007','电商平台架构演进','17316886802',NULL,2),('RSM000008','电商平台架构演进','17316886802',NULL,2),('RSM000009','电商平台架构演进','17316886802',NULL,2),('RSM000010','TEST','18988889999',NULL,2),('RSM000011','张五','13111111111',NULL,3),('RSM000012','max max','18915921631','RSCC000001',1);
/*!40000 ALTER TABLE `retail_store_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_member_gift_card_consume_record_data`
--

DROP TABLE IF EXISTS `retail_store_member_gift_card_consume_record_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_member_gift_card_consume_record_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `occure_time` date DEFAULT NULL COMMENT '发生时间',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `number` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数',
  `amount` decimal(6,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_member_gift_card_consume_record` (`id`,`version`),
  KEY `idx731733097010508` (`occure_time`),
  KEY `idx4amount_of_retail_store_member_gift_card_consume_record` (`amount`),
  KEY `fk4owner_of_retail_store_member_gift_card_consume_record_data` (`owner`),
  KEY `fk4biz_order_of_731733099538364` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_731733099538364` FOREIGN KEY (`biz_order`) REFERENCES `consumer_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4owner_of_retail_store_member_gift_card_consume_record_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_gift_card_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='零售商店会员卡消费记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_member_gift_card_consume_record_data`
--

LOCK TABLES `retail_store_member_gift_card_consume_record_data` WRITE;
/*!40000 ALTER TABLE `retail_store_member_gift_card_consume_record_data` DISABLE KEYS */;
INSERT INTO `retail_store_member_gift_card_consume_record_data` VALUES ('RSMGCCR000001','2017-04-16','RSMGC000001','CO000001','GF00001',18.08,1),('RSMGCCR000002','2017-08-02','RSMGC000001','CO000001','GF000010002',17.78,1),('RSMGCCR000003','2016-11-06','RSMGC000001','CO000002','GF000010003',19.21,1),('RSMGCCR000004','2016-11-15','RSMGC000001','CO000002','GF000010004',17.93,1),('RSMGCCR000005','2018-03-24','RSMGC000001','CO000003','GF000010005',20.59,1),('RSMGCCR000006','2018-07-03','RSMGC000001','CO000003','GF000010006',15.26,1),('RSMGCCR000007','2017-05-25','RSMGC000001','CO000004','GF000010007',19.69,1),('RSMGCCR000008','2018-11-08','RSMGC000001','CO000004','GF000010008',20.40,1),('RSMGCCR000009','2017-02-06','RSMGC000002','CO000005','GF000010009',17.59,1),('RSMGCCR000010','2017-04-08','RSMGC000002','CO000005','GF000010010',17.39,1),('RSMGCCR000011','2019-06-27','RSMGC000002','CO000006','GF000010011',17.31,1),('RSMGCCR000012','2018-10-25','RSMGC000002','CO000006','GF000010012',20.08,1),('RSMGCCR000013','2019-09-30','RSMGC000002','CO000007','GF000010013',18.58,1),('RSMGCCR000014','2018-03-22','RSMGC000002','CO000007','GF000010014',20.67,1),('RSMGCCR000015','2018-06-10','RSMGC000002','CO000008','GF000010015',20.02,1),('RSMGCCR000016','2017-05-27','RSMGC000002','CO000008','GF000010016',19.32,1),('RSMGCCR000017','2017-06-19','RSMGC000003','CO000009','GF000010017',16.87,1),('RSMGCCR000018','2018-04-12','RSMGC000003','CO000009','GF000010018',14.79,1),('RSMGCCR000019','2018-07-30','RSMGC000003','CO000010','GF000010019',16.51,1),('RSMGCCR000020','2019-10-29','RSMGC000003','CO000010','GF000010020',17.42,1),('RSMGCCR000021','2017-10-19','RSMGC000003','CO000011','GF000010021',16.99,1),('RSMGCCR000022','2018-09-28','RSMGC000003','CO000011','GF000010022',16.22,1),('RSMGCCR000023','2019-02-06','RSMGC000003','CO000012','GF000010023',19.24,1),('RSMGCCR000024','2019-07-31','RSMGC000003','CO000012','GF000010024',15.37,1),('RSMGCCR000025','2017-06-29','RSMGC000004','CO000013','GF000010025',18.62,1),('RSMGCCR000026','2018-11-07','RSMGC000004','CO000013','GF000010026',15.82,1),('RSMGCCR000027','2018-11-01','RSMGC000004','CO000014','GF000010027',18.27,1),('RSMGCCR000028','2018-03-02','RSMGC000004','CO000014','GF000010028',16.25,1),('RSMGCCR000029','2018-08-10','RSMGC000004','CO000015','GF000010029',16.25,1),('RSMGCCR000030','2017-05-21','RSMGC000004','CO000015','GF000010030',15.74,1),('RSMGCCR000031','2018-03-26','RSMGC000004','CO000016','GF000010031',17.51,1),('RSMGCCR000032','2017-07-19','RSMGC000004','CO000016','GF000010032',19.28,1);
/*!40000 ALTER TABLE `retail_store_member_gift_card_consume_record_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_member_gift_card_data`
--

DROP TABLE IF EXISTS `retail_store_member_gift_card_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_member_gift_card_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `number` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数',
  `remain` decimal(7,2) DEFAULT NULL COMMENT '保持',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_member_gift_card` (`id`,`version`),
  KEY `idx4remain_of_retail_store_member_gift_card` (`remain`),
  KEY `fk4owner_of_retail_store_member_gift_card_data` (`owner`),
  CONSTRAINT `fk4owner_of_retail_store_member_gift_card_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_member_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='零售店会员礼品卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_member_gift_card_data`
--

LOCK TABLES `retail_store_member_gift_card_data` WRITE;
/*!40000 ALTER TABLE `retail_store_member_gift_card_data` DISABLE KEYS */;
INSERT INTO `retail_store_member_gift_card_data` VALUES ('RSMGC000001','礼品卡','RSM000001','CP00001',195.00,1),('RSMGC000002','礼品卡0002','RSM000001','CP000010002',170.41,1),('RSMGC000003','礼品卡0003','RSM000002','CP000010003',161.54,1),('RSMGC000004','礼品卡0004','RSM000002','CP000010004',174.51,1);
/*!40000 ALTER TABLE `retail_store_member_gift_card_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_opening_data`
--

DROP TABLE IF EXISTS `retail_store_opening_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_opening_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `comment` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_opening` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超开业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_opening_data`
--

LOCK TABLES `retail_store_opening_data` WRITE;
/*!40000 ALTER TABLE `retail_store_opening_data` DISABLE KEYS */;
INSERT INTO `retail_store_opening_data` VALUES ('RSO000001','装修',1);
/*!40000 ALTER TABLE `retail_store_opening_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_approval_data`
--

DROP TABLE IF EXISTS `retail_store_order_approval_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_approval_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `approve_time` date DEFAULT NULL COMMENT '批准时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_approval` (`id`,`version`),
  KEY `idx4approve_time_of_retail_store_order_approval` (`approve_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单批准';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_approval_data`
--

LOCK TABLES `retail_store_order_approval_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_approval_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_approval_data` VALUES ('RSOA000001','批准者','2018-08-17',1);
/*!40000 ALTER TABLE `retail_store_order_approval_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_confirmation_data`
--

DROP TABLE IF EXISTS `retail_store_order_confirmation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_confirmation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `confirm_time` date DEFAULT NULL COMMENT '确认时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_confirmation` (`id`,`version`),
  KEY `idx4confirm_time_of_retail_store_order_confirmation` (`confirm_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单确认';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_confirmation_data`
--

LOCK TABLES `retail_store_order_confirmation_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_confirmation_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_confirmation_data` VALUES ('RSOC000001','确认者','2019-08-27',1);
/*!40000 ALTER TABLE `retail_store_order_confirmation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_data`
--

DROP TABLE IF EXISTS `retail_store_order_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `buyer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '买方',
  `seller` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卖方',
  `title` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `total_amount` decimal(14,2) DEFAULT NULL COMMENT '总金额',
  `confirmation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '确认',
  `approval` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '验收',
  `processing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理',
  `picking` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '捡货',
  `shipment` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装运',
  `delivery` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '送货',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `current_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order` (`id`,`version`),
  KEY `idx4total_amount_of_retail_store_order` (`total_amount`),
  KEY `idx4last_update_time_of_retail_store_order` (`last_update_time`),
  KEY `fk4buyer_of_retail_store_order_data` (`buyer`),
  KEY `fk4seller_of_retail_store_order_data` (`seller`),
  CONSTRAINT `fk4buyer_of_retail_store_order_data` FOREIGN KEY (`buyer`) REFERENCES `retail_store_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4seller_of_retail_store_order_data` FOREIGN KEY (`seller`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超的订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_data`
--

LOCK TABLES `retail_store_order_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_data` VALUES ('RSO000001','RS000002',NULL,'双链小超给双链供应链下的订单',2288832512.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-15 07:16:55','CONFIRMED',3),('RSO000002',NULL,NULL,'双链小超给双链供应链下的订单0002',2250231808.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-15 08:15:45','APPROVED',2),('RSO000003',NULL,NULL,'双链小超给双链供应链下的订单0003',2110799360.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-16 05:00:28','PROCESSED',2),('RSO000004',NULL,NULL,'双链小超给双链供应链下的订单0004',2859489792.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-29 08:16:15','PICKED',2),('RSO000005',NULL,NULL,'双链小超给双链供应链下的订单0005',2321585152.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-09 07:28:25','SHIPPED',2),('RSO000006',NULL,NULL,'双链小超给双链供应链下的订单0006',2565438208.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-09 11:58:34','DELIVERED',2),('RSO000007',NULL,NULL,'双链小超给双链供应链下的订单0007',2501727488.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-08 15:07:55','CONFIRMED',2),('RSO000008',NULL,NULL,'双链小超给双链供应链下的订单0008',2354060800.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-10 01:44:44','APPROVED',2),('RSO000009',NULL,NULL,'双链小超给双链供应链下的订单0009',2266902528.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-18 01:23:55','PROCESSED',2),('RSO000010',NULL,NULL,'双链小超给双链供应链下的订单0010',2282540800.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-13 06:05:36','PICKED',2),('RSO000011',NULL,NULL,'双链小超给双链供应链下的订单0011',2247429632.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-26 02:53:33','SHIPPED',2),('RSO000012',NULL,NULL,'双链小超给双链供应链下的订单0012',2357473280.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-10 06:49:54','DELIVERED',2),('RSO000013',NULL,NULL,'双链小超给双链供应链下的订单0013',2727792384.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-21 17:05:52','CONFIRMED',2),('RSO000014',NULL,NULL,'双链小超给双链供应链下的订单0014',2904827392.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-16 11:49:45','APPROVED',3),('RSO000015',NULL,NULL,'双链小超给双链供应链下的订单0015',2855325952.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 17:42:03','PROCESSED',2),('RSO000016',NULL,NULL,'双链小超给双链供应链下的订单0017f',2369279232.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-18 21:26:36','PICKED',8),('RSO000017',NULL,NULL,'采购订单',10000.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-27 18:13:34','INIT',2),('RSO000018',NULL,NULL,'所有的一切都正常，就是无法访问80端口',111111.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-04 16:42:37','INIT',2),('RSO000019',NULL,NULL,'000000',100.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-05 23:07:14','INIT',5),('RSO000020','RS000004','RSCC000001','秒杀166',777777.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-28 08:36:55','INIT',1),('RSO000021','RS000001','RSCC000001','2211111',2111.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-30 14:25:08','INIT',1),('RSO000022','RS000009','RSCC000001','chaoshen',23.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-12 11:36:38',NULL,1),('RSO000023','RS000009','RSCC000001','125g滢亮皙白洁面乳2',100.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-23 17:07:00',NULL,1);
/*!40000 ALTER TABLE `retail_store_order_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_delivery_data`
--

DROP TABLE IF EXISTS `retail_store_order_delivery_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_delivery_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `delivery_time` date DEFAULT NULL COMMENT '交货时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_delivery` (`id`,`version`),
  KEY `idx4delivery_time_of_retail_store_order_delivery` (`delivery_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单交付';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_delivery_data`
--

LOCK TABLES `retail_store_order_delivery_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_delivery_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_delivery_data` VALUES ('RSOD000001','送货者','2017-06-10',1);
/*!40000 ALTER TABLE `retail_store_order_delivery_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_line_item_data`
--

DROP TABLE IF EXISTS `retail_store_order_line_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_line_item_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `sku_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `sku_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `amount` decimal(5,2) DEFAULT NULL COMMENT '金额',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `unit_of_measurement` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测量单位',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_line_item` (`id`,`version`),
  KEY `idx4sku_id_of_retail_store_order_line_item` (`sku_id`),
  KEY `idx4amount_of_retail_store_order_line_item` (`amount`),
  KEY `idx4quantity_of_retail_store_order_line_item` (`quantity`),
  KEY `fk4biz_order_of_retail_store_order_line_item_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_retail_store_order_line_item_data` FOREIGN KEY (`biz_order`) REFERENCES `retail_store_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超订单行项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_line_item_data`
--

LOCK TABLES `retail_store_order_line_item_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_line_item_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_line_item_data` VALUES ('RSOLI000001','RSO000001','SKU','大瓶可乐',3.48,7030,'件',1),('RSOLI000002','RSO000001','SKU0002','大瓶可乐0002',2.81,9729,'公斤',1),('RSOLI000003','RSO000002','SKU0003','大瓶可乐0003',3.90,8962,'米',1),('RSOLI000004','RSO000002','SKU0004','大瓶可乐0004',3.30,7876,'件',1),('RSOLI000005','RSO000003','SKU0005','大瓶可乐0005',3.33,8194,'公斤',1),('RSOLI000006','RSO000003','SKU0006','大瓶可乐0006',3.49,9264,'米',1),('RSOLI000007','RSO000004','SKU0007','大瓶可乐0007',2.86,7532,'件',1),('RSOLI000008','RSO000004','SKU0008','大瓶可乐0008',3.52,7005,'公斤',1),('RSOLI000009','RSO000005','SKU0009','大瓶可乐0009',3.27,9392,'米',1),('RSOLI000010','RSO000005','SKU0010','大瓶可乐0010',3.24,8435,'件',1),('RSOLI000011','RSO000006','SKU0011','大瓶可乐0011',3.87,9610,'公斤',1),('RSOLI000012','RSO000006','SKU0012','大瓶可乐0012',3.71,7413,'米',1),('RSOLI000013','RSO000007','SKU0013','大瓶可乐0013',3.73,9175,'件',1),('RSOLI000014','RSO000007','SKU0014','大瓶可乐0014',3.14,9892,'公斤',1),('RSOLI000015','RSO000008','SKU0015','大瓶可乐0015',3.25,8424,'米',1),('RSOLI000016','RSO000008','SKU0016','大瓶可乐0016',2.79,8428,'件',1),('RSOLI000017','RSO000009','SKU0017','大瓶可乐0017',3.31,7129,'公斤',1),('RSOLI000018','RSO000009','SKU0018','大瓶可乐0018',3.61,7058,'米',1),('RSOLI000019','RSO000010','SKU0019','大瓶可乐0019',2.82,7851,'件',1),('RSOLI000020','RSO000010','SKU0020','大瓶可乐0020',3.62,8431,'公斤',1),('RSOLI000021','RSO000011','SKU0021','大瓶可乐0021',3.20,8083,'米',1),('RSOLI000022','RSO000011','SKU0022','大瓶可乐0022',2.95,7133,'件',1),('RSOLI000023','RSO000012','SKU0023','大瓶可乐0023',3.28,7995,'公斤',1),('RSOLI000024','RSO000012','SKU0024','大瓶可乐0024',3.07,9935,'米',1),('RSOLI000025','RSO000013','SKU0025','大瓶可乐0025',3.02,8059,'件',1),('RSOLI000026','RSO000013','SKU0026','大瓶可乐0026',3.51,9065,'公斤',1),('RSOLI000027','RSO000014','SKU0027','大瓶可乐0027',3.40,7409,'米',1),('RSOLI000028','RSO000014','SKU0028','大瓶可乐0028',2.83,7683,'件',1),('RSOLI000029','RSO000015','SKU0029','大瓶可乐0029',3.33,7590,'公斤',1),('RSOLI000030','RSO000009','SKU0030','大瓶可乐0030',3.50,7437,'米',2),('RSOLI000031','RSO000016','SKU0031','大瓶可乐0031',3.56,7234,'件',1),('RSOLI000032','RSO000016','SKU0032','大瓶可乐0032',3.45,9372,'公斤',1),('RSOLI000033','RSO000020','66','666',66.00,6,'6',1);
/*!40000 ALTER TABLE `retail_store_order_line_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_payment_group_data`
--

DROP TABLE IF EXISTS `retail_store_order_payment_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_payment_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `card_number` varchar(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡号码',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_payment_group` (`id`,`version`),
  KEY `fk4biz_order_of_retail_store_order_payment_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_retail_store_order_payment_group_data` FOREIGN KEY (`biz_order`) REFERENCES `retail_store_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单付款组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_payment_group_data`
--

LOCK TABLES `retail_store_order_payment_group_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_payment_group_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_payment_group_data` VALUES ('RSOPG000001','付款办法','RSO000001','4111 1111 1111 - ',1),('RSOPG000002','付款办法0002','RSO000001','4111 1111 1111 - 0002',1),('RSOPG000003','付款办法0003','RSO000002','4111 1111 1111 - 0003',1),('RSOPG000004','付款办法0004','RSO000002','4111 1111 1111 - 0004',1),('RSOPG000005','付款办法0005','RSO000003','4111 1111 1111 - 0005',1),('RSOPG000006','付款办法0006','RSO000003','4111 1111 1111 - 0006',1),('RSOPG000007','付款办法0007','RSO000004','4111 1111 1111 - 0007',1),('RSOPG000008','付款办法0008','RSO000004','4111 1111 1111 - 0008',1),('RSOPG000009','付款办法0009','RSO000005','4111 1111 1111 - 0009',1),('RSOPG000010','付款办法0010','RSO000005','4111 1111 1111 - 0010',1),('RSOPG000011','付款办法0011','RSO000006','4111 1111 1111 - 0011',1),('RSOPG000012','付款办法0012','RSO000006','4111 1111 1111 - 0012',1),('RSOPG000013','付款办法0013','RSO000007','4111 1111 1111 - 0013',1),('RSOPG000014','付款办法0014','RSO000007','4111 1111 1111 - 0014',1),('RSOPG000015','付款办法0015','RSO000008','4111 1111 1111 - 0015',1),('RSOPG000016','付款办法0016','RSO000008','4111 1111 1111 - 0016',1),('RSOPG000017','付款办法0017','RSO000009','4111 1111 1111 - 0017',1),('RSOPG000018','付款办法0018','RSO000009','4111 1111 1111 - 0018',1),('RSOPG000019','付款办法0019','RSO000010','4111 1111 1111 - 0019',1),('RSOPG000020','付款办法0020','RSO000010','4111 1111 1111 - 0020',1),('RSOPG000021','付款办法0021','RSO000011','4111 1111 1111 - 0021',1),('RSOPG000022','付款办法0022','RSO000011','4111 1111 1111 - 0022',1),('RSOPG000023','付款办法0023','RSO000012','4111 1111 1111 - 0023',1),('RSOPG000024','付款办法0024','RSO000012','4111 1111 1111 - 0024',1),('RSOPG000025','付款办法0025','RSO000013','4111 1111 1111 - 0025',1),('RSOPG000026','付款办法0026','RSO000013','4111 1111 1111 - 0026',1),('RSOPG000027','付款办法0027','RSO000014','4111 1111 1111 - 0027',1),('RSOPG000028','付款办法0028','RSO000014','4111 1111 1111 - 0028',1),('RSOPG000029','付款办法0029','RSO000015','4111 1111 1111 - 0029',1),('RSOPG000030','付款办法0030','RSO000015','4111 1111 1111 - 0030',1),('RSOPG000031','付款办法0031','RSO000016','4111 1111 1111 - 0031',1),('RSOPG000032','付款办法0032','RSO000016','4111 1111 1111 - 0032',1);
/*!40000 ALTER TABLE `retail_store_order_payment_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_picking_data`
--

DROP TABLE IF EXISTS `retail_store_order_picking_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_picking_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `process_time` date DEFAULT NULL COMMENT '过程的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_picking` (`id`,`version`),
  KEY `idx4process_time_of_retail_store_order_picking` (`process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单拣货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_picking_data`
--

LOCK TABLES `retail_store_order_picking_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_picking_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_picking_data` VALUES ('RSOP000001','处理者','2019-06-16',1);
/*!40000 ALTER TABLE `retail_store_order_picking_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_processing_data`
--

DROP TABLE IF EXISTS `retail_store_order_processing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_processing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `process_time` date DEFAULT NULL COMMENT '过程的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_processing` (`id`,`version`),
  KEY `idx4process_time_of_retail_store_order_processing` (`process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_processing_data`
--

LOCK TABLES `retail_store_order_processing_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_processing_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_processing_data` VALUES ('RSOP000001','处理者','2019-05-26',1);
/*!40000 ALTER TABLE `retail_store_order_processing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_shipment_data`
--

DROP TABLE IF EXISTS `retail_store_order_shipment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_shipment_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `ship_time` date DEFAULT NULL COMMENT '船的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_shipment` (`id`,`version`),
  KEY `idx4ship_time_of_retail_store_order_shipment` (`ship_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单出货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_shipment_data`
--

LOCK TABLES `retail_store_order_shipment_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_shipment_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_shipment_data` VALUES ('RSOS000001','运货者','2018-02-15',1);
/*!40000 ALTER TABLE `retail_store_order_shipment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_order_shipping_group_data`
--

DROP TABLE IF EXISTS `retail_store_order_shipping_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_order_shipping_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `amount` decimal(5,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_order_shipping_group` (`id`,`version`),
  KEY `idx4amount_of_retail_store_order_shipping_group` (`amount`),
  KEY `fk4biz_order_of_retail_store_order_shipping_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_retail_store_order_shipping_group_data` FOREIGN KEY (`biz_order`) REFERENCES `retail_store_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生超订单送货分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_order_shipping_group_data`
--

LOCK TABLES `retail_store_order_shipping_group_data` WRITE;
/*!40000 ALTER TABLE `retail_store_order_shipping_group_data` DISABLE KEYS */;
INSERT INTO `retail_store_order_shipping_group_data` VALUES ('RSOSG000001','送货到双链中和社区店','RSO000001',4.96,1),('RSOSG000002','送货到双链中和社区店0002','RSO000001',4.38,1),('RSOSG000003','送货到双链中和社区店0003','RSO000002',5.20,1),('RSOSG000004','送货到双链中和社区店0004','RSO000002',5.08,1),('RSOSG000005','送货到双链中和社区店0005','RSO000003',4.33,1),('RSOSG000006','送货到双链中和社区店0006','RSO000003',4.66,1),('RSOSG000007','送货到双链中和社区店0007','RSO000004',4.92,1),('RSOSG000008','送货到双链中和社区店0008','RSO000004',5.28,1),('RSOSG000009','送货到双链中和社区店0009','RSO000005',4.58,1),('RSOSG000010','送货到双链中和社区店0010','RSO000005',5.36,1),('RSOSG000011','送货到双链中和社区店0011','RSO000006',5.26,1),('RSOSG000012','送货到双链中和社区店0012','RSO000006',4.58,1),('RSOSG000013','送货到双链中和社区店0013','RSO000007',4.91,1),('RSOSG000014','送货到双链中和社区店0014','RSO000007',4.96,1),('RSOSG000015','送货到双链中和社区店0015','RSO000008',4.92,1),('RSOSG000016','送货到双链中和社区店0016','RSO000008',4.60,1),('RSOSG000017','送货到双链中和社区店0017','RSO000009',5.48,1),('RSOSG000018','送货到双链中和社区店0018','RSO000009',4.88,1),('RSOSG000019','送货到双链中和社区店0019','RSO000010',4.87,1),('RSOSG000020','送货到双链中和社区店0020','RSO000010',5.73,1),('RSOSG000021','送货到双链中和社区店0021','RSO000011',5.00,1),('RSOSG000022','送货到双链中和社区店0022','RSO000011',4.76,1),('RSOSG000023','送货到双链中和社区店0023','RSO000012',4.92,1),('RSOSG000024','送货到双链中和社区店0024','RSO000012',5.96,1),('RSOSG000025','送货到双链中和社区店0025','RSO000013',4.24,1),('RSOSG000026','送货到双链中和社区店0026','RSO000013',5.85,1),('RSOSG000027','送货到双链中和社区店0027','RSO000014',5.44,1),('RSOSG000028','送货到双链中和社区店0028','RSO000014',4.83,1),('RSOSG000029','送货到双链中和社区店0029','RSO000015',4.42,1),('RSOSG000030','送货到双链中和社区店0030','RSO000015',5.03,1),('RSOSG000031','送货到双链中和社区店0031','RSO000016',4.54,1),('RSOSG000032','送货到双链中和社区店0032','RSO000016',5.42,1),('RSOSG000033','SAGA-DEMO1','RSO000015',200.00,1);
/*!40000 ALTER TABLE `retail_store_order_shipping_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_store_province_center_data`
--

DROP TABLE IF EXISTS `retail_store_province_center_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_store_province_center_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `founded` date DEFAULT NULL COMMENT '成立',
  `country` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '国',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_retail_store_province_center` (`id`,`version`),
  KEY `idx4founded_of_retail_store_province_center` (`founded`),
  KEY `idx4last_update_time_of_retail_store_province_center` (`last_update_time`),
  KEY `fk4country_of_retail_store_province_center_data` (`country`),
  CONSTRAINT `fk4country_of_retail_store_province_center_data` FOREIGN KEY (`country`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='双链小超省中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_store_province_center_data`
--

LOCK TABLES `retail_store_province_center_data` WRITE;
/*!40000 ALTER TABLE `retail_store_province_center_data` DISABLE KEYS */;
INSERT INTO `retail_store_province_center_data` VALUES ('RSPC000001','双链小超四川省运营中心','2019-01-19',NULL,'2019-10-23 20:09:32',4),('RSPC000002','双链小超北京运营中心','2018-07-08',NULL,'2019-10-15 21:00:50',4),('RSPC000003','奥术大师阿萨德啊','2019-12-02',NULL,'2019-12-02 14:36:06',2),('RSPC000004','班华升沙雕','2019-12-06',NULL,'2019-12-02 15:25:08',5),('RSPC000005','测试01---2020','2020-02-04',NULL,'2020-02-04 12:49:29',5),('RSPC000006','123123123','2020-03-04',NULL,'2020-03-05 16:57:25',3),('RSPC000007','hhhhhhh','2020-05-07','RSCC000001','2020-05-28 15:38:54',1),('RSPC000008','小超分公司','2020-06-01','RSCC000001','2020-06-17 21:53:11',2);
/*!40000 ALTER TABLE `retail_store_province_center_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_grade_data`
--

DROP TABLE IF EXISTS `salary_grade_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary_grade_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `detail_description` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_salary_grade` (`id`,`version`),
  KEY `fk4company_of_salary_grade_data` (`company`),
  CONSTRAINT `fk4company_of_salary_grade_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工资等级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_grade_data`
--

LOCK TABLES `salary_grade_data` WRITE;
/*!40000 ALTER TABLE `salary_grade_data` DISABLE KEYS */;
INSERT INTO `salary_grade_data` VALUES ('SG000001','SG0000','RSCC000001','一级薪资','故事还得从遥远的古代开始.................................................',1),('SG000002','SG00000002','RSCC000001','二级薪资','故事还得从遥远的古代开始.................................................0002',1);
/*!40000 ALTER TABLE `salary_grade_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoring_data`
--

DROP TABLE IF EXISTS `scoring_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoring_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `scored_by` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '由谁打分',
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `comment` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_scoring` (`id`,`version`),
  KEY `idx4score_of_scoring` (`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoring_data`
--

LOCK TABLES `scoring_data` WRITE;
/*!40000 ALTER TABLE `scoring_data` DISABLE KEYS */;
INSERT INTO `scoring_data` VALUES ('S000001','王志文',92,'这个题做的真不错啊',1);
/*!40000 ALTER TABLE `scoring_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_blocking_data`
--

DROP TABLE IF EXISTS `sec_user_blocking_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_blocking_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `block_time` datetime DEFAULT NULL COMMENT '块时间',
  `comments` varchar(96) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_sec_user_blocking` (`id`,`version`),
  KEY `idx4block_time_of_sec_user_blocking` (`block_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户屏蔽';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_blocking_data`
--

LOCK TABLES `sec_user_blocking_data` WRITE;
/*!40000 ALTER TABLE `sec_user_blocking_data` DISABLE KEYS */;
INSERT INTO `sec_user_blocking_data` VALUES ('SUB000001','currentUser()','2019-10-27 04:56:41','这个用户多次发送违反社区的帖子，现在把他给屏蔽了',1);
/*!40000 ALTER TABLE `sec_user_blocking_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_data`
--

DROP TABLE IF EXISTS `sec_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `login` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `pwd` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PWD',
  `weixin_openid` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信openid',
  `weixin_appid` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信Appid',
  `access_token` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '访问令牌',
  `verification_code` int(11) DEFAULT NULL COMMENT '验证码',
  `verification_code_expire` datetime DEFAULT NULL COMMENT '验证码过期',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `domain` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  `blocking` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '屏蔽',
  `current_status` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_sec_user` (`id`,`version`),
  UNIQUE KEY `idx4login_of_sec_user` (`login`),
  UNIQUE KEY `idx4email_of_sec_user` (`email`),
  UNIQUE KEY `idx4mobile_of_sec_user` (`mobile`),
  KEY `idx4verification_code_of_sec_user` (`verification_code`),
  KEY `idx4verification_code_expire_of_sec_user` (`verification_code_expire`),
  KEY `idx4last_login_time_of_sec_user` (`last_login_time`),
  KEY `fk4domain_of_sec_user_data` (`domain`),
  CONSTRAINT `fk4domain_of_sec_user_data` FOREIGN KEY (`domain`) REFERENCES `user_domain_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SEC的用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_data`
--

LOCK TABLES `sec_user_data` WRITE;
/*!40000 ALTER TABLE `sec_user_data` DISABLE KEYS */;
INSERT INTO `sec_user_data` VALUES ('SU000001','User000001','13900000001','1000001@qq.com','24327F1C00D22210298A18D0DB9AA6C4C22DEAC4BEAE7C02E616442CA7764246','weixin_openid_000001','weixin_appid_000001','jwt_token_000001',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000002','User000002','13900000002','1000002@qq.com','BB5210DAE99659C7164D7DBCFC51FB2D167D0DA372D58EF26A9F8533EEA2967C','weixin_openid_000002','weixin_appid_000002','jwt_token_000002',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000003','User000003','13900000003','1000003@qq.com','9D4104DF2774FDEAAE074CA35B052D8F664F4F99064C7BEAB0B589C2605C4EDA','weixin_openid_000003','weixin_appid_000003','jwt_token_000003',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000004','User000004','13900000004','1000004@qq.com','9B223EBD008D7B544A3A640739EBE47459D3A4C5296DDA00F594FAF60FE88B28','weixin_openid_000004','weixin_appid_000004','jwt_token_000004',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000005','User000005','13900000005','1000005@qq.com','AE5F93F319636A96963C06D035B97F004D18E61D80129EFEA331784A6E21DC5C','weixin_openid_000005','weixin_appid_000005','jwt_token_000005',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000006','User000006','13900000006','1000006@qq.com','5FBBDBEAD9F84D599E8819CEEA167854CDA0FFD8D297D17D12E4619CE76F3B55','weixin_openid_000006','weixin_appid_000006','jwt_token_000006',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000007','User000007','13900000007','1000007@qq.com','A9652F0D7C1ACCB421BAF55EB3E7286AFA8F591897F1AE4CEB6A76402CCBE803','weixin_openid_000007','weixin_appid_000007','jwt_token_000007',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000008','User000008','13900000008','1000008@qq.com','A4B83C2652CD6BECE5C7909576555B313078D7EE50AA028F26B8F0245C191B4B','weixin_openid_000008','weixin_appid_000008','jwt_token_000008',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000009','User000009','13900000009','1000009@qq.com','88F8AB5F153081C5AB21F5E5354B4EB14286EFB43CEA588ED1C73FE2B46B35C1','weixin_openid_000009','weixin_appid_000009','jwt_token_000009',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000010','User000010','13900000010','1000010@qq.com','EF8232ABB97CC3858F271527A1AA1452A33715A3AC48312A44B0940D5C948600','weixin_openid_000010','weixin_appid_000010','jwt_token_000010',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000011','User000011','13900000011','1000011@qq.com','FE7AF5D4F030CD575C117A73124FC39AB41528DFFC41D2CFBC1130E755694243','weixin_openid_000011','weixin_appid_000011','jwt_token_000011',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000012','User000012','13900000012','1000012@qq.com','999DD89E35807C62458F2D191D4F55548B49245EEC6E186FE9497EC867C40088','weixin_openid_000012','weixin_appid_000012','jwt_token_000012',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000013','User000013','13900000013','1000013@qq.com','0AE92E17166CBB59341836C218E92EF083058CC4E3108C5FD2FB904650013A69','weixin_openid_000013','weixin_appid_000013','jwt_token_000013',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000014','User000014','13900000014','1000014@qq.com','E79E64241204EB0FCE03C4BA0E315F21ECDB11D22264BE7B1AAD41D04D77A6D0','weixin_openid_000014','weixin_appid_000014','jwt_token_000014',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000015','User000015','13900000015','1000015@qq.com','1D858671B95062DAFE1D989C089188CC4EFDF3D5C45D8F24DD20BF3E352A3D9B','weixin_openid_000015','weixin_appid_000015','jwt_token_000015',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000016','User000016','13900000016','1000016@qq.com','14B1F5E667F8B6697C8A2952C3619D9AD82F846E5B32FD9F258918786B3ED519','weixin_openid_000016','weixin_appid_000016','jwt_token_000016',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000017','User000017','13900000017','1000017@qq.com','1A803C7096681FC2AA7C55C46A6A99D8089481B96997774EA5B1C785C8035010','weixin_openid_000017','weixin_appid_000017','jwt_token_000017',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000018','User000018','13900000018','1000018@qq.com','FA485AC06A6BD6BBF7AC9F253FCC516227CB232598792232277A70386FD892ED','weixin_openid_000018','weixin_appid_000018','jwt_token_000018',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000019','User000019','13900000019','1000019@qq.com','A5D9532EB6FC76A7D06764C14F751A4AFBC7C5BC49C215272A2EE42BBEA1A502','weixin_openid_000019','weixin_appid_000019','jwt_token_000019',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000020','User000020','13900000020','1000020@qq.com','7CB0B35123A314B427FC1459C4083AA314D8F9E2505BB9187594B223BE5623A0','weixin_openid_000020','weixin_appid_000020','jwt_token_000020',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000021','User000021','13900000021','1000021@qq.com','C21B3A395B3E337A4D06491AEC7B485523BB4E5790DE925000FECEC237F939F2','weixin_openid_000021','weixin_appid_000021','jwt_token_000021',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000022','User000022','13900000022','1000022@qq.com','D6C0743E4B79BE93E8BDB4D0B55054EC3532F6B1AF8F69EDD542F0D22DD228C9','weixin_openid_000022','weixin_appid_000022','jwt_token_000022',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1),('SU000023','User000023','13900000023','1000023@qq.com','D5405F91AA444B65AE234F0AA39FF8A43A2F0CF28F238479A0AC08D9C292629E','weixin_openid_000023','weixin_appid_000023','jwt_token_000023',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',NULL,'INIT',1);
/*!40000 ALTER TABLE `sec_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_space_data`
--

DROP TABLE IF EXISTS `shipping_space_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_space_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `description` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_shipping_space` (`id`,`version`),
  KEY `idx4latitude_of_shipping_space` (`latitude`),
  KEY `idx4longitude_of_shipping_space` (`longitude`),
  KEY `idx4last_update_time_of_shipping_space` (`last_update_time`),
  KEY `fk4warehouse_of_shipping_space_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_shipping_space_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='发货区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_space_data`
--

LOCK TABLES `shipping_space_data` WRITE;
/*!40000 ALTER TABLE `shipping_space_data` DISABLE KEYS */;
INSERT INTO `shipping_space_data` VALUES ('SS000001','成都龙泉驿飞鹤路20号装货区','02887654321','1876平方米','W000001',41.456595,131.508838,'每个收货区可以供一辆车装货','2019-10-11 23:38:06',1),('SS000002','成都龙泉驿飞鹤路20号装货区0002','028876543210002','1876平方米0002','W000002',41.432581,130.039017,'每个收货区可以供一辆车装货0002','2019-10-19 19:19:13',2),('SS000003','成都龙泉驿飞鹤路20号装货区0003','028876543210003','1876平方米0003','W000002',41.224697,132.177099,'每个收货区可以供一辆车装货0003','2019-10-20 03:58:45',1),('SS000004','成都龙泉驿飞鹤路20号装货区0004','028876543210004','1876平方米0004','W000002',42.578090,131.889296,'每个收货区可以供一辆车装货0004','2019-10-24 02:10:50',1);
/*!40000 ALTER TABLE `shipping_space_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_type_data`
--

DROP TABLE IF EXISTS `skill_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_skill_type` (`id`,`version`),
  KEY `fk4company_of_skill_type_data` (`company`),
  CONSTRAINT `fk4company_of_skill_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='技能类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_type_data`
--

LOCK TABLES `skill_type_data` WRITE;
/*!40000 ALTER TABLE `skill_type_data` DISABLE KEYS */;
INSERT INTO `skill_type_data` VALUES ('ST000001','S0000','RSCC000001','JAVA编程',1),('ST000002','S00000002','RSCC000001','大数据',1),('ST000003','4962','RSCC000001','sdgfgd',1);
/*!40000 ALTER TABLE `skill_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sku_data`
--

DROP TABLE IF EXISTS `sku_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sku_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `size` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大小',
  `product` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品',
  `barcode` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '条码',
  `package_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '包装类型',
  `net_content` varchar(92) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '净含量',
  `price` decimal(8,2) DEFAULT NULL COMMENT '价格',
  `picture` varchar(512) CHARACTER SET ascii DEFAULT NULL COMMENT '图片',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_sku` (`id`,`version`),
  KEY `idx4price_of_sku` (`price`),
  KEY `fk4product_of_sku_data` (`product`),
  CONSTRAINT `fk4product_of_sku_data` FOREIGN KEY (`product`) REFERENCES `product_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SKU';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sku_data`
--

LOCK TABLES `sku_data` WRITE;
/*!40000 ALTER TABLE `sku_data` DISABLE KEYS */;
INSERT INTO `sku_data` VALUES ('S000001','可乐-大罐的','大','P000001','TM00000000001','包装类型','包装数量等信息,包装数量等信息,包装数量等信息',1106.31,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000002','可乐-大罐的0002','中','P000001','TM000000000010002','包装类型0002','包装数量等信息,包装数量等信息,包装数量等信息0002',1218.98,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000003','可乐-大罐的0003','小','P000002','TM000000000010003','包装类型0003','包装数量等信息,包装数量等信息,包装数量等信息0003',1225.92,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000004','可乐-大罐的0004','大','P000002','TM000000000010004','包装类型0004','包装数量等信息,包装数量等信息,包装数量等信息0004',1077.35,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000005','可乐-大罐的0005','中','P000003','TM000000000010005','包装类型0005','包装数量等信息,包装数量等信息,包装数量等信息0005',951.21,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000006','可乐-大罐的0006','小','P000003','TM000000000010006','包装类型0006','包装数量等信息,包装数量等信息,包装数量等信息0006',1320.41,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000007','可乐-大罐的0007','大','P000004','TM000000000010007','包装类型0007','包装数量等信息,包装数量等信息,包装数量等信息0007',1255.21,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000008','可乐-大罐的0008','中','P000004','TM000000000010008','包装类型0008','包装数量等信息,包装数量等信息,包装数量等信息0008',1311.21,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000009','可乐-大罐的0009','小','P000005','TM000000000010009','包装类型0009','包装数量等信息,包装数量等信息,包装数量等信息0009',1185.95,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000010','可乐-大罐的0010','大','P000005','TM000000000010010','包装类型0010','包装数量等信息,包装数量等信息,包装数量等信息0010',1260.62,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000011','可乐-大罐的0011','中','P000006','TM000000000010011','包装类型0011','包装数量等信息,包装数量等信息,包装数量等信息0011',1046.97,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000012','可乐-大罐的0012','小','P000006','TM000000000010012','包装类型0012','包装数量等信息,包装数量等信息,包装数量等信息0012',1212.81,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000013','可乐-大罐的0013','大','P000007','TM000000000010013','包装类型0013','包装数量等信息,包装数量等信息,包装数量等信息0013',1007.78,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000014','可乐-大罐的0014','中','P000007','TM000000000010014','包装类型0014','包装数量等信息,包装数量等信息,包装数量等信息0014',1205.27,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000015','可乐-大罐的0015','小','P000008','TM000000000010015','包装类型0015','包装数量等信息,包装数量等信息,包装数量等信息0015',1018.56,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000016','可乐-大罐的0016','大','P000008','TM000000000010016','包装类型0016','包装数量等信息,包装数量等信息,包装数量等信息0016',1183.26,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000017','可乐-大罐的0017','中','P000009','TM000000000010017','包装类型0017','包装数量等信息,包装数量等信息,包装数量等信息0017',1189.42,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000018','可乐-大罐的0018','小','P000009','TM000000000010018','包装类型0018','包装数量等信息,包装数量等信息,包装数量等信息0018',1088.08,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000019','可乐-大罐的0019','大','P000010','TM000000000010019','包装类型0019','包装数量等信息,包装数量等信息,包装数量等信息0019',1038.59,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000020','可乐-大罐的0020','中','P000010','TM000000000010020','包装类型0020','包装数量等信息,包装数量等信息,包装数量等信息0020',1176.36,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000021','可乐-大罐的0021','小','P000011','TM000000000010021','包装类型0021','包装数量等信息,包装数量等信息,包装数量等信息0021',1257.54,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000022','可乐-大罐的0022','大','P000011','TM000000000010022','包装类型0022','包装数量等信息,包装数量等信息,包装数量等信息0022',1206.42,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000023','可乐-大罐的0023','中','P000012','TM000000000010023','包装类型0023','包装数量等信息,包装数量等信息,包装数量等信息0023',1087.77,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000024','可乐-大罐的0024','小','P000012','TM000000000010024','包装类型0024','包装数量等信息,包装数量等信息,包装数量等信息0024',1096.73,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000025','可乐-大罐的0025','大','P000013','TM000000000010025','包装类型0025','包装数量等信息,包装数量等信息,包装数量等信息0025',1256.22,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000026','可乐-大罐的0026','中','P000013','TM000000000010026','包装类型0026','包装数量等信息,包装数量等信息,包装数量等信息0026',1263.88,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000027','可乐-大罐的0027','小','P000014','TM000000000010027','包装类型0027','包装数量等信息,包装数量等信息,包装数量等信息0027',1294.60,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000028','可乐-大罐的0028','大','P000014','TM000000000010028','包装类型0028','包装数量等信息,包装数量等信息,包装数量等信息0028',1267.74,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000029','可乐-大罐的0029','中','P000015','TM000000000010029','包装类型0029','包装数量等信息,包装数量等信息,包装数量等信息0029',984.63,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000030','可乐-大罐的0030','小','P000015','TM000000000010030','包装类型0030','包装数量等信息,包装数量等信息,包装数量等信息0030',955.76,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000031','可乐-大罐的0031','大','P000016','TM000000000010031','包装类型0031','包装数量等信息,包装数量等信息,包装数量等信息0031',1025.74,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000032','可乐-大罐的0032','中','P000016','TM000000000010032','包装类型0032','包装数量等信息,包装数量等信息,包装数量等信息0032',1210.91,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000033','可乐-大罐的0033','小','P000017','TM000000000010033','包装类型0033','包装数量等信息,包装数量等信息,包装数量等信息0033',1116.45,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000034','可乐-大罐的0034','大','P000017','TM000000000010034','包装类型0034','包装数量等信息,包装数量等信息,包装数量等信息0034',1238.12,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000035','可乐-大罐的0035','中','P000018','TM000000000010035','包装类型0035','包装数量等信息,包装数量等信息,包装数量等信息0035',1275.70,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000036','可乐-大罐的0036','小','P000018','TM000000000010036','包装类型0036','包装数量等信息,包装数量等信息,包装数量等信息0036',1289.51,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000037','可乐-大罐的0037','大','P000019','TM000000000010037','包装类型0037','包装数量等信息,包装数量等信息,包装数量等信息0037',975.20,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000038','可乐-大罐的0038','中','P000019','TM000000000010038','包装类型0038','包装数量等信息,包装数量等信息,包装数量等信息0038',1255.62,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000039','可乐-大罐的0039','小','P000020','TM000000000010039','包装类型0039','包装数量等信息,包装数量等信息,包装数量等信息0039',990.70,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000040','可乐-大罐的0040','大','P000020','TM000000000010040','包装类型0040','包装数量等信息,包装数量等信息,包装数量等信息0040',997.32,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000041','可乐-大罐的0041','中','P000021','TM000000000010041','包装类型0041','包装数量等信息,包装数量等信息,包装数量等信息0041',1019.80,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000042','可乐-大罐的0042','小','P000021','TM000000000010042','包装类型0042','包装数量等信息,包装数量等信息,包装数量等信息0042',979.44,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000043','可乐-大罐的0043','大','P000022','TM000000000010043','包装类型0043','包装数量等信息,包装数量等信息,包装数量等信息0043',962.07,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000044','可乐-大罐的0044','中','P000022','TM000000000010044','包装类型0044','包装数量等信息,包装数量等信息,包装数量等信息0044',1105.67,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000045','可乐-大罐的0045','小','P000023','TM000000000010045','包装类型0045','包装数量等信息,包装数量等信息,包装数量等信息0045',1091.78,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000046','可乐-大罐的0046','大','P000023','TM000000000010046','包装类型0046','包装数量等信息,包装数量等信息,包装数量等信息0046',1124.08,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000047','可乐-大罐的0047','中','P000024','TM000000000010047','包装类型0047','包装数量等信息,包装数量等信息,包装数量等信息0047',1196.53,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000048','可乐-大罐的0048','小','P000024','TM000000000010048','包装类型0048','包装数量等信息,包装数量等信息,包装数量等信息0048',1321.10,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000049','可乐-大罐的0049','大','P000025','TM000000000010049','包装类型0049','包装数量等信息,包装数量等信息,包装数量等信息0049',1311.46,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000050','可乐-大罐的0050','中','P000025','TM000000000010050','包装类型0050','包装数量等信息,包装数量等信息,包装数量等信息0050',1008.35,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000051','可乐-大罐的0051','小','P000026','TM000000000010051','包装类型0051','包装数量等信息,包装数量等信息,包装数量等信息0051',1241.84,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000052','可乐-大罐的0052','大','P000026','TM000000000010052','包装类型0052','包装数量等信息,包装数量等信息,包装数量等信息0052',1292.74,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000053','可乐-大罐的0053','中','P000027','TM000000000010053','包装类型0053','包装数量等信息,包装数量等信息,包装数量等信息0053',1239.31,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000054','可乐-大罐的0054','小','P000027','TM000000000010054','包装类型0054','包装数量等信息,包装数量等信息,包装数量等信息0054',1132.33,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000055','可乐-大罐的0055','大','P000028','TM000000000010055','包装类型0055','包装数量等信息,包装数量等信息,包装数量等信息0055',1271.90,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000056','可乐-大罐的0056','中','P000028','TM000000000010056','包装类型0056','包装数量等信息,包装数量等信息,包装数量等信息0056',1192.51,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000057','可乐-大罐的0057','小','P000029','TM000000000010057','包装类型0057','包装数量等信息,包装数量等信息,包装数量等信息0057',988.31,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000058','可乐-大罐的0058','大','P000029','TM000000000010058','包装类型0058','包装数量等信息,包装数量等信息,包装数量等信息0058',1302.94,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000059','可乐-大罐的0059','中','P000030','TM000000000010059','包装类型0059','包装数量等信息,包装数量等信息,包装数量等信息0059',1263.46,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000060','可乐-大罐的0060','小','P000030','TM000000000010060','包装类型0060','包装数量等信息,包装数量等信息,包装数量等信息0060',1152.33,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000061','可乐-大罐的0061','大','P000031','TM000000000010061','包装类型0061','包装数量等信息,包装数量等信息,包装数量等信息0061',1242.39,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000062','可乐-大罐的0062','中','P000031','TM000000000010062','包装类型0062','包装数量等信息,包装数量等信息,包装数量等信息0062',1147.39,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000063','可乐-大罐的0063','小','P000032','TM000000000010063','包装类型0063','包装数量等信息,包装数量等信息,包装数量等信息0063',1166.59,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000064','可乐-大罐的0064','大','P000032','TM000000000010064','包装类型0064','包装数量等信息,包装数量等信息,包装数量等信息0064',1096.99,'https://demo.doublechaintech.com/demodata/imageManager/genImage/coco00/400/200/grey/',1),('S000065','贝壳提亮液提亮液1','30ml','P000033','697814521122545411','单品','30ml*2',155.00,NULL,1);
/*!40000 ALTER TABLE `sku_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_pallet_data`
--

DROP TABLE IF EXISTS `smart_pallet_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smart_pallet_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(104) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_smart_pallet` (`id`,`version`),
  KEY `idx4latitude_of_smart_pallet` (`latitude`),
  KEY `idx4longitude_of_smart_pallet` (`longitude`),
  KEY `idx4last_update_time_of_smart_pallet` (`last_update_time`),
  KEY `fk4warehouse_of_smart_pallet_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_smart_pallet_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='智能托盘';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_pallet_data`
--

LOCK TABLES `smart_pallet_data` WRITE;
/*!40000 ALTER TABLE `smart_pallet_data` DISABLE KEYS */;
INSERT INTO `smart_pallet_data` VALUES ('SP000001','成都龙泉驿飞鹤路20号移动区域，比如过道，货运通道等','02887654321','1876平方米',39.951726,132.253335,'W000001','2019-10-21 18:48:56',1),('SP000002','成都龙泉驿飞鹤路20号移动区域，比如过道，货运通道等0002','028876543210002','1876平方米0002',40.915662,132.231366,'W000001','2019-10-14 20:33:06',2),('SP000003','成都龙泉驿飞鹤路20号移动区域，比如过道，货运通道等0003','028876543210003','1876平方米0003',39.800568,130.991166,'W000002','2019-10-15 02:31:51',1),('SP000004','成都龙泉驿飞鹤路20号移动区域，比如过道，货运通道等0004','028876543210004','1876平方米0004',40.253068,132.207039,'W000002','2019-10-26 02:31:11',1),('SP000005','repo123213213','+11239i','12313',123.000000,123.000000,'W000003','2020-03-25 23:29:15',1),('SP000006','四川省成都市青羊区','110110110110','999999万公里',234.000000,234.000000,'W000001','2020-04-21 15:47:28',1);
/*!40000 ALTER TABLE `smart_pallet_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_count_issue_track_data`
--

DROP TABLE IF EXISTS `stock_count_issue_track_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_count_issue_track_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `count_time` date DEFAULT NULL COMMENT '计数时间',
  `summary` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '概览',
  `stock_count` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '盘点',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_stock_count_issue_track` (`id`,`version`),
  KEY `idx4count_time_of_stock_count_issue_track` (`count_time`),
  KEY `fk4stock_count_of_stock_count_issue_track_data` (`stock_count`),
  CONSTRAINT `fk4stock_count_of_stock_count_issue_track_data` FOREIGN KEY (`stock_count`) REFERENCES `goods_shelf_stock_count_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='库存计数问题跟踪';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_count_issue_track_data`
--

LOCK TABLES `stock_count_issue_track_data` WRITE;
/*!40000 ALTER TABLE `stock_count_issue_track_data` DISABLE KEYS */;
INSERT INTO `stock_count_issue_track_data` VALUES ('SCIT000001','盘点差错','2019-04-03','发现错误已经修正完成','GSSC000001',1),('SCIT000002','盘点差错0002','2018-06-09','发现错误已经修正完成0002','GSSC000001',1),('SCIT000003','盘点差错0003','2019-02-25','发现错误已经修正完成0003','GSSC000002',1),('SCIT000004','盘点差错0004','2017-03-05','发现错误已经修正完成0004','GSSC000002',1),('SCIT000005','盘点差错0005','2019-07-13','发现错误已经修正完成0005','GSSC000003',1),('SCIT000006','盘点差错0006','2017-12-02','发现错误已经修正完成0006','GSSC000003',1),('SCIT000007','盘点差错0007','2017-04-27','发现错误已经修正完成0007','GSSC000004',1),('SCIT000008','盘点差错0008','2018-12-25','发现错误已经修正完成0008','GSSC000004',1),('SCIT000009','盘点差错0009','2019-06-02','发现错误已经修正完成0009','GSSC000005',1),('SCIT000010','盘点差错0010','2017-02-06','发现错误已经修正完成0010','GSSC000005',1),('SCIT000011','盘点差错0011','2019-08-29','发现错误已经修正完成0011','GSSC000006',1),('SCIT000012','盘点差错0012','2019-08-22','发现错误已经修正完成0012','GSSC000006',1),('SCIT000013','盘点差错0013','2019-02-23','发现错误已经修正完成0013','GSSC000007',1),('SCIT000014','盘点差错0014','2019-08-23','发现错误已经修正完成0014','GSSC000007',1),('SCIT000015','盘点差错0015','2016-12-08','发现错误已经修正完成0015','GSSC000008',1),('SCIT000016','盘点差错0016','2016-12-10','发现错误已经修正完成0016','GSSC000008',1),('SCIT000017','盘点差错0017','2019-01-13','发现错误已经修正完成0017','GSSC000009',1),('SCIT000018','盘点差错0018','2017-03-31','发现错误已经修正完成0018','GSSC000009',1),('SCIT000019','盘点差错0019','2018-11-04','发现错误已经修正完成0019','GSSC000010',1),('SCIT000020','盘点差错0020','2017-02-21','发现错误已经修正完成0020','GSSC000010',1),('SCIT000021','盘点差错0021','2018-06-08','发现错误已经修正完成0021','GSSC000011',1),('SCIT000022','盘点差错0022','2019-01-17','发现错误已经修正完成0022','GSSC000011',1),('SCIT000023','盘点差错0023','2017-01-29','发现错误已经修正完成0023','GSSC000012',1),('SCIT000024','盘点差错0024','2019-09-16','发现错误已经修正完成0024','GSSC000012',1),('SCIT000025','盘点差错0025','2018-08-08','发现错误已经修正完成0025','GSSC000013',1),('SCIT000026','盘点差错0026','2016-12-08','发现错误已经修正完成0026','GSSC000013',1),('SCIT000027','盘点差错0027','2017-03-26','发现错误已经修正完成0027','GSSC000014',1),('SCIT000028','盘点差错0028','2019-01-02','发现错误已经修正完成0028','GSSC000014',1),('SCIT000029','盘点差错0029','2018-10-27','发现错误已经修正完成0029','GSSC000015',1),('SCIT000030','盘点差错0030','2019-05-01','发现错误已经修正完成0030','GSSC000015',1),('SCIT000031','盘点差错0031','2018-01-18','发现错误已经修正完成0031','GSSC000016',1),('SCIT000032','盘点差错0032','2018-01-28','发现错误已经修正完成0032','GSSC000016',1);
/*!40000 ALTER TABLE `stock_count_issue_track_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_space_data`
--

DROP TABLE IF EXISTS `storage_space_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_space_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_storage_space` (`id`,`version`),
  KEY `idx4latitude_of_storage_space` (`latitude`),
  KEY `idx4longitude_of_storage_space` (`longitude`),
  KEY `idx4last_update_time_of_storage_space` (`last_update_time`),
  KEY `fk4warehouse_of_storage_space_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_storage_space_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='存货区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_space_data`
--

LOCK TABLES `storage_space_data` WRITE;
/*!40000 ALTER TABLE `storage_space_data` DISABLE KEYS */;
INSERT INTO `storage_space_data` VALUES ('SS000001','成都龙泉驿飞鹤路20号存货区','02887654321','1876平方米','W000001',40.479453,132.195097,'2019-10-20 02:19:02',1),('SS000002','成都龙泉驿飞鹤路20号存货区0002','028876543210002','1876平方米0002','W000001',41.273393,131.612701,'2019-10-22 09:56:26',1),('SS000003','成都龙泉驿飞鹤路20号存货区0003','028876543210003','1876平方米0003','W000002',42.323272,129.930024,'2019-10-12 18:03:59',1),('SS000004','成都龙泉驿飞鹤路20号存货区0004','028876543210004','1876平方米0004','W000002',40.373573,130.165213,'2019-10-25 21:52:06',1),('SS000005','四川省成都市青羊区小南街','123','800万公里','W000001',123.000000,234.000000,'2020-04-21 15:30:55',1);
/*!40000 ALTER TABLE `storage_space_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_product_data`
--

DROP TABLE IF EXISTS `supplier_product_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_product_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `product_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '品名',
  `product_description` varchar(52) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品描述',
  `product_unit` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品单元',
  `supplier` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supplier_product` (`id`,`version`),
  KEY `fk4supplier_of_supplier_product_data` (`supplier`),
  CONSTRAINT `fk4supplier_of_supplier_product_data` FOREIGN KEY (`supplier`) REFERENCES `goods_supplier_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应商的产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_product_data`
--

LOCK TABLES `supplier_product_data` WRITE;
/*!40000 ALTER TABLE `supplier_product_data` DISABLE KEYS */;
INSERT INTO `supplier_product_data` VALUES ('SP000001','黑人牙膏','最好的黑人牙膏，只卖3块喽','件','GS000004',2),('SP000002','黑人牙膏0002','最好的黑人牙膏，只卖3块喽0002','公斤','GS000001',2),('SP000003','黑人牙膏0003','最好的黑人牙膏，只卖3块喽0003','米','GS000002',1),('SP000004','黑人牙膏0004','最好的黑人牙膏，只卖3块喽0004','件','GS000002',1),('SP000005','发顺丰','撒旦法暗示法士大夫','发的萨芬','GS000001',1),('SP000006','2342','234234','2342342','GS000001',2),('SP000007','adf','adfa','adf','GS000003',1),('SP000008','射钉','射钉射钉射钉','箱','GS000003',2),('SP000009','鸡蛋','极大呃呃呃呃呃呃','啊啊啊','GS000004',1),('SP000010','行政村admin123发生的撒','萨达第三代','第三代','GS000001',1),('SP000011','罗蒙','罗蒙罗蒙罗蒙罗蒙','件','GS000001',1),('SP000012','汽车车膜','汽车车膜','一张','GS000001',2),('SP000013','iso9000','15米扫码，UHF','产品单元','GS000009',1);
/*!40000 ALTER TABLE `supplier_product_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_space_data`
--

DROP TABLE IF EXISTS `supplier_space_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_space_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(76) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `warehouse` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supplier_space` (`id`,`version`),
  KEY `idx4latitude_of_supplier_space` (`latitude`),
  KEY `idx4longitude_of_supplier_space` (`longitude`),
  KEY `idx4last_update_time_of_supplier_space` (`last_update_time`),
  KEY `fk4warehouse_of_supplier_space_data` (`warehouse`),
  CONSTRAINT `fk4warehouse_of_supplier_space_data` FOREIGN KEY (`warehouse`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应商的空间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_space_data`
--

LOCK TABLES `supplier_space_data` WRITE;
/*!40000 ALTER TABLE `supplier_space_data` DISABLE KEYS */;
INSERT INTO `supplier_space_data` VALUES ('SS000001','成都龙泉驿飞鹤路20号供货商独立管理区','02887654321','1876平方米','W000001',41.998302,131.262244,'2019-10-24 01:31:34',1),('SS000002','成都龙泉驿飞鹤路20号供货商独立管理区0002','028876543210002','1876平方米0002','W000001',41.933062,130.423241,'2019-10-10 01:17:06',1),('SS000003','成都龙泉驿飞鹤路20号供货商独立管理区0003','028876543210003','1876平方米0003','W000002',41.470002,130.875420,'2019-10-19 22:03:31',1),('SS000004','成都龙泉驿飞鹤路20号供货商独立管理区0004','028876543210004','1876平方米0004','W000002',40.505056,130.807609,'2019-10-15 23:42:24',1),('SS000005','南京市鼓楼区','123','342','W000001',123.000000,123.000000,'2020-04-21 15:32:08',2);
/*!40000 ALTER TABLE `supplier_space_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_approval_data`
--

DROP TABLE IF EXISTS `supply_order_approval_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_approval_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `approve_time` date DEFAULT NULL COMMENT '批准时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_approval` (`id`,`version`),
  KEY `idx4approve_time_of_supply_order_approval` (`approve_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单审批';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_approval_data`
--

LOCK TABLES `supply_order_approval_data` WRITE;
/*!40000 ALTER TABLE `supply_order_approval_data` DISABLE KEYS */;
INSERT INTO `supply_order_approval_data` VALUES ('SOA000001','批准者','2017-04-24',1);
/*!40000 ALTER TABLE `supply_order_approval_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_confirmation_data`
--

DROP TABLE IF EXISTS `supply_order_confirmation_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_confirmation_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `confirm_time` date DEFAULT NULL COMMENT '确认时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_confirmation` (`id`,`version`),
  KEY `idx4confirm_time_of_supply_order_confirmation` (`confirm_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单确认';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_confirmation_data`
--

LOCK TABLES `supply_order_confirmation_data` WRITE;
/*!40000 ALTER TABLE `supply_order_confirmation_data` DISABLE KEYS */;
INSERT INTO `supply_order_confirmation_data` VALUES ('SOC000001','确认者','2018-09-06',1);
/*!40000 ALTER TABLE `supply_order_confirmation_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_data`
--

DROP TABLE IF EXISTS `supply_order_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `buyer` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '买方',
  `seller` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卖方',
  `title` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `total_amount` decimal(14,2) DEFAULT NULL COMMENT '总金额',
  `confirmation` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '确认',
  `approval` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '验收',
  `processing` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理',
  `picking` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '捡货',
  `shipment` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装运',
  `delivery` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '送货',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `current_status` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '当前状态',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order` (`id`,`version`),
  KEY `idx4total_amount_of_supply_order` (`total_amount`),
  KEY `idx4last_update_time_of_supply_order` (`last_update_time`),
  KEY `fk4buyer_of_supply_order_data` (`buyer`),
  KEY `fk4seller_of_supply_order_data` (`seller`),
  CONSTRAINT `fk4buyer_of_supply_order_data` FOREIGN KEY (`buyer`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4seller_of_supply_order_data` FOREIGN KEY (`seller`) REFERENCES `goods_supplier_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_data`
--

LOCK TABLES `supply_order_data` WRITE;
/*!40000 ALTER TABLE `supply_order_data` DISABLE KEYS */;
INSERT INTO `supply_order_data` VALUES ('SO000001',NULL,NULL,'双链给供货商下的订单',2618129408.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-18 14:21:44','CONFIRMED',4),('SO000002',NULL,NULL,'双链给供货商下的订单0002',26.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-27 22:25:16','APPROVED',6),('SO000003',NULL,NULL,'双链给供货商下的订单0003',2618256896.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-28 05:22:36','PROCESSED',2),('SO000004',NULL,NULL,'双链给供货商下的订单0004',2643101952.00,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-27 00:00:39','PICKED',5),('SO000005',NULL,NULL,'佛山出新规 物业公司应定期公示收费情况',5000.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-17 21:28:13','INIT',2),('SO000006',NULL,NULL,'123123',123.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-18 00:18:27','INIT',2),('SO000007',NULL,NULL,'12312',123123.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-18 00:18:33','INIT',2),('SO000008','RSCC000001','GS000001','订单1',99.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-27 11:13:24','INIT',5),('SO000009','RSCC000001','GS000006','testd',32.00,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-25 06:18:35',NULL,2);
/*!40000 ALTER TABLE `supply_order_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_delivery_data`
--

DROP TABLE IF EXISTS `supply_order_delivery_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_delivery_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `delivery_time` date DEFAULT NULL COMMENT '交货时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_delivery` (`id`,`version`),
  KEY `idx4delivery_time_of_supply_order_delivery` (`delivery_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单交货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_delivery_data`
--

LOCK TABLES `supply_order_delivery_data` WRITE;
/*!40000 ALTER TABLE `supply_order_delivery_data` DISABLE KEYS */;
INSERT INTO `supply_order_delivery_data` VALUES ('SOD000001','送货者','2017-04-03',1);
/*!40000 ALTER TABLE `supply_order_delivery_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_line_item_data`
--

DROP TABLE IF EXISTS `supply_order_line_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_line_item_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `sku_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `sku_name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `amount` decimal(5,2) DEFAULT NULL COMMENT '金额',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `unit_of_measurement` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测量单位',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_line_item` (`id`,`version`),
  KEY `idx4sku_id_of_supply_order_line_item` (`sku_id`),
  KEY `idx4amount_of_supply_order_line_item` (`amount`),
  KEY `idx4quantity_of_supply_order_line_item` (`quantity`),
  KEY `fk4biz_order_of_supply_order_line_item_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_supply_order_line_item_data` FOREIGN KEY (`biz_order`) REFERENCES `supply_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单行项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_line_item_data`
--

LOCK TABLES `supply_order_line_item_data` WRITE;
/*!40000 ALTER TABLE `supply_order_line_item_data` DISABLE KEYS */;
INSERT INTO `supply_order_line_item_data` VALUES ('SOLI000001','SO000002','SKU','大瓶可乐',4.45,8675,'件',2),('SOLI000002','SO000001','SKU0002','薄膜所需材料',4.95,7209,'公斤',3),('SOLI000003','SO000002','SKU0003','大瓶可乐0003',4.98,7974,'米',1),('SOLI000004','SO000002','SKU0004','大瓶可乐0004',5.50,9805,'件',1),('SOLI000005','SO000003','SKU0005','大瓶可乐0005',4.57,8541,'公斤',1),('SOLI000006','SO000003','SKU0006','大瓶可乐0006',4.24,7127,'米',1),('SOLI000007','SO000004','SKU0007','大瓶可乐0007',4.33,10000,'件',1),('SOLI000008','SO000004','SKU0008','大瓶可乐0008',4.19,9623,'公斤',1);
/*!40000 ALTER TABLE `supply_order_line_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_payment_group_data`
--

DROP TABLE IF EXISTS `supply_order_payment_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_payment_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `card_number` varchar(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡号码',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_payment_group` (`id`,`version`),
  KEY `fk4biz_order_of_supply_order_payment_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_supply_order_payment_group_data` FOREIGN KEY (`biz_order`) REFERENCES `supply_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单付款组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_payment_group_data`
--

LOCK TABLES `supply_order_payment_group_data` WRITE;
/*!40000 ALTER TABLE `supply_order_payment_group_data` DISABLE KEYS */;
INSERT INTO `supply_order_payment_group_data` VALUES ('SOPG000001','付款办法','SO000001','4111 1111 1111 - ',1),('SOPG000002','付款办法0002','SO000001','4111 1111 1111 - 0002',1),('SOPG000003','付款办法0003','SO000002','4111 1111 1111 - 0003',1),('SOPG000004','付款办法0004','SO000002','4111 1111 1111 - 0004',1),('SOPG000005','付款办法0005','SO000003','4111 1111 1111 - 0005',1),('SOPG000006','付款办法0006','SO000003','4111 1111 1111 - 0006',1),('SOPG000007','付款办法0007','SO000004','4111 1111 1111 - 0007',1),('SOPG000008','付款办法0008','SO000004','4111 1111 1111 - 0008',1),('SOPG000009','测试','SO000001','123456',1);
/*!40000 ALTER TABLE `supply_order_payment_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_picking_data`
--

DROP TABLE IF EXISTS `supply_order_picking_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_picking_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `process_time` date DEFAULT NULL COMMENT '过程的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_picking` (`id`,`version`),
  KEY `idx4process_time_of_supply_order_picking` (`process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单拣货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_picking_data`
--

LOCK TABLES `supply_order_picking_data` WRITE;
/*!40000 ALTER TABLE `supply_order_picking_data` DISABLE KEYS */;
INSERT INTO `supply_order_picking_data` VALUES ('SOP000001','处理者','2019-02-27',1);
/*!40000 ALTER TABLE `supply_order_picking_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_processing_data`
--

DROP TABLE IF EXISTS `supply_order_processing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_processing_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `process_time` date DEFAULT NULL COMMENT '过程的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_processing` (`id`,`version`),
  KEY `idx4process_time_of_supply_order_processing` (`process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_processing_data`
--

LOCK TABLES `supply_order_processing_data` WRITE;
/*!40000 ALTER TABLE `supply_order_processing_data` DISABLE KEYS */;
INSERT INTO `supply_order_processing_data` VALUES ('SOP000001','处理者','2019-08-31',1);
/*!40000 ALTER TABLE `supply_order_processing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_shipment_data`
--

DROP TABLE IF EXISTS `supply_order_shipment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_shipment_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `ship_time` date DEFAULT NULL COMMENT '船的时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_shipment` (`id`,`version`),
  KEY `idx4ship_time_of_supply_order_shipment` (`ship_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_shipment_data`
--

LOCK TABLES `supply_order_shipment_data` WRITE;
/*!40000 ALTER TABLE `supply_order_shipment_data` DISABLE KEYS */;
INSERT INTO `supply_order_shipment_data` VALUES ('SOS000001','运货者','2017-01-08',1);
/*!40000 ALTER TABLE `supply_order_shipment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_order_shipping_group_data`
--

DROP TABLE IF EXISTS `supply_order_shipping_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply_order_shipping_group_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `biz_order` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单',
  `amount` decimal(5,2) DEFAULT NULL COMMENT '金额',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_supply_order_shipping_group` (`id`,`version`),
  KEY `idx4amount_of_supply_order_shipping_group` (`amount`),
  KEY `fk4biz_order_of_supply_order_shipping_group_data` (`biz_order`),
  CONSTRAINT `fk4biz_order_of_supply_order_shipping_group_data` FOREIGN KEY (`biz_order`) REFERENCES `supply_order_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应订单送货分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_order_shipping_group_data`
--

LOCK TABLES `supply_order_shipping_group_data` WRITE;
/*!40000 ALTER TABLE `supply_order_shipping_group_data` DISABLE KEYS */;
INSERT INTO `supply_order_shipping_group_data` VALUES ('SOSG000001','送货到金瑞3号仓001','SO000001',5.87,3),('SOSG000002','送货到金瑞2号仓0002','SO000001',4.96,2),('SOSG000003','送货到双链成都2号仓0003','SO000002',5.24,1),('SOSG000004','送货到双链成都2号仓0004','SO000002',5.78,1),('SOSG000005','送货到双链成都2号仓0005','SO000003',5.36,1),('SOSG000006','送货到双链成都2号仓0006','SO000003',5.69,1),('SOSG000007','送货到双链成都2号仓0007','SO000004',4.54,1),('SOSG000008','送货到双链成都2号仓0008','SO000004',5.45,1);
/*!40000 ALTER TABLE `supply_order_shipping_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termination_data`
--

DROP TABLE IF EXISTS `termination_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termination_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `reason` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原因',
  `type` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `comment` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_termination` (`id`,`version`),
  KEY `fk4reason_of_termination_data` (`reason`),
  KEY `fk4type_of_termination_data` (`type`),
  CONSTRAINT `fk4reason_of_termination_data` FOREIGN KEY (`reason`) REFERENCES `termination_reason_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4type_of_termination_data` FOREIGN KEY (`type`) REFERENCES `termination_type_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='雇佣终止';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termination_data`
--

LOCK TABLES `termination_data` WRITE;
/*!40000 ALTER TABLE `termination_data` DISABLE KEYS */;
INSERT INTO `termination_data` VALUES ('T000001','TR000001','TT000001','员工离职',1),('T000002','TR000001','TT000001','员工离职0002',1),('T000003','TR000002','TT000002','员工离职0003',1),('T000004','TR000002','TT000002','员工离职0004',1);
/*!40000 ALTER TABLE `termination_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termination_reason_data`
--

DROP TABLE IF EXISTS `termination_reason_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termination_reason_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `description` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_termination_reason` (`id`,`version`),
  KEY `fk4company_of_termination_reason_data` (`company`),
  CONSTRAINT `fk4company_of_termination_reason_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='雇佣终止的原因';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termination_reason_data`
--

LOCK TABLES `termination_reason_data` WRITE;
/*!40000 ALTER TABLE `termination_reason_data` DISABLE KEYS */;
INSERT INTO `termination_reason_data` VALUES ('TR000001','ETR0000','RSCC000001','业务发展，公司转型',1),('TR000002','ETR00000002','RSCC000001','战略调整',1);
/*!40000 ALTER TABLE `termination_reason_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termination_type_data`
--

DROP TABLE IF EXISTS `termination_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termination_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `base_description` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基本描述',
  `detail_description` varchar(248) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_termination_type` (`id`,`version`),
  KEY `fk4company_of_termination_type_data` (`company`),
  CONSTRAINT `fk4company_of_termination_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='雇佣终止类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termination_type_data`
--

LOCK TABLES `termination_type_data` WRITE;
/*!40000 ALTER TABLE `termination_type_data` DISABLE KEYS */;
INSERT INTO `termination_type_data` VALUES ('TT000001','ETT0000','RSCC000001','合同解除','这个终止原因的描述是这样的.................................................',1),('TT000002','ETT00000002','RSCC000001','辞职','这个终止原因的描述是这样的.................................................0002',1);
/*!40000 ALTER TABLE `termination_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_course_type_data`
--

DROP TABLE IF EXISTS `training_course_type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_course_type_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `code` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  `company` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_training_course_type` (`id`,`version`),
  KEY `fk4company_of_training_course_type_data` (`company`),
  CONSTRAINT `fk4company_of_training_course_type_data` FOREIGN KEY (`company`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='培训课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_course_type_data`
--

LOCK TABLES `training_course_type_data` WRITE;
/*!40000 ALTER TABLE `training_course_type_data` DISABLE KEYS */;
INSERT INTO `training_course_type_data` VALUES ('TCT000001','TC00','RSCC000001','入职培训','培训是提升个人和企业竞争力的法宝',1),('TCT000002','TC000002','RSCC000001','售前培训','培训是提升个人和企业竞争力的法宝0002',1);
/*!40000 ALTER TABLE `training_course_type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_fleet_data`
--

DROP TABLE IF EXISTS `transport_fleet_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_fleet_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_transport_fleet` (`id`,`version`),
  KEY `idx4last_update_time_of_transport_fleet` (`last_update_time`),
  KEY `fk4owner_of_transport_fleet_data` (`owner`),
  CONSTRAINT `fk4owner_of_transport_fleet_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运输车队';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_fleet_data`
--

LOCK TABLES `transport_fleet_data` WRITE;
/*!40000 ALTER TABLE `transport_fleet_data` DISABLE KEYS */;
INSERT INTO `transport_fleet_data` VALUES ('TF000001','王朔','13335183886',NULL,'2019-10-22 16:45:15',4),('TF000002','双链先锋号车队0002','028876543210002',NULL,'2019-10-18 11:56:29',3),('TF000003','冠赫','18136964669',NULL,'2020-01-16 15:25:38',3),('TF000004','hh hhs','2345678901','RSCC000001','2020-04-26 10:23:36',2),('TF000005','li ss','88166624','RSCC000001','2020-07-10 09:00:16',1);
/*!40000 ALTER TABLE `transport_fleet_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_task_data`
--

DROP TABLE IF EXISTS `transport_task_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_task_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `start` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开始',
  `begin_time` date DEFAULT NULL COMMENT '开始时间',
  `end` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结束',
  `driver` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '司机',
  `truck` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡车',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_transport_task` (`id`,`version`),
  KEY `idx4begin_time_of_transport_task` (`begin_time`),
  KEY `idx4latitude_of_transport_task` (`latitude`),
  KEY `idx4longitude_of_transport_task` (`longitude`),
  KEY `fk4end_of_transport_task_data` (`end`),
  KEY `fk4driver_of_transport_task_data` (`driver`),
  KEY `fk4truck_of_transport_task_data` (`truck`),
  KEY `fk4belongs_to_of_transport_task_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_transport_task_data` FOREIGN KEY (`belongs_to`) REFERENCES `transport_fleet_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4driver_of_transport_task_data` FOREIGN KEY (`driver`) REFERENCES `truck_driver_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4end_of_transport_task_data` FOREIGN KEY (`end`) REFERENCES `retail_store_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4truck_of_transport_task_data` FOREIGN KEY (`truck`) REFERENCES `transport_truck_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运输任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_task_data`
--

LOCK TABLES `transport_task_data` WRITE;
/*!40000 ALTER TABLE `transport_task_data` DISABLE KEYS */;
INSERT INTO `transport_task_data` VALUES ('TT000001','货运记录','双链二号仓','2019-06-16','RS000001','TD000001','TT000001','TF000001',40.021927,129.447880,1),('TT000002','货运记录0002','双链二号仓0002','2018-11-22','RS000001','TD000001','TT000001','TF000001',42.359563,130.515747,1),('TT000003','货运记录0003','双链二号仓0003','2019-03-10','RS000002','TD000001','TT000001','TF000001',42.231199,131.281824,1),('TT000004','货运记录0004','双链二号仓0004','2018-12-08','RS000002','TD000001','TT000001','TF000001',42.008173,130.310688,1),('TT000005','货运记录0005','双链二号仓0005','2018-07-13','RS000003','TD000002','TT000002','TF000001',42.045895,129.339732,1),('TT000006','货运记录0006','双链二号仓0006','2017-07-02','RS000003','TD000002','TT000002','TF000001',42.634323,129.658949,1),('TT000007','货运记录0007','双链二号仓0007','2017-05-31','RS000004','TD000002','TT000002','TF000001',40.886480,129.854245,1),('TT000008','货运记录0008','双链二号仓0008','2018-10-03','RS000004','TD000002','TT000002','TF000001',40.184514,130.008806,2),('TT000009','货运记录0009','双链二号仓0009','2017-05-15','RS000005','TD000003','TT000003','TF000002',41.437210,131.189843,1),('TT000010','货运记录0010','双链二号仓0010','2019-04-24','RS000005','TD000003','TT000003','TF000002',42.590153,130.920307,1),('TT000011','货运记录0011','双链二号仓0011','2017-08-01','RS000006','TD000003','TT000003','TF000002',40.309274,129.903499,1),('TT000012','货运记录0012','双链二号仓0012','2018-06-22','RS000006','TD000003','TT000003','TF000002',40.555627,129.759275,1),('TT000013','货运记录0013','双链二号仓0013','2018-11-26','RS000007','TD000004','TT000004','TF000002',41.299022,129.498138,1),('TT000014','货运记录0014','双链二号仓0014','2017-11-22','RS000007','TD000004','TT000004','TF000002',41.831592,130.052613,1),('TT000015','货运记录0015','双链二号仓0015','2017-12-24','RS000008','TD000004','TT000004','TF000002',41.381173,130.157841,1),('TT000016','货运记录0016','双链二号仓0016','2019-02-10','RS000008','TD000004','TT000004','TF000002',40.610042,131.383196,1);
/*!40000 ALTER TABLE `transport_task_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_task_track_data`
--

DROP TABLE IF EXISTS `transport_task_track_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_task_track_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `track_time` date DEFAULT NULL COMMENT '跟踪时间',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `movement` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运动',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_transport_task_track` (`id`,`version`),
  KEY `idx4track_time_of_transport_task_track` (`track_time`),
  KEY `idx4latitude_of_transport_task_track` (`latitude`),
  KEY `idx4longitude_of_transport_task_track` (`longitude`),
  KEY `fk4movement_of_transport_task_track_data` (`movement`),
  CONSTRAINT `fk4movement_of_transport_task_track_data` FOREIGN KEY (`movement`) REFERENCES `transport_task_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运输任务跟踪';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_task_track_data`
--

LOCK TABLES `transport_task_track_data` WRITE;
/*!40000 ALTER TABLE `transport_task_track_data` DISABLE KEYS */;
INSERT INTO `transport_task_track_data` VALUES ('TTT000001','2019-09-06',32.807200,103.858179,'TT000003',2),('TTT000002','2017-01-02',32.708451,105.994487,'TT000005',3),('TTT000003','2017-11-27',32.580869,105.506836,'TT000002',1),('TTT000004','2019-08-07',30.458901,105.844825,'TT000002',1),('TTT000005','2017-02-12',32.775586,105.978312,'TT000003',1),('TTT000006','2017-06-10',31.530559,105.277619,'TT000003',1),('TTT000007','2017-11-27',31.575818,105.406706,'TT000004',1),('TTT000008','2018-06-22',32.325790,104.765339,'TT000004',1),('TTT000009','2017-08-25',31.462849,104.245840,'TT000005',1),('TTT000010','2018-10-26',31.973539,105.234619,'TT000005',1),('TTT000011','2019-07-10',30.374487,103.923684,'TT000006',1),('TTT000012','2019-09-14',30.900964,104.228579,'TT000006',1),('TTT000013','2016-11-01',30.161643,104.444305,'TT000007',1),('TTT000014','2019-08-08',32.434849,104.935713,'TT000007',1),('TTT000015','2017-07-03',155.000000,104.616765,'TT000008',2),('TTT000016','2019-09-07',31.996419,104.667811,'TT000003',2),('TTT000017','2017-07-08',30.320841,105.464882,'TT000009',1),('TTT000018','2017-05-03',30.723397,105.489949,'TT000009',1),('TTT000019','2019-05-30',31.522571,103.832815,'TT000010',1),('TTT000020','2019-01-23',29.953032,105.345657,'TT000010',1),('TTT000021','2018-09-16',30.324019,104.650291,'TT000011',1),('TTT000022','2018-05-10',32.002558,104.370554,'TT000011',1),('TTT000023','2017-05-17',32.147988,104.424964,'TT000012',1),('TTT000024','2018-06-11',30.678064,104.478919,'TT000012',1),('TTT000025','2016-12-11',30.010463,105.970641,'TT000013',1),('TTT000026','2019-08-07',30.783560,104.961671,'TT000013',1),('TTT000027','2018-10-31',30.594499,104.606913,'TT000014',1),('TTT000028','2018-04-25',32.459108,103.613240,'TT000014',1),('TTT000029','2017-06-05',31.680922,105.042229,'TT000015',1),('TTT000030','2016-11-20',32.086196,104.061854,'TT000015',1),('TTT000031','2018-01-17',31.841533,105.107971,'TT000016',1),('TTT000032','2019-05-27',31.911219,104.906322,'TT000016',1);
/*!40000 ALTER TABLE `transport_task_track_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_truck_data`
--

DROP TABLE IF EXISTS `transport_truck_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_truck_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `plate_number` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车牌号码',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `vehicle_license_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汽车牌照号码',
  `engine_number` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发动机号',
  `make_date` date DEFAULT NULL COMMENT '制造日期',
  `mileage` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '里程',
  `body_color` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '车身颜色',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_transport_truck` (`id`,`version`),
  KEY `idx4make_date_of_transport_truck` (`make_date`),
  KEY `fk4owner_of_transport_truck_data` (`owner`),
  CONSTRAINT `fk4owner_of_transport_truck_data` FOREIGN KEY (`owner`) REFERENCES `transport_fleet_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运输车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_truck_data`
--

LOCK TABLES `transport_truck_data` WRITE;
/*!40000 ALTER TABLE `transport_truck_data` DISABLE KEYS */;
INSERT INTO `transport_truck_data` VALUES ('TT000001','运货卡车','川AK5','02887654321','VL9198','EN00102','2017-09-18','100万公里','红色','TF000001',1),('TT000002','运货卡车0002','川AK50002','028876543210002','VL91980002','EN001020002','2019-02-24','100万公里0002','蓝色','TF000001',1),('TT000003','运货卡车0003','川AK50003','028876543210003','VL91980003','EN001020003','2017-08-11','100万公里0003','白色','TF000002',1),('TT000004','运货卡车0004','川AK50004','028876543210004','VL91980004','EN001020004','2019-08-22','100万公里0004','灰色','TF000002',1);
/*!40000 ALTER TABLE `transport_truck_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_node_data`
--

DROP TABLE IF EXISTS `tree_node_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tree_node_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `node_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id',
  `node_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_value` int(11) DEFAULT NULL,
  `right_value` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_node_data`
--

LOCK TABLES `tree_node_data` WRITE;
/*!40000 ALTER TABLE `tree_node_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tree_node_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_driver_data`
--

DROP TABLE IF EXISTS `truck_driver_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truck_driver_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `driver_license_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '驾驶执照号码',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `belongs_to` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_truck_driver` (`id`,`version`),
  KEY `idx4contact_number_of_truck_driver` (`contact_number`),
  KEY `fk4belongs_to_of_truck_driver_data` (`belongs_to`),
  CONSTRAINT `fk4belongs_to_of_truck_driver_data` FOREIGN KEY (`belongs_to`) REFERENCES `transport_fleet_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='卡车司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_driver_data`
--

LOCK TABLES `truck_driver_data` WRITE;
/*!40000 ALTER TABLE `truck_driver_data` DISABLE KEYS */;
INSERT INTO `truck_driver_data` VALUES ('TD000001','运货卡车司机','51099887733','18777778888','TF000001',1),('TD000002','运货卡车司机0002','510998877330002','13900000002','TF000001',1),('TD000003','运货卡车司机0003','510998877330003','13900000003','TF000002',1),('TD000004','运货卡车司机0004','510998877330004','13900000004','TF000002',1);
/*!40000 ALTER TABLE `truck_driver_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_allow_list_data`
--

DROP TABLE IF EXISTS `user_allow_list_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_allow_list_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `user_identity` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户身份',
  `user_special_functions` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户特殊功能',
  `domain` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_user_white_list` (`id`,`version`),
  KEY `fk4domain_of_user_white_list_data` (`domain`),
  CONSTRAINT `fk4domain_of_user_white_list_data` FOREIGN KEY (`domain`) REFERENCES `user_domain_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户白名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_allow_list_data`
--

LOCK TABLES `user_allow_list_data` WRITE;
/*!40000 ALTER TABLE `user_allow_list_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_allow_list_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_app_data`
--

DROP TABLE IF EXISTS `user_app_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_app_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头衔',
  `sec_user` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SEC的用户',
  `app_icon` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序图标',
  `full_access` tinyint(4) DEFAULT NULL COMMENT '完全访问',
  `permission` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '许可',
  `object_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对象类型',
  `object_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对象ID',
  `location` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_user_app` (`id`,`version`),
  KEY `idx4object_id_of_user_app` (`object_id`),
  KEY `fk4sec_user_of_user_app_data` (`sec_user`),
  CONSTRAINT `fk4sec_user_of_user_app_data` FOREIGN KEY (`sec_user`) REFERENCES `sec_user_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户应用程序';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_app_data`
--

LOCK TABLES `user_app_data` WRITE;
/*!40000 ALTER TABLE `user_app_data` DISABLE KEYS */;
INSERT INTO `user_app_data` VALUES ('UA000001','双链小超全国运营中心','SU000001','store',1,'MXWR','RetailStoreCountryCenter','RSCC000001','/link/to/app',1),('UA000002','我的账户','SU000001','lock',1,'MXWR','SecUser','SU000001','/link/to/app',1),('UA000003','双链小超省中心','SU000002','store',1,'MXWR','RetailStoreProvinceCenter','RSPC000001','/link/to/app',1),('UA000004','我的账户','SU000002','lock',1,'MXWR','SecUser','SU000002','/link/to/app',1),('UA000005','双链小超城市服务中心','SU000003','city',1,'MXWR','RetailStoreCityServiceCenter','RSCSC000001','/link/to/app',1),('UA000006','我的账户','SU000003','lock',1,'MXWR','SecUser','SU000003','/link/to/app',1),('UA000007','城市合伙人','SU000004','city',1,'MXWR','CityPartner','CP000001','/link/to/app',1),('UA000008','我的账户','SU000004','lock',1,'MXWR','SecUser','SU000004','/link/to/app',1),('UA000009','潜在的客户','SU000005','om',1,'MXWR','PotentialCustomer','PC000001','/link/to/app',1),('UA000010','我的账户','SU000005','lock',1,'MXWR','SecUser','SU000005','/link/to/app',1),('UA000011','双链小超','SU000006','store',1,'MXWR','RetailStore','RS000001','/link/to/app',1),('UA000012','我的账户','SU000006','lock',1,'MXWR','SecUser','SU000006','/link/to/app',1),('UA000013','生超会员','SU000007','store',1,'MXWR','RetailStoreMember','RSM000001','/link/to/app',1),('UA000014','我的账户','SU000007','lock',1,'MXWR','SecUser','SU000007','/link/to/app',1),('UA000015','消费者订单','SU000008','first-order',1,'MXWR','ConsumerOrder','CO000001','/link/to/app',1),('UA000016','我的账户','SU000008','lock',1,'MXWR','SecUser','SU000008','/link/to/app',1),('UA000017','产品供应商','SU000009','apper',1,'MXWR','GoodsSupplier','GS000001','/link/to/app',1),('UA000018','我的账户','SU000009','lock',1,'MXWR','SecUser','SU000009','/link/to/app',1),('UA000019','供应订单','SU000010','first-order',1,'MXWR','SupplyOrder','SO000001','/link/to/app',1),('UA000020','我的账户','SU000010','lock',1,'MXWR','SecUser','SU000010','/link/to/app',1),('UA000021','生超的订单','SU000011','store',1,'MXWR','RetailStoreOrder','RSO000001','/link/to/app',1),('UA000022','我的账户','SU000011','lock',1,'MXWR','SecUser','SU000011','/link/to/app',1),('UA000023','仓库','SU000012','warehouse',1,'MXWR','Warehouse','W000001','/link/to/app',1),('UA000024','我的账户','SU000012','lock',1,'MXWR','SecUser','SU000012','/link/to/app',1),('UA000025','货架','SU000013','asterisk',1,'MXWR','GoodsShelf','GS000001','/link/to/app',1),('UA000026','我的账户','SU000013','lock',1,'MXWR','SecUser','SU000013','/link/to/app',1),('UA000027','运输车队','SU000014','backspace',1,'MXWR','TransportFleet','TF000001','/link/to/app',1),('UA000028','我的账户','SU000014','lock',1,'MXWR','SecUser','SU000014','/link/to/app',1),('UA000029','运输任务','SU000015','tasks',1,'MXWR','TransportTask','TT000001','/link/to/app',1),('UA000030','我的账户','SU000015','lock',1,'MXWR','SecUser','SU000015','/link/to/app',1),('UA000031','账套','SU000016','headset',1,'MXWR','AccountSet','AS000001','/link/to/app',1),('UA000032','我的账户','SU000016','lock',1,'MXWR','SecUser','SU000016','/link/to/app',1),('UA000033','会计凭证','SU000017','basketball-ball',1,'MXWR','AccountingDocument','AD000001','/link/to/app',1),('UA000034','我的账户','SU000017','lock',1,'MXWR','SecUser','SU000017','/link/to/app',1),('UA000035','工资等级','SU000018','ad',1,'MXWR','SalaryGrade','SG000001','/link/to/app',1),('UA000036','我的账户','SU000018','lock',1,'MXWR','SecUser','SU000018','/link/to/app',1),('UA000037','观','SU000019','street-view',1,'MXWR','View','V000001','/link/to/app',1),('UA000038','我的账户','SU000019','lock',1,'MXWR','SecUser','SU000019','/link/to/app',1),('UA000039','员工','SU000020','blackberry',1,'MXWR','Employee','E000001','/link/to/app',1),('UA000040','我的账户','SU000020','lock',1,'MXWR','SecUser','SU000020','/link/to/app',1),('UA000041','用户域','SU000021','user',1,'MXWR','UserDomain','UD000001','/link/to/app',1),('UA000042','我的账户','SU000021','lock',1,'MXWR','SecUser','SU000021','/link/to/app',1),('UA000043','SEC的用户','SU000022','user',1,'MXWR','SecUser','SU000001','/link/to/app',1),('UA000044','我的账户','SU000022','lock',1,'MXWR','SecUser','SU000022','/link/to/app',1),('UA000045','用户应用程序','SU000023','user',1,'MXWR','UserApp','UA000001','/link/to/app',1),('UA000046','我的账户','SU000023','lock',1,'MXWR','SecUser','SU000023','/link/to/app',1);
/*!40000 ALTER TABLE `user_app_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_domain_data`
--

DROP TABLE IF EXISTS `user_domain_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_domain_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_user_domain` (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户域';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_domain_data`
--

LOCK TABLES `user_domain_data` WRITE;
/*!40000 ALTER TABLE `user_domain_data` DISABLE KEYS */;
INSERT INTO `user_domain_data` VALUES ('UD000001','用户区域',1);
/*!40000 ALTER TABLE `user_domain_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_data`
--

DROP TABLE IF EXISTS `view_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `who` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '谁',
  `assessment` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评估',
  `interview_time` date DEFAULT NULL COMMENT '面试时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_view` (`id`,`version`),
  KEY `idx4interview_time_of_view` (`interview_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='观';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_data`
--

LOCK TABLES `view_data` WRITE;
/*!40000 ALTER TABLE `view_data` DISABLE KEYS */;
INSERT INTO `view_data` VALUES ('V000001','面试官','小伙子不错，值得培养','2018-06-23',1);
/*!40000 ALTER TABLE `view_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_asset_data`
--

DROP TABLE IF EXISTS `warehouse_asset_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_asset_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `position` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_warehouse_asset` (`id`,`version`),
  KEY `idx4last_update_time_of_warehouse_asset` (`last_update_time`),
  KEY `fk4owner_of_warehouse_asset_data` (`owner`),
  CONSTRAINT `fk4owner_of_warehouse_asset_data` FOREIGN KEY (`owner`) REFERENCES `warehouse_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='仓库资产';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_asset_data`
--

LOCK TABLES `warehouse_asset_data` WRITE;
/*!40000 ALTER TABLE `warehouse_asset_data` DISABLE KEYS */;
INSERT INTO `warehouse_asset_data` VALUES ('WA000001','叉车','备用件存放区设备库房','W000002','2019-10-27 01:24:02',3),('WA000002','托盘','备用件存放区设备库房0002','W000004','2019-10-28 22:40:12',2),('WA000003','传送带备件','备用件存放区设备库房0003','W000002','2019-10-21 22:58:34',1),('WA000004','叉车','备用件存放区设备库房0004','W000002','2019-10-27 18:10:17',1),('WA000005','文具','东A托盘C','W000004','2019-12-12 19:06:16',5),('WA000006','朱是','222','W000001','2019-12-24 10:27:03',2),('WA000007','激光切割器','北京回龙观仓库',NULL,'2020-01-05 18:59:40',3),('WA000008','dfdsf','dsfdsfs','W000001','2020-03-20 21:12:12',1),('WA000009','可乐','9000w','W000001','2020-04-21 15:33:56',1),('WA000010','可乐','备用存放非洲','W000001','2020-04-21 15:34:35',1),('WA000011','椰子','室内广东广州斯恶覅小区3号楼205','W000002','2020-04-29 11:57:44',2);
/*!40000 ALTER TABLE `warehouse_asset_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_data`
--

DROP TABLE IF EXISTS `warehouse_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '序号',
  `location` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  `contact_number` varchar(44) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `total_area` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总面积',
  `owner` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业主',
  `latitude` decimal(9,6) DEFAULT NULL COMMENT '纬度',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `last_update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `version` int(11) DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx4id_ver_of_warehouse` (`id`,`version`),
  KEY `idx4latitude_of_warehouse` (`latitude`),
  KEY `idx4longitude_of_warehouse` (`longitude`),
  KEY `idx4last_update_time_of_warehouse` (`last_update_time`),
  KEY `fk4owner_of_warehouse_data` (`owner`),
  CONSTRAINT `fk4owner_of_warehouse_data` FOREIGN KEY (`owner`) REFERENCES `retail_store_country_center_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='仓库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_data`
--

LOCK TABLES `warehouse_data` WRITE;
/*!40000 ALTER TABLE `warehouse_data` DISABLE KEYS */;
INSERT INTO `warehouse_data` VALUES ('W000001','成都龙泉驿飞鹤路20号','02887654321','187672平方米',NULL,40.492817,130.901575,'2019-10-29 04:38:14',3),('W000002','成都龙泉驿飞鹤路20号0002','028876543210002','187672平方米0002',NULL,40.903989,130.735411,'2019-10-20 17:02:24',2),('W000003','位置信息','13711112222','2000m',NULL,10.000000,20.000000,'2019-12-19 21:50:57',4),('W000004','京东云仓库','17688888888','29999','RSCC000001',21.000000,21.000000,'2020-05-07 00:14:34',2);
/*!40000 ALTER TABLE `warehouse_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechat_miniapp_identity_data`
--

DROP TABLE IF EXISTS `wechat_miniapp_identity_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_miniapp_identity_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `open_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id',
  `app_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id',
  `sec_user` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Miniapp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_miniapp_identity_data`
--

LOCK TABLES `wechat_miniapp_identity_data` WRITE;
/*!40000 ALTER TABLE `wechat_miniapp_identity_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `wechat_miniapp_identity_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechat_workapp_identity_data`
--

DROP TABLE IF EXISTS `wechat_workapp_identity_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_workapp_identity_data` (
  `id` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `corp_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id',
  `sec_user` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Workapp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_workapp_identity_data`
--

LOCK TABLES `wechat_workapp_identity_data` WRITE;
/*!40000 ALTER TABLE `wechat_workapp_identity_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `wechat_workapp_identity_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02  0:16:28

