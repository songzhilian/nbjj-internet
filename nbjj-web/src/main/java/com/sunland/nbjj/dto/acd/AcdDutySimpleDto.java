package com.sunland.nbjj.dto.acd;

import com.sunland.nbjj.po.acd.AcdDutySimpleHuman;

import java.util.Date;
import java.util.List;

/**
 * Created by xdb on 2016/5/25.
 */
public class AcdDutySimpleDto {

    // Fields
    // 操作标识(null未初始化，0未到时，1准备，2成功，3异常)
    private String zt;
    // 录入时间
    private Date lrsj;
    // 更新时间
    private Date gxsjSys;
    // 转递时间
    private Date zdsj;
    private String pdaID;
    private String pdaLsh;
    /**受理时间*/
    private Date slsj;
    private Integer zp;
    private String bz;
    private String yhdm;
    private String xm;
    private String datestr;

    private Long lsh;
    private String djbh;
    private String sgbh;
    private String xzqh;
    private Integer xq;
    private Date sgfssj;
    private String sgfssjstr;
    private String lh;
    private String lm;
    private Integer gls;
    private Integer ms;
    private Integer jdwz;
    private String sgdd;
    private Integer ssrs;
    private Integer zjccss;
    private String lwsglx;
    private String rdyyfl;
    private String sgrdyy;
    private String tq;
    private String xc;
    private String swsg;
    private String sgxt;
    private String cljsg;
    private String dcsg;
    private String pzfs;
    private String lbqk;
    private String tjr;
    private Date cclrsj;
    private String jllx;
    private Integer scsjd;
    private String sszd;
    private String dah;
    private String sb;
    private String tjsgbh;
    private String glbm;
    private String dzzb;
    private String badw;
    private String wsbh;
    private String sgss;
    private String zrtjjg;
    private String jar1;
    private String jar2;
    private String jbr;
    private Date gxsj;
    private String jyw;
    private String jafs;
    private String dllx;
    private String glxzdj;
    private String tjfs;
    private String jd;
    private String wd;
    private String jqbh;

    private String yl1;
    private String yl2;
    private String yl3;
    private String yl4;

    private String ssdd;

    private List<AcdDutySimpleHuman> acdDutyHumanList;

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    public Date getLrsj() {
        return lrsj;
    }

    public void setLrsj(Date lrsj) {
        this.lrsj = lrsj;
    }

    public Date getGxsjSys() {
        return gxsjSys;
    }

    public void setGxsjSys(Date gxsjSys) {
        this.gxsjSys = gxsjSys;
    }

    public Date getZdsj() {
        return zdsj;
    }

    public void setZdsj(Date zdsj) {
        this.zdsj = zdsj;
    }

    public String getPdaID() {
        return pdaID;
    }

    public void setPdaID(String pdaID) {
        this.pdaID = pdaID;
    }

    public String getPdaLsh() {
        return pdaLsh;
    }

    public void setPdaLsh(String pdaLsh) {
        this.pdaLsh = pdaLsh;
    }

    public Date getSlsj() {
        return slsj;
    }

    public void setSlsj(Date slsj) {
        this.slsj = slsj;
    }

    public Integer getZp() {
        return zp;
    }

