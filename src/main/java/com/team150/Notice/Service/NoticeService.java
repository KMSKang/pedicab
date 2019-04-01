package com.team150.Notice.Service;

import java.util.List;

import com.team150.Notice.Model.NoticeVO;

public interface NoticeService {
	
	// 리스트 뿌리기
	public List<NoticeVO> noticeSelecter();

	// 등록
	public void noticeRegister(NoticeVO noticeVO);

	// 상세
	public NoticeVO noticeInfoer(int noseq);

	// 수정
	public int noticeUpdater(NoticeVO noticeVO);

	// 삭제
	public int noticeDeleter(int noseq);
	
}