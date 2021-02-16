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
  is '用户信息表';
comment on column YDJW_XGT.SYS_USER.YHDM
  is '用户代码PK';
comment on column YDJW_XGT.SYS_USER.XM
  is '姓名';
comment on column YDJW_XGT.SYS_USER.BMDM
  is '部门代码';
comment on column YDJW_XGT.SYS_USER.SFZMHM
  is '身份证名号码
';
comment on column YDJW_XGT.SYS_USER.MM
  is '密码';
comment on column YDJW_XGT.SYS_USER.QSIP
  is '起始IP';
comment on column YDJW_XGT.SYS_USER.ZZIP
  is '终止IP';
comment on column YDJW_XGT.SYS_USER.SFMJ
  is '是否民警（1-是0-否）';
comment on column YDJW_XGT.SYS_USER.SSMJ
  is '所属民警';
comment on column YDJW_XGT.SYS_USER.SFBD
  is '是否绑定';
comment on column YDJW_XGT.SYS_USER.ZT
  is '状态（0-无效;1-有效;2-锁定）';
comment on column YDJW_XGT.SYS_USER.GXSJ
  is '更新时间';
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
