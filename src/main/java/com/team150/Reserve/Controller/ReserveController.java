package com.team150.Reserve.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.Reserve.Model.ReserveService;
import com.team150.Reserve.Service.ReserveVO;
@RequestMapping("/")
@Controller
public class ReserveController {
	@Inject
	ReserveService service;
	
	//===========================관리자=======================//
	
	@RequestMapping(value="reserve/rlistAll",method=RequestMethod.GET)
	public void rlistAll(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value="/reserve/rread1",method=RequestMethod.GET)
	public void rread1(@RequestParam("rseq") int rseq,Model model) throws Exception{
		model.addAttribute("reserve",service.read1(rseq));
		
	}
    @RequestMapping(value="/reserve/rremove",method=RequestMethod.POST)
	public String rremovePost(@RequestParam("rseq") int rseq,RedirectAttributes rttr) throws Exception{
		service.remove(rseq);
		
		return"redirect:/reserve/rlistAll";
	}
    
  //===========================유저=======================//
	@RequestMapping(value = "/reserve/rregist", method = RequestMethod.POST)
	public String rregisterPOST(ReserveVO vo, RedirectAttributes rttr,@RequestParam("cseq") int cseq) throws Exception {
		vo.setUseq(10);
		service.regist(vo);
		System.out.println(vo);
		return "redirect:/reserve/myreserve";
	}
	@RequestMapping(value="/resrve/myreserve")
	public void myreserve(@RequestParam("useq") int useq,Model model) throws Exception{
		
		model.addAttribute("list", service.read(useq));
	}

}
