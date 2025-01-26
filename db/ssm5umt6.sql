-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm5umt6
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
-- Current Database: `ssm5umt6`
--

/*!40000 DROP DATABASE IF EXISTS `ssm5umt6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm5umt6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm5umt6`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-03-20 16:08:09','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `banjirenshu` int(11) DEFAULT NULL COMMENT '班级人数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (31,'2023-03-20 16:08:08','班级名称1',1,'教师工号1'),(32,'2023-03-20 16:08:08','班级名称2',2,'教师工号2'),(33,'2023-03-20 16:08:08','班级名称3',3,'教师工号3'),(34,'2023-03-20 16:08:08','班级名称4',4,'教师工号4'),(35,'2023-03-20 16:08:08','班级名称5',5,'教师工号5'),(36,'2023-03-20 16:08:08','班级名称6',6,'教师工号6'),(37,'2023-03-20 16:08:08','班级名称7',7,'教师工号7'),(38,'2023-03-20 16:08:08','班级名称8',8,'教师工号8');
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daibanshixiang`
--

DROP TABLE IF EXISTS `daibanshixiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daibanshixiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daibanshixiang` varchar(200) DEFAULT NULL COMMENT '待办事项',
  `shixiangneirong` longtext COMMENT '事项内容',
  `daibanshijian` date DEFAULT NULL COMMENT '待办时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `lurushijian` datetime DEFAULT NULL COMMENT '录入时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='待办事项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daibanshixiang`
--

LOCK TABLES `daibanshixiang` WRITE;
/*!40000 ALTER TABLE `daibanshixiang` DISABLE KEYS */;
INSERT INTO `daibanshixiang` VALUES (121,'2023-03-20 16:08:09','待办事项1','事项内容1','2023-03-21','教师工号1','2023-03-21 00:08:09',1),(122,'2023-03-20 16:08:09','待办事项2','事项内容2','2023-03-21','教师工号2','2023-03-21 00:08:09',2),(123,'2023-03-20 16:08:09','待办事项3','事项内容3','2023-03-21','教师工号3','2023-03-21 00:08:09',3),(124,'2023-03-20 16:08:09','待办事项4','事项内容4','2023-03-21','教师工号4','2023-03-21 00:08:09',4),(125,'2023-03-20 16:08:09','待办事项5','事项内容5','2023-03-21','教师工号5','2023-03-21 00:08:09',5),(126,'2023-03-20 16:08:09','待办事项6','事项内容6','2023-03-21','教师工号6','2023-03-21 00:08:09',6),(127,'2023-03-20 16:08:09','待办事项7','事项内容7','2023-03-21','教师工号7','2023-03-21 00:08:09',7),(128,'2023-03-20 16:08:09','待办事项8','事项内容8','2023-03-21','教师工号8','2023-03-21 00:08:09',8);
/*!40000 ALTER TABLE `daibanshixiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstesemeishi`
--

DROP TABLE IF EXISTS `discusstesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特色美食评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstesemeishi`
--

LOCK TABLES `discusstesemeishi` WRITE;
/*!40000 ALTER TABLE `discusstesemeishi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusstesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussziyuanxinxi`
--

DROP TABLE IF EXISTS `discussziyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussziyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussziyuanxinxi`
--

LOCK TABLES `discussziyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussziyuanxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussziyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuorizhi`
--

DROP TABLE IF EXISTS `gongzuorizhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuorizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rizhibiaoti` varchar(200) DEFAULT NULL COMMENT '日志标题',
  `rizhijianjie` varchar(200) DEFAULT NULL COMMENT '日志简介',
  `rizhineirong` longtext COMMENT '日志内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jilushijian` date DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='工作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuorizhi`
--

LOCK TABLES `gongzuorizhi` WRITE;
/*!40000 ALTER TABLE `gongzuorizhi` DISABLE KEYS */;
INSERT INTO `gongzuorizhi` VALUES (101,'2023-03-20 16:08:09','日志标题1','日志简介1','日志内容1','教师工号1','教师姓名1','2023-03-21'),(102,'2023-03-20 16:08:09','日志标题2','日志简介2','日志内容2','教师工号2','教师姓名2','2023-03-21'),(103,'2023-03-20 16:08:09','日志标题3','日志简介3','日志内容3','教师工号3','教师姓名3','2023-03-21'),(104,'2023-03-20 16:08:09','日志标题4','日志简介4','日志内容4','教师工号4','教师姓名4','2023-03-21'),(105,'2023-03-20 16:08:09','日志标题5','日志简介5','日志内容5','教师工号5','教师姓名5','2023-03-21'),(106,'2023-03-20 16:08:09','日志标题6','日志简介6','日志内容6','教师工号6','教师姓名6','2023-03-21'),(107,'2023-03-20 16:08:09','日志标题7','日志简介7','日志内容7','教师工号7','教师姓名7','2023-03-21'),(108,'2023-03-20 16:08:09','日志标题8','日志简介8','日志内容8','教师工号8','教师姓名8','2023-03-21');
/*!40000 ALTER TABLE `gongzuorizhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyijilu`
--

DROP TABLE IF EXISTS `huiyijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyibianhao` varchar(200) DEFAULT NULL COMMENT '会议编号',
  `huiyizhuti` varchar(200) DEFAULT NULL COMMENT '会议主题',
  `canyurenyuan` longtext COMMENT '参与人员',
  `huiyineirong` longtext COMMENT '会议内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `huiyishijian` datetime DEFAULT NULL COMMENT '会议时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyibianhao` (`huiyibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='会议记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyijilu`
--

LOCK TABLES `huiyijilu` WRITE;
/*!40000 ALTER TABLE `huiyijilu` DISABLE KEYS */;
INSERT INTO `huiyijilu` VALUES (111,'2023-03-20 16:08:09','1111111111','会议主题1','参与人员1','会议内容1','教师工号1','2023-03-21 00:08:09'),(112,'2023-03-20 16:08:09','2222222222','会议主题2','参与人员2','会议内容2','教师工号2','2023-03-21 00:08:09'),(113,'2023-03-20 16:08:09','3333333333','会议主题3','参与人员3','会议内容3','教师工号3','2023-03-21 00:08:09'),(114,'2023-03-20 16:08:09','4444444444','会议主题4','参与人员4','会议内容4','教师工号4','2023-03-21 00:08:09'),(115,'2023-03-20 16:08:09','5555555555','会议主题5','参与人员5','会议内容5','教师工号5','2023-03-21 00:08:09'),(116,'2023-03-20 16:08:09','6666666666','会议主题6','参与人员6','会议内容6','教师工号6','2023-03-21 00:08:09'),(117,'2023-03-20 16:08:09','7777777777','会议主题7','参与人员7','会议内容7','教师工号7','2023-03-21 00:08:09'),(118,'2023-03-20 16:08:09','8888888888','会议主题8','参与人员8','会议内容8','教师工号8','2023-03-21 00:08:09');
/*!40000 ALTER TABLE `huiyijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianglidengji`
--

DROP TABLE IF EXISTS `jianglidengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianglidengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangliyuanyin` varchar(200) DEFAULT NULL COMMENT '奖励原因',
  `jianglixiangqing` longtext COMMENT '奖励详情',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='奖励登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianglidengji`
--

LOCK TABLES `jianglidengji` WRITE;
/*!40000 ALTER TABLE `jianglidengji` DISABLE KEYS */;
INSERT INTO `jianglidengji` VALUES (71,'2023-03-20 16:08:08','奖励原因1','奖励详情1','家长账号1','孩子姓名1','教师工号1','2023-03-21 00:08:08'),(72,'2023-03-20 16:08:08','奖励原因2','奖励详情2','家长账号2','孩子姓名2','教师工号2','2023-03-21 00:08:08'),(73,'2023-03-20 16:08:08','奖励原因3','奖励详情3','家长账号3','孩子姓名3','教师工号3','2023-03-21 00:08:08'),(74,'2023-03-20 16:08:08','奖励原因4','奖励详情4','家长账号4','孩子姓名4','教师工号4','2023-03-21 00:08:08'),(75,'2023-03-20 16:08:08','奖励原因5','奖励详情5','家长账号5','孩子姓名5','教师工号5','2023-03-21 00:08:08'),(76,'2023-03-20 16:08:08','奖励原因6','奖励详情6','家长账号6','孩子姓名6','教师工号6','2023-03-21 00:08:08'),(77,'2023-03-20 16:08:08','奖励原因7','奖励详情7','家长账号7','孩子姓名7','教师工号7','2023-03-21 00:08:08'),(78,'2023-03-20 16:08:08','奖励原因8','奖励详情8','家长账号8','孩子姓名8','教师工号8','2023-03-21 00:08:08');
/*!40000 ALTER TABLE `jianglidengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-03-20 16:08:08','教师工号1','123456','教师姓名1','upload/jiaoshi_touxiang1.jpg','男','班级名称1','13823888881'),(22,'2023-03-20 16:08:08','教师工号2','123456','教师姓名2','upload/jiaoshi_touxiang2.jpg','男','班级名称2','13823888882'),(23,'2023-03-20 16:08:08','教师工号3','123456','教师姓名3','upload/jiaoshi_touxiang3.jpg','男','班级名称3','13823888883'),(24,'2023-03-20 16:08:08','教师工号4','123456','教师姓名4','upload/jiaoshi_touxiang4.jpg','男','班级名称4','13823888884'),(25,'2023-03-20 16:08:08','教师工号5','123456','教师姓名5','upload/jiaoshi_touxiang5.jpg','男','班级名称5','13823888885'),(26,'2023-03-20 16:08:08','教师工号6','123456','教师姓名6','upload/jiaoshi_touxiang6.jpg','男','班级名称6','13823888886'),(27,'2023-03-20 16:08:08','教师工号7','123456','教师姓名7','upload/jiaoshi_touxiang7.jpg','男','班级名称7','13823888887'),(28,'2023-03-20 16:08:08','教师工号8','123456','教师姓名8','upload/jiaoshi_touxiang8.jpg','男','班级名称8','13823888888');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshiqingjia`
--

DROP TABLE IF EXISTS `jiaoshiqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshiqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashiyou` varchar(200) DEFAULT NULL COMMENT '请假事由',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='教师请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshiqingjia`
--

LOCK TABLES `jiaoshiqingjia` WRITE;
/*!40000 ALTER TABLE `jiaoshiqingjia` DISABLE KEYS */;
INSERT INTO `jiaoshiqingjia` VALUES (131,'2023-03-20 16:08:09','1111111111','事假','请假事由1',1,'2023-03-21 00:08:09','教师工号1','教师姓名1','是',''),(132,'2023-03-20 16:08:09','2222222222','事假','请假事由2',2,'2023-03-21 00:08:09','教师工号2','教师姓名2','是',''),(133,'2023-03-20 16:08:09','3333333333','事假','请假事由3',3,'2023-03-21 00:08:09','教师工号3','教师姓名3','是',''),(134,'2023-03-20 16:08:09','4444444444','事假','请假事由4',4,'2023-03-21 00:08:09','教师工号4','教师姓名4','是',''),(135,'2023-03-20 16:08:09','5555555555','事假','请假事由5',5,'2023-03-21 00:08:09','教师工号5','教师姓名5','是',''),(136,'2023-03-20 16:08:09','6666666666','事假','请假事由6',6,'2023-03-21 00:08:09','教师工号6','教师姓名6','是',''),(137,'2023-03-20 16:08:09','7777777777','事假','请假事由7',7,'2023-03-21 00:08:09','教师工号7','教师姓名7','是',''),(138,'2023-03-20 16:08:09','8888888888','事假','请假事由8',8,'2023-03-21 00:08:09','教师工号8','教师姓名8','是','');
/*!40000 ALTER TABLE `jiaoshiqingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhang`
--

DROP TABLE IF EXISTS `jiazhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiazhangzhanghao` (`jiazhangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='家长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhang`
--

LOCK TABLES `jiazhang` WRITE;
/*!40000 ALTER TABLE `jiazhang` DISABLE KEYS */;
INSERT INTO `jiazhang` VALUES (11,'2023-03-20 16:08:08','家长账号1','123456','家长姓名1','upload/jiazhang_touxiang1.jpg','男','孩子姓名1','13823888881','班级名称1','教师工号1'),(12,'2023-03-20 16:08:08','家长账号2','123456','家长姓名2','upload/jiazhang_touxiang2.jpg','男','孩子姓名2','13823888882','班级名称2','教师工号2'),(13,'2023-03-20 16:08:08','家长账号3','123456','家长姓名3','upload/jiazhang_touxiang3.jpg','男','孩子姓名3','13823888883','班级名称3','教师工号3'),(14,'2023-03-20 16:08:08','家长账号4','123456','家长姓名4','upload/jiazhang_touxiang4.jpg','男','孩子姓名4','13823888884','班级名称4','教师工号4'),(15,'2023-03-20 16:08:08','家长账号5','123456','家长姓名5','upload/jiazhang_touxiang5.jpg','男','孩子姓名5','13823888885','班级名称5','教师工号5'),(16,'2023-03-20 16:08:08','家长账号6','123456','家长姓名6','upload/jiazhang_touxiang6.jpg','男','孩子姓名6','13823888886','班级名称6','教师工号6'),(17,'2023-03-20 16:08:08','家长账号7','123456','家长姓名7','upload/jiazhang_touxiang7.jpg','男','孩子姓名7','13823888887','班级名称7','教师工号7'),(18,'2023-03-20 16:08:08','家长账号8','123456','家长姓名8','upload/jiazhang_touxiang8.jpg','男','孩子姓名8','13823888888','班级名称8','教师工号8');
/*!40000 ALTER TABLE `jiazhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jibingdengji`
--

DROP TABLE IF EXISTS `jibingdengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jibingdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jibingyuanyin` varchar(200) DEFAULT NULL COMMENT '疾病原因',
  `jibingxiangqing` longtext COMMENT '疾病详情',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='疾病登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jibingdengji`
--

LOCK TABLES `jibingdengji` WRITE;
/*!40000 ALTER TABLE `jibingdengji` DISABLE KEYS */;
INSERT INTO `jibingdengji` VALUES (81,'2023-03-20 16:08:08','疾病原因1','疾病详情1','家长账号1','孩子姓名1','教师工号1','2023-03-21 00:08:08'),(82,'2023-03-20 16:08:08','疾病原因2','疾病详情2','家长账号2','孩子姓名2','教师工号2','2023-03-21 00:08:08'),(83,'2023-03-20 16:08:08','疾病原因3','疾病详情3','家长账号3','孩子姓名3','教师工号3','2023-03-21 00:08:08'),(84,'2023-03-20 16:08:08','疾病原因4','疾病详情4','家长账号4','孩子姓名4','教师工号4','2023-03-21 00:08:08'),(85,'2023-03-20 16:08:08','疾病原因5','疾病详情5','家长账号5','孩子姓名5','教师工号5','2023-03-21 00:08:08'),(86,'2023-03-20 16:08:08','疾病原因6','疾病详情6','家长账号6','孩子姓名6','教师工号6','2023-03-21 00:08:08'),(87,'2023-03-20 16:08:08','疾病原因7','疾病详情7','家长账号7','孩子姓名7','教师工号7','2023-03-21 00:08:08'),(88,'2023-03-20 16:08:08','疾病原因8','疾病详情8','家长账号8','孩子姓名8','教师工号8','2023-03-21 00:08:08');
/*!40000 ALTER TABLE `jibingdengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='家长留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (221,'2023-03-20 16:08:09',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(222,'2023-03-20 16:08:09',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(223,'2023-03-20 16:08:09',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(224,'2023-03-20 16:08:09',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(225,'2023-03-20 16:08:09',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(226,'2023-03-20 16:08:09',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(227,'2023-03-20 16:08:09',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(228,'2023-03-20 16:08:09',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='新闻中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (191,'2023-03-20 16:08:09','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(192,'2023-03-20 16:08:09','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(193,'2023-03-20 16:08:09','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(194,'2023-03-20 16:08:09','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(195,'2023-03-20 16:08:09','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(196,'2023-03-20 16:08:09','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(197,'2023-03-20 16:08:09','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(198,'2023-03-20 16:08:09','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoufeixinxi`
--

DROP TABLE IF EXISTS `shoufeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoufeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiyongbianhao` varchar(200) DEFAULT NULL COMMENT '费用编号',
  `feiyongmingcheng` varchar(200) DEFAULT NULL COMMENT '费用名称',
  `feiyongjine` float DEFAULT NULL COMMENT '费用金额',
  `feiyongmingxi` longtext COMMENT '费用明细',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `lurushijian` datetime DEFAULT NULL COMMENT '录入时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `feiyongbianhao` (`feiyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='收费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoufeixinxi`
--

LOCK TABLES `shoufeixinxi` WRITE;
/*!40000 ALTER TABLE `shoufeixinxi` DISABLE KEYS */;
INSERT INTO `shoufeixinxi` VALUES (91,'2023-03-20 16:08:08','1111111111','费用名称1',1,'费用明细1','家长账号1','孩子姓名1','教师工号1','2023-03-21 00:08:08','未支付'),(92,'2023-03-20 16:08:08','2222222222','费用名称2',2,'费用明细2','家长账号2','孩子姓名2','教师工号2','2023-03-21 00:08:08','未支付'),(93,'2023-03-20 16:08:08','3333333333','费用名称3',3,'费用明细3','家长账号3','孩子姓名3','教师工号3','2023-03-21 00:08:08','未支付'),(94,'2023-03-20 16:08:08','4444444444','费用名称4',4,'费用明细4','家长账号4','孩子姓名4','教师工号4','2023-03-21 00:08:08','未支付'),(95,'2023-03-20 16:08:08','5555555555','费用名称5',5,'费用明细5','家长账号5','孩子姓名5','教师工号5','2023-03-21 00:08:08','未支付'),(96,'2023-03-20 16:08:08','6666666666','费用名称6',6,'费用明细6','家长账号6','孩子姓名6','教师工号6','2023-03-21 00:08:08','未支付'),(97,'2023-03-20 16:08:08','7777777777','费用名称7',7,'费用明细7','家长账号7','孩子姓名7','教师工号7','2023-03-21 00:08:08','未支付'),(98,'2023-03-20 16:08:08','8888888888','费用名称8',8,'费用明细8','家长账号8','孩子姓名8','教师工号8','2023-03-21 00:08:08','未支付');
/*!40000 ALTER TABLE `shoufeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-03-20 16:08:09','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesemeishi`
--

DROP TABLE IF EXISTS `tesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `tupian` longtext COMMENT '图片',
  `caipinleibie` varchar(200) DEFAULT NULL COMMENT '菜品类别',
  `tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `zhushicai` varchar(200) DEFAULT NULL COMMENT '主食材',
  `caipinxiangqing` longtext COMMENT '菜品详情',
  `caidanshijian` date DEFAULT NULL COMMENT '菜单时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='特色美食';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesemeishi`
--

LOCK TABLES `tesemeishi` WRITE;
/*!40000 ALTER TABLE `tesemeishi` DISABLE KEYS */;
INSERT INTO `tesemeishi` VALUES (161,'2023-03-20 16:08:09','菜品名称1','upload/tesemeishi_tupian1.jpg,upload/tesemeishi_tupian2.jpg,upload/tesemeishi_tupian3.jpg','早餐','特色1','主食材1','菜品详情1','2023-03-21',1,1),(162,'2023-03-20 16:08:09','菜品名称2','upload/tesemeishi_tupian2.jpg,upload/tesemeishi_tupian3.jpg,upload/tesemeishi_tupian4.jpg','早餐','特色2','主食材2','菜品详情2','2023-03-21',2,2),(163,'2023-03-20 16:08:09','菜品名称3','upload/tesemeishi_tupian3.jpg,upload/tesemeishi_tupian4.jpg,upload/tesemeishi_tupian5.jpg','早餐','特色3','主食材3','菜品详情3','2023-03-21',3,3),(164,'2023-03-20 16:08:09','菜品名称4','upload/tesemeishi_tupian4.jpg,upload/tesemeishi_tupian5.jpg,upload/tesemeishi_tupian6.jpg','早餐','特色4','主食材4','菜品详情4','2023-03-21',4,4),(165,'2023-03-20 16:08:09','菜品名称5','upload/tesemeishi_tupian5.jpg,upload/tesemeishi_tupian6.jpg,upload/tesemeishi_tupian7.jpg','早餐','特色5','主食材5','菜品详情5','2023-03-21',5,5),(166,'2023-03-20 16:08:09','菜品名称6','upload/tesemeishi_tupian6.jpg,upload/tesemeishi_tupian7.jpg,upload/tesemeishi_tupian8.jpg','早餐','特色6','主食材6','菜品详情6','2023-03-21',6,6),(167,'2023-03-20 16:08:09','菜品名称7','upload/tesemeishi_tupian7.jpg,upload/tesemeishi_tupian8.jpg,upload/tesemeishi_tupian9.jpg','早餐','特色7','主食材7','菜品详情7','2023-03-21',7,7),(168,'2023-03-20 16:08:09','菜品名称8','upload/tesemeishi_tupian8.jpg,upload/tesemeishi_tupian9.jpg,upload/tesemeishi_tupian10.jpg','早餐','特色8','主食材8','菜品详情8','2023-03-21',8,8);
/*!40000 ALTER TABLE `tesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tijiandengji`
--

DROP TABLE IF EXISTS `tijiandengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tijiandengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tijianmingcheng` varchar(200) DEFAULT NULL COMMENT '体检名称',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `tijiantupian` longtext COMMENT '体检图片',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` int(11) DEFAULT NULL COMMENT '体重',
  `shili` varchar(200) DEFAULT NULL COMMENT '视力',
  `xinlv` varchar(200) DEFAULT NULL COMMENT '心率',
  `tijianxiangqing` longtext COMMENT '体检详情',
  `tijianpingjia` longtext COMMENT '体检评价',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `tijianshijian` datetime DEFAULT NULL COMMENT '体检时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='体检登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tijiandengji`
--

LOCK TABLES `tijiandengji` WRITE;
/*!40000 ALTER TABLE `tijiandengji` DISABLE KEYS */;
INSERT INTO `tijiandengji` VALUES (61,'2023-03-20 16:08:08','体检名称1','家长账号1','upload/tijiandengji_tijiantupian1.jpg,upload/tijiandengji_tijiantupian2.jpg,upload/tijiandengji_tijiantupian3.jpg','孩子姓名1','身高1',1,'视力1','心率1','体检详情1','体检评价1','教师工号1','2023-03-21 00:08:08'),(62,'2023-03-20 16:08:08','体检名称2','家长账号2','upload/tijiandengji_tijiantupian2.jpg,upload/tijiandengji_tijiantupian3.jpg,upload/tijiandengji_tijiantupian4.jpg','孩子姓名2','身高2',2,'视力2','心率2','体检详情2','体检评价2','教师工号2','2023-03-21 00:08:08'),(63,'2023-03-20 16:08:08','体检名称3','家长账号3','upload/tijiandengji_tijiantupian3.jpg,upload/tijiandengji_tijiantupian4.jpg,upload/tijiandengji_tijiantupian5.jpg','孩子姓名3','身高3',3,'视力3','心率3','体检详情3','体检评价3','教师工号3','2023-03-21 00:08:08'),(64,'2023-03-20 16:08:08','体检名称4','家长账号4','upload/tijiandengji_tijiantupian4.jpg,upload/tijiandengji_tijiantupian5.jpg,upload/tijiandengji_tijiantupian6.jpg','孩子姓名4','身高4',4,'视力4','心率4','体检详情4','体检评价4','教师工号4','2023-03-21 00:08:08'),(65,'2023-03-20 16:08:08','体检名称5','家长账号5','upload/tijiandengji_tijiantupian5.jpg,upload/tijiandengji_tijiantupian6.jpg,upload/tijiandengji_tijiantupian7.jpg','孩子姓名5','身高5',5,'视力5','心率5','体检详情5','体检评价5','教师工号5','2023-03-21 00:08:08'),(66,'2023-03-20 16:08:08','体检名称6','家长账号6','upload/tijiandengji_tijiantupian6.jpg,upload/tijiandengji_tijiantupian7.jpg,upload/tijiandengji_tijiantupian8.jpg','孩子姓名6','身高6',6,'视力6','心率6','体检详情6','体检评价6','教师工号6','2023-03-21 00:08:08'),(67,'2023-03-20 16:08:08','体检名称7','家长账号7','upload/tijiandengji_tijiantupian7.jpg,upload/tijiandengji_tijiantupian8.jpg,upload/tijiandengji_tijiantupian9.jpg','孩子姓名7','身高7',7,'视力7','心率7','体检详情7','体检评价7','教师工号7','2023-03-21 00:08:08'),(68,'2023-03-20 16:08:08','体检名称8','家长账号8','upload/tijiandengji_tijiantupian8.jpg,upload/tijiandengji_tijiantupian9.jpg,upload/tijiandengji_tijiantupian10.jpg','孩子姓名8','身高8',8,'视力8','心率8','体检详情8','体检评价8','教师工号8','2023-03-21 00:08:08');
/*!40000 ALTER TABLE `tijiandengji` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'家长账号1','jiazhang','家长','88vqc4mt3aghg3l11cf8gpfjdeqo0fri','2023-03-20 16:08:25','2023-03-20 17:08:25');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-20 16:08:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueniandu` varchar(200) DEFAULT NULL COMMENT '学年度',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  `chengjidengji` varchar(200) DEFAULT NULL COMMENT '成绩等级',
  `banjipaiming` varchar(200) DEFAULT NULL COMMENT '班级排名',
  `jiaoshipingyu` longtext COMMENT '教师评语',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (51,'2023-03-20 16:08:08','学年度1','家长账号1','班级名称1','孩子姓名1',1,'优秀','班级排名1','教师评语1','教师工号1','2023-03-21'),(52,'2023-03-20 16:08:08','学年度2','家长账号2','班级名称2','孩子姓名2',2,'优秀','班级排名2','教师评语2','教师工号2','2023-03-21'),(53,'2023-03-20 16:08:08','学年度3','家长账号3','班级名称3','孩子姓名3',3,'优秀','班级排名3','教师评语3','教师工号3','2023-03-21'),(54,'2023-03-20 16:08:08','学年度4','家长账号4','班级名称4','孩子姓名4',4,'优秀','班级排名4','教师评语4','教师工号4','2023-03-21'),(55,'2023-03-20 16:08:08','学年度5','家长账号5','班级名称5','孩子姓名5',5,'优秀','班级排名5','教师评语5','教师工号5','2023-03-21'),(56,'2023-03-20 16:08:08','学年度6','家长账号6','班级名称6','孩子姓名6',6,'优秀','班级排名6','教师评语6','教师工号6','2023-03-21'),(57,'2023-03-20 16:08:08','学年度7','家长账号7','班级名称7','孩子姓名7',7,'优秀','班级排名7','教师评语7','教师工号7','2023-03-21'),(58,'2023-03-20 16:08:08','学年度8','家长账号8','班级名称8','孩子姓名8',8,'优秀','班级排名8','教师评语8','教师工号8','2023-03-21');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiqingshangbao`
--

DROP TABLE IF EXISTS `yiqingshangbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiqingshangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinritiwen` float DEFAULT NULL COMMENT '今日体温',
  `jiankangma` longtext COMMENT '健康码',
  `hesuanjieguo` varchar(200) DEFAULT NULL COMMENT '核酸结果',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangbaoshijian` datetime DEFAULT NULL COMMENT '上报时间',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='疫情上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiqingshangbao`
--

LOCK TABLES `yiqingshangbao` WRITE;
/*!40000 ALTER TABLE `yiqingshangbao` DISABLE KEYS */;
INSERT INTO `yiqingshangbao` VALUES (171,'2023-03-20 16:08:09',1,'upload/yiqingshangbao_jiankangma1.jpg,upload/yiqingshangbao_jiankangma2.jpg,upload/yiqingshangbao_jiankangma3.jpg','阴性','教师工号1','家长账号1','孩子姓名1','13823888881','2023-03-21 00:08:09',''),(172,'2023-03-20 16:08:09',2,'upload/yiqingshangbao_jiankangma2.jpg,upload/yiqingshangbao_jiankangma3.jpg,upload/yiqingshangbao_jiankangma4.jpg','阴性','教师工号2','家长账号2','孩子姓名2','13823888882','2023-03-21 00:08:09',''),(173,'2023-03-20 16:08:09',3,'upload/yiqingshangbao_jiankangma3.jpg,upload/yiqingshangbao_jiankangma4.jpg,upload/yiqingshangbao_jiankangma5.jpg','阴性','教师工号3','家长账号3','孩子姓名3','13823888883','2023-03-21 00:08:09',''),(174,'2023-03-20 16:08:09',4,'upload/yiqingshangbao_jiankangma4.jpg,upload/yiqingshangbao_jiankangma5.jpg,upload/yiqingshangbao_jiankangma6.jpg','阴性','教师工号4','家长账号4','孩子姓名4','13823888884','2023-03-21 00:08:09',''),(175,'2023-03-20 16:08:09',5,'upload/yiqingshangbao_jiankangma5.jpg,upload/yiqingshangbao_jiankangma6.jpg,upload/yiqingshangbao_jiankangma7.jpg','阴性','教师工号5','家长账号5','孩子姓名5','13823888885','2023-03-21 00:08:09',''),(176,'2023-03-20 16:08:09',6,'upload/yiqingshangbao_jiankangma6.jpg,upload/yiqingshangbao_jiankangma7.jpg,upload/yiqingshangbao_jiankangma8.jpg','阴性','教师工号6','家长账号6','孩子姓名6','13823888886','2023-03-21 00:08:09',''),(177,'2023-03-20 16:08:09',7,'upload/yiqingshangbao_jiankangma7.jpg,upload/yiqingshangbao_jiankangma8.jpg,upload/yiqingshangbao_jiankangma9.jpg','阴性','教师工号7','家长账号7','孩子姓名7','13823888887','2023-03-21 00:08:09',''),(178,'2023-03-20 16:08:09',8,'upload/yiqingshangbao_jiankangma8.jpg,upload/yiqingshangbao_jiankangma9.jpg,upload/yiqingshangbao_jiankangma10.jpg','阴性','教师工号8','家长账号8','孩子姓名8','13823888888','2023-03-21 00:08:09','');
/*!40000 ALTER TABLE `yiqingshangbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youerqingjia`
--

DROP TABLE IF EXISTS `youerqingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youerqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qingjiashiyou` varchar(200) DEFAULT NULL COMMENT '请假事由',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `haizixingming` varchar(200) DEFAULT NULL COMMENT '孩子姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='幼儿请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youerqingjia`
--

LOCK TABLES `youerqingjia` WRITE;
/*!40000 ALTER TABLE `youerqingjia` DISABLE KEYS */;
INSERT INTO `youerqingjia` VALUES (141,'2023-03-20 16:08:09','1111111111','事假','请假事由1',1,'2023-03-21 00:08:09','教师工号1','家长账号1','孩子姓名1','是',''),(142,'2023-03-20 16:08:09','2222222222','事假','请假事由2',2,'2023-03-21 00:08:09','教师工号2','家长账号2','孩子姓名2','是',''),(143,'2023-03-20 16:08:09','3333333333','事假','请假事由3',3,'2023-03-21 00:08:09','教师工号3','家长账号3','孩子姓名3','是',''),(144,'2023-03-20 16:08:09','4444444444','事假','请假事由4',4,'2023-03-21 00:08:09','教师工号4','家长账号4','孩子姓名4','是',''),(145,'2023-03-20 16:08:09','5555555555','事假','请假事由5',5,'2023-03-21 00:08:09','教师工号5','家长账号5','孩子姓名5','是',''),(146,'2023-03-20 16:08:09','6666666666','事假','请假事由6',6,'2023-03-21 00:08:09','教师工号6','家长账号6','孩子姓名6','是',''),(147,'2023-03-20 16:08:09','7777777777','事假','请假事由7',7,'2023-03-21 00:08:09','教师工号7','家长账号7','孩子姓名7','是',''),(148,'2023-03-20 16:08:09','8888888888','事假','请假事由8',8,'2023-03-21 00:08:09','教师工号8','家长账号8','孩子姓名8','是','');
/*!40000 ALTER TABLE `youerqingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youerxinxi`
--

DROP TABLE IF EXISTS `youerxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youerxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `zhaopian` longtext COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='幼儿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youerxinxi`
--

LOCK TABLES `youerxinxi` WRITE;
/*!40000 ALTER TABLE `youerxinxi` DISABLE KEYS */;
INSERT INTO `youerxinxi` VALUES (41,'2023-03-20 16:08:08','儿童姓名1','upload/youerxinxi_zhaopian1.jpg,upload/youerxinxi_zhaopian2.jpg,upload/youerxinxi_zhaopian3.jpg','男',1,'身高1','体重1','班级名称1','教师工号1','家长账号1','家长姓名1','13823888881'),(42,'2023-03-20 16:08:08','儿童姓名2','upload/youerxinxi_zhaopian2.jpg,upload/youerxinxi_zhaopian3.jpg,upload/youerxinxi_zhaopian4.jpg','男',2,'身高2','体重2','班级名称2','教师工号2','家长账号2','家长姓名2','13823888882'),(43,'2023-03-20 16:08:08','儿童姓名3','upload/youerxinxi_zhaopian3.jpg,upload/youerxinxi_zhaopian4.jpg,upload/youerxinxi_zhaopian5.jpg','男',3,'身高3','体重3','班级名称3','教师工号3','家长账号3','家长姓名3','13823888883'),(44,'2023-03-20 16:08:08','儿童姓名4','upload/youerxinxi_zhaopian4.jpg,upload/youerxinxi_zhaopian5.jpg,upload/youerxinxi_zhaopian6.jpg','男',4,'身高4','体重4','班级名称4','教师工号4','家长账号4','家长姓名4','13823888884'),(45,'2023-03-20 16:08:08','儿童姓名5','upload/youerxinxi_zhaopian5.jpg,upload/youerxinxi_zhaopian6.jpg,upload/youerxinxi_zhaopian7.jpg','男',5,'身高5','体重5','班级名称5','教师工号5','家长账号5','家长姓名5','13823888885'),(46,'2023-03-20 16:08:08','儿童姓名6','upload/youerxinxi_zhaopian6.jpg,upload/youerxinxi_zhaopian7.jpg,upload/youerxinxi_zhaopian8.jpg','男',6,'身高6','体重6','班级名称6','教师工号6','家长账号6','家长姓名6','13823888886'),(47,'2023-03-20 16:08:08','儿童姓名7','upload/youerxinxi_zhaopian7.jpg,upload/youerxinxi_zhaopian8.jpg,upload/youerxinxi_zhaopian9.jpg','男',7,'身高7','体重7','班级名称7','教师工号7','家长账号7','家长姓名7','13823888887'),(48,'2023-03-20 16:08:08','儿童姓名8','upload/youerxinxi_zhaopian8.jpg,upload/youerxinxi_zhaopian9.jpg,upload/youerxinxi_zhaopian10.jpg','男',8,'身高8','体重8','班级名称8','教师工号8','家长账号8','家长姓名8','13823888888');
/*!40000 ALTER TABLE `youerxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ziyuanxinxi`
--

DROP TABLE IF EXISTS `ziyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ziyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufengmian` longtext COMMENT '图书封面',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tushuzuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者',
  `tushujianjie` longtext COMMENT '图书简介',
  `tuijianliyou` longtext NOT NULL COMMENT '推荐理由',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tuijianshijian` date DEFAULT NULL COMMENT '推荐时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='资源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ziyuanxinxi`
--

LOCK TABLES `ziyuanxinxi` WRITE;
/*!40000 ALTER TABLE `ziyuanxinxi` DISABLE KEYS */;
INSERT INTO `ziyuanxinxi` VALUES (151,'2023-03-20 16:08:09','图书名称1','upload/ziyuanxinxi_tushufengmian1.jpg,upload/ziyuanxinxi_tushufengmian2.jpg,upload/ziyuanxinxi_tushufengmian3.jpg','图书分类1','图书作者1','图书简介1','推荐理由1','教师工号1','教师姓名1','2023-03-21',1,1,'2023-03-21 00:08:09',1),(152,'2023-03-20 16:08:09','图书名称2','upload/ziyuanxinxi_tushufengmian2.jpg,upload/ziyuanxinxi_tushufengmian3.jpg,upload/ziyuanxinxi_tushufengmian4.jpg','图书分类2','图书作者2','图书简介2','推荐理由2','教师工号2','教师姓名2','2023-03-21',2,2,'2023-03-21 00:08:09',2),(153,'2023-03-20 16:08:09','图书名称3','upload/ziyuanxinxi_tushufengmian3.jpg,upload/ziyuanxinxi_tushufengmian4.jpg,upload/ziyuanxinxi_tushufengmian5.jpg','图书分类3','图书作者3','图书简介3','推荐理由3','教师工号3','教师姓名3','2023-03-21',3,3,'2023-03-21 00:08:09',3),(154,'2023-03-20 16:08:09','图书名称4','upload/ziyuanxinxi_tushufengmian4.jpg,upload/ziyuanxinxi_tushufengmian5.jpg,upload/ziyuanxinxi_tushufengmian6.jpg','图书分类4','图书作者4','图书简介4','推荐理由4','教师工号4','教师姓名4','2023-03-21',4,4,'2023-03-21 00:08:09',4),(155,'2023-03-20 16:08:09','图书名称5','upload/ziyuanxinxi_tushufengmian5.jpg,upload/ziyuanxinxi_tushufengmian6.jpg,upload/ziyuanxinxi_tushufengmian7.jpg','图书分类5','图书作者5','图书简介5','推荐理由5','教师工号5','教师姓名5','2023-03-21',5,5,'2023-03-21 00:08:09',5),(156,'2023-03-20 16:08:09','图书名称6','upload/ziyuanxinxi_tushufengmian6.jpg,upload/ziyuanxinxi_tushufengmian7.jpg,upload/ziyuanxinxi_tushufengmian8.jpg','图书分类6','图书作者6','图书简介6','推荐理由6','教师工号6','教师姓名6','2023-03-21',6,6,'2023-03-21 00:08:09',6),(157,'2023-03-20 16:08:09','图书名称7','upload/ziyuanxinxi_tushufengmian7.jpg,upload/ziyuanxinxi_tushufengmian8.jpg,upload/ziyuanxinxi_tushufengmian9.jpg','图书分类7','图书作者7','图书简介7','推荐理由7','教师工号7','教师姓名7','2023-03-21',7,7,'2023-03-21 00:08:09',7),(158,'2023-03-20 16:08:09','图书名称8','upload/ziyuanxinxi_tushufengmian8.jpg,upload/ziyuanxinxi_tushufengmian9.jpg,upload/ziyuanxinxi_tushufengmian10.jpg','图书分类8','图书作者8','图书简介8','推荐理由8','教师工号8','教师姓名8','2023-03-21',8,8,'2023-03-21 00:08:09',8);
/*!40000 ALTER TABLE `ziyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 22:29:19
