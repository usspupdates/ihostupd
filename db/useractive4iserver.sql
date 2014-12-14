DROP TABLE IF EXISTS `useractive`;	#	当前活动用户
CREATE TABLE `useractive` (	#	
  `id` int NOT NULL AUTO_INCREMENT,	#	
  `srcid` int DEFAULT NULL,	#	iserver字段
  `mac` varchar(36) DEFAULT NULL,	#	用户的mac地址
  `phone` varchar(30) DEFAULT NULL,	#	用户的手机号（与用户多对多关系）
  `userrole` varchar(30) DEFAULT NULL,	#	不同角色，每个mac在每个userrole中有一个default userid
  `userid` varchar(36) DEFAULT NULL,	#	mac对应的userid，多对多的关系
  `onsite` tinyint DEFAULT '0',  # 0-not on site; 1-onsite
  `online` tinyint DEFAULT '0',  # 0-not online; 1-online
  `macfirst` datetime DEFAULT '1970-1-1 00:00:00',	#	mac首次发现时间
  `macmark` datetime DEFAULT NULL,	#	mac标记时间，中途更新积分时使用
  `maclast` datetime DEFAULT '1970-1-1 00:00:00',	#	mac最后一次发现时间
  `pagefirst` datetime DEFAULT '1970-1-1 00:00:00',	#	首次访问站点时间
  `pagemark` datetime DEFAULT NULL,	#	站点标记时间，中途更新积分时使用
  `pagelast` datetime DEFAULT '1970-1-1 00:00:00',	#	末次访问站点时间
  `updby` varchar(30) DEFAULT NULL,	#   更新记录的程序
  `insby` varchar(30) DEFAULT NULL,	#   创建记录的程序
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  `pushflag` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`mac`)	#		
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	