-- Active: 1680674357986@@127.0.0.1@3306@arize2

-- use this query to generate SQL commands

SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_group int DEFAULT NULL;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_time time NOT NULL DEFAULT "00:00:00";') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_created date DEFAULT NULL;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_screen varchar(36) DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_screen_name varchar(50) DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_created_time time DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_checksum varchar(256) DEFAULT NULL;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_status varchar(10) DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_entry_status_hx varchar(512) DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_created_tz_stamp timestamp NULL DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME, ' ADD data_modified_tz_stamp timestamp NULL DEFAULT NULL ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
Union
SELECT CONCAT(
    'ALTER TABLE ', TABLE_NAME,  ' ADD ', TABLE_NAME, '_id int NOT NULL AUTO_INCREMENT PRIMARY KEY ;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%')
and table_name not like 'app%'
;


--populate arize columns so they can be used by screen manager
SELECT CONCAT(
    'UPDATE ', TABLE_NAME,  ' set data_created_by = 1431, data_entry_domain = 3, data_entry_group = 1;') AS sql_statement
FROM information_schema.tables WHERE table_schema = 'arize2' 
and (table_name like 'am_%' or table_name like 'ap_%' or table_name like 'gl_%' or table_name like 'mm_%' or table_name like 'sms_%');

--update sms_ois_cfg set data_created_by = 1431, data_entry_domain = 3, data_entry_group = 1;


 SELECT *  FROM `am_C_ASSETS`;
 ALTER TABLE am_C_ASSETS ADD am_C_ASSETS_id int NOT NULL AUTO_INCREMENT PRIMARY KEY ;


 update `am_C_ASSETS` set data_entry_date = '0000-00-00', data_entry_screen_name = NULL, data_created_time = NULL, data_created_tz_stamp = NULL, data_modified_tz_stamp = NULL, data_entry_user = NULL, data_entry_time = '00:00:00', data_created_time =NULL;

create table am_C_ASSETS2 like am_C_ASSETS;

