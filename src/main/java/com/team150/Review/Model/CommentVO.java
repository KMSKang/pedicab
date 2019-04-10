package com.team150.Review.Model;

import lombok.Data;

@Data
public class CommentVO {

	private int coseq; // 번호
	private String cocomment; // 내용
	private String codate; // 날짜
	private int reseq; // 앞 게시물 번호

}
