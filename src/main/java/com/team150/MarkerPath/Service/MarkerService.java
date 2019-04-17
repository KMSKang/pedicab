 package com.team150.MarkerPath.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.MarkerPath.Model.MarkerVO;

public interface MarkerService {
	
	public void regist(MarkerVO vo,HttpServletRequest request) throws Exception;

	public List<MarkerVO> listAll() throws Exception;
	
}