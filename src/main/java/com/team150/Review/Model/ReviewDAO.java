package com.team150.Review.Model;

import java.util.List;

public interface ReviewDAO {
	
	// 리뷰 등록 (실행)
	public int reviewCreate(ReviewVO reviewVO);

	// 리뷰 리스트 (페이지)
	public List<ReviewVO> reviewListAll();
	
	// 리뷰 상세 (페이지)
	public ReviewVO reviewSelectOne(int reseq);
	
	// 리뷰 수정 (실행)
	public int reviewUpdate(ReviewVO reviewVO);
	
	// 리뷰 삭제 (실행)
	public int reviewDelete(int reseq);
	
	// 답글 등록 (실행)
	public int commentCreate(CommentVO commentVO);
	
	// 답글 조회 (페이지)
	public List<CommentVO> listAllComment();
	
	// 답글 수정 (페이지)
	public CommentVO commentSelectOne(int coseq);
	
	// 답글 수정 (실행)
	public int commentUpdate(CommentVO commentVO);
	
	// 답글 삭제 (실행)
	public int commentDelete(int coseq);
	
	// 답글 + 댓글 삭제 (실행)
	public int allDelete(int reseq);
	
}
