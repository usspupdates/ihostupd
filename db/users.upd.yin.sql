## ----------------------------
## Table structure for useraccounts
## ----------------------------
DROP TABLE IF EXISTS `useraccounts`;	#	�û�����¼
CREATE TABLE `useraccounts` (	#	
  `id` bigint NOT NULL AUTO_INCREMENT,	#	
  `userid` varchar(36) DEFAULT NULL,	#	Ϊuser����һ��uuid. It is generated in ihost by php. 
  `srcid` int DEFAULT NULL,	#	iserver�ֶ�
  `token` int DEFAULT NULL,	#	8λ���������ihost����
  `srcnode` varchar(10) DEFAULT NULL,	#	��Ԥ����
  `usercode` varchar(30) DEFAULT NULL,	#	�û����루Ԥ����
  `user_uuid` varchar(36) DEFAULT NULL,	#	�û�uuid. It is generated on iserver. Globally effective to cover cases that the user might change his phone and/or phone number.
  `mac` varchar(36) DEFAULT NULL,	#	mac��ַ
  `userpass` varchar(30) DEFAULT NULL,	#	�û�����
  `useremail1` varchar(64) DEFAULT NULL,	#	�û�email
  `useremail2` varchar(64) DEFAULT NULL,	#	�û�����email
  `question` varchar(30) DEFAULT NULL,	#	������ʾ����
  `answer` varchar(30) DEFAULT NULL,	#	����𰸣������һ�����
  `fname` varchar(20) DEFAULT NULL,	#	����
  `lname` varchar(20) DEFAULT NULL,	#	��
  `userrole` varchar(20) default NULL, #	��ͬ��ɫ��ÿ��mac��ÿ��userrole����һ��default userid #   100-���� 200-�α� 300-ý�� 400-����
  `usertype` varchar(10) DEFAULT NULL,	#	�û����ͣ�Ԥע��/�ֳ�ע��
  `integral` int DEFAULT '0',	#	userid�µĻ���
  `pntfactor` int DEFAULT '1000',	#	pointsתintegral�����ӣ�1000����1
  `byear` smallint DEFAULT NULL,	#	���գ���
  `bmonth` smallint DEFAULT NULL,	#	���գ���
  `bday` smallint DEFAULT NULL,	#	���գ���
  `gender` varchar(8) DEFAULT NULL,	#	�Ա�
  `occup` varchar(30) DEFAULT NULL,	#	ְҵ
  `orgn` varchar(64) DEFAULT NULL,	#	������λ
  `title` varchar(32) DEFAULT NULL,	#	ְ��
  `cid` varchar(30) DEFAULT NULL,	#	֤����
  `ctype` varchar(10) DEFAULT NULL,	#	֤�����
  `regphone` varchar(30) DEFAULT NULL,	#	��Ԥ��ע�����õĵ绰����
  `captcha` varchar(10) DEFAULT NULL,	#	��Ԥ��ע�����õ���֤��
  `phone` varchar(30) DEFAULT NULL,	#	���õ绰����
  `address` varchar(128) DEFAULT NULL,	#	��ַ
  `location` varchar(32) DEFAULT NULL,	#	��������
  `action` varchar(128) DEFAULT NULL,	#	���Ԥ����
  `stat` varchar(3) DEFAULT '100',	#	����״̬ 100-��Ч 
  `open1` varchar(3) DEFAULT '100',	#	���ݶ���Ƹ�߹�����100-������0-������
  `open2` varchar(3) DEFAULT '100',	#	���ݶ���ְ�߹�����100-������0-������
  `smscheck` varchar(3) DEFAULT '100',	#	������֤��100-��֤��0-����֤
  `memo` varchar(128) DEFAULT NULL,	#	��ע
  `srcip` varchar(64) DEFAULT NULL,	#	iserver�ֶ�
  `sender` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `netid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `progid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `intid` varchar(30) DEFAULT NULL,	#	��phpyun�Ķ�Ӧ��ϵ����¼ѧ��������������Ϣ��
  `updtime` datetime DEFAULT NULL,	#	��¼����ʱ��
  `rectime` datetime DEFAULT NULL,	#	��¼ʱ��
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`userid`),	#	
  KEY `phone` (`phone`)	#	
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	

## ----------------------------
## Table structure for usermacs
## ----------------------------
DROP TABLE IF EXISTS `usermacs`;	#	��¼useraccount �� �նˡ��绰����Ķ�Զ��ϵ
CREATE TABLE `usermacs` (	#	
  `id` int NOT NULL AUTO_INCREMENT,	#	
  `userid` varchar(36) DEFAULT NULL,	#	mac��Ӧ��userid����Զ�Ĺ�ϵ
  `srcid` int DEFAULT NULL,	#	iserver�ֶ�
  `token` int DEFAULT NULL,	#	8λ���������ihost����
  `srcnode` varchar(10) DEFAULT NULL,	#	��Ԥ����
  `usercode` varchar(30) DEFAULT NULL,	#	�û����루Ԥ����
  `mac` varchar(36) DEFAULT NULL,	#	�û���mac��ַ��һ��mac���ԶԶ��û���һ���û������ж�mac��
  `phone` varchar(30) DEFAULT NULL,	#	�û��ṩ���ֻ��ţ����û���Զ��ϵ��
  `stat` varchar(3) DEFAULT '100',	#	����״̬ 100-��Ч 
  `dft` varchar(3) DEFAULT '100',	#	100-�˼�¼��mac-userid��Ĭ��ֵ��һ��macһ��userrole��ͬʱֻ��һ��Ĭ��userid
  `prio` varchar(3) DEFAULT '0',	#	���mac-userrole-userid���������ȼ�������0�����ֵ�������Զ�ǩ��
  `userrole` varchar(30) DEFAULT NULL,	#	��ͬ��ɫ��ÿ��mac��ÿ��userrole����һ��default userid #   100-���� 200-�α� 300-ý�� 400-����
  `pntmaster` varchar(3) DEFAULT NULL,	#	��������¼��ʶ��100-��useridΪ����¼��һ��macֻ��һ��userid����
  `memo` varchar(128) DEFAULT NULL,	#	��ע
  `srcip` varchar(64) DEFAULT NULL,	#	iserver�ֶ�
  `sender` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `netid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `progid` varchar(36) DEFAULT NULL, 	#	iserver�ֶ�
  `updtime` datetime DEFAULT NULL,	#	��¼����ʱ��
  `rectime` datetime DEFAULT NULL,	#	��¼ʱ��
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`userid`),	#	
  KEY `usercode` (`usercode`)	#	
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	

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
  `pushflag` smallint DEFAULT '1',
  PRIMARY KEY (`id`),	#	
  KEY `userid` (`mac`)	#		
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;	#	
