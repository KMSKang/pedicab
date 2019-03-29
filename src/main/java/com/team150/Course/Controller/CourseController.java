package com.team150.Course.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.Course.Model.CourseVO;
import com.team150.Course.Service.CourseService;

@RequestMapping("/")
@Controller()
public class CourseController {
	
	@Inject
	CourseService service;
	//=================관리자================================//
	@RequestMapping(value="course/clistAll",method=RequestMethod.GET)
	public void clistAll(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.GET)
	public void cregistGET(CourseVO vo,Model model) throws Exception{
		
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.POST)
	public String cregisterPOST(CourseVO vo,RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		service.regist(vo,request);
		return"redirect:/course/clistAll";
	}
	@RequestMapping(value="/course/cread",method=RequestMethod.GET)
	public void cread(@RequestParam("cseq") int cseq,Model model) throws Exception{
		model.addAttribute("dto",service.read(cseq));
	}
	@RequestMapping(value="/course/cmodify",method=RequestMethod.GET)
	public void cmodifyGET(int cseq,Model model) throws Exception{
		model.addAttribute("dto",service.read(cseq));
	}
	@RequestMapping(value="/course/cmodify",method=RequestMethod.POST)
	public String cmodifyPOST(CourseVO vo,RedirectAttributes rttr) throws Exception{
		service.modify(vo);
		return "redirect:/course/cread?cseq="+vo.getCseq();
	}
	@RequestMapping(value="/course/cremove",method=RequestMethod.POST)
	public String cremovePost(@RequestParam("cseq") int cseq,RedirectAttributes rttr) throws Exception{
		service.remove(cseq);
		return "redirect:/course/clistAll";
	}
	
	//=======================유저=============================//
	
	@RequestMapping(value = "course/uclistAll", method = RequestMethod.GET)
	public void uclistAll(Model model) throws Exception {
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/course/ucread", method = RequestMethod.GET)
	public void ucread(@RequestParam("cseq") int cseq, Model model) throws Exception {
		model.addAttribute("dto", service.read(cseq));
	}

}
