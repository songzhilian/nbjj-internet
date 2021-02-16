package com.sunland.nbjj.po.acl;

import org.apache.ibatis.type.Alias;

import java.util.Date;

@Alias(value = "AclUser")
public class AclUser implements java.io.Serializable {

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

	/** default constructor */
	public AclUser() {
	}

	/** minimal constructor */
	public AclUser(String yhdm, String bmdm, String mm, String zt) {
		this.yhdm = yhdm;
		this.bmdm = bmdm;
		this.mm = mm;
		this.zt = zt;
	}

	/** full constructor */
	public AclUser(String yhdm, String xm, String bmdm, String sfzmhm,
			String mm, String qsip, String zzip, String sfmj, String ssmj,
			String sfbd, String zt, Date gxsj) {
		this.yhdm = yhdm;
		this.xm = xm;
		this.bmdm = bmdm;
		this.sfzmhm = sfzmhm;
		this.mm = mm;
		this.qsip = qsip;
		this.zzip = zzip;
		this.sfmj = sfmj;
		this.ssmj = ssmj;
		this.sfbd = sfbd;
		this.zt = zt;
		this.gxsj = gxsj;
	}

	public String getYhdm() {
		return this.yhdm;
	}

	public void setYhdm(String yhdm) {
		this.yhdm = yhdm;
	}

	public String getXm() {
		return this.xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public String getBmdm() {
		return this.bmdm;
	}

	public void setBmdm(String bmdm) {
		this.bmdm = bmdm;
	}

	public String getSfzmhm() {
		return this.sfzmhm;
	}

	public void setSfzmhm(String sfzmhm) {
		this.sfzmhm = sfzmhm;
	}

	public String getMm() {
		return this.mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getQsip() {
		return this.qsip;
	}

	public void setQsip(String qsip) {
		this.qsip = qsip;
	}

	public String getZzip() {
		return this.zzip;
	}

	public void setZzip(String zzip) {
		this.zzip = zzip;
	}

	public String getSfmj() {
		return this.sfmj;
	}

	public void setSfmj(String sfmj) {
		this.sfmj = sfmj;
	}

	public String getSsmj() {
		return this.ssmj;
	}

	public void setSsmj(String ssmj) {
		this.ssmj = ssmj;
	}

	public String getSfbd() {
		return this.sfbd;
	}

	public void setSfbd(String sfbd) {
		this.sfbd = sfbd;
	}

	public String getZt() {
		return this.zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public Date getGxsj() {
		return this.gxsj;
	}

	public void setGxsj(Date gxsj) {
		this.gxsj = gxsj;
	}

}