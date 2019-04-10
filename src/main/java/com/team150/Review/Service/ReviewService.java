package com.team150.Review.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

public interface ReviewService {

	// 리뷰 등록 (실행)
	public void reviewRegister(ReviewVO reviewVO, HttpServletRequest request) throws Exception;

	// 리뷰 리스트 (페이지)
	public List<ReviewVO> reviewSelecter();

	// 리뷰 상세 (페이지)
	public ReviewVO reviewInfoer(int reseq);

	// 리뷰 수정 (실행)
	public int reviewUpdater(ReviewVO reviewVO, HttpServletRequest request) throws Exception;

	// 리뷰 삭제 (실행)
	public int reviewDeleter(int reseq);

	// 답글 등록 (실행)
	public void commentRegister(CommentVO commentVO);

	// 답글 조회 (페이지)
	public List<CommentVO> commentSelecter();

	// 답글 수정 (페이지)
	public CommentVO commentInfoer(int coseq);

	// 답글 수정 (실행)
	public int commentUpdater(CommentVO commentVO);

	// 답글 삭제 (실행)
	public int commentDeleter(int coseq);
	
	// 답글 + 댓글 삭제 (실행)
	public int allDeleter(int reseq);
}
