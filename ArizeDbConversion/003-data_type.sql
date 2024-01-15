/*
CHAR->VARCHAR
TINYINT->VARCHAR(3): 1->YES, 2->NO  
DATETIME -> DATE and TIME (or just DATE?)
*/

SELECT CONCAT('ALTER TABLE ', table_name, ' MODIFY COLUMN ', column_name, ' VARCHAR(', character_maximum_length, ') CHARSET utf8mb4;') AS alter_stmt
FROM information_schema.columns
WHERE table_schema = 'arize2' AND data_type = 'char'
and left(table_name,3) in ('mm_', 'ap_', 'sms', 'gl_', 'am_');
;



SELECT   CONCAT(
    'ALTER TABLE ', table_name, ' ADD COLUMN temp_col VARCHAR(3); ',
    'UPDATE ', table_name, ' SET temp_col = `Yes` WHERE ', column_name, ' = 1 ; ',
    'UPDATE ', table_name, ' SET temp_col = `No` WHERE ', column_name, ' is null or ', column_name , ' = 0 ; ',
    'ALTER TABLE ', table_name, ' MODIFY COLUMN ', column_name, ' VARCHAR(3); ',
    'UPDATE ', table_name, ' SET ' , column_name, ' = temp_col ; ',
    'ALTER TABLE ', table_name, ' DROP COLUMN temp_col; '
) AS alter_stmt
FROM information_schema.columns
WHERE  data_type = 'tinyint' 
and `TABLE_SCHEMA` = 'arize2'
and left(table_name,3) in ('mm_', 'ap_', 'sms', 'gl_', 'am_');
;



SELECT CONCAT('ALTER TABLE ', `TABLE_NAME`, ' MODIFY COLUMN ' , `COLUMN_NAME`, ' DATE;') as `/*SQL*/` FROM information_schema.columns
WHERE  data_type = 'datetime' 
and `TABLE_SCHEMA` = 'arize2'
and left(table_name,3) in ('mm_', 'ap_', 'sms', 'gl_', 'am_');
;
