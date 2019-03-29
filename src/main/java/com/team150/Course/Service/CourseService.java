package com.team150.Course.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team150.Course.Model.CourseVO;

public interface CourseService {

	public void regist(CourseVO vo,HttpServletRequest request) throws Exception;

	public CourseVO read(int seq) throws Exception;

	public void modify(CourseVO vo) throws Exception;

	public void remove(int seq) throws Exception;

	public List<CourseVO> listAll() throws Exception;

}
