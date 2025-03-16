-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm9f6u8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm9f6u8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm9f6u8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm9f6u8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615736933279 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (82,'2021-03-13 05:11:44','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-13 05:11:44','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-13 05:11:44','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-13 05:11:44','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-13 05:11:44','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615736925604,'2021-03-14 15:48:45','1111111','请输入内容这里可以发布一些信息，用户之间可以这里进行交流\r\n',0,1615736832444,'001','开放'),(1615736933278,'2021-03-14 15:48:52',NULL,'请输入评论222222',1615736925604,1615736832444,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangma`
--

DROP TABLE IF EXISTS `jiankangma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangma` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `celiangwendu` varchar(200) NOT NULL COMMENT '测量温度',
  `jiankangma` varchar(200) NOT NULL COMMENT '健康码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615737013172 DEFAULT CHARSET=utf8 COMMENT='健康码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangma`
--

LOCK TABLES `jiankangma` WRITE;
/*!40000 ALTER TABLE `jiankangma` DISABLE KEYS */;
INSERT INTO `jiankangma` VALUES (31,'2021-03-13 05:11:44','账号1','姓名1','440300199101010001','13823888881','地址1','测量温度1','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma1.jpg','是',''),(32,'2021-03-13 05:11:44','账号2','姓名2','440300199202020002','13823888882','地址2','测量温度2','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma2.jpg','是',''),(33,'2021-03-13 05:11:44','账号3','姓名3','440300199303030003','13823888883','地址3','测量温度3','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma3.jpg','是',''),(34,'2021-03-13 05:11:44','账号4','姓名4','440300199404040004','13823888884','地址4','测量温度4','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma4.jpg','是',''),(35,'2021-03-13 05:11:44','账号5','姓名5','440300199505050005','13823888885','地址5','测量温度5','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma5.jpg','是',''),(36,'2021-03-13 05:11:44','账号6','姓名6','440300199606060006','13823888886','地址6','测量温度6','http://localhost:8080/jspm9f6u8/upload/jiankangma_jiankangma6.jpg','是',''),(1615737013171,'2021-03-14 15:50:12','001','刘辉','441214121412141214','15214121412','上海市','36.8','http://localhost:8080/jspm9f6u8/upload/1615736997378.jpg','是','正常');
/*!40000 ALTER TABLE `jiankangma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-13 05:11:44','疫情新闻','简介112211212','http://localhost:8080/jspm9f6u8/upload/news_picture1.jpg','内容这里可以发布一些信新闻信息，内容可以自行添加的\r\n'),(92,'2021-03-13 05:11:44','标题2','简介2','http://localhost:8080/jspm9f6u8/upload/news_picture2.jpg','内容2'),(93,'2021-03-13 05:11:44','标题3','简介3','http://localhost:8080/jspm9f6u8/upload/news_picture3.jpg','内容3'),(94,'2021-03-13 05:11:44','标题4','简介4','http://localhost:8080/jspm9f6u8/upload/news_picture4.jpg','内容4'),(95,'2021-03-13 05:11:44','标题5','简介5','http://localhost:8080/jspm9f6u8/upload/news_picture5.jpg','内容5'),(96,'2021-03-13 05:11:44','标题6','简介6','http://localhost:8080/jspm9f6u8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiwenxinxi`
--

DROP TABLE IF EXISTS `tiwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `celiangwendu` varchar(200) NOT NULL COMMENT '测量温度',
  `celiangshijian` date NOT NULL COMMENT '测量时间',
  `jiankangzhuangtai` varchar(200) NOT NULL COMMENT '健康状态',
  `xiangqingbeizhu` longtext COMMENT '详情备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615736978414 DEFAULT CHARSET=utf8 COMMENT='体温信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiwenxinxi`
--

LOCK TABLES `tiwenxinxi` WRITE;
/*!40000 ALTER TABLE `tiwenxinxi` DISABLE KEYS */;
INSERT INTO `tiwenxinxi` VALUES (21,'2021-03-13 05:11:44','账号1','姓名1','440300199101010001','13823888881','地址1','测量温度1','2021-03-13','正常','详情备注1'),(22,'2021-03-13 05:11:44','账号2','姓名2','440300199202020002','13823888882','地址2','测量温度2','2021-03-13','正常','详情备注2'),(23,'2021-03-13 05:11:44','账号3','姓名3','440300199303030003','13823888883','地址3','测量温度3','2021-03-13','正常','详情备注3'),(24,'2021-03-13 05:11:44','账号4','姓名4','440300199404040004','13823888884','地址4','测量温度4','2021-03-13','正常','详情备注4'),(25,'2021-03-13 05:11:44','账号5','姓名5','440300199505050005','13823888885','地址5','测量温度5','2021-03-13','正常','详情备注5'),(26,'2021-03-13 05:11:44','账号6','姓名6','440300199606060006','13823888886','地址6','测量温度6','2021-03-13','正常','详情备注6'),(1615736978413,'2021-03-14 15:49:38','001','刘辉','441214121412141214','15214121412','上海市','36.8','2021-03-01','正常','身体没有异常');
/*!40000 ALTER TABLE `tiwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','i1r57kvzqhy1fwqc15nkxdpoefwjr7rd','2021-03-14 15:41:19','2021-03-14 16:50:27'),(2,11,'1','yonghu','用户','044yanr73g8b1haxwz2oaxw8cvvjbrwk','2021-03-14 15:41:33','2021-03-14 16:41:47'),(3,1615736832444,'001','yonghu','用户','p5pk0vsbprssig08m8nbuatqy6ytp9e8','2021-03-14 15:47:18','2021-03-14 16:52:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-13 05:11:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinleixing`
--

DROP TABLE IF EXISTS `wupinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='物品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinleixing`
--

LOCK TABLES `wupinleixing` WRITE;
/*!40000 ALTER TABLE `wupinleixing` DISABLE KEYS */;
INSERT INTO `wupinleixing` VALUES (61,'2021-03-13 05:11:44','医用品'),(62,'2021-03-13 05:11:44','物品类型2'),(63,'2021-03-13 05:11:44','物品类型3'),(64,'2021-03-13 05:11:44','物品类型4'),(65,'2021-03-13 05:11:44','物品类型5'),(66,'2021-03-13 05:11:44','物品类型6');
/*!40000 ALTER TABLE `wupinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinshenling`
--

DROP TABLE IF EXISTS `wupinshenling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinshenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615736905976 DEFAULT CHARSET=utf8 COMMENT='物品申领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinshenling`
--

LOCK TABLES `wupinshenling` WRITE;
/*!40000 ALTER TABLE `wupinshenling` DISABLE KEYS */;
INSERT INTO `wupinshenling` VALUES (71,'2021-03-13 05:11:44','物品名称1','物品类型1',1,'2021-03-13','账号1','姓名1'),(72,'2021-03-13 05:11:44','物品名称2','物品类型2',2,'2021-03-13','账号2','姓名2'),(73,'2021-03-13 05:11:44','物品名称3','物品类型3',3,'2021-03-13','账号3','姓名3'),(74,'2021-03-13 05:11:44','物品名称4','物品类型4',4,'2021-03-13','账号4','姓名4'),(75,'2021-03-13 05:11:44','物品名称5','物品类型5',5,'2021-03-13','账号5','姓名5'),(76,'2021-03-13 05:11:44','物品名称6','物品类型6',6,'2021-03-13','账号6','姓名6'),(1615736905975,'2021-03-14 15:48:25','体温计','医用品',5,'2021-03-01','001','刘辉');
/*!40000 ALTER TABLE `wupinshenling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinxinxi`
--

DROP TABLE IF EXISTS `wupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) NOT NULL COMMENT '物品类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinxinxi`
--

LOCK TABLES `wupinxinxi` WRITE;
/*!40000 ALTER TABLE `wupinxinxi` DISABLE KEYS */;
INSERT INTO `wupinxinxi` VALUES (51,'2021-03-13 05:11:44','体温计','医用品',145,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian1.jpg','2021-03-01','详情1这里可以发布一些详细信息，内容都是用于测试的可以自行添加修改删除的\r\n'),(52,'2021-03-13 05:11:44','物品名称2','物品类型2',2,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian2.jpg','2021-03-13','详情2'),(53,'2021-03-13 05:11:44','物品名称3','物品类型3',3,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian3.jpg','2021-03-13','详情3'),(54,'2021-03-13 05:11:44','物品名称4','物品类型4',4,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian4.jpg','2021-03-13','详情4'),(55,'2021-03-13 05:11:44','物品名称5','物品类型5',5,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian5.jpg','2021-03-13','详情5'),(56,'2021-03-13 05:11:44','物品名称6','物品类型6',6,'http://localhost:8080/jspm9f6u8/upload/wupinxinxi_tupian6.jpg','2021-03-13','详情6');
/*!40000 ALTER TABLE `wupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisirenyuan`
--

DROP TABLE IF EXISTS `yisirenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisirenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiancewendu` varchar(200) DEFAULT NULL COMMENT '检测温度',
  `celiangshijian` date DEFAULT NULL COMMENT '测量时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615737092399 DEFAULT CHARSET=utf8 COMMENT='疑似人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisirenyuan`
--

LOCK TABLES `yisirenyuan` WRITE;
/*!40000 ALTER TABLE `yisirenyuan` DISABLE KEYS */;
INSERT INTO `yisirenyuan` VALUES (41,'2021-03-13 05:11:44','账号1','姓名1','检测温度1','2021-03-13','备注1'),(42,'2021-03-13 05:11:44','账号2','姓名2','检测温度2','2021-03-13','备注2'),(43,'2021-03-13 05:11:44','账号3','姓名3','检测温度3','2021-03-13','备注3'),(44,'2021-03-13 05:11:44','账号4','姓名4','检测温度4','2021-03-13','备注4'),(45,'2021-03-13 05:11:44','账号5','姓名5','检测温度5','2021-03-13','备注5'),(46,'2021-03-13 05:11:44','账号6','姓名6','检测温度6','2021-03-13','备注6'),(1615737092398,'2021-03-14 15:51:32','001','刘辉','39','2021-03-01','经过查发现刘辉温度过高 有一死嫌疑');
/*!40000 ALTER TABLE `yisirenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615736832445 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-13 05:11:44','1','1','姓名1','男','年龄1','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian1.jpg','440300199101010001','13823888881','773890001@qq.com','地址1'),(12,'2021-03-13 05:11:44','用户2','123456','姓名2','男','年龄2','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian2.jpg','440300199202020002','13823888882','773890002@qq.com','地址2'),(13,'2021-03-13 05:11:44','用户3','123456','姓名3','男','年龄3','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian3.jpg','440300199303030003','13823888883','773890003@qq.com','地址3'),(14,'2021-03-13 05:11:44','用户4','123456','姓名4','男','年龄4','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian4.jpg','440300199404040004','13823888884','773890004@qq.com','地址4'),(15,'2021-03-13 05:11:44','用户5','123456','姓名5','男','年龄5','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian5.jpg','440300199505050005','13823888885','773890005@qq.com','地址5'),(16,'2021-03-13 05:11:44','用户6','123456','姓名6','男','年龄6','http://localhost:8080/jspm9f6u8/upload/yonghu_zhaopian6.jpg','440300199606060006','13823888886','773890006@qq.com','地址6'),(1615736832444,'2021-03-14 15:47:12','001','001','刘辉','男','18','http://localhost:8080/jspm9f6u8/upload/1615736853314.jpg','441214121412141214','15214121412','1212@16.com','上海市');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 10:01:24
