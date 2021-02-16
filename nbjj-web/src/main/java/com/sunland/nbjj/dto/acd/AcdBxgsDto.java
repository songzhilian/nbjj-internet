package com.sunland.nbjj.dto.acd;

/**
 * 保险公司Dto
 */
public class AcdBxgsDto {
    private Integer id;//id
    private String bxgsmc;//保险公司名称
    private String bxgsjc;//保险公司简称
    private String zt;//状态
    private String bz;//备注

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBxgsmc() {
        return bxgsmc;
    }

    public void setBxgsmc(String bxgsmc) {
        this.bxgsmc = bxgsmc;
    }

    public String getBxgsjc() {
        return bxgsjc;
    }

    public void setBxgsjc(String bxgsjc) {
        this.bxgsjc = bxgsjc;
    }

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }
}
