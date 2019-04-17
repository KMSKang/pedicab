package com.team150.MarkerPath.Service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team150.MarkerPath.Model.MarkerDAO;
import com.team150.MarkerPath.Model.MarkerVO;

@Service
public class MarkerServiceImpl implements MarkerService {

	
	@Inject
	private MarkerDAO dao;
	
	@Override
	@Transactional
	public void regist(MarkerVO vo, HttpServletRequest request) throws Exception {
		String imgName ="";
		String uploadURI = "/uploadFile/markerPhoto/";
		String dir =request.getSession().getServletContext().getRealPath(uploadURI);
		
		if(!vo.getImgfile().isEmpty()) {
			imgName =vo.getMtitle();
			vo.getImgfile().transferTo(new File(dir,imgName));
			vo.setMimg(imgName);
		}
		int result =dao.create(vo);
		
		if(result == 0) {
			System.out.println("create fail");
		}else {
			System.out.println("create success");
		}
	}
	public List<MarkerVO> listAll() throws Exception{
		return dao.listAll();
	}

}
