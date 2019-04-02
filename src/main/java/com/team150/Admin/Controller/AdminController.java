package com.team150.Admin.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team150.Admin.Service.AdminService;
import com.team150.Member.Model.MemberVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Inject
	AdminService adminService;
	
	@RequestMapping("login.do") //   url에 /admin/login.do입력히면 views/admin/login.jsp를 보여준다
	public String login() {
		return "admin/login";
	}
	
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session, ModelAndView mav) {
		String name = adminService.loginCheck(vo);
		
		if(name != null) { //로그인 성공
			session.setAttribute("admin_uid", vo.getUid()); //관리자의 아이디이름
			session.setAttribute("admin_uname", name); //관리자의 이름
			session.setAttribute("uid", vo.getUid()); //유저 아이디
			session.setAttribute("name", name); //유저 이름
			mav.setViewName("admin/admin"); //맞으면 admin/admin.jsp로 이동
			mav.addObject("message", "success");
		} else {
			mav.setViewName("admin/login"); //틀리면 admin/login.jsp로 이동
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	@RequestMapping("logOut.do")
	public String logout(HttpSession session) {
		session.invalidate(); //세션정보 클리어
		return "redirect:/admin/login.do";
	}
}
