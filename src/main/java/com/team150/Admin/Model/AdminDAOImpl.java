package com.team150.Admin.Model;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team150.Member.Model.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public String loginCheck(MemberVO vo) {
		return sqlSession.selectOne("admin.loginCheck",vo);
							//mapper의 namespace. 태그 id
	}

}
