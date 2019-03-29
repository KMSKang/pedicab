package com.team150.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.commons.CourseVO;
import com.team150.commons.ReserveVO;
import com.team150.service.CourseService;
import com.team150.service.ReserveService;
@RequestMapping("/")
@Controller
public class ManagerController {
	@Inject
	CourseService cservice; // 코스서비스
	@Inject
	ReserveService rservice; //예약서비스
	
	ReserveVO vo;
	
	
	
	    //=================================================================================================//
		//                                ↓코스관련 기능↓                                                      //
		//                                                                                                //
		//================================================================================================//
	
	@RequestMapping(value="course/clistAll",method=RequestMethod.GET)
	public void clistAll(Model model) throws Exception{
		model.addAttribute("list", cservice.listAll());
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.GET)
	public void cregistGET(CourseVO vo,Model model) throws Exception{
		
	}
	@RequestMapping(value="/course/cregist",method=RequestMethod.POST)
	public String cregisterPOST(CourseVO vo,RedirectAttributes rttr,HttpServletRequest request) throws Exception{
		cservice.regist(vo,request);
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
	
	
	//====================================================================================================//
	//                                ↓예약관련 기능↓                                                         //
	//                                                                                                   //
	//====================================================================================================//
	
	
	@RequestMapping(value="reserve/rlistAll",method=RequestMethod.GET)
	public void rlistAll(Model model) throws Exception{
		model.addAttribute("list", rservice.listAll());
	}
	
	@RequestMapping(value="/reserve/rread1",method=RequestMethod.GET)
	public void rread1(@RequestParam("rseq") int rseq,Model model) throws Exception{
		model.addAttribute("reserve",rservice.read1(rseq));
		
	}
    @RequestMapping(value="/reserve/rremove",method=RequestMethod.POST)
	public String rremovePost(@RequestParam("rseq") int rseq,RedirectAttributes rttr) throws Exception{
		rservice.remove(rseq);
		
		return"redirect:/reserve/rlistAll";
	}

}
