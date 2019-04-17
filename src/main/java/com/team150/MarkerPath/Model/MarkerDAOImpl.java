package com.team150.MarkerPath.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MarkerDAOImpl implements MarkerDAO {
	
	@Inject
	SqlSession session;
	
	private static String namespace ="com.team150.mappers.markerMapper";

	@Override
	public int create(MarkerVO vo) throws Exception {
		return session.insert(namespace+".create",vo);
	}
	
	public List<MarkerVO> listAll() throws Exception{
		return session.selectList(namespace+".listAll");
	}

}