    public void setZp(Integer zp) {
        this.zp = zp;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public String getYhdm() {
        return yhdm;
    }

    public void setYhdm(String yhdm) {
        this.yhdm = yhdm;
    }

    public Long getLsh() {
        return lsh;
    }

    public void setLsh(Long lsh) {
        this.lsh = lsh;
    }

    public String getDjbh() {
        return djbh;
    }

    public void setDjbh(String djbh) {
        this.djbh = djbh;
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

    public Integer getXq() {
        return xq;
    }

    public void setXq(Integer xq) {
        this.xq = xq;
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

    public Integer getJdwz() {
        return jdwz;
    }

    public void setJdwz(Integer jdwz) {
        this.jdwz = jdwz;
    }

    public String getSgdd() {
        return sgdd;
    }

    public void setSgdd(String sgdd) {
        this.sgdd = sgdd;
    }

    public Integer getSsrs() {
        return ssrs;
    }

    public void setSsrs(Integer ssrs) {
        this.ssrs = ssrs;
    }

    public Integer getZjccss() {
        return zjccss;
    }

    public void setZjccss(Integer zjccss) {
        this.zjccss = zjccss;
    }

    public String getLwsglx() {
        return lwsglx;
    }

    public void setLwsglx(String lwsglx) {
        this.lwsglx = lwsglx;
    }

    public String getRdyyfl() {
        return rdyyfl;
    }

    public void setRdyyfl(String rdyyfl) {
        this.rdyyfl = rdyyfl;
    }

    public String getSgrdyy() {
        return sgrdyy;
    }

    public void setSgrdyy(String sgrdyy) {
        this.sgrdyy = sgrdyy;
    }

    public String getTq() {
        return tq;
    }

    public void setTq(String tq) {
        this.tq = tq;
    }

    public String getXc() {
        return xc;
    }

    public void setXc(String xc) {
        this.xc = xc;
    }

    public String getSwsg() {
        return swsg;
    }

    public void setSwsg(String swsg) {
        this.swsg = swsg;
    }

    public String getSgxt() {
        return sgxt;
    }

    public void setSgxt(String sgxt) {
        this.sgxt = sgxt;
    }

    public String getCljsg() {
        return cljsg;
    }

    public void setCljsg(String cljsg) {
        this.cljsg = cljsg;
    }

    public String getDcsg() {
        return dcsg;
    }

    public void setDcsg(String dcsg) {
        this.dcsg = dcsg;
    }

    public String getPzfs() {
        return pzfs;
    }

    public void setPzfs(String pzfs) {
        this.pzfs = pzfs;
    }

    public String getLbqk() {
        return lbqk;
    }

    public void setLbqk(String lbqk) {
        this.lbqk = lbqk;
    }

    public String getTjr() {
        return tjr;
    }

    public void setTjr(String tjr) {
        this.tjr = tjr;
    }

    public Date getCclrsj() {
        return cclrsj;
    }

    public void setCclrsj(Date cclrsj) {
        this.cclrsj = cclrsj;
    }

    public String getJllx() {
        return jllx;
    }

    public void setJllx(String jllx) {
        this.jllx = jllx;
    }

    public Integer getScsjd() {
        return scsjd;
    }

    public void setScsjd(Integer scsjd) {
        this.scsjd = scsjd;
    }

    public String getSszd() {
        return sszd;
    }

    public void setSszd(String sszd) {
        this.sszd = sszd;
    }

    public String getDah() {
        return dah;
    }

    public void setDah(String dah) {
        this.dah = dah;
    }

    public String getSb() {
        return sb;
    }

    public void setSb(String sb) {
        this.sb = sb;
    }

    public String getTjsgbh() {
        return tjsgbh;
    }

    public void setTjsgbh(String tjsgbh) {
        this.tjsgbh = tjsgbh;
    }

    public String getGlbm() {
        return glbm;
    }

    public void setGlbm(String glbm) {
        this.glbm = glbm;
    }

    public String getDzzb() {
        return dzzb;
    }

    public void setDzzb(String dzzb) {
        this.dzzb = dzzb;
    }

    public String getBadw() {
        return badw;
    }

    public void setBadw(String badw) {
        this.badw = badw;
    }

    public String getWsbh() {
        return wsbh;
    }

    public void setWsbh(String wsbh) {
        this.wsbh = wsbh;
    }

    public String getSgss() {
        return sgss;
    }

    public void setSgss(String sgss) {
        this.sgss = sgss;
    }

    public String getZrtjjg() {
        return zrtjjg;
    }

    public void setZrtjjg(String zrtjjg) {
        this.zrtjjg = zrtjjg;
    }

    public String getJar1() {
        return jar1;
    }

    public void setJar1(String jar1) {
        this.jar1 = jar1;
    }

    public String getJar2() {
        return jar2;
    }

    public void setJar2(String jar2) {
        this.jar2 = jar2;
    }

    public String getJbr() {
        return jbr;
    }

    public void setJbr(String jbr) {
        this.jbr = jbr;
    }

    public Date getGxsj() {
        return gxsj;
    }

    public void setGxsj(Date gxsj) {
        this.gxsj = gxsj;
    }

    public String getJyw() {
        return jyw;
    }

    public void setJyw(String jyw) {
        this.jyw = jyw;
    }

    public String getJafs() {
        return jafs;
    }

    public void setJafs(String jafs) {
        this.jafs = jafs;
    }

    public String getDllx() {
        return dllx;
    }

    public void setDllx(String dllx) {
        this.dllx = dllx;
    }

    public String getGlxzdj() {
        return glxzdj;
    }

    public void setGlxzdj(String glxzdj) {
        this.glxzdj = glxzdj;
    }

    public String getTjfs() {
        return tjfs;
    }

    public void setTjfs(String tjfs) {
        this.tjfs = tjfs;
    }

    public String getJd() {
        return jd;
    }

    public void setJd(String jd) {
        this.jd = jd;
    }

    public String getWd() {
        return wd;
    }

    public void setWd(String wd) {
        this.wd = wd;
    }

    public String getJqbh() {
        return jqbh;
    }

    public void setJqbh(String jqbh) {
        this.jqbh = jqbh;
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

    public String getYl4() {
        return yl4;
    }

    public void setYl4(String yl4) {
        this.yl4 = yl4;
    }

    public List<AcdDutySimpleHuman> getAcdDutyHumanList() {
        return acdDutyHumanList;
    }

    public void setAcdDutyHumanList(List<AcdDutySimpleHuman> acdDutyHumanList) {
        this.acdDutyHumanList = acdDutyHumanList;
    }

    public String getXm() {
        return xm;
    }

    public void setXm(String xm) {
        this.xm = xm;
    }

    public String getDatestr() {
        return datestr;
    }

    public void setDatestr(String datestr) {
        this.datestr = datestr;
    }

    public String getSsdd() {
        return ssdd;
    }

    public void setSsdd(String ssdd) {
        this.ssdd = ssdd;
    }

    public void setSgfssjstr(String sgfssjstr){
        this.sgfssjstr = sgfssjstr;
    }

    public String getSgfssjstr(){
        return this.sgfssjstr;
    }

}
