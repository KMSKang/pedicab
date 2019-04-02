package com.team150.Reserve.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.Reserve.Model.ReserveVO;
import com.team150.Reserve.Service.ReserveService;
@RequestMapping("/")
@Controller
public class ReserveController {
	
	/*===============================
	 * 
	 * 리스트=listAll
	 * SELECT * FROM 테이블명  
	 * 
	 * ==============================
	 * 
	 * 하나만보기=view(매니저페이지M,유저페이지U)
	 * SELECT * FROM 테이블명 WHERE seq = ?
	 * 
	 * ==============================
	 * 
	 * 삭제=remove
	 * DELETE FROM 테이블명  WHERE seq = ?
	 * 
	 * ==============================
	 * 
	 * 수정=modify
	 * UPDATE 테이블명 SET VALUES(?=?,?=?) WHERE seq=?
	 * 
	 * =============================
	 * */
	
	
	@Inject
	ReserveService service;
	
	//===========================관리자=======================//
	//리스트
	@RequestMapping(value="reserve/Reserve_listM",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
	}
	//상세내역
	@RequestMapping(value="/reserve/Reserve_viewM",method=RequestMethod.GET)
	public void viewM(@RequestParam("rseq") int rseq,Model model) throws Exception{
		model.addAttribute("reserve",service.read1(rseq));
		
	}
	//취소(삭제)
    @RequestMapping(value="/reserve/Reserve_remove",method=RequestMethod.POST)
	public String remove(@RequestParam("rseq") int rseq,RedirectAttributes rttr) throws Exception{
		service.remove(rseq);
		
		return"redirect:/reserve/Reserve_listM";
	}
    
  //===========================유저=======================//
    //작성
	@RequestMapping(value = "/reserve/rregist", method = RequestMethod.POST)
	public String create(ReserveVO vo, RedirectAttributes rttr,@RequestParam("cseq") int cseq) throws Exception {
		vo.setUseq(10);
		service.regist(vo);
		System.out.println(vo);
		return "redirect:/reserve/myreserve";
	}
	//나의내역
	@RequestMapping(value="/resrve/Reserve_viewU")
	public void read(Model model,@RequestParam("useq") int useq) throws Exception{
		model.addAttribute("list", service.read(useq));
	}

}
