-- Active: 1699939865997@@10.0.0.43@1433@NTTSMS_HFTEST_TEMP5
--create new table 
create table bronx_push_audit(
    autoid int identity(1,1),
    pc_name varchar(32),
    push_time datetime default getdate(),
    file_name varchar(32),
    file_modify_date datetime
);