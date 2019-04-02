package com.team150.Admin.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.Admin.Model.AdminDAO;
import com.team150.Member.Model.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	AdminDAO adminDao;
	
	@Override
	public String loginCheck(MemberVO vo) {
		return adminDao.loginCheck(vo);
	}

}
