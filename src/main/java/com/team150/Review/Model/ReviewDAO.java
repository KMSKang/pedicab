package com.team150.Review.Model;

import java.util.List;

public interface ReviewDAO {
	
	// 리뷰 등록
	public int reviewCreate(ReviewVO reviewVO);

	// 리뷰 리스트
	public List<ReviewVO> reviewListAll();
	
	// 리뷰 상세
	public ReviewVO reviewSelectOne(int reseq);
	
	// 리뷰 수정
	public int reviewUpdate(ReviewVO reviewVO);
	
	// 리뷰 삭제
	public int reviewDelete(int reseq);
	
	// 답글 등록
	public int commentCreate(CommentVO commentVO, int reseq);
	
	// 답글 조회
	public List<CommentVO> listAllComment();
}
