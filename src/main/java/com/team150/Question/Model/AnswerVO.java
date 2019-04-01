package com.team150.Question.Model;

import lombok.Data;

@Data
public class AnswerVO {
	
	private int naseq; // 번호 - INT
	private String naname; // 이름 - VARCHAR(45)
	private String nacontent; // 내용 - VARCHAR(200)
	private String nadate; // 날짜 - DATE
	private int quseq; // 번호 - INT
	
}
