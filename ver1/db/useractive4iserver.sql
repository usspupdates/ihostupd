DROP TABLE IF EXISTS `useractive`;	#	��ǰ��û�
CREATE TABLE `useractive` (	#	
  `id` int NOT NULL AUTO_INCREMENT,	#	
  `srcid` int DEFAULT NULL,	#	iserver�ֶ�
  `mac` varchar(36) DEFAULT NULL,	#	�û���mac��ַ
  `phone` varchar(30) DEFAULT NULL,	#	�û����ֻ��ţ����û���Զ��ϵ��
  `userrole` varchar(30) DEFAULT NULL,	#	��ͬ��ɫ��ÿ��mac��ÿ��userrole����һ��default userid
  `userid` varchar(36) DEFAULT NULL,	#	mac��Ӧ��userid����Զ�Ĺ�ϵ
  `onsite` tinyint DEFAULT '0',  # 0-not on site; 1-onsite
  `online` tinyint DEFAULT '0',  # 0-not online; 1-online
  `macfirst` datetime DEFAULT '1970-1-1 00:00:00',	#	mac�״η���ʱ��
  `macmark` datetime DEFAULT NULL,	#	mac���ʱ�䣬��;���»���ʱʹ��
  `maclast` datetime DEFAULT '1970-1-1 00:00:00',	#	mac���һ�η���ʱ��
  `pagefirst` datetime DEFAULT '1970-1-1 00:00:00',	#	�״η���վ��ʱ��
  `pagemark` datetime DEFAULT NULL,	#	վ����ʱ�䣬��;���»���ʱʹ��
  `pagelast` datetime DEFAULT '1970-1-1 00:00:00',	#	ĩ�η���վ��ʱ��
  `updby` varchar(30) DEFAULT NULL,	#   ���¼�¼�ĳ���
  `insby` varchar(30) DEFAULT NULL,	#   ������¼�ĳ���
  `srcip` varchar(64) DEFAULT NULL,	#	iserver�ֶ�
  `sender` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `netid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `progid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `updtime` datetime DEFAULT NULL,	#	��¼����ʱ��
  `rectime` datetime DEFAULT NULL,	#	��¼ʱ��
  `pushflag` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`mac`)	#		
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	