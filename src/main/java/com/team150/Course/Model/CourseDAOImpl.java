package com.team150.Course.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;

@Repository
public class CourseDAOImpl implements CourseDAO {

	@Inject
	SqlSession session;

	private static String namespace = "com.team150.mappers.courseMapper";

	@Override
	public int create(CourseVO vo) throws Exception {
		return session.insert(namespace + ".create", vo);

	}

	@Override
	public CourseVO read(int cseq) throws Exception {
		return session.selectOne(namespace + ".read", cseq);
	}

	@Override
	public void modify(CourseVO vo) throws Exception {
		session.update(namespace + ".modify", vo);

	}

	@Override
	public void remove(int cseq) throws Exception {
		session.delete(namespace + ".remove", cseq);

	}

	@Override
	public List<CourseVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	// 즐겨찾기 등록 (실행)
	public int createFavorite(FavoriteVO favoriteVO) {
		return session.update(namespace + ".createFavorite", favoriteVO);
	}

	// 즐겨찾기 삭제
	public int deleteFavorite(FavoriteVO favoriteVO) {
		return session.delete(namespace + ".deleteFavorite", favoriteVO);
	}

	// 즐겨찾기 조회
	public List<FavoriteVO> selectListfavorite() {
		return session.selectList(namespace + ".selectListfavorite");
	}

	// 답글 조회 (실행)
	public List<CommentVO> listAllComment() {
		return session.selectList(namespace + ".listAllComment");
	}

	// 리뷰 조회 (실행)
	public List<ReviewVO> reviewListAll() {
		return session.selectList(namespace + ".reviewListAll");
	}

}
