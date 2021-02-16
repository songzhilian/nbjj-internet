package com.sunland.nbjj.po.acl;

import org.apache.ibatis.type.Alias;

@Alias(value = "AclDept")
public class AclDept implements java.io.Serializable {

	private String bmdm;
	private String sjbmdm;
	private String bmmc;
	private String bmjb;
	private String bmjc;
	private String bmqc;
	private String yzmc;
	private String fzjg;
	private String lxdh;
	private String lxdz;
	private String tjjb;
	private String tjmc;
	private String tjpx;
	
	private String sszhid;
	private String ssdd;
	private String sszhongd;

	/** default constructor */
	public AclDept() {
	}

	public String getBmdm() {
		return this.bmdm;
	}

	public void setBmdm(String bmdm) {
		this.bmdm = bmdm;
	}

	public String getSjbmdm() {
		return this.sjbmdm;
	}

	public void setSjbmdm(String sjbmdm) {
		this.sjbmdm = sjbmdm;
	}

	public String getBmmc() {
		return this.bmmc;
	}

	public void setBmmc(String bmmc) {
		this.bmmc = bmmc;
	}

	public String getBmjb() {
		return this.bmjb;
	}

	public void setBmjb(String bmjb) {
		this.bmjb = bmjb;
	}

	public String getBmjc() {
		return this.bmjc;
	}

	public void setBmjc(String bmjc) {
		this.bmjc = bmjc;
	}

	public String getBmqc() {
		return this.bmqc;
	}

	public void setBmqc(String bmqc) {
		this.bmqc = bmqc;
	}

	public String getYzmc() {
		return this.yzmc;
	}

	public void setYzmc(String yzmc) {
		this.yzmc = yzmc;
	}

	public String getFzjg() {
		return this.fzjg;
	}

	public void setFzjg(String fzjg) {
		this.fzjg = fzjg;
	}

	public String getLxdh() {
		return this.lxdh;
	}

	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}

	public String getLxdz() {
		return this.lxdz;
	}

	public void setLxdz(String lxdz) {
		this.lxdz = lxdz;
	}

	public String getTjjb() {
		return this.tjjb;
	}

	public void setTjjb(String tjjb) {
		this.tjjb = tjjb;
	}

	public String getTjmc() {
		return this.tjmc;
	}

	public void setTjmc(String tjmc) {
		this.tjmc = tjmc;
	}

	public String getTjpx() {
		return this.tjpx;
	}

	public void setTjpx(String tjpx) {
		this.tjpx = tjpx;
	}

	public String getSszhid() {
		return sszhid;
	}

	public void setSszhid(String sszhid) {
		this.sszhid = sszhid;
	}

	public String getSsdd() {
		return ssdd;
	}

	public void setSsdd(String ssdd) {
		this.ssdd = ssdd;
	}

	public String getSszhongd() {
		return sszhongd;
	}

	public void setSszhongd(String sszhongd) {
		this.sszhongd = sszhongd;
	}

}