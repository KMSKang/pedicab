package com.team150.Reserve.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
	
	@Inject
	SqlSession session;
	
	private static String namespace="com.team150.mappers.reserveMapper";

	@Override
	public void create(ReserveVO vo) throws Exception {
		session.insert(namespace+".create", vo);

	}

	@Override
	public List<ReserveVO> read(int useq) throws Exception {
		return  session.selectList(namespace+".read",useq);
	}

	@Override
	public ReserveVO read1(int rseq) throws Exception {
		return session.selectOne(namespace+".read1", rseq);
	}

	@Override
	public void modify(ReserveVO vo) throws Exception {
		session.update(namespace+".modify", vo);
	}

	@Override
	public void remove(int rseq) throws Exception {
		session.delete(namespace+".remove", rseq);

	}

	@Override
	public List<ReserveVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

}
