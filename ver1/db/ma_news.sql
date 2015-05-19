-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: wlsp
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

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
-- Table structure for table `ma_news`
--

DROP TABLE IF EXISTS `ma_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ma_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT '0',
  `tid` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `des` varchar(680) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `content` text,
  `mapurl` varchar(300) DEFAULT NULL,
  `telephone` varchar(13) DEFAULT NULL,
  `hj` text,
  `tc` text,
  `yj` text,
  `fw` text,
  `zk` text,
  `ts` text,
  `ispic` int(11) DEFAULT '0',
  `picurl` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `htop` int(11) DEFAULT '0',
  `ctop` int(11) DEFAULT '0',
  `hhdp` int(11) DEFAULT '0',
  `isok` int(11) DEFAULT '1',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `creattime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ma_news`
--

LOCK TABLES `ma_news` WRITE;
/*!40000 ALTER TABLE `ma_news` DISABLE KEYS */;
INSERT INTO `ma_news` VALUES (172,63,0,'用户指南','智能WIFI简明手册',NULL,NULL,NULL,NULL,'<p class=\"MsoNormal\">\r\n	<b>欢迎您使用</b><b>“</b><b>紫光软件智能</b><b>WIFI</b><b>系统</b><b>”</b><b>，我们为您提供有如下服务：</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>【签到上网】</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	按照公安部82号令的要求，在您通过公共wifi浏览Internet之前，须标明您的身份。点击“签到上网”按钮，完成签到流程后，即可自由浏览Internet。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	对于首次签到的用户，还将获赠系统送出的“积分礼包”，用于您在“积分兑换”中兑换自己喜欢的商品或者服务。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>【公益拇指】</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	我们邀请众多企业出资，与您一起参与社会公益活动。在“公益拇指”页面，通过完成出资企业所布置的任务，您可以筹集到“公益积分”，然后在“积分兑换”页面，把您所筹集到的积分兑换成您的体育彩票、福利彩票，或者直接捐助给那些需要帮助的对象。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>【积分礼包】</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	在“积分礼包”页面，您可以管理您所筹集到的积分，并将积分兑换成您所喜欢的公益活动、商品或者服务。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>【资料下载】</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提供常用资料的下载服务\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>【贴吧分享】</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	与他人分享您的观点和看法\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'',0,0,0,0,1,'0000-00-00 00:00:00','2014-12-22 23:12:16');
/*!40000 ALTER TABLE `ma_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-23 14:51:39
