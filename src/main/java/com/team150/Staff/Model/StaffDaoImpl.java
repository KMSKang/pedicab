package com.team150.Staff.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StaffDaoImpl implements StaffDao {

	private String namespace = "StaffVO";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void create(StaffVO staff) throws Exception {
		sqlSession.insert(namespace + ".create" , staff);
	}
	
	@Override
	public StaffVO read(int sseq) throws Exception {
		return sqlSession.selectOne(namespace + ".read", sseq);
	}
	
	@Override
	public void modify(StaffVO staff) throws Exception {
		sqlSession.update(namespace + ".modify" , staff);
	}
	
	@Override
	public void remove(int sseq) throws Exception {
		sqlSession.delete(namespace + ".remove" , sseq);
	}
	
	@Override
	public List<StaffVO> listAll() throws Exception {
		return sqlSession.selectList(namespace + ".listAll");
	}

}
