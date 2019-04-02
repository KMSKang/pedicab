package com.team150.Staff.Service;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team150.Staff.Model.StaffDao;
import com.team150.Staff.Model.StaffVO;

@Service
public class StaffServiceImpl implements StaffService {

	@Inject
	private StaffDao staffDao;

	@Override
	@Transactional
	public void regist(StaffVO staff, HttpServletRequest request) throws Exception {
		
		// 임의 주석
		// request 이용 절대경로 설정 String imgfile = ""; String uploadUri =
		String imgfile = "";
		String uploadUri = "/uploadFile/staffphoto"; 
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);
		
		System.out.println(dir);
		// 물리적 저장 설정
		if(!staff.getImgfile().isEmpty()) {
			imgfile = staff.getSnickname() + "_" + staff.getImgfile().getOriginalFilename();
			staff.getImgfile().transferTo(new File(dir, imgfile));
			staff.setSimg(imgfile);
		}
		staffDao.create(staff);
	}
	
	@Override
	public StaffVO read(int sseq) throws Exception {
		return staffDao.read(sseq);
	}
	
	@Override
	public void modify(StaffVO staff, HttpServletRequest request) throws Exception {
		// request 이용 절대경로 설정 String
		String imgfile = "";
		String uploadUri = "/uploadFile/staffphoto"; 
		String dir = request.getSession().getServletContext().getRealPath(uploadUri);
		
		// 물리적 저장 설정
		if(!staff.getImgfile().isEmpty()) {
			imgfile = staff.getSnickname() + "_" + staff.getImgfile().getOriginalFilename();
			staff.getImgfile().transferTo(new File(dir, imgfile));
			staff.setSimg(imgfile);
		}
		
		staffDao.modify(staff);
	}
	
	@Override
	public void remove(int sseq) throws Exception {
		staffDao.remove(sseq);
	}
	
	@Override
	public List<StaffVO> listAll() throws Exception {
		return staffDao.listAll();
	}

}
