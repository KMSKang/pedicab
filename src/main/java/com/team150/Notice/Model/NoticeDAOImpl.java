package com.team150.Notice.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	SqlSession session;

	private static String namespace = "com.team150.mappers.noticeMapper";

	// 리스트 (뿌리기)
	public List<NoticeVO> listAll() {
		return session.selectList(namespace + ".listAll");
	}

	// 등록 (실행)
	public int create(NoticeVO noticeVO) {
		return session.update(namespace + ".create", noticeVO);
	}

	// 상세 (페이지)
	public NoticeVO selectOne(int noseq) {
		return session.selectOne(namespace + ".selectOne", noseq);
	}

	// 수정 (실행)
	public int update(NoticeVO noticeVO) {
		return session.update(namespace + ".update", noticeVO);
	}

	// 삭제 (실행)
	public int delete(int noseq) {
		return session.delete(namespace + ".delete", noseq);
	}

}
