prompt PL/SQL Developer import file
prompt Created on 2021��2��3�� by Administrator
set feedback off
set define off
prompt Disabling triggers for ACD_BXGS...
alter table ACD_BXGS disable all triggers;
prompt Deleting ACD_BXGS...
delete from ACD_BXGS;
commit;
prompt Loading ACD_BXGS...
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (1, '�й�����Ʋ����չɷ����޹�˾', '�˱�', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (2, '�й���زƲ����չɷ����޹�˾', '���', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (3, '�й�̫ƽ�Ʋ��������޹�˾', '̫ƽ', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (4, '�����Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (5, '��̩�Ʋ����չɷ����޹�˾', '��̩', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (6, '��ƽ�������չɷ����޹�˾', '��ƽ', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (7, '�����Ʋ����գ��й������޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (8, '�񰲲Ʋ��������޹�˾', '��', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (9, '�й�ƽ���Ʋ����չɷ����޹�˾', 'ƽ��', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (10, '����Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (11, '�л����ϲƲ����չɷ����޹�˾', '�л�����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (12, '���ϲƲ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (13, '�����Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (14, '����Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (15, '�й�̫ƽ��Ʋ����չɷ����޹�˾', '̫ƽ��', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (16, '����Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (17, '�����������޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (18, '�찲�Ʋ����չɷ����޹�˾', '�찲', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (19, '���ͲƲ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (20, '�й����ٲƲ����չɷ����޹�˾', '���ٲ�', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (21, '�Ŵ�Ʋ����չɷ����޹�˾', '�Ŵ�', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (22, '�Ͻ�Ʋ����չɷ����޹�˾', '�Ͻ�', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (23, '��̩�Ʋ������������ι�˾', '��̩', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (24, 'Ӣ��̩�ͲƲ����չɷ����޹�˾', 'Ӣ��̩��', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (25, '�ڳ��������չɷ����޹�˾', '�ڳ�', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (26, '���̲Ʋ����չɷ����޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (27, '�����������޹�˾', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (28, '����', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (29, '�����ʺ�', '����', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (30, '���չ�˾��', '��ʱ', null, null);
commit;
prompt 30 records loaded
prompt Enabling triggers for ACD_BXGS...
alter table ACD_BXGS enable all triggers;
set feedback on
set define on
prompt Done.
