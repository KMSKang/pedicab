package com.team150.Staff.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team150.Staff.Model.StaffVO;
import com.team150.Staff.Service.StaffService;

@Controller
public class StaffController {
	
	@Inject
	private StaffService staffService;

	// 라이더 등록 (페이지)
	@RequestMapping(value = "/staff/sform", method = RequestMethod.GET)
	public String form() {
		return "/user/staff/sform";
	}

	// 라이더 등록
	@RequestMapping(value = "/staff/sregist", method = RequestMethod.POST)
	public String create(@ModelAttribute StaffVO staff, HttpServletRequest request) throws Exception {
		staffService.regist(staff, request); 
		return "redirect:slistAll";
	}

	// 라이더 리스트 (페이지)
	@RequestMapping(value = "/staff/slistAll", method = RequestMethod.GET)
	public String listAll(Model model) throws Exception {
		model.addAttribute("list", staffService.listAll());
		return "/user/staff/slistAll";
	}
	
	// 라이더 소개 이미지 리스트 (유저)
	@RequestMapping(value = "/staff/slistAllU", method = RequestMethod.GET)
	public String staffListU(Model model) throws Exception {
		model.addAttribute("list", staffService.listAll());
		return "/user/staff/slistAllU";
	}
	
	// 라이더 상세 (페이지)
	@RequestMapping(value = "/staff/sread", method = RequestMethod.GET)
	public String read(@RequestParam("sseq") int sseq, Model model) throws Exception{
		model.addAttribute("staff", staffService.read(sseq));
		return "/user/staff/sread";
	}
	
	// 라이더 수정 (페이지)
	@RequestMapping(value = "/staff/smodify", method = RequestMethod.GET)
	public String modifyGet(@RequestParam("sseq") int sseq, Model model) throws Exception{
		model.addAttribute("staff", staffService.read(sseq));
		return "/user/staff/smodify";
	}
	
	// 라이더 수정
	@RequestMapping(value = "/staff/smodify", method = RequestMethod.POST)
	public String modifyPost(StaffVO staff, HttpServletRequest request) throws Exception {
		staffService.modify(staff, request);
		return "redirect:slistAll";
	}
	
	// 라이더 삭제
	@RequestMapping(value = "/staff/sremove", method = RequestMethod.GET)
	public String removeGet(@RequestParam("sseq") int sseq) throws Exception {
		staffService.remove(sseq);
		return "redirect:slistAll";
	}

}