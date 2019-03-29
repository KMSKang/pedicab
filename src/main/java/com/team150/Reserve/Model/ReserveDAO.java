package com.team150.Reserve.Model;

import java.util.List;

import com.team150.Reserve.Service.ReserveVO;

public interface ReserveDAO {
	public void create(ReserveVO vo) throws Exception;
	
	public ReserveVO read(int useq) throws Exception;
	
	public ReserveVO read1(int rseq) throws Exception;
	
	public void modify(ReserveVO vo) throws Exception;
	
	public void remove(int rseq) throws Exception;
	
	public List<ReserveVO> listAll() throws Exception;

}
