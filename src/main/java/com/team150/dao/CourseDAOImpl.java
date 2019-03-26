package com.team150.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team150.commons.CourseVO;
@Repository
public class CourseDAOImpl implements CourseDAO {

	@Inject
	SqlSession session;
	
	private static String namespace="com.team150.mappers.courseMapper";
	
	@Override
	public void create(CourseVO vo) throws Exception {
		session.insert(namespace+".create",vo);
		

	}

	@Override
	public CourseVO read(int cseq) throws Exception {
		return session.selectOne(namespace+".read", cseq);
	}

	@Override
	public void modify(CourseVO vo) throws Exception {
		session.update(namespace+".modify", vo);

	}

	@Override
	public void remove(int cseq) throws Exception {
		session.delete(namespace+".remove", cseq);

	}

	@Override
	public List<CourseVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

}
