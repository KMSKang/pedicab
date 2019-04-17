package com.team150.MarkerPath.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.MarkerPath.Model.MarkerVO;
import com.team150.MarkerPath.Service.MarkerService;

@Controller
public class MarkerController {
	
	@Inject
	MarkerService service;

	@RequestMapping(value="/manager/marker/mregist",method=RequestMethod.POST)
	public String mregisterPost(MarkerVO vo, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		service.regist(vo, request);
		return "redirect:/manager/course/courselist";
	}
	
	@RequestMapping(value="/manager/course/test",method=RequestMethod.GET)
	public void clistAll(Model model) throws Exception{
		model.addAttribute("list",service.listAll());
	}
	
}