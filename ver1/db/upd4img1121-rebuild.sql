# in ihost.base.1120.img & ihost.sys.1121.img
# there is no userrole column in useraccounts table
# rebulid table useraccounts
## ----------------------------
## Table structure for useraccounts
## ----------------------------
DROP TABLE IF EXISTS `useraccounts`;	#	用户主记录
CREATE TABLE `useraccounts` (	#	
  `id` bigint NOT NULL AUTO_INCREMENT,	#	
  `userid` varchar(36) DEFAULT NULL,	#	为user分配一个uuid. It is generated in ihost by php. 
  `srcid` int DEFAULT NULL,	#	iserver字段
  `token` int DEFAULT NULL,	#	8位随机数，由ihost产生
  `srcnode` varchar(10) DEFAULT NULL,	#	（预留）
  `usercode` varchar(30) DEFAULT NULL,	#	用户编码（预留）
  `user_uuid` varchar(36) DEFAULT NULL,	#	用户uuid. It is generated on iserver. Globally effective to cover cases that the user might change his phone and/or phone number.
  `mac` varchar(36) DEFAULT NULL,	#	mac地址
  `userpass` varchar(30) DEFAULT NULL,	#	用户密码
  `useremail1` varchar(64) DEFAULT NULL,	#	用户email
  `useremail2` varchar(64) DEFAULT NULL,	#	用户备用email
  `question` varchar(30) DEFAULT NULL,	#	密码提示问题
  `answer` varchar(30) DEFAULT NULL,	#	密码答案，用于找回密码
  `fname` varchar(20) DEFAULT NULL,	#	名字
  `lname` varchar(20) DEFAULT NULL,	#	姓
  `userrole` varchar(20) default NULL, #	不同角色，每个mac在每个userrole中有一个default userid #   100-代表 200-嘉宾 300-媒体 400-会务
  `usertype` varchar(10) DEFAULT NULL,	#	用户类型：预注册/现场注册
  `integral` int DEFAULT '0',	#	userid下的积分
  `pntfactor` int DEFAULT '1000',	#	points转integral的因子，1000代表1
  `byear` smallint DEFAULT NULL,	#	生日，年
  `bmonth` smallint DEFAULT NULL,	#	生日，月
  `bday` smallint DEFAULT NULL,	#	生日，日
  `gender` varchar(8) DEFAULT NULL,	#	性别
  `occup` varchar(30) DEFAULT NULL,	#	职业
  `orgn` varchar(64) DEFAULT NULL,	#	工作单位
  `title` varchar(32) DEFAULT NULL,	#	职务
  `cid` varchar(30) DEFAULT NULL,	#	证件号
  `ctype` varchar(10) DEFAULT NULL,	#	证件类别
  `regphone` varchar(30) DEFAULT NULL,	#	（预）注册所用的电话号码
  `captcha` varchar(10) DEFAULT NULL,	#	（预）注册所用的验证码
  `phone` varchar(30) DEFAULT NULL,	#	常用电话号码
  `address` varchar(128) DEFAULT NULL,	#	地址
  `location` varchar(32) DEFAULT NULL,	#	所在区域
  `action` varchar(128) DEFAULT NULL,	#	活动（预留）
  `stat` varchar(3) DEFAULT '100',	#	数据状态 100-有效 
  `open1` varchar(3) DEFAULT '100',	#	数据对招聘者公开，100-公开，0-不公开
  `open2` varchar(3) DEFAULT '100',	#	数据对求职者公开，100-公开，0-不公开
  `smscheck` varchar(3) DEFAULT '100',	#	短信验证，100-验证，0-不验证
  `memo` varchar(128) DEFAULT NULL,	#	备注
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `intid` varchar(30) DEFAULT NULL,	#	与phpyun的对应关系（记录学历等其他个人信息）
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`userid`),	#	
  KEY `phone` (`phone`)	#	
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	

## ----------------------------
## Table structure for usermacs
## ----------------------------
DROP TABLE IF EXISTS `usermacs`;	#	记录useraccount 与 终端、电话号码的多对多关系
CREATE TABLE `usermacs` (	#	
  `id` int NOT NULL AUTO_INCREMENT,	#	
  `userid` varchar(36) DEFAULT NULL,	#	mac对应的userid，多对多的关系
  `srcid` int DEFAULT NULL,	#	iserver字段
  `token` int DEFAULT NULL,	#	8位随机数，由ihost产生
  `srcnode` varchar(10) DEFAULT NULL,	#	（预留）
  `usercode` varchar(30) DEFAULT NULL,	#	用户编码（预留）
  `mac` varchar(36) DEFAULT NULL,	#	用户的mac地址（一个mac可以对多用户，一个用户可以有多mac）
  `phone` varchar(30) DEFAULT NULL,	#	用户提供的手机号（与用户多对多关系）
  `stat` varchar(3) DEFAULT '100',	#	数据状态 100-有效 
  `dft` varchar(3) DEFAULT '100',	#	100-此记录的mac-userid是默认值，一个mac一个userrole下同时只有一个默认userid
  `prio` varchar(3) DEFAULT '0',	#	多个mac-userrole-userid的排序优先级；大于0的最大值可用于自动签到
  `userrole` varchar(30) DEFAULT NULL,	#	不同角色，每个mac在每个userrole中有一个default userid #   100-代表 200-嘉宾 300-媒体 400-会务
  `pntmaster` varchar(3) DEFAULT NULL,	#	积分主记录标识，100-此userid为主记录，一个mac只对一个userid积分
  `memo` varchar(128) DEFAULT NULL,	#	备注
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`userid`),	#	
  KEY `usercode` (`usercode`)	#	
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	

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
  `updby` varchar(128) DEFAULT NULL,	#   更新记录的程序
  `insby` varchar(128) DEFAULT NULL,	#   创建记录的程序
  `srcip` varchar(64) DEFAULT NULL,	#	iserver字段
  `sender` varchar(36) DEFAULT NULL, 	#	iserver字段
  `netid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `progid` varchar(36) DEFAULT NULL, 	#	iserver字段
  `updtime` datetime DEFAULT NULL,	#	记录更新时间
  `rectime` datetime DEFAULT NULL,	#	记录时间
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`mac`)	#		
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	


	