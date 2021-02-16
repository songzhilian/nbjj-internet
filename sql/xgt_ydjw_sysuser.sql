-----------------------------------------------------
-- Export file for user YDJW_XGT                   --
-- Created by Administrator on 2021/02/03, 9:50:36 --
-----------------------------------------------------

spool xgt_ydjw_sysuser.log

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table YDJW_XGT.SYS_USER
(
  YHDM   VARCHAR2(32) not null,
  XM     VARCHAR2(32),
  BMDM   VARCHAR2(12) not null,
  SFZMHM VARCHAR2(18),
  MM     VARCHAR2(40) not null,
  QSIP   VARCHAR2(15),
  ZZIP   VARCHAR2(15),
  SFMJ   CHAR(1),
  SSMJ   VARCHAR2(32),
  SFBD   CHAR(1),
  ZT     CHAR(1) not null,
  GXSJ   DATE
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table YDJW_XGT.SYS_USER
  is '�û���Ϣ��';
comment on column YDJW_XGT.SYS_USER.YHDM
  is '�û�����PK';
comment on column YDJW_XGT.SYS_USER.XM
  is '����';
comment on column YDJW_XGT.SYS_USER.BMDM
  is '���Ŵ���';
comment on column YDJW_XGT.SYS_USER.SFZMHM
  is '���֤������
';
comment on column YDJW_XGT.SYS_USER.MM
  is '����';
comment on column YDJW_XGT.SYS_USER.QSIP
  is '��ʼIP';
comment on column YDJW_XGT.SYS_USER.ZZIP
  is '��ֹIP';
comment on column YDJW_XGT.SYS_USER.SFMJ
  is '�Ƿ��񾯣�1-��0-��';
comment on column YDJW_XGT.SYS_USER.SSMJ
  is '������';
comment on column YDJW_XGT.SYS_USER.SFBD
  is '�Ƿ��';
comment on column YDJW_XGT.SYS_USER.ZT
  is '״̬��0-��Ч;1-��Ч;2-������';
comment on column YDJW_XGT.SYS_USER.GXSJ
  is '����ʱ��';
alter table YDJW_XGT.SYS_USER
  add constraint PK_SYS_USER primary key (YHDM)
  using index 
  tablespace YDJW_DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index YDJW_XGT.I_SYS_USER_BMDM on YDJW_XGT.SYS_USER (BMDM)
  tablespace YDJW_DATA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


spool off
