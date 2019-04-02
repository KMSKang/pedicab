package com.team150.Notice.Model;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int noseq; // 번호 - INT(11)
	private String notitle; // 제목 - VARCHAR(45)
	private String nocontent; // 내용 - VARCHAR(200)
	private String nodate; // 날짜 - DATE
	
}
