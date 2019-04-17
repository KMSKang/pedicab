package com.team150.MarkerPath.Model;

import java.util.List;

public interface MarkerDAO {
	public int create(MarkerVO vo) throws Exception;
	
	public List<MarkerVO> listAll() throws Exception;

}
