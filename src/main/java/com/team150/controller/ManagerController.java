package com.team150.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.commons.CourseVO;
import com.team150.service.CourseService;
@RequestMapping("/")
@Controller
public class ManagerController {
	@Inject
	CourseService cservice;
	
	@RequestMapping(value="course/clistAll",method=RequestMethod.GET)
	public void clistAll(Model model) throws Exception{
		model.addAttribute("list", cservice.listAll());
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.GET)
	public void cregistGET(CourseVO vo,Model model) throws Exception{
		
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.POST)
	public String registerPOST(CourseVO vo,RedirectAttributes rttr) throws Exception{
		cservice.regist(vo);
		System.out.println(vo);
		return"redirect:/course/clistAll";
	}
	@RequestMapping(value="/course/cread",method=RequestMethod.GET)
	public void cread(@RequestParam("cseq") int cseq,Model model) throws Exception{
		model.addAttribute("dto",cservice.read(cseq));
	}
	@RequestMapping(value="/course/cmodify",method=RequestMethod.GET)
	public void cmodifyGET(int cseq,Model model) throws Exception{
		model.addAttribute("dto",cservice.read(cseq));
	}
	@RequestMapping(value="/course/cmodify",method=RequestMethod.POST)
	public String cmodifyPOST(CourseVO vo,RedirectAttributes rttr) throws Exception{
		cservice.modify(vo);
		return "redirect:/course/cread?cseq="+vo.getCseq();
	}
	@RequestMapping(value="/course/cremove",method=RequestMethod.POST)
	public String cremovePost(@RequestParam("cseq") int cseq,RedirectAttributes rttr) throws Exception{
		cservice.remove(cseq);
		return "redirect:/course/clistAll";
	}

}
