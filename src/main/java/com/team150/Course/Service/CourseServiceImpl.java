package com.team150.Course.Service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team150.Course.Model.CourseDAO;
import com.team150.Course.Model.CourseVO;
@Service
public class CourseServiceImpl implements CourseService {
	
	@Inject
	private CourseDAO dao;
	
	

	@Override
	@Transactional
	public void regist(CourseVO vo,HttpServletRequest request) throws Exception {
		String imgName="";
		String uploadURI="/uploadFile/coursePhoto/";
		String dir=request.getSession().getServletContext().getRealPath(uploadURI);
		
		System.out.println(dir);
		
		if(!vo.getImgfile().isEmpty()) {
			imgName =vo.getCname();
			vo.getImgfile().transferTo(new File(dir,imgName));
			vo.setCimg(imgName);
		}
		int result =dao.create(vo);
		
		if(result==0) {
			System.out.println("create fail");
		}else {
			System.out.println("create success");
		}
		
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
