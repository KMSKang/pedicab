package com.team150.Member.Model;

import java.util.Date;

public class MemberVO {

	private int useq;
	private String uid;
	private String upwd;
	private String uname;
	private String uimg;
	private String uymd;
	private String ugender;
	private String uphone;
	private Date udate;
	public int getUseq() {
		return useq;
	}
	public void setUseq(int useq) {
		this.useq = useq;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUimg() {
		return uimg;
	}
	public void setUimg(String uimg) {
		this.uimg = uimg;
	}
	public String getUymd() {
		return uymd;
	}
	public void setUymd(String uymd) {
		this.uymd = uymd;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	@Override
	public String toString() {
		return "MemberVO [useq=" + useq + ", uid=" + uid + ", upwd=" + upwd + ", uname=" + uname + ", uimg=" + uimg
				+ ", uymd=" + uymd + ", ugender=" + ugender + ", uphone=" + uphone + ", udate=" + udate + "]";
	}
	
	
	
}
