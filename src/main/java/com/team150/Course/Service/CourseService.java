package com.team150.Course.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.Course.Model.CourseVO;
import com.team150.Course.Model.FavoriteVO;
import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

public interface CourseService {

	public void regist(CourseVO vo, HttpServletRequest request) throws Exception;

	public CourseVO read(int seq) throws Exception;

	public void modify(CourseVO vo) throws Exception;

	public void remove(int seq) throws Exception;

	public List<CourseVO> listAll() throws Exception;

	// 즐겨찾기 등록
	public int favoriteRegister(FavoriteVO favoriteVO);

	// 즐겨찾기 삭제
	public int deleteFavorite(FavoriteVO favoriteVO);
	
	// 즐겨찾기 조회
	public List<FavoriteVO> favoriteSelecter();
	
	// 답글 조회
	public List<CommentVO> commentSelecter();
	
	// 리뷰 조회
	public List<ReviewVO> reviewSelecter();
}
