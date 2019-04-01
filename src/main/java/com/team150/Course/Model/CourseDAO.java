package com.team150.Course.Model;

import java.util.List;

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

}
