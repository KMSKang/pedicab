package com.team150.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.commons.ReserveVO;
import com.team150.service.CourseService;
import com.team150.service.ReserveService;

@Controller
@RequestMapping("/")
public class UserController {

	@Inject
	CourseService cservice;
	@Inject
	ReserveService rservice;

	// =================================================================================================//
	// ↓코스↓
	//
	// ================================================================================================//

	@RequestMapping(value = "course/uclistAll", method = RequestMethod.GET)
	public void clistAll(Model model) throws Exception {
		model.addAttribute("list", cservice.listAll());
	}

	@RequestMapping(value = "/course/ucread", method = RequestMethod.GET)
	public void cread(@RequestParam("cseq") int cseq, Model model) throws Exception {
		model.addAttribute("dto", cservice.read(cseq));
	}
	// =================================================================================================//
	// ↓예약↓
	//
	// ================================================================================================//

	@RequestMapping(value = "/reserve/rregist", method = RequestMethod.POST)
	public String rregisterPOST(ReserveVO vo, RedirectAttributes rttr,@RequestParam("cseq") int cseq) throws Exception {
		vo.setUseq(10);
		rservice.regist(vo);
		System.out.println(vo);
		return "redirect:/reserve/myreserve";
	}
	@RequestMapping(value="/resrve/myreserve")
	public void myreserve(@RequestParam("useq") int useq,Model model) throws Exception{
		
		model.addAttribute("list", rservice.read(useq));
	}

}
