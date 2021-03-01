package com.sunland.nbjj.po.acd;

import org.apache.ibatis.type.Alias;

import java.util.Date;
import java.util.List;

@Alias("AcdZxxs")
public class AcdZxxs {
    private Long lsh;//流水号
    private String zt;//状态
    private String sgbh;//事故编号
    private String xzqh;//行政区划
    private Date sgfssj;//事故发生时间
    private String lh;//路号
    private String lm;//路名
    private Integer gls;//公里数
    private Integer ms;//米数
    private String sgdd;//事故地点
    private String lkldlx;//路况路段类型
    private String lkfx;//路况方向
    private String sfxhdlk;//是否信号灯路况
    private String dzzb;//电子坐标
    private String tq;//天气
    private String hj;//环境
    private String sglx;//事故类型
    private String sgxt;//事故形态
    private String sgrdyy;//事故认定原因
    private String sgyzcd;//事故严重程度
    private String sgclfs;//事故处理方式
    private String pclxfs;//赔偿履行方式
    private String pclxfsms;//赔偿履行方式描述
    private String dyqk;//打印情况
    private String cjmj;//采集协警
    private String zqmj;//执勤民警
    private Date kdsj;//开单时间
    private Date lrsj;//录入时间
    private Date gxsj;//更新时间
    private String pdams;//pda模式
    private Integer zp;//照片数量
    private Integer rysl;//人员数量
    private String yl1;//预留1
    private String yl2;//预留2
    private String yl3;//预留3
    private String glbm;//管理部门

    private List<AcdZxxsHuman> list;

    public Long getLsh() {
        return lsh;
    }

    public void setLsh(Long lsh) {
        this.lsh = lsh;
    }

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    public String getSgbh() {
        return sgbh;
    }

    public void setSgbh(String sgbh) {
        this.sgbh = sgbh;
    }

    public String getXzqh() {
        return xzqh;
    }

    public void setXzqh(String xzqh) {
        this.xzqh = xzqh;
    }

    public Date getSgfssj() {
        return sgfssj;
    }

    public void setSgfssj(Date sgfssj) {
        this.sgfssj = sgfssj;
    }

    public String getLh() {
        return lh;
    }

    public void setLh(String lh) {
        this.lh = lh;
    }

    public String getLm() {
        return lm;
    }

    public void setLm(String lm) {
        this.lm = lm;
    }

    public Integer getGls() {
        return gls;
    }

    public void setGls(Integer gls) {
        this.gls = gls;
    }

    public Integer getMs() {
        return ms;
    }

    public void setMs(Integer ms) {
        this.ms = ms;
    }

    public String getSgdd() {
        return sgdd;
    }

    public void setSgdd(String sgdd) {
        this.sgdd = sgdd;
    }

    public String getLkldlx() {
        return lkldlx;
    }

    public void setLkldlx(String lkldlx) {
        this.lkldlx = lkldlx;
    }

    public String getLkfx() {
        return lkfx;
    }

    public void setLkfx(String lkfx) {
        this.lkfx = lkfx;
    }

    public String getSfxhdlk() {
        return sfxhdlk;
    }

    public void setSfxhdlk(String sfxhdlk) {
        this.sfxhdlk = sfxhdlk;
    }

    public String getDzzb() {
        return dzzb;
    }

    public void setDzzb(String dzzb) {
        this.dzzb = dzzb;
    }

    public String getTq() {
        return tq;
    }

    public void setTq(String tq) {
        this.tq = tq;
    }

    public String getHj() {
        return hj;
    }

    public void setHj(String hj) {
        this.hj = hj;
    }

    public String getSglx() {
        return sglx;
    }

    public void setSglx(String sglx) {
        this.sglx = sglx;
    }

    public String getSgxt() {
        return sgxt;
    }

    public void setSgxt(String sgxt) {
        this.sgxt = sgxt;
    }

    public String getSgrdyy() {
        return sgrdyy;
    }

    public void setSgrdyy(String sgrdyy) {
        this.sgrdyy = sgrdyy;
    }

    public String getSgyzcd() {
        return sgyzcd;
    }

    public void setSgyzcd(String sgyzcd) {
        this.sgyzcd = sgyzcd;
    }

    public String getSgclfs() {
        return sgclfs;
    }

    public void setSgclfs(String sgclfs) {
        this.sgclfs = sgclfs;
    }

    public String getPclxfs() {
        return pclxfs;
    }

    public void setPclxfs(String pclxfs) {
        this.pclxfs = pclxfs;
    }

    public String getPclxfsms() {
        return pclxfsms;
    }

    public void setPclxfsms(String pclxfsms) {
        this.pclxfsms = pclxfsms;
    }

    public String getDyqk() {
        return dyqk;
    }

    public void setDyqk(String dyqk) {
        this.dyqk = dyqk;
    }

    public String getCjmj() {
        return cjmj;
    }

    public void setCjmj(String cjmj) {
        this.cjmj = cjmj;
    }

    public String getZqmj() {
        return zqmj;
    }

    public void setZqmj(String zqmj) {
        this.zqmj = zqmj;
    }

    public Date getKdsj() {
        return kdsj;
    }

    public void setKdsj(Date kdsj) {
        this.kdsj = kdsj;
    }

    public Date getLrsj() {
        return lrsj;
    }

    public void setLrsj(Date lrsj) {
        this.lrsj = lrsj;
    }

    public Date getGxsj() {
        return gxsj;
    }

    public void setGxsj(Date gxsj) {
        this.gxsj = gxsj;
    }

    public String getPdams() {
        return pdams;
    }

    public void setPdams(String pdams) {
        pdams = pdams;
    }

    public Integer getZp() {
        return zp;
    }

    public void setZp(Integer zp) {
        this.zp = zp;
    }

    public Integer getRysl() {
        return rysl;
    }

    public void setRysl(Integer rysl) {
        this.rysl = rysl;
    }

    public String getYl1() {
        return yl1;
    }

    public void setYl1(String yl1) {
        this.yl1 = yl1;
    }

    public String getYl2() {
        return yl2;
    }

    public void setYl2(String yl2) {
        this.yl2 = yl2;
    }

    public String getYl3() {
        return yl3;
    }

    public void setYl3(String yl3) {
        this.yl3 = yl3;
    }

    public String getGlbm() {
        return glbm;
    }

    public void setGlbm(String glbm) {
        this.glbm = glbm;
    }

    public List<AcdZxxsHuman> getList() {
        return list;
    }

    public void setList(List<AcdZxxsHuman> list) {
        this.list = list;
    }
}
