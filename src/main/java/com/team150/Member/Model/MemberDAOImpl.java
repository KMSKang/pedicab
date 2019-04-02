package com.team150.Member.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository // 서버가 올라 올때 자동으로 이 클래스를 메모리에 올림
public class MemberDAOImpl implements MemberDAO {

	// private static final Logger
	// logger=LoggerFactory.getLogger(MemberDAOImpl.class);
	// 로깅 처리를 위한 객체 선언

	@Inject // SqlSession 객체를 개발자가 직접 생성하지 않고 스프링에서 연결시켜 줌
	SqlSession sqlSession;

	@Override
	public String loginCheck(MemberVO vo) {
		return sqlSession.selectOne("member.loginCheck", vo);
	}

	@Override public List<MemberVO> listAll() {
	  //logger.info("memberList called..."); //sql mapper에 작성된 sql코드가 실행됨(자동  commit&close) 
		return sqlSession.selectList("member.listAll"); 
									//---------------- 
									//mapper에 등록한 namespace id 
		}

	@Override
	public MemberVO view(String uid) {
		return sqlSession.selectOne("member.view", uid);
	}

	@Override public void insert(MemberVO vo) {
	  sqlSession.insert("member.insert",vo); //자동 commit&close 
	  }

	@Override
	public void remove(String uid) { 
		sqlSession.update("member.remove", uid);
	}

	@Override public void modify(MemberVO vo) {
	  sqlSession.update("member.modify",vo); //sqlSession에 update태그를 찾아서 호출하세요~ 
	  }

	@Override public boolean checkPw(String uid, String upwd) { 
		boolean result = false; 
		Map<String,String> map = new HashMap<>(); 
		//mapper에 넘길 값이 2개 이상인 경우  map으로 묶어서 전달
		map.put("uid", uid); 
		map.put("upwd", upwd); 
		int count=sqlSession.selectOne("member.checkPw",map);
										//----- ------- 
										//namspace id 
		if(count==1) result=true; 
		//리천값이 1이면 true, 0이면 false 
		return result; 
		}
	}
