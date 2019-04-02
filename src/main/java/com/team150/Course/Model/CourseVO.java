package com.team150.Course.Model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class CourseVO {
	private int cseq;
	private String cname;
	private String cinfo;
	private String cprice;
	private String cstart;
	private MultipartFile imgfile;
	private String cimg;
	private int sseq;
	private int pseq;
	



	public MultipartFile getImgfile() {
		return imgfile;
	}

	public void setImgfile(MultipartFile imgfile) {
		this.imgfile = imgfile;
	}

	public int getCseq() {
		return cseq;
	}

	public void setCseq(int cseq) {
		this.cseq = cseq;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCinfo() {
		return cinfo;
	}

	public void setCinfo(String cinfo) {
		this.cinfo = cinfo;
	}

	public String getCprice() {
		return cprice;
	}

	public void setCprice(String cprice) {
		this.cprice = cprice;
	}

	public String getCstart() {
		return cstart;
	}

	public void setCstart(String cstart) {
		this.cstart = cstart;
	}

	public String getCimg() {
		return cimg;
	}

	public void setCimg(String cimg) {
		this.cimg = cimg;
	}

	public int getSseq() {
		return sseq;
	}

	public void setSseq(int sseq) {
		this.sseq = sseq;
	}

	public int getPseq() {
		return pseq;
	}

	public void setPseq(int pseq) {
		this.pseq = pseq;
	}

	@Override
	public String toString() {
		return "CourseVO [cseq=" + cseq + ", cname=" + cname + ", cinfo=" + cinfo + ", cprice=" + cprice + ", cstart="
				+ cstart + ", cimg=" + cimg + ", sseq=" + sseq + ", pseq=" + pseq + "]";
	}

}
