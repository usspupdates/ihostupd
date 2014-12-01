# in ihost.base.1120.img & ihost.sys.1121.img
# there is no userrole column in useraccounts table
# add column to existing table
ALTER TABLE useraccounts ADD COLUMN `userrole` varchar(20) default NULL;
ALTER TABLE useraccounts MODIFY COLUMN `integral` int(10) DEFAULT '0';
ALTER TABLE useraccounts ADD COLUMN `pntfactor` int DEFAULT '1000';