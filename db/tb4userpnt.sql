## ----------------------------
## Table structure for userpoints
## ----------------------------
DROP TABLE IF EXISTS `userpoints`;
CREATE TABLE `userpoints` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) DEFAULT NULL,	#	为user分配一个id，默认等于上列id
  `srcid` int DEFAULT NULL,	#	iserver字段
  `token` int DEFAULT NULL,	#	8位随机数，由ihost产生
  `srcnode` varchar(10) DEFAULT NULL,	#	（预留）
  `usercode` varchar(30) DEFAULT NULL,	#	用户编码（预留）
  `mac` varchar(36) DEFAULT NULL,	#	mac地址，不能确定user信息时，直接记录到MAC上
  `points` int(10) DEFAULT '0', # 累计积分值
  `action` varchar(128) DEFAULT NULL, # 给积分的原因
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `mac` (`mac`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


## ----------------------------
## Table structure for userlog
## ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) DEFAULT NULL,	#	为user分配一个id，默认等于上列id
  `srcid` int DEFAULT NULL,	#	iserver字段
  `token` int DEFAULT NULL,	#	userpoints表ID
  `srcnode` varchar(10) DEFAULT NULL,	#	（预留）
  `usercode` varchar(30) DEFAULT NULL,	#	用户编码（预留）
  `mac` varchar(36) DEFAULT NULL,	#	mac地址，不能确定user信息时，直接记录到MAC上
  `integral` int(10) DEFAULT '0', # 原计积分值
  `dintegral` int(10) DEFAULT '0', # 积分值变化
  `action` varchar(128) DEFAULT NULL, # 给积分的原因
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  PRIMARY KEY (`id`),
  KEY `usercode` (`usercode`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


GRANT SELECT, INSERT, UPDATE, DELETE ON wlsp.userpoints TO 'auth'@'127.0.0.1';
GRANT SELECT, INSERT, UPDATE, DELETE ON wlsp.userlog TO 'auth'@'127.0.0.1';

FLUSH PRIVILEGES;