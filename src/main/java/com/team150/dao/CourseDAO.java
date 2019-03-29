package com.team150.dao;

import java.util.List;

import com.team150.commons.CourseVO;

public interface CourseDAO {

	public int create(CourseVO vo) throws Exception;

	public CourseVO read(int cseq) throws Exception;

	public void modify(CourseVO vo) throws Exception;

	public void remove(int cseq) throws Exception;

	public List<CourseVO> listAll() throws Exception;

}
