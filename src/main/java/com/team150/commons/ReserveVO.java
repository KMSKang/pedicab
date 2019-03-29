package com.team150.commons;

import java.sql.Date;

public class ReserveVO {
	private int rseq;
	private String rtime;
	private String raccount;
	private String rbank;
	private String rmemo;
	private String rok;
	private Date rdate;
	private int cseq;
	private int useq;
	@Override
	public String toString() {
		return "ReserveVO [rseq=" + rseq + ", rtime=" + rtime + ", raccount=" + raccount + ", rbank=" + rbank
				+ ", rmemo=" + rmemo + ", rok=" + rok + ", rdate=" + rdate + ", cseq=" + cseq + ", useq=" + useq + "]";
	}
	public int getRseq() {
		return rseq;
	}
	public void setRseq(int rseq) {
		this.rseq = rseq;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public String getRaccount() {
		return raccount;
	}
	public void setRaccount(String raccount) {
		this.raccount = raccount;
	}
	public String getRbank() {
		return rbank;
	}
	public void setRbank(String rbank) {
		this.rbank = rbank;
	}
	public String getRmemo() {
		return rmemo;
	}
	public void setRmemo(String rmemo) {
		this.rmemo = rmemo;
	}
	public String getRok() {
		return rok;
	}
	public void setRok(String rok) {
		this.rok = rok;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public int getUseq() {
		return useq;
	}
	public void setUseq(int useq) {
		this.useq = useq;
	}

}
