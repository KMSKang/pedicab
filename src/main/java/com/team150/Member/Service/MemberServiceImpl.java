package com.team150.Member.Service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.team150.Member.Model.MemberDAO;
import com.team150.Member.Model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject // 스프링컨테이너가 만든 dao 객체가 연결됨(의존관계)
	MemberDAO memberDao;

	@Override
	public String loginCheck(MemberVO vo, HttpSession session) {
		// 사용자와 일치하면 이름을 넘기고, 틀리면 null이 넘어옴
		String name = memberDao.loginCheck(vo);
		if (name != null) {// null이 아니라는 것 = 정상적
			// 세션변수 등록(세션변수는 사용자가 로그인~로그아웃할때까지 값을 계속 가짐/ 기본 15분)
			session.setAttribute("uid", vo.getUid()); // "세션변수 명", 값
			session.setAttribute("uname", name);
		}
		return name;
	}

	@Override
	public void logOut(HttpSession session) {
		session.invalidate();// 세션을 모두 초기화시킴
	}

	@Override
	public List<MemberVO> listAll() {
		return memberDao.listAll();
	}

	@Override
	public MemberVO view(String uid) {
		return memberDao.view(uid);
	}

	@Override
	public void insert(MemberVO vo) {
		memberDao.insert(vo);
	}

	@Override
	public void remove(String uid) {
		memberDao.remove(uid);

	}

	@Override
	public void modify(MemberVO vo) {
		memberDao.modify(vo);
	}

	@Override
	public boolean checkPw(String uid, String upwd) {
		return memberDao.checkPw(uid, upwd);
	}

}
