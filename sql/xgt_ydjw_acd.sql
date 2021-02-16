-----------------------------------------------------
-- Export file for user YDJW_XGT                   --
-- Created by Administrator on 2021/02/03, 9:46:53 --
-----------------------------------------------------

spool xgt_ydjw_acd.log

prompt
prompt Creating table ACD_BXGS
prompt =======================
prompt
create table YDJW_XGT.ACD_BXGS
(
  ID     NUMBER not null,
  BXGSMC VARCHAR2(32),
  BXGSJC VARCHAR2(128) not null,
  ZT     VARCHAR2(10),
  BZ     VARCHAR2(128)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table YDJW_XGT.ACD_BXGS
  is '保险公司基本信息表';
comment on column YDJW_XGT.ACD_BXGS.ID
  is '主键';
comment on column YDJW_XGT.ACD_BXGS.BXGSMC
  is '保险公司名称';
comment on column YDJW_XGT.ACD_BXGS.BXGSJC
  is '保险公司简称';
comment on column YDJW_XGT.ACD_BXGS.ZT
  is '状态０－无效；１－有效';
alter table YDJW_XGT.ACD_BXGS
  add constraint PK_ACK_BXGS primary key (ID)
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

prompt
prompt Creating table ACD_DUTYSIMPLE
prompt =============================
prompt
create table YDJW_XGT.ACD_DUTYSIMPLE
(
  LSH      NUMBER not null,
  ZT       VARCHAR2(16),
  LRSJ     DATE,
  GXSJSYS  DATE default sysdate,
  DJBH     VARCHAR2(32),
  SGBH     VARCHAR2(32),
  XZQH     VARCHAR2(10),
  XQ       NUMBER(1),
  SGFSSJ   DATE,
  LH       VARCHAR2(7) default '-',
  LM       VARCHAR2(64),
  GLS      NUMBER(5),
  MS       NUMBER(4),
  JDWZ     NUMBER(8) default 0,
  SGDD     VARCHAR2(128),
  SSRS     NUMBER(3) default 0,
  ZJCCSS   NUMBER(9) default 0,
  LWSGLX   CHAR(1),
  RDYYFL   VARCHAR2(2),
  SGRDYY   VARCHAR2(4),
  TQ       CHAR(1),
  XC       CHAR(1),
  SWSG     CHAR(1),
  SGXT     CHAR(2),
  CLJSG    VARCHAR2(1),
  DCSG     VARCHAR2(2),
  PZFS     VARCHAR2(1),
  LBQK     VARCHAR2(2),
  TJR      VARCHAR2(30),
  CCLRSJ   DATE,
  JLLX     CHAR(1),
  SCSJD    NUMBER(3),
  SSZD     VARCHAR2(12),
  DAH      VARCHAR2(50),
  SB       CHAR(1),
  TJSGBH   VARCHAR2(64),
  GLBM     VARCHAR2(12),
  DZZB     VARCHAR2(1024),
  BADW     VARCHAR2(100),
  WSBH     VARCHAR2(30),
  SGSS     VARCHAR2(2000),
  ZRTJJG   VARCHAR2(2000),
  JAR1     VARCHAR2(30),
  JAR2     VARCHAR2(30),
  JBR      VARCHAR2(30),
  GXSJ     DATE,
  JYW      VARCHAR2(64),
  JAFS     VARCHAR2(1),
  DLLX     VARCHAR2(2),
  GLXZDJ   VARCHAR2(1),
  TJFS     VARCHAR2(1),
  JD       VARCHAR2(32),
  WD       VARCHAR2(32),
  PDAID    VARCHAR2(512),
  PDALSH   VARCHAR2(64),
  JQBH     VARCHAR2(32),
  ZP       NUMBER(2),
  BZ       VARCHAR2(4000),
  PZBH     VARCHAR2(32),
  YHDM     VARCHAR2(30),
  YL1      VARCHAR2(4000),
  YL2      VARCHAR2(4000),
  YL3      VARCHAR2(4000),
  YL4      VARCHAR2(4000),
  SLSJ     DATE,
  SGDD2    VARCHAR2(128),
  SGDDDM2  VARCHAR2(12),
  LKLDLX   VARCHAR2(10),
  SFXHDLK  VARCHAR2(10),
  QZCSSL   NUMBER,
  QZCSPZBH VARCHAR2(4000),
  YLWPSL   NUMBER,
  SFBMX    VARCHAR2(10),
  SGLB     VARCHAR2(10),
  PDAMS    VARCHAR2(10),
  SFCS     VARCHAR2(10)
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
comment on table YDJW_XGT.ACD_DUTYSIMPLE
  is '简易事故主表';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZT
  is '操作标识(null未初始化，0未到时，1准备，2成功，3异常)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LRSJ
  is '入库时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GXSJSYS
  is '更新时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DJBH
  is '登记编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGBH
  is '事故编号[6xzqh+14yyyymmddhh24miss+8lsh]';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XZQH
  is '行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XQ
  is '星期';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGFSSJ
  is '事故发生时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LH
  is '路号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LM
  is '路名';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLS
  is '公里数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.MS
  is '米数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JDWZ
  is '绝对位置';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDD
  is '事故地点';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SSRS
  is '受伤人数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZJCCSS
  is '直接财产损失';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LWSGLX
  is '路外事故类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.RDYYFL
  is '事故认定原因分类';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGRDYY
  is '事故认定原因';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TQ
  is '天气';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XC
  is '现场';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SWSG
  is '涉外事故1是2否';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGXT
  is '事故形态 ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.CLJSG
  is '车辆间事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DCSG
  is '单车事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PZFS
  is '碰撞方式 1-单车 2-双车 3-多车 4-车人事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LBQK
  is '路表情况';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJR
  is '调解人';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.CCLRSJ
  is '初次录入时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JLLX
  is ' 1-快报记录 2-快报/全项记录 3全项记录';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SCSJD
  is '上传时间段(天数)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SSZD
  is '所属中队';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DAH
  is '档案号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SB
  is '上报 1-是 2-否  为空3-上报但更新不成功';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJSGBH
  is '统计事故编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLBM
  is '管理部门';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DZZB
  is '电子坐标 格式为地址坐标X,地址坐标Y,地址经度,地址纬度';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.BADW
  is '办案单位';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.WSBH
  is '文书编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGSS
  is '事故事实';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZRTJJG
  is '责任调解结果';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAR1
  is '接案人1';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAR2
  is '接案人2';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JBR
  is '经办人';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GXSJ
  is '更新时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JYW
  is '校验位';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAFS
  is '简易结案方式  1-调解结案 2-不同意结案 3-对认定有异议(不予调节) 4-拒绝签字 ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DLLX
  is '道路类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLXZDJ
  is '公路行政等级';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJFS
  is '调解方式 1-自行协商 2-人民调解 3-行政调解 4-司法调解';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDAID
  is 'PDA机号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDALSH
  is 'PDA流水号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JQBH
  is '警情编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZP
  is '照片数量';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.BZ
  is '备注';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PZBH
  is '自定义编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.YL2
  is '事故类型：999999-简易事故；999996-简易事后处理';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SLSJ
  is '受理时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDD2
  is '事故地点（自动识别）';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDDDM2
  is '事故地点代码（自动识别）lh+gls+ms';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LKLDLX
  is '路口路段类型；1-路口；2-路段';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFXHDLK
  is '是否信号灯路口';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.QZCSPZBH
  is '强制措施凭证编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.YLWPSL
  is '遗留物品数量';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFBMX
  is '是否斑马线，1-是；0-否';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGLB
  is '事故类别。01-机机；02-机非；03-机人；04-非人；05-非非；06-多车；07-机动车单方；08-非机动车单方';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDAMS
  is 'pda模式，1-在线；2-离线';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFCS
  is '是否测试，1-测试数据；0-正式数据';
alter table YDJW_XGT.ACD_DUTYSIMPLE
  add constraint PK_ACD_DUTYSIMPLE_IN primary key (LSH)
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
create index YDJW_XGT.I_ACD_DUTYSIMPLE_IN_SGFSSJ on YDJW_XGT.ACD_DUTYSIMPLE (SGFSSJ)
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

prompt
prompt Creating table ACD_DUTYSIMPLEHUMAN
prompt ==================================
prompt
create table YDJW_XGT.ACD_DUTYSIMPLEHUMAN
(
  LSH     NUMBER not null,
  RYBH    NUMBER(3) not null,
  SGBH    VARCHAR2(32),
  XZQH    VARCHAR2(10),
  XM      VARCHAR2(30),
  XB      CHAR(1),
  SFZMHM  VARCHAR2(20),
  NL      NUMBER(3),
  ZZ      VARCHAR2(128),
  DH      VARCHAR2(30),
  RYLX    VARCHAR2(3),
  SHCD    CHAR(1),
  WFXW1   VARCHAR2(5),
  WFXW2   VARCHAR2(5),
  WFXW3   VARCHAR2(5),
  TK1     VARCHAR2(20),
  TK2     VARCHAR2(20),
  TK3     VARCHAR2(20),
  ZYYSDW  VARCHAR2(128),
  JTFS    CHAR(3),
  GLXZQH  VARCHAR2(10),
  DABH    VARCHAR2(20),
  JL      NUMBER(2),
  JSZZL   CHAR(1),
  ZJCX    VARCHAR2(16),
  CCLZRQ  DATE,
  JSRGXD  VARCHAR2(20),
  FZJG    VARCHAR2(10),
  SGZR    CHAR(1),
  HPHM    VARCHAR2(20),
  HPZL    CHAR(2),
  CLFZJG  VARCHAR2(10),
  FDJH    VARCHAR2(32),
  CLSBDH  VARCHAR2(25),
  JDCXH   VARCHAR2(14),
  CLPP    VARCHAR2(32),
  CLXH    VARCHAR2(32),
  CSYS    VARCHAR2(5),
  CLLX    CHAR(3),
  JDCZT   VARCHAR2(6),
  SYQ     CHAR(1),
  JDCSYR  VARCHAR2(128),
  CLSYXZ  VARCHAR2(2),
  BX      VARCHAR2(50),
  BXGS    VARCHAR2(50),
  BXPZH   VARCHAR2(64),
  CLZZWP  VARCHAR2(3),
  CLGXD   VARCHAR2(20),
  CJCXBJ  VARCHAR2(10),
  JYW     VARCHAR2(64),
  CZDZ    VARCHAR2(128),
  HPHM2   VARCHAR2(15),
  SFZMHM2 VARCHAR2(18)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.RYBH
  is '人员编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SGBH
  is '事故编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XZQH
  is '行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XM
  is '姓名';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XB
  is '性别';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SFZMHM
  is '身份证明号码';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.NL
  is '年龄';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZZ
  is '住址';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.DH
  is '电话';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.RYLX
  is '人员类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SHCD
  is '伤害程度';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW1
  is '主要违法行为';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW2
  is '其他违法行为一';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW3
  is '其他违法行为二';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK1
  is '条款内容1';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK2
  is '条款内容2';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK3
  is '条款内容3';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZYYSDW
  is '专业运输单位(编号)';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JTFS
  is '交通方式';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.GLXZQH
  is '管理行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.DABH
  is '驾证档案编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JL
  is '驾龄';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JSZZL
  is '驾驶证种类';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZJCX
  is '准驾车型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CCLZRQ
  is '初次领证日期';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JSRGXD
  is '驾驶人管辖地';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.FZJG
  is '发证机关';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SGZR
  is '事故责任';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPHM
  is '号牌号码';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPZL
  is '号牌种类';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLFZJG
  is '车辆发证机关';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.FDJH
  is '发动机号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLSBDH
  is '车辆识别代号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCXH
  is '机动车序号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLPP
  is '车辆品牌';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLXH
  is '车辆型号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CSYS
  is '车身颜色';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLLX
  is '车辆类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCZT
  is '机动车状态';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SYQ
  is '所有权';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCSYR
  is '机动车所有人';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLSYXZ
  is '车辆使用性质';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BX
  is '保险公司ID';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BXGS
  is '保险公司';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BXPZH
  is '保险凭证号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLZZWP
  is '车辆装载物品';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLGXD
  is '车辆管辖地';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CJCXBJ
  is '车驾查询标记';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JYW
  is '校验位';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CZDZ
  is '车主地址';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPHM2
  is '号牌号码（自动识别）';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SFZMHM2
  is '身份证明号码（自动识别）';
alter table YDJW_XGT.ACD_DUTYSIMPLEHUMAN
  add constraint PK_ACD_DUTYSIMPLEHUMAN_IN primary key (LSH, RYBH)
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
create index YDJW_XGT.I_ACD_DUTYSIMPLEHUMAN_SGZR on YDJW_XGT.ACD_DUTYSIMPLEHUMAN (SGZR)
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

prompt
prompt Creating table ACD_DUTYSIMPLEHUMAN_SYNC
prompt =======================================
prompt
create table YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC
(
  LSH     NUMBER not null,
  RYBH    NUMBER(3) not null,
  SGBH    VARCHAR2(32),
  XZQH    VARCHAR2(10),
  XM      VARCHAR2(30),
  XB      CHAR(1),
  SFZMHM  VARCHAR2(20),
  NL      NUMBER(3),
  ZZ      VARCHAR2(128),
  DH      VARCHAR2(30),
  RYLX    VARCHAR2(3),
  SHCD    CHAR(1),
  WFXW1   VARCHAR2(4),
  WFXW2   VARCHAR2(4),
  WFXW3   VARCHAR2(4),
  TK1     VARCHAR2(20),
  TK2     VARCHAR2(20),
  TK3     VARCHAR2(20),
  ZYYSDW  VARCHAR2(128),
  JTFS    CHAR(2),
  GLXZQH  VARCHAR2(10),
  DABH    VARCHAR2(20),
  JL      NUMBER(2),
  JSZZL   CHAR(1),
  ZJCX    VARCHAR2(10),
  CCLZRQ  DATE,
  JSRGXD  VARCHAR2(20),
  FZJG    VARCHAR2(10),
  SGZR    CHAR(1),
  HPHM    VARCHAR2(20),
  HPZL    CHAR(2),
  CLFZJG  VARCHAR2(10),
  FDJH    VARCHAR2(32),
  CLSBDH  VARCHAR2(25),
  JDCXH   VARCHAR2(14),
  CLPP    VARCHAR2(32),
  CLXH    VARCHAR2(32),
  CSYS    VARCHAR2(5),
  CLLX    CHAR(3),
  JDCZT   VARCHAR2(6),
  SYQ     CHAR(1),
  JDCSYR  VARCHAR2(128),
  CLSYXZ  CHAR(2),
  BX      CHAR(1),
  BXGS    VARCHAR2(50),
  BXPZH   VARCHAR2(64),
  CLZZWP  VARCHAR2(3),
  CLGXD   VARCHAR2(20),
  CJCXBJ  VARCHAR2(10),
  JYW     VARCHAR2(64),
  CZDZ    VARCHAR2(128),
  HPHM2   VARCHAR2(15),
  SFZMHM2 VARCHAR2(18),
  RYFL    VARCHAR2(1)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.RYBH
  is '人员编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SGBH
  is '事故编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XZQH
  is '行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XM
  is '姓名';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XB
  is '性别';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SFZMHM
  is '身份证明号码';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.NL
  is '年龄';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZZ
  is '住址';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.DH
  is '电话';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.RYLX
  is '人员类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SHCD
  is '伤害程度';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW1
  is '主要违法行为';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW2
  is '其他违法行为一';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW3
  is '其他违法行为二';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK1
  is '条款内容1';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK2
  is '条款内容2';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK3
  is '条款内容3';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZYYSDW
  is '专业运输单位(编号)';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JTFS
  is '交通方式';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.GLXZQH
  is '管理行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.DABH
  is '驾证档案编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JL
  is '驾龄';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JSZZL
  is '驾驶证种类';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZJCX
  is '准驾车型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CCLZRQ
  is '初次领证日期';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JSRGXD
  is '驾驶人管辖地';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.FZJG
  is '发证机关';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SGZR
  is '事故责任';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPHM
  is '号牌号码';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPZL
  is '号牌种类';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLFZJG
  is '车辆发证机关';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.FDJH
  is '发动机号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLSBDH
  is '车辆识别代号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCXH
  is '机动车序号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLPP
  is '车辆品牌';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLXH
  is '车辆型号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CSYS
  is '车身颜色';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLLX
  is '车辆类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCZT
  is '机动车状态';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SYQ
  is '所有权';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCSYR
  is '机动车所有人';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLSYXZ
  is '车辆使用性质';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BX
  is '保险1 是   2 否';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BXGS
  is '保险公司';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BXPZH
  is '保险凭证号';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLZZWP
  is '车辆装载物品';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLGXD
  is '车辆管辖地';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CJCXBJ
  is '车驾查询标记';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JYW
  is '校验位';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CZDZ
  is '车主地址';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPHM2
  is '号牌号码（自动识别）';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SFZMHM2
  is '身份证明号码（自动识别）';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.RYFL
  is '人员分类';

prompt
prompt Creating table ACD_DUTYSIMPLE_SYNC
prompt ==================================
prompt
create table YDJW_XGT.ACD_DUTYSIMPLE_SYNC
(
  LSH     NUMBER not null,
  ZT      VARCHAR2(16),
  LRSJ    DATE,
  GXSJSYS DATE default sysdate,
  DJBH    VARCHAR2(32),
  SGBH    VARCHAR2(32),
  XZQH    VARCHAR2(10),
  XQ      NUMBER(1),
  SGFSSJ  DATE,
  LH      VARCHAR2(7) default '-',
  LM      VARCHAR2(64),
  GLS     NUMBER(5),
  MS      NUMBER(4),
  JDWZ    NUMBER(8) default 0,
  SGDD    VARCHAR2(128),
  SSRS    NUMBER(3) default 0,
  ZJCCSS  NUMBER(9) default 0,
  LWSGLX  CHAR(1),
  RDYYFL  VARCHAR2(2),
  SGRDYY  VARCHAR2(4),
  TQ      CHAR(1),
  XC      CHAR(1),
  SWSG    CHAR(1),
  SGXT    CHAR(2),
  CLJSG   VARCHAR2(1),
  DCSG    VARCHAR2(2),
  PZFS    VARCHAR2(1),
  LBQK    VARCHAR2(2),
  TJR     VARCHAR2(30),
  CCLRSJ  DATE,
  JLLX    CHAR(1),
  SCSJD   NUMBER(3),
  SSZD    VARCHAR2(12),
  DAH     VARCHAR2(50),
  SB      CHAR(1),
  TJSGBH  VARCHAR2(64),
  GLBM    VARCHAR2(12),
  DZZB    VARCHAR2(1024),
  BADW    VARCHAR2(100),
  WSBH    VARCHAR2(30),
  SGSS    VARCHAR2(2000),
  ZRTJJG  VARCHAR2(2000),
  JAR1    VARCHAR2(30),
  JAR2    VARCHAR2(30),
  JBR     VARCHAR2(30),
  GXSJ    DATE,
  JYW     VARCHAR2(64),
  JAFS    VARCHAR2(1),
  DLLX    VARCHAR2(2),
  GLXZDJ  VARCHAR2(1),
  TJFS    VARCHAR2(1),
  JD      VARCHAR2(32),
  WD      VARCHAR2(32),
  PDAID   VARCHAR2(512),
  PDALSH  VARCHAR2(64),
  JQBH    VARCHAR2(32),
  ZP      NUMBER(2),
  BZ      VARCHAR2(4000),
  PZBH    VARCHAR2(32),
  YHDM    VARCHAR2(30),
  YL1     VARCHAR2(4000),
  YL2     VARCHAR2(4000),
  YL3     VARCHAR2(4000),
  YL4     VARCHAR2(4000),
  SLSJ    DATE,
  SGDD2   VARCHAR2(128),
  SGDDDM2 VARCHAR2(12)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table YDJW_XGT.ACD_DUTYSIMPLE_SYNC
  is '简易事故主表';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZT
  is '操作标识(null未初始化，0未到时，1准备，2成功，3异常)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LRSJ
  is '入库时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GXSJSYS
  is '更新时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DJBH
  is '登记编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGBH
  is '事故编号[6xzqh+14yyyymmddhh24miss+8lsh]';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XZQH
  is '行政区划';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XQ
  is '星期';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGFSSJ
  is '事故发生时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LH
  is '路号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LM
  is '路名';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLS
  is '公里数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.MS
  is '米数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JDWZ
  is '绝对位置';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDD
  is '事故地点';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SSRS
  is '受伤人数';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZJCCSS
  is '直接财产损失';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LWSGLX
  is '路外事故类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.RDYYFL
  is '事故认定原因分类';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGRDYY
  is '事故认定原因';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TQ
  is '天气';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XC
  is '现场';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SWSG
  is '涉外事故1是2否';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGXT
  is '事故形态 ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.CLJSG
  is '车辆间事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DCSG
  is '单车事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PZFS
  is '碰撞方式 1-单车 2-双车 3-多车 4-车人事故';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LBQK
  is '路表情况';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJR
  is '调解人';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.CCLRSJ
  is '初次录入时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JLLX
  is ' 1-快报记录 2-快报/全项记录 3全项记录';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SCSJD
  is '上传时间段(天数)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SSZD
  is '所属中队';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DAH
  is '档案号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SB
  is '上报 1-是 2-否  为空3-上报但更新不成功';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJSGBH
  is '统计事故编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLBM
  is '管理部门';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DZZB
  is '电子坐标 格式为地址坐标X,地址坐标Y,地址经度,地址纬度';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.BADW
  is '办案单位';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.WSBH
  is '文书编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGSS
  is '事故事实';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZRTJJG
  is '责任调解结果';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAR1
  is '接案人1';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAR2
  is '接案人2';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JBR
  is '经办人';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GXSJ
  is '更新时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JYW
  is '校验位';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAFS
  is '简易结案方式  1-调解结案 2-不同意结案 3-对认定有异议 4-拒绝签字';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DLLX
  is '道路类型';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLXZDJ
  is '公路行政等级';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJFS
  is '调解方式 1-自行协商 2-人民调解 3-行政调解 4-司法调解';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PDAID
  is 'PDA机号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PDALSH
  is 'PDA流水号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JQBH
  is '警情编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZP
  is '照片数量';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.BZ
  is '备注';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PZBH
  is '自定义编号';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SLSJ
  is '受理时间';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDD2
  is '事故地点（自动识别）';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDDDM2
  is '事故地点代码（自动识别）lh+gls+ms';

prompt
prompt Creating table ACD_SYNC_SMS
prompt ===========================
prompt
create table YDJW_XGT.ACD_SYNC_SMS
(
  LSH   NUMBER not null,
  SGLSH NUMBER,
  SJHM  VARCHAR2(30),
  FSZT  CHAR(1) default 0,
  LRSJ  DATE default sysdate,
  YL1   VARCHAR2(512),
  YL2   VARCHAR2(512),
  YL3   VARCHAR2(512),
  YL4   VARCHAR2(512)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table YDJW_XGT.ACD_SYNC_SMS
  is '事故手机查询信息表';
comment on column YDJW_XGT.ACD_SYNC_SMS.LSH
  is '主键';
comment on column YDJW_XGT.ACD_SYNC_SMS.SGLSH
  is '简易事故流水号';
comment on column YDJW_XGT.ACD_SYNC_SMS.SJHM
  is '手机号码';
comment on column YDJW_XGT.ACD_SYNC_SMS.FSZT
  is '发送状态(0：未发送 1：已发送)';
comment on column YDJW_XGT.ACD_SYNC_SMS.LRSJ
  is '录入时间';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL1
  is '预留1';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL2
  is '预留2';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL3
  is '预留3';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL4
  is '预留4';
alter table YDJW_XGT.ACD_SYNC_SMS
  add constraint PK_ACD_SYNC_SMS_LSH primary key (LSH)
  using index 
  tablespace YDJW_DATA
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ACD_SYNC_SMS_CAPTCHA
prompt ===================================
prompt
create table YDJW_XGT.ACD_SYNC_SMS_CAPTCHA
(
  LSH   NUMBER not null,
  SGLSH NUMBER,
  SJHM  VARCHAR2(30),
  YZM   VARCHAR2(10),
  QQSJ  DATE,
  LRSJ  DATE default sysdate,
  YL1   VARCHAR2(512),
  YL2   VARCHAR2(512),
  YL3   VARCHAR2(512),
  YL4   VARCHAR2(512)
)
tablespace YDJW_DATA
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.LSH
  is 'acd_sync_sms表的流水号';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.SGLSH
  is '简易事故流水号';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.SJHM
  is '手机号码';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YZM
  is '手机验证码';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.QQSJ
  is '请求发送时间(即acd_sync_sms入库时间)';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.LRSJ
  is '录入时间';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL1
  is '预留1';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL2
  is '预留2';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL3
  is '预留3';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL4
  is '预留4';
alter table YDJW_XGT.ACD_SYNC_SMS_CAPTCHA
  add constraint PK_ACD_SYNC_SMS_CAPTCHA primary key (LSH)
  using index 
  tablespace YDJW_DATA
  pctfree 10
  initrans 2
  maxtrans 255;


spool off
