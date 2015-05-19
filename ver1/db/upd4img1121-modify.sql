# in ihost.base.1120.img & ihost.sys.1121.img
# there is no userrole column in useraccounts table
# add column to existing table
ALTER TABLE useraccounts ADD COLUMN `userrole` varchar(20) default NULL;
ALTER TABLE useraccounts MODIFY COLUMN `integral` int(10) DEFAULT '0';
ALTER TABLE useraccounts ADD COLUMN `pntfactor` int DEFAULT '1000';
# add column user_uuid to useraccounts
ALTER TABLE useraccounts ADD COLUMN `user_uuid` varchar(36) DEFAULT NULL;
# add column pushflag in useraccounts table
ALTER TABLE useraccounts ADD COLUMN `pushflag` tinyint DEFAULT '1';
ALTER TABLE useraccounts ADD COLUMN `captcha` varchar(10) DEFAULT NULL;

# add column pushflag in usermacs table
ALTER TABLE usermacs ADD COLUMN `pushflag` tinyint DEFAULT '1';


# add columns in useractive table
ALTER TABLE useractive ADD COLUMN `srcip` varchar(64) DEFAULT NULL;
ALTER TABLE useractive ADD COLUMN `sender` varchar(36) DEFAULT NULL;
ALTER TABLE useractive ADD COLUMN `netid` varchar(36) DEFAULT NULL;
ALTER TABLE useractive ADD COLUMN `progid` varchar(36) DEFAULT NULL;
ALTER TABLE useractive ADD COLUMN `updtime` datetime DEFAULT NULL;
ALTER TABLE useractive ADD COLUMN `pushflag` tinyint DEFAULT '1';
ALTER TABLE useractive ADD COLUMN `srcid` int DEFAULT NULL;


# modify userid
ALTER TABLE useraccounts MODIFY COLUMN `userid` varchar(36) DEFAULT NULL;
ALTER TABLE usermacs MODIFY COLUMN `userid` varchar(36) DEFAULT NULL;
ALTER TABLE useractive MODIFY COLUMN `userid` varchar(36) DEFAULT NULL;
ALTER TABLE userpoints MODIFY COLUMN `userid` varchar(36) DEFAULT NULL;
ALTER TABLE userlog MODIFY COLUMN `userid` varchar(36) DEFAULT NULL;

