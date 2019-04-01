package com.team150.Review.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Inject
	SqlSession session;

	private static String namespace = "com.team150.mappers.reviewMapper";

	// 리뷰 등록 (실행)
	public int reviewCreate(ReviewVO reviewVO) {
		return session.update(namespace + ".reviewCreate", reviewVO);
	}

	// 리뷰 조회 (실행)
	public List<ReviewVO> reviewListAll() {
		return session.selectList(namespace + ".reviewListAll");
	}

	// 리뷰 상세, 리뷰 수정 (페이지)
	public ReviewVO reviewSelectOne(int reseq) {
		return session.selectOne(namespace + ".reviewSelectOne", reseq);
	}

	// 리뷰 수정 (실행)
	public int reviewUpdate(ReviewVO reviewVO) {
		return session.update(namespace + ".reviewUpdate", reviewVO);
	}

	// 리뷰 삭제 (실행
	public int reviewDelete(int reseq) {
		return session.delete(namespace + ".reviewDelete", reseq);
	}

	// 답글 등록 (실행)
	public int commentCreate(CommentVO commentVO, int reseq) {
		return session.update(namespace + ".commentCreate", commentVO);
	}

	// 답글 조회 (실행)
	public List<CommentVO> listAllComment() {
		return session.selectList(namespace + ".listAllComment");
	}

}
