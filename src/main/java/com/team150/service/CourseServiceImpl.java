package com.team150.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.commons.CourseVO;
import com.team150.dao.CourseDAO;
@Service
public class CourseServiceImpl implements CourseService {
	
	@Inject
	private CourseDAO dao; 

	@Override
	public void regist(CourseVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public CourseVO read(int cseq) throws Exception {
		return dao.read(cseq);
	}

	@Override
	public void modify(CourseVO vo) throws Exception {
		dao.modify(vo);

	}

	@Override
	public void remove(int cseq) throws Exception {
		dao.remove(cseq);

	}

	@Override
	public List<CourseVO> listAll() throws Exception {
		return dao.listAll();
	}

}
