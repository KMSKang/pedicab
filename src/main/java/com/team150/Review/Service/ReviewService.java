package com.team150.Review.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

public interface ReviewService {
	
	// 리뷰 등록
	public void reviewRegister(ReviewVO reviewVO, HttpServletRequest request) throws Exception;
	
	// 리뷰 리스트
	public List<ReviewVO> reviewSelecter();
	
	// 리뷰 상세
	public ReviewVO reviewInfoer(int reseq);
	
	// 리뷰 수정
	public int reviewUpdater(ReviewVO reviewVO, HttpServletRequest request) throws Exception;
	
	// 리뷰 삭제
	public int reviewDeleter(int reseq);
	
	// 답글 등록
	public void commentRegister(CommentVO commentVO, int reseq);
	
	// 답글 조회
	public List<CommentVO> commentSelecter();
}
