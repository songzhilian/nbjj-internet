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
  is '���չ�˾������Ϣ��';
comment on column YDJW_XGT.ACD_BXGS.ID
  is '����';
comment on column YDJW_XGT.ACD_BXGS.BXGSMC
  is '���չ�˾����';
comment on column YDJW_XGT.ACD_BXGS.BXGSJC
  is '���չ�˾���';
comment on column YDJW_XGT.ACD_BXGS.ZT
  is '״̬������Ч��������Ч';
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
  is '�����¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZT
  is '������ʶ(nullδ��ʼ����0δ��ʱ��1׼����2�ɹ���3�쳣)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LRSJ
  is '���ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GXSJSYS
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DJBH
  is '�ǼǱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGBH
  is '�¹ʱ��[6xzqh+14yyyymmddhh24miss+8lsh]';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XZQH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XQ
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGFSSJ
  is '�¹ʷ���ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LH
  is '·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LM
  is '·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLS
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.MS
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JDWZ
  is '����λ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDD
  is '�¹ʵص�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SSRS
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZJCCSS
  is 'ֱ�ӲƲ���ʧ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LWSGLX
  is '·���¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.RDYYFL
  is '�¹��϶�ԭ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGRDYY
  is '�¹��϶�ԭ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TQ
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.XC
  is '�ֳ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SWSG
  is '�����¹�1��2��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGXT
  is '�¹���̬ ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.CLJSG
  is '�������¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DCSG
  is '�����¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PZFS
  is '��ײ��ʽ 1-���� 2-˫�� 3-�೵ 4-�����¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LBQK
  is '·�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJR
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.CCLRSJ
  is '����¼��ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JLLX
  is ' 1-�챨��¼ 2-�챨/ȫ���¼ 3ȫ���¼';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SCSJD
  is '�ϴ�ʱ���(����)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SSZD
  is '�����ж�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DAH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SB
  is '�ϱ� 1-�� 2-��  Ϊ��3-�ϱ������²��ɹ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJSGBH
  is 'ͳ���¹ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLBM
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DZZB
  is '�������� ��ʽΪ��ַ����X,��ַ����Y,��ַ����,��ַγ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.BADW
  is '�참��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.WSBH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGSS
  is '�¹���ʵ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZRTJJG
  is '���ε�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAR1
  is '�Ӱ���1';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAR2
  is '�Ӱ���2';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JBR
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GXSJ
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JYW
  is 'У��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JAFS
  is '���׽᰸��ʽ  1-����᰸ 2-��ͬ��᰸ 3-���϶�������(�������) 4-�ܾ�ǩ�� ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.DLLX
  is '��·����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.GLXZDJ
  is '��·�����ȼ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.TJFS
  is '���ⷽʽ 1-����Э�� 2-������� 3-�������� 4-˾������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDAID
  is 'PDA����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDALSH
  is 'PDA��ˮ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.JQBH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.ZP
  is '��Ƭ����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.BZ
  is '��ע';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PZBH
  is '�Զ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.YL2
  is '�¹����ͣ�999999-�����¹ʣ�999996-�����º���';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SLSJ
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDD2
  is '�¹ʵص㣨�Զ�ʶ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGDDDM2
  is '�¹ʵص���루�Զ�ʶ��lh+gls+ms';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.LKLDLX
  is '·��·�����ͣ�1-·�ڣ�2-·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFXHDLK
  is '�Ƿ��źŵ�·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.QZCSPZBH
  is 'ǿ�ƴ�ʩƾ֤���';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.YLWPSL
  is '������Ʒ����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFBMX
  is '�Ƿ�����ߣ�1-�ǣ�0-��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SGLB
  is '�¹����01-������02-���ǣ�03-���ˣ�04-���ˣ�05-�Ƿǣ�06-�೵��07-������������08-�ǻ���������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.PDAMS
  is 'pdaģʽ��1-���ߣ�2-����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE.SFCS
  is '�Ƿ���ԣ�1-�������ݣ�0-��ʽ����';
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
  is '��Ա���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SGBH
  is '�¹ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XZQH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XM
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.XB
  is '�Ա�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SFZMHM
  is '���֤������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.NL
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZZ
  is 'סַ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.DH
  is '�绰';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.RYLX
  is '��Ա����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SHCD
  is '�˺��̶�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW1
  is '��ҪΥ����Ϊ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW2
  is '����Υ����Ϊһ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.WFXW3
  is '����Υ����Ϊ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK1
  is '��������1';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK2
  is '��������2';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.TK3
  is '��������3';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZYYSDW
  is 'רҵ���䵥λ(���)';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JTFS
  is '��ͨ��ʽ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.GLXZQH
  is '������������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.DABH
  is '��֤�������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JL
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JSZZL
  is '��ʻ֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.ZJCX
  is '׼�ݳ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CCLZRQ
  is '������֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JSRGXD
  is '��ʻ�˹�Ͻ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.FZJG
  is '��֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SGZR
  is '�¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPHM
  is '���ƺ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPZL
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLFZJG
  is '������֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.FDJH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLSBDH
  is '����ʶ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCXH
  is '���������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLPP
  is '����Ʒ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLXH
  is '�����ͺ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CSYS
  is '������ɫ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLLX
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCZT
  is '������״̬';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SYQ
  is '����Ȩ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JDCSYR
  is '������������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLSYXZ
  is '����ʹ������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BX
  is '���չ�˾ID';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BXGS
  is '���չ�˾';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.BXPZH
  is '����ƾ֤��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLZZWP
  is '����װ����Ʒ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CLGXD
  is '������Ͻ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CJCXBJ
  is '���ݲ�ѯ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.JYW
  is 'У��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.CZDZ
  is '������ַ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.HPHM2
  is '���ƺ��루�Զ�ʶ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN.SFZMHM2
  is '���֤�����루�Զ�ʶ��';
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
  is '��Ա���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SGBH
  is '�¹ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XZQH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XM
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.XB
  is '�Ա�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SFZMHM
  is '���֤������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.NL
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZZ
  is 'סַ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.DH
  is '�绰';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.RYLX
  is '��Ա����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SHCD
  is '�˺��̶�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW1
  is '��ҪΥ����Ϊ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW2
  is '����Υ����Ϊһ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.WFXW3
  is '����Υ����Ϊ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK1
  is '��������1';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK2
  is '��������2';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.TK3
  is '��������3';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZYYSDW
  is 'רҵ���䵥λ(���)';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JTFS
  is '��ͨ��ʽ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.GLXZQH
  is '������������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.DABH
  is '��֤�������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JL
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JSZZL
  is '��ʻ֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.ZJCX
  is '׼�ݳ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CCLZRQ
  is '������֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JSRGXD
  is '��ʻ�˹�Ͻ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.FZJG
  is '��֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SGZR
  is '�¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPHM
  is '���ƺ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPZL
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLFZJG
  is '������֤����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.FDJH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLSBDH
  is '����ʶ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCXH
  is '���������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLPP
  is '����Ʒ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLXH
  is '�����ͺ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CSYS
  is '������ɫ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLLX
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCZT
  is '������״̬';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SYQ
  is '����Ȩ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JDCSYR
  is '������������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLSYXZ
  is '����ʹ������';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BX
  is '����1 ��   2 ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BXGS
  is '���չ�˾';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.BXPZH
  is '����ƾ֤��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLZZWP
  is '����װ����Ʒ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CLGXD
  is '������Ͻ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CJCXBJ
  is '���ݲ�ѯ���';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.JYW
  is 'У��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.CZDZ
  is '������ַ';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.HPHM2
  is '���ƺ��루�Զ�ʶ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.SFZMHM2
  is '���֤�����루�Զ�ʶ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLEHUMAN_SYNC.RYFL
  is '��Ա����';

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
  is '�����¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZT
  is '������ʶ(nullδ��ʼ����0δ��ʱ��1׼����2�ɹ���3�쳣)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LRSJ
  is '���ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GXSJSYS
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DJBH
  is '�ǼǱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGBH
  is '�¹ʱ��[6xzqh+14yyyymmddhh24miss+8lsh]';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XZQH
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XQ
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGFSSJ
  is '�¹ʷ���ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LH
  is '·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LM
  is '·��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLS
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.MS
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JDWZ
  is '����λ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDD
  is '�¹ʵص�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SSRS
  is '��������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZJCCSS
  is 'ֱ�ӲƲ���ʧ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LWSGLX
  is '·���¹�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.RDYYFL
  is '�¹��϶�ԭ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGRDYY
  is '�¹��϶�ԭ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TQ
  is '����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.XC
  is '�ֳ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SWSG
  is '�����¹�1��2��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGXT
  is '�¹���̬ ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.CLJSG
  is '�������¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DCSG
  is '�����¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PZFS
  is '��ײ��ʽ 1-���� 2-˫�� 3-�೵ 4-�����¹�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.LBQK
  is '·�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJR
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.CCLRSJ
  is '����¼��ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JLLX
  is ' 1-�챨��¼ 2-�챨/ȫ���¼ 3ȫ���¼';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SCSJD
  is '�ϴ�ʱ���(����)';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SSZD
  is '�����ж�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DAH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SB
  is '�ϱ� 1-�� 2-��  Ϊ��3-�ϱ������²��ɹ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJSGBH
  is 'ͳ���¹ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLBM
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DZZB
  is '�������� ��ʽΪ��ַ����X,��ַ����Y,��ַ����,��ַγ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.BADW
  is '�참��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.WSBH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGSS
  is '�¹���ʵ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZRTJJG
  is '���ε�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAR1
  is '�Ӱ���1';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAR2
  is '�Ӱ���2';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JBR
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GXSJ
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JYW
  is 'У��λ';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JAFS
  is '���׽᰸��ʽ  1-����᰸ 2-��ͬ��᰸ 3-���϶������� 4-�ܾ�ǩ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.DLLX
  is '��·����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.GLXZDJ
  is '��·�����ȼ�';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.TJFS
  is '���ⷽʽ 1-����Э�� 2-������� 3-�������� 4-˾������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PDAID
  is 'PDA����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PDALSH
  is 'PDA��ˮ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.JQBH
  is '������';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.ZP
  is '��Ƭ����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.BZ
  is '��ע';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.PZBH
  is '�Զ�����';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SLSJ
  is '����ʱ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDD2
  is '�¹ʵص㣨�Զ�ʶ��';
