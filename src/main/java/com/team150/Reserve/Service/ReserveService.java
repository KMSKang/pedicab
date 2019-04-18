package com.team150.Reserve.Service;

import java.util.List;

import com.team150.Reserve.Model.ReserveVO;

public interface ReserveService {
	
	public void regist(ReserveVO vo) throws Exception;
	
	public List<ReserveVO> read(int useq) throws Exception;
	
	public ReserveVO read1(int rseq) throws Exception;
	
	public void modify(ReserveVO vo) throws Exception;
	
	public void remove(int rseq) throws Exception;
	
	public List<ReserveVO> listAll() throws Exception;
	
	public void paysuccess(ReserveVO vo) throws Exception;
	
	public int countOrder() throws Exception;
	
	public int countPurchase() throws Exception;

}
