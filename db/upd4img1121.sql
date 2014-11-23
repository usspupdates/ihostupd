# in ihost.base.1120.img & ihost.sys.1121.img
# there is no userrole column in useraccounts table
# add column to existing table
ALTER TABLE useraccounts ADD COLUMN `userrole` varchar(20) default NULL;