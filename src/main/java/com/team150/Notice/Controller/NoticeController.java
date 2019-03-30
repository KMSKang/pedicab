//package com.team150.Notice.Controller;
//
//import javax.inject.Inject;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.team150.Course.Service.CourseService;
//
//@Controller
//public class NoticeController {
//	
//	@Inject
//	CourseService service;
//	
//	//=================관리자================================//
//	
//	@RequestMapping("/noticeMain")
//	public String noticeMain(Model model) {
//		
//		model.addAttribute("mimbers", service.noticeSelecter());
//
//		return "notice/noticeMain";
//		
//	}
//	
//	
//	//=======================유저=============================//
//}
