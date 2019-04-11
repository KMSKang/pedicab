package com.team150.Review.Model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewVO {

	private int reseq; // 번호 - INT(11)
	private String reemail; // 이메일 - VARCHAR(45)
	private MultipartFile photoFile;
	private String rephoto; // 사진 - VARCHAR(45)
	private String recontent; // 내용 - VARCHAR(45)
	private String redate; // 날짜 - DATE
	private int cseq;

}
