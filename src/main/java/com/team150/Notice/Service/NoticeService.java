package com.team150.Notice.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.Course.Model.CourseDAO;

@Service
public class NoticeService implements INoticeService {
	
	@Inject
	private CourseDAO dao;
	
	// 공지사항 리스트 (뿌리기)
//	public List<NoticeVO> noticeSelecter() {
//		return dao.
//	}
	
	
//	// 공지사항 등록 (실행)
//		public void noticeRegister(Mimber mimber) {
//
//			int result = dao.updateNotice(mimber);
//
//			if (result == 0) {
//				System.out.println("noticeRegister Fail!!");
//			} else {
//				System.out.println("noticeRegister Success!!");
//			}
//		}
	
}
