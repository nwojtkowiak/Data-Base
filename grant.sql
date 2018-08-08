CREATE USER user_ro IDENTIFIED BY 'pass';
CREATE USER user_rw_address IDENTIFIED BY 'pass';
CREATE USER user_admin IDENTIFIED BY 'admin';


REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_ro'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_rw_address'@'%';

GRANT SELECT ON project.* TO 'user_ro'@'%','user_rw_address'@'%';
GRANT INSERT,DROP ON project.address TO 'user_rw_address'@'%';
GRANT ALL ON project.* TO 'admin'@'%';


select * FROM mysql.user where user= 'root' ;
SHOW GRANTS FOR 'root'@'localhost';

select version();

GRANT BACKUP_ADMIN,BINLOG_ADMIN,CONNECTION_ADMIN,ENCRYPTION_KEY_ADMIN,GROUP_REPLICATION_ADMIN,PERSIST_RO_VARIABLES_ADMIN,REPLICATION_SLAVE_ADMIN,RESOURCE_GROUP_ADMIN,RESOURCE_GROUP_USER,ROLE_ADMIN,SET_USER_ID,SYSTEM_VARIABLES_ADMIN,XA_RECOVER_ADMIN ON *.* TO `root`@`localhost` WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `root`@`localhost` WITH GRANT OPTION;
