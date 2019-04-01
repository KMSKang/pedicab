package com.team150.Notice.Model;

import java.util.List;

public interface NoticeDAO {
	
	// 리스트
	public List<NoticeVO> listAll();
	
	// 등록
	public int create(NoticeVO noticeVO);
	
	// 상세
	public NoticeVO selectOne(int noseq);
	
	// 수정
	public int update(NoticeVO noticeVO);
	
	// 삭제
	public int delete(int noseq);

}
