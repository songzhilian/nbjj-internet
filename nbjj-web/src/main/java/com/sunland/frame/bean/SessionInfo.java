package com.sunland.frame.bean;

import java.io.Serializable;

/**
 * Created by xdb on 2016/4/17.
 */
public class SessionInfo implements Serializable {
    private String yhdm; //用户代码
    private String xm; //姓名
    private String bmdm; //部门代码
    private String bmmc; //部门名称
    private String currentIp=""; //IP地址
    private String currentMac=""; //MAC地址

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

    public String getBmmc() {
        return bmmc;
    }

    public void setBmmc(String bmmc) {
        this.bmmc = bmmc;
    }

    public String getCurrentIp() {
        return currentIp;
    }

    public void setCurrentIp(String currentIp) {
        this.currentIp = currentIp;
    }

    public String getCurrentMac() {
        return currentMac;
    }

    public void setCurrentMac(String currentMac) {
        this.currentMac = currentMac;
    }
}
