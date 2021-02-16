prompt PL/SQL Developer import file
prompt Created on 2021年2月3日 by Administrator
set feedback off
set define off
prompt Disabling triggers for ACD_BXGS...
alter table ACD_BXGS disable all triggers;
prompt Deleting ACD_BXGS...
delete from ACD_BXGS;
commit;
prompt Loading ACD_BXGS...
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (1, '中国人民财产保险股份有限公司', '人保', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (2, '中国大地财产保险股份有限公司', '大地', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (3, '中国太平财产保险有限公司', '太平', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (4, '华安财产保险股份有限公司', '华安', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (5, '华泰财产保险股份有限公司', '华泰', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (6, '天平汽车保险股份有限公司', '天平', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (7, '安联财产保险（中国）有限公司', '安联', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (8, '民安财产保险有限公司', '民安', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (9, '中国平安财产保险股份有限公司', '平安', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (10, '都邦财产保险股份有限公司', '都邦', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (11, '中华联合财产保险股份有限公司', '中华联合', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (12, '永诚财产保险股份有限公司', '永诚', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (13, '永安财产保险股份有限公司', '永安', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (14, '阳光财产保险股份有限公司', '阳光', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (15, '中国太平洋财产保险股份有限公司', '太平洋', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (16, '安邦财产保险股份有限公司', '安邦', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (17, '中银保险有限公司', '中银', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (18, '天安财产保险股份有限公司', '天安', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (19, '鼎和财产保险股份有限公司', '鼎和', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (20, '中国人寿财产保险股份有限公司', '国寿财', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (21, '信达财产保险股份有限公司', '信达', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (22, '紫金财产保险股份有限公司', '紫金', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (23, '国泰财产保险有限责任公司', '国泰', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (24, '英大泰和财产保险股份有限公司', '英大泰和', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (25, '众诚汽车保险股份有限公司', '众诚', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (26, '浙商财产保险股份有限公司', '浙商', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (27, '利宝保险有限公司', '利宝', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (28, '其他', '其他', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (29, '管理帐号', '管理', null, null);
insert into ACD_BXGS (ID, BXGSMC, BXGSJC, ZT, BZ)
values (30, '保险公司用', '临时', null, null);
commit;
prompt 30 records loaded
prompt Enabling triggers for ACD_BXGS...
alter table ACD_BXGS enable all triggers;
set feedback on
set define on
prompt Done.
