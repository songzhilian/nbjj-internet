package com.sunland.nbjj.po.admin;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by xdb on 2016/6/1.
 */
@Alias(value = "SysUser")
public class SysUser implements Serializable {

    private String yhdm;
    private String xm;
    private String bmdm;
    private String sfzmhm;
    private String mm;
    private String qsip;
    private String zzip;
    private String sfmj;
    private String ssmj;
    private String sfbd;
    private String zt;
    private Date gxsj;
    private Integer bxgsid;//保险公司ID

    public String getYhdm() {
        return yhdm;
    }

    public void setYhdm(String yhdm) {
        this.yhdm = yhdm;
    }

    public String getXm() {
        return xm;
    }

    public void setXm(String xm) {
        this.xm = xm;
    }

    public String getBmdm() {
        return bmdm;
    }

    public void setBmdm(String bmdm) {
        this.bmdm = bmdm;
    }

    public String getSfzmhm() {
        return sfzmhm;
    }

    public void setSfzmhm(String sfzmhm) {
        this.sfzmhm = sfzmhm;
    }

    public String getMm() {
        return mm;
    }

    public void setMm(String mm) {
        this.mm = mm;
    }

    public String getQsip() {
        return qsip;
    }

    public void setQsip(String qsip) {
        this.qsip = qsip;
    }

    public String getZzip() {
        return zzip;
    }

    public void setZzip(String zzip) {
        this.zzip = zzip;
    }

    public String getSfmj() {
        return sfmj;
    }

    public void setSfmj(String sfmj) {
        this.sfmj = sfmj;
    }

    public String getSsmj() {
        return ssmj;
    }

    public void setSsmj(String ssmj) {
        this.ssmj = ssmj;
    }

    public String getSfbd() {
        return sfbd;
    }

    public void setSfbd(String sfbd) {
        this.sfbd = sfbd;
    }

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    public Date getGxsj() {
        return gxsj;
    }

    public void setGxsj(Date gxsj) {
        this.gxsj = gxsj;
    }

    public Integer getBxgsid() {
        return bxgsid;
    }

    public void setBxgsid(Integer bxgsid) {
        this.bxgsid = bxgsid;
    }
}
