package com.team150.Notice.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.Notice.Model.NoticeDAO;
import com.team150.Notice.Model.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;

	// 리스트 (뿌리기)
	public List<NoticeVO> noticeSelecter() {
		return dao.listAll();
	}

	// 등록 (실행)
	public void noticeRegister(NoticeVO noticeVO) {

		int result = dao.create(noticeVO);

		if (result == 0) {
			System.out.println("noticeRegister Fail!!");
		} else {
			System.out.println("noticeRegister Success!!");
		}
	}

	// 상세 (페이지)
	public NoticeVO noticeInfoer(int noseq) {
		return dao.selectOne(noseq);
	}

	// 수정 (실행)
	public int noticeUpdater(NoticeVO noticeVO) {
		return dao.update(noticeVO);
	}

	// 삭제 (실행)
	public int noticeDeleter(int noseq) {
		return dao.delete(noseq);
	}

}
