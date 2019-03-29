package com.team150.service;

import java.util.List;

import com.team150.commons.ReserveVO;

public interface ReserveService {
	
	public void regist(ReserveVO vo) throws Exception;
	
	public ReserveVO read(int useq) throws Exception;
	
	public ReserveVO read1(int rseq) throws Exception;
	
	public void modify(ReserveVO vo) throws Exception;
	
	public void remove(int rseq) throws Exception;
	
	public List<ReserveVO> listAll() throws Exception;

}
