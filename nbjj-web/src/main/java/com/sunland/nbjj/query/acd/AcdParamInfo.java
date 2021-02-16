package com.sunland.nbjj.query.acd;

import java.io.Serializable;

/**
 * Created by xdb on 2016/5/25.
 */
public class AcdParamInfo implements Serializable{
    private Integer page;
    private Integer rows;
    private String sgbh;
    private String sjhm;
    private String yzm;
    private String sgsjStart;
    private String sgsjEnd;
    private String sgdd;
    private String dsr;
    private String hphm;
    private String sfzmhm;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getSgbh() {
        return sgbh;
    }

    public void setSgbh(String sgbh) {
        this.sgbh = sgbh;
    }

    public String getSjhm() {
        return sjhm;
    }

    public void setSjhm(String sjhm) {
        this.sjhm = sjhm;
    }

    public String getYzm() {
        return yzm;
    }

    public void setYzm(String yzm) {
        this.yzm = yzm;
    }

    public String getSgsjStart() {
        return sgsjStart;
    }

    public void setSgsjStart(String sgsjStart) {
        this.sgsjStart = sgsjStart;
    }

    public String getSgsjEnd() {
        return sgsjEnd;
    }

    public void setSgsjEnd(String sgsjEnd) {
        this.sgsjEnd = sgsjEnd;
    }

    public String getSgdd() {
        return sgdd;
    }

    public void setSgdd(String sgdd) {
        this.sgdd = sgdd;
    }

    public String getDsr() {
        return dsr;
    }

    public void setDsr(String dsr) {
        this.dsr = dsr;
    }

    public String getHphm() {
        return hphm;
    }

    public void setHphm(String hphm) {
        this.hphm = hphm;
    }

    public String getSfzmhm() {
        return sfzmhm;
    }

    public void setSfzmhm(String sfzmhm) {
        this.sfzmhm = sfzmhm;
    }
}
