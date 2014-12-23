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
-- Table structure for table `ma_product`
--

DROP TABLE IF EXISTS `ma_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ma_product` (
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
  `price` int(11) DEFAULT '0',
  `jifen` int(11) DEFAULT '0',
  `isok` int(11) DEFAULT '1',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `creattime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ma_product`
--

LOCK TABLES `ma_product` WRITE;
/*!40000 ALTER TABLE `ma_product` DISABLE KEYS */;
INSERT INTO `ma_product` VALUES (175,0,0,'体彩双色球','体彩双色球',NULL,NULL,NULL,NULL,'<table style=\"background-color:#ffffff;margin:0px;width:688px;border-collapse:collapse;color:#2b2b2b;\" class=\"table_szc\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center;\" width=\"14%\">\r\n				第2014149期\r\n			</td>\r\n			<td style=\"text-align:center;\" width=\"46%\">\r\n				选号方案\r\n			</td>\r\n			<td style=\"text-align:center;\" width=\"20%\">\r\n				命中（红球+蓝球）\r\n			</td>\r\n			<td style=\"text-align:center;\" width=\"12%\">\r\n				方式\r\n			</td>\r\n			<td style=\"text-align:center;\" width=\"8%\">\r\n				倍数\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center;\" class=\"bdr\">\r\n				1\r\n			</td>\r\n			<td style=\"text-align:left;\" class=\"t_l\">\r\n				<span style=\"color:#ba2636;\" class=\"c_ba2636\">&nbsp;红球：</span><span>03 06 22 26 28 31</span><br />\r\n<span style=\"color:#1e50a2;\" class=\"c_1e50a2\">&nbsp;蓝球：</span><span>02</span> \r\n			</td>\r\n			<td style=\"text-align:center;\">\r\n				--\r\n			</td>\r\n			<td style=\"text-align:center;\">\r\n				<span class=\"play_eg_box\">单式</span> \r\n			</td>\r\n			<td style=\"text-align:center;\">\r\n				1\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'/ma/attached/image/20141222/20141222183659_65965.jpg',0,0,0,0,2,100,1,'0000-00-00 00:00:00','2014-12-22 18:40:02');
/*!40000 ALTER TABLE `ma_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-23 14:51:25
