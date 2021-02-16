package com.sunland.frame.bean;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by xdb on 2016/4/21.
 */
public class UserInfo {
    private String yhdm; // 用户代码

    private String bmjb;  //部门级别

    private String xm; // 姓名

    private String bmdm; // 部门代码

    private String bmmc; //部门名称

    //	 HashSet对象，里面存放HashMap对象，key为groupid，value为ArrayList对象（存放moduleid）
    // 	 按部门划分的moduleid，用于数据权限 ,moduleid允许重复
    private Collection moduleGroup ;

    private Collection moduleId;  //所有的moduleid,用于功能权限和菜单生成。moduleid允许重复

    private String bmdmPermitStr="";   //根据部门代码、部门级别,得到所有部门以及下级部门的部门代码字符串 hgb-061111
    private Collection bmdmPermitList = new HashSet(); //根据部门代码得到所有部门以及下级部门的部门列表 hgb-061111

    private String currentIp="";
    private String currentMac="";
    private String pki = "0"; //

    private String sfgly;

    public String getYhdm() {
        return yhdm;
    }

    public void setYhdm(String yhdm) {
        this.yhdm = yhdm;
    }

    public String getBmjb() {
        return bmjb;
    }

    public void setBmjb(String bmjb) {
        this.bmjb = bmjb;
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

    public Collection getModuleGroup() {
        return moduleGroup;
    }

    public void setModuleGroup(Collection moduleGroup) {
        this.moduleGroup = moduleGroup;
    }

    public Collection getModuleId() {
        return moduleId;
    }

    public void setModuleId(Collection moduleId) {
        this.moduleId = moduleId;
    }

    public String getBmdmPermitStr() {
        return bmdmPermitStr;
    }

    public void setBmdmPermitStr(String bmdmPermitStr) {
        this.bmdmPermitStr = bmdmPermitStr;
    }

    public Collection getBmdmPermitList() {
        return bmdmPermitList;
    }

    public void setBmdmPermitList(Collection bmdmPermitList) {
        this.bmdmPermitList = bmdmPermitList;
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

    public String getPki() {
        return pki;
    }

    public void setPki(String pki) {
        this.pki = pki;
    }

    public String getSfgly() {
        return sfgly;
    }

    public void setSfgly(String sfgly) {
        this.sfgly = sfgly;
    }
}
