package com.team150.Question.Model;

import lombok.Data;

@Data
public class QuestionVO {

	private int quseq; // 번호 - INT
	private String quemail; // 이메일 - VARCHAR(45)
	private String qutitle; // 제목 - VARCHAR(45)
	private String qucontent; // 내용 - VARCHAR(200)
	private String qudate; // 날짜 - DATE
	
}
