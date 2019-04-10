package com.team150.Course.Model;

import java.util.List;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

public interface CourseDAO {

	public int create(CourseVO vo) throws Exception;

	public CourseVO read(int cseq) throws Exception;

	public void modify(CourseVO vo) throws Exception;

	public void remove(int cseq) throws Exception;

	public List<CourseVO> listAll() throws Exception;
	
	// 즐겨찾기 등록
	public int createFavorite(FavoriteVO favoriteVO);
	
	// 즐겨찾기 삭제
	public int deleteFavorite(FavoriteVO favoriteVO);
	
	// 즐겨찾기 조회
	public List<FavoriteVO> selectListfavorite();
	
	// 답글 조회
	public List<CommentVO> listAllComment();
	
	// 리뷰 조회
	public List<ReviewVO> reviewListAll();

}
