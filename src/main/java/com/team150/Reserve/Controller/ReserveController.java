package com.team150.Reserve.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team150.Course.Service.CourseService;
import com.team150.Member.Service.MemberService;
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
	
	@Inject
	MemberService memberservice;
	
	@Inject
	CourseService courseservice;
	
	//===========================관리자=======================//
	//리스트
	@RequestMapping(value="/manager/reserve/reservelist",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		model.addAttribute("list", service.listAll());
	}
	//취소(삭제)
    @RequestMapping(value="/manager/reserve/reserveremove",method=RequestMethod.GET)
	public String remove(@RequestParam("rseq") int rseq,RedirectAttributes rttr) throws Exception{
		service.remove(rseq);
		
		return"redirect:/manager/reserve/reservelist";
	}
    
  //===========================유저=======================//
    //작성
	@RequestMapping(value = "/user/reserve/userreserve", method = RequestMethod.POST)
	public String create(ReserveVO vo, RedirectAttributes rttr,@RequestParam("uid") String uid) throws Exception {
		
		int useq=memberservice.session(uid);
		vo.setUseq(useq);
		service.regist(vo);
		return "redirect:/user/reserve/myreserve";
	}
	//나의내역
	@RequestMapping(value="/user/reserve/myreserve")
	public void read(Model model, HttpServletRequest request) throws Exception{
		HttpSession session =request.getSession();
		String uid =session.getAttribute("uid").toString();
		System.out.println(uid);
		int useq=memberservice.session(uid);
		System.out.println(useq);
		model.addAttribute("list", service.read(useq));
	}
	//예약취소
	@RequestMapping("/user/reserve/userremove")
	public String uremove(@RequestParam("rseq")int rseq) throws Exception{
		service.remove(rseq);
		
		return "redirect:/user/reserve/myreserve";
	}
	
	//결제 창 이동
	@RequestMapping("/user/payment")
	public String payment(Model model, HttpServletRequest request) throws Exception{
		
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		ReserveVO reserve = service.read1(rseq);
		model.addAttribute("reserve", reserve);
		model.addAttribute("course", courseservice.read(reserve.getCseq()));
		
		return "/user/payment/userpayment";
	}
	
	// 결제 성공
	@RequestMapping("/payment/success")
	public String payok(HttpServletRequest request) throws Exception {
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		ReserveVO reserve = service.read1(rseq);
		service.paysuccess(reserve);
		return "/payment/success";
	}
	
	// 결제 실패
	@RequestMapping("/payment/fail")
	public String payno() throws Exception{
		return "/payment/fail";
	}

}
