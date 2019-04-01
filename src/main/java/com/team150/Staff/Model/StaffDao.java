package com.team150.Staff.Model;

import java.util.List;

public interface StaffDao {	

	
	public void create(StaffVO staff) throws Exception;
	
	public StaffVO read(int sseq) throws Exception;
	
	public void modify(StaffVO staff) throws Exception;
	
	public void remove(int sseq) throws Exception;
	
	public List<StaffVO> listAll() throws Exception;
}
