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
-- Table structure for table `ap_forms`
--

DROP TABLE IF EXISTS `ap_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ap_forms` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` text,
  `form_description` text,
  `form_tags` varchar(255) DEFAULT NULL,
  `form_email` text,
  `form_redirect` text,
  `form_redirect_enable` int(1) NOT NULL DEFAULT '0',
  `form_success_message` text,
  `form_disabled_message` text,
  `form_password` varchar(100) DEFAULT NULL,
  `form_unique_ip` int(1) NOT NULL DEFAULT '0',
  `form_frame_height` int(11) DEFAULT NULL,
  `form_has_css` int(11) NOT NULL DEFAULT '0',
  `form_captcha` int(11) NOT NULL DEFAULT '0',
  `form_captcha_type` char(1) NOT NULL DEFAULT 'r',
  `form_active` int(11) NOT NULL DEFAULT '1',
  `form_theme_id` int(11) NOT NULL DEFAULT '0',
  `form_review` int(11) NOT NULL DEFAULT '0',
  `form_resume_enable` int(1) NOT NULL DEFAULT '0',
  `form_limit_enable` int(1) NOT NULL DEFAULT '0',
  `form_limit` int(11) NOT NULL DEFAULT '0',
  `form_label_alignment` varchar(11) NOT NULL DEFAULT 'top_label',
  `form_language` varchar(50) DEFAULT NULL,
  `form_page_total` int(11) NOT NULL DEFAULT '1',
  `form_lastpage_title` varchar(255) DEFAULT NULL,
  `form_submit_primary_text` varchar(255) NOT NULL DEFAULT 'Submit',
  `form_submit_secondary_text` varchar(255) NOT NULL DEFAULT 'Previous',
  `form_submit_primary_img` varchar(255) DEFAULT NULL,
  `form_submit_secondary_img` varchar(255) DEFAULT NULL,
  `form_submit_use_image` int(1) NOT NULL DEFAULT '0',
  `form_review_primary_text` varchar(255) NOT NULL DEFAULT 'Submit',
  `form_review_secondary_text` varchar(255) NOT NULL DEFAULT 'Previous',
  `form_review_primary_img` varchar(255) DEFAULT NULL,
  `form_review_secondary_img` varchar(255) DEFAULT NULL,
  `form_review_use_image` int(11) NOT NULL DEFAULT '0',
  `form_review_title` text,
  `form_review_description` text,
  `form_pagination_type` varchar(11) NOT NULL DEFAULT 'steps',
  `form_schedule_enable` int(1) NOT NULL DEFAULT '0',
  `form_schedule_start_date` date DEFAULT NULL,
  `form_schedule_end_date` date DEFAULT NULL,
  `form_schedule_start_hour` time DEFAULT NULL,
  `form_schedule_end_hour` time DEFAULT NULL,
  `esl_enable` tinyint(1) NOT NULL DEFAULT '0',
  `esl_from_name` text,
  `esl_from_email_address` varchar(255) DEFAULT NULL,
  `esl_subject` text,
  `esl_content` mediumtext,
  `esl_plain_text` int(11) NOT NULL DEFAULT '0',
  `esr_enable` tinyint(1) NOT NULL DEFAULT '0',
  `esr_email_address` text,
  `esr_from_name` text,
  `esr_from_email_address` varchar(255) DEFAULT NULL,
  `esr_subject` text,
  `esr_content` mediumtext,
  `esr_plain_text` int(11) NOT NULL DEFAULT '0',
  `payment_enable_merchant` int(1) NOT NULL DEFAULT '-1',
  `payment_merchant_type` varchar(25) NOT NULL DEFAULT 'paypal_standard',
  `payment_paypal_email` varchar(255) DEFAULT NULL,
  `payment_paypal_language` varchar(5) NOT NULL DEFAULT 'US',
  `payment_currency` varchar(5) NOT NULL DEFAULT 'USD',
  `payment_show_total` int(1) NOT NULL DEFAULT '0',
  `payment_total_location` varchar(11) NOT NULL DEFAULT 'top',
  `payment_enable_recurring` int(1) NOT NULL DEFAULT '0',
  `payment_recurring_cycle` int(11) NOT NULL DEFAULT '1',
  `payment_recurring_unit` varchar(5) NOT NULL DEFAULT 'month',
  `payment_enable_trial` int(1) NOT NULL DEFAULT '0',
  `payment_trial_period` int(11) NOT NULL DEFAULT '1',
  `payment_trial_unit` varchar(5) NOT NULL DEFAULT 'month',
  `payment_trial_amount` decimal(62,2) NOT NULL DEFAULT '0.00',
  `payment_price_type` varchar(11) NOT NULL DEFAULT 'fixed',
  `payment_price_amount` decimal(62,2) NOT NULL DEFAULT '0.00',
  `payment_price_name` varchar(255) DEFAULT NULL,
  `payment_stripe_live_secret_key` varchar(50) DEFAULT NULL,
  `payment_stripe_live_public_key` varchar(50) DEFAULT NULL,
  `payment_stripe_test_secret_key` varchar(50) DEFAULT NULL,
  `payment_stripe_test_public_key` varchar(50) DEFAULT NULL,
  `payment_stripe_enable_test_mode` int(1) NOT NULL DEFAULT '0',
  `payment_paypal_enable_test_mode` int(1) NOT NULL DEFAULT '0',
  `payment_enable_invoice` int(1) NOT NULL DEFAULT '0',
  `payment_invoice_email` varchar(255) DEFAULT NULL,
  `payment_delay_notifications` int(1) NOT NULL DEFAULT '1',
  `payment_ask_billing` int(1) NOT NULL DEFAULT '0',
  `payment_ask_shipping` int(1) NOT NULL DEFAULT '0',
  `payment_enable_tax` int(1) NOT NULL DEFAULT '0',
  `payment_tax_rate` decimal(62,2) NOT NULL DEFAULT '0.00',
  `logic_field_enable` tinyint(1) NOT NULL DEFAULT '0',
  `logic_page_enable` tinyint(1) NOT NULL DEFAULT '0',
  `logic_email_enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`form_id`),
  KEY `form_tags` (`form_tags`)
) ENGINE=MyISAM AUTO_INCREMENT=11893 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ap_forms`
--

LOCK TABLES `ap_forms` WRITE;
/*!40000 ALTER TABLE `ap_forms` DISABLE KEYS */;
INSERT INTO `ap_forms` VALUES (10392,'公益拇指','动动拇指 参与公益活动',NULL,NULL,'',0,'试题全部答完了！<br>点击此处<a href=\'/wap\'>回到首页！</a>',NULL,'',0,3207,1,0,'r',1,23,0,0,0,0,'top_label','chinese',10,'','Submit','Previous',NULL,NULL,0,'Submit','Previous','','',0,'Review Your Entry','Please review your entry below. Click Submit button to finish.','percentage',0,'0000-00-00','0000-00-00','00:00:00','00:00:00',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,1,'check','','CN','JPY',1,'top',0,1,'month',0,1,'month',0.00,'variable',100.00,'公益拇指 Fee','','','','',0,0,0,NULL,1,0,0,0,0.00,0,0,0),(10825,'公益拇指 Copy','动动拇指 参与公益活动',NULL,NULL,'',0,'Success! Your submission has been saved!',NULL,'',0,465,1,0,'r',9,2,0,0,0,0,'top_label','english',1,'Untitled Page','Submit','Previous','','',0,'Submit','Previous','','',0,'Review Your Entry','Please review your entry below. Click Submit button to finish.','steps',0,'0000-00-00','0000-00-00','00:00:00','00:00:00',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,-1,'paypal_standard',NULL,'US','USD',0,'top',0,1,'month',0,1,'month',0.00,'fixed',0.00,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,1,0,0,0,0.00,0,0,0),(11022,'公益拇指 Copy','动动拇指 参与公益活动',NULL,NULL,'',0,'Success! Your submission has been saved!',NULL,'',0,3207,1,0,'r',9,23,0,0,0,0,'top_label','english',10,'','Submit','Previous',NULL,NULL,0,'Submit','Previous','','',0,'Review Your Entry','Please review your entry below. Click Submit button to finish.','percentage',0,'0000-00-00','0000-00-00','00:00:00','00:00:00',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,'paypal_standard','','CN','USD',0,'top',0,1,'month',0,1,'month',0.00,'fixed',0.00,'公益拇指 Fee','','','','',0,0,0,NULL,1,0,0,0,0.00,0,0,0),(11892,'Form use userid','This is your form description. Click here to edit.',NULL,NULL,'',0,'Success! Your submission has been saved!',NULL,'',0,597,1,0,'r',1,0,1,0,0,0,'top_label','chinese',2,'Untitled Page','Continue','Previous',NULL,NULL,0,'提交','前一题','','',0,'Review Your Entry','Please review your entry below. Click Submit button to finish.','steps',0,'0000-00-00','0000-00-00','00:00:00','00:00:00',0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,1,'check','','CN','JPY',1,'bottom',0,1,'month',0,1,'month',0.00,'variable',10.00,'Form use userid Fee','','','','',0,0,0,NULL,1,0,0,0,0.00,0,0,0);
/*!40000 ALTER TABLE `ap_forms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-22 10:30:17
