prompt PL/SQL Developer import file
prompt Created on 2021年2月3日 by Administrator
set feedback off
set define off
prompt Disabling triggers for SYS_USER...
alter table SYS_USER disable all triggers;
prompt Deleting SYS_USER...
delete from SYS_USER;
commit;
prompt Loading SYS_USER...
insert into SYS_USER (YHDM, XM, BMDM, SFZMHM, MM, QSIP, ZZIP, SFMJ, SSMJ, SFBD, ZT, GXSJ)
values ('888801', '河北测试', '330203000000', '330903196811050071', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, '1', '1', '0', '1', to_date('24-12-2020 15:26:22', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 1 records loaded
prompt Enabling triggers for SYS_USER...
alter table SYS_USER enable all triggers;
set feedback on
set define on
prompt Done.
