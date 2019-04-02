package com.team150.Staff.Model;

import org.springframework.web.multipart.MultipartFile;

public class StaffVO {

	private int sseq;
	private String sname;
	private String sphone;
	private String snickname;
	private String simg;
	private MultipartFile imgfile;
	
	public MultipartFile getImgfile() {
		return imgfile;
	}
	public void setImgfile(MultipartFile imgfile) {
		this.imgfile = imgfile;
	}
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public String getSnickname() {
		return snickname;
	}
	public void setSnickname(String snickname) {
		this.snickname = snickname;
	}
	public String getSimg() {
		return simg;
	}
	public void setSimg(String simg) {
		this.simg = simg;
	}
	
	@Override
	public String toString() {
		return "StaffVO [sseq=" + sseq + ", sname=" + sname + ", sphone=" + sphone + ", snickname=" + snickname
				+ ", simg=" + simg + ", imgfile=" + imgfile + "]";
	}

}