comment on column YDJW_XGT.ACD_DUTYSIMPLE_SYNC.SGDDDM2
  is '�¹ʵص���루�Զ�ʶ��lh+gls+ms';

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
  is '�¹��ֻ���ѯ��Ϣ��';
comment on column YDJW_XGT.ACD_SYNC_SMS.LSH
  is '����';
comment on column YDJW_XGT.ACD_SYNC_SMS.SGLSH
  is '�����¹���ˮ��';
comment on column YDJW_XGT.ACD_SYNC_SMS.SJHM
  is '�ֻ�����';
comment on column YDJW_XGT.ACD_SYNC_SMS.FSZT
  is '����״̬(0��δ���� 1���ѷ���)';
comment on column YDJW_XGT.ACD_SYNC_SMS.LRSJ
  is '¼��ʱ��';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL1
  is 'Ԥ��1';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL2
  is 'Ԥ��2';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL3
  is 'Ԥ��3';
comment on column YDJW_XGT.ACD_SYNC_SMS.YL4
  is 'Ԥ��4';
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
  is 'acd_sync_sms�����ˮ��';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.SGLSH
  is '�����¹���ˮ��';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.SJHM
  is '�ֻ�����';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YZM
  is '�ֻ���֤��';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.QQSJ
  is '������ʱ��(��acd_sync_sms���ʱ��)';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.LRSJ
  is '¼��ʱ��';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL1
  is 'Ԥ��1';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL2
  is 'Ԥ��2';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL3
  is 'Ԥ��3';
comment on column YDJW_XGT.ACD_SYNC_SMS_CAPTCHA.YL4
  is 'Ԥ��4';
alter table YDJW_XGT.ACD_SYNC_SMS_CAPTCHA
  add constraint PK_ACD_SYNC_SMS_CAPTCHA primary key (LSH)
  using index 
  tablespace YDJW_DATA
  pctfree 10
  initrans 2
  maxtrans 255;


spool off
