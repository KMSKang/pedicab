package com.team150.Staff.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.Staff.Model.StaffVO;

public interface StaffService {

	public void regist(StaffVO staff, HttpServletRequest request) throws Exception;
	
	public StaffVO read(int sseq) throws Exception;
	
	public void modify(StaffVO staff, HttpServletRequest request) throws Exception;
	
	public void remove(int sseq) throws Exception;
	
	public List<StaffVO> listAll() throws Exception;
	
}
