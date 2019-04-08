package com.team150.Notice.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team150.Notice.Model.NoticeVO;
import com.team150.Notice.Service.NoticeService;

@Controller
public class NoticeController {

	@Inject
	NoticeService service;

//	고객

	// 메인 (페이지)
	@RequestMapping("/notice/noticeMain")
	public String noticeMain(Model model) {

		model.addAttribute("List", service.noticeSelecter());

		return "/notice/noticeMain";
	}
	
	// 상세 (페이지)
	@RequestMapping("/notice/noticeInfo")
	public String noticeInfo(Model model, @RequestParam int noseq) {

		model.addAttribute("Info", service.noticeInfoer(noseq));

		return "/notice/noticeInfo";
	}

//	--------------------------------------------------------------------------

//	 관리자

	// 메인 (페이지)
	@RequestMapping("/manager/notice/noticeList")
	public String noticeList(Model model) {

		model.addAttribute("List", service.noticeSelecter());

		return "/manager/notice/noticeList";
	}

	// 등록 (페이지)
	@RequestMapping("/manager/notice/noticeWrite")
	public String noticeWrite() {
		return "/manager/notice/noticeWrite";
	}

	// 등록 (실행)
	@RequestMapping(value = "/manager/notice/noticeWriteOK", method = RequestMethod.POST)
	public String noticeWriteOK(NoticeVO noticeVO) {

		service.noticeRegister(noticeVO);

		return "redirect:noticeList.do";
	}

	// 수정 (페이지)
	@RequestMapping("/manager/notice/noticeModify")
	public ModelAndView noticeModify(Model model, @RequestParam int noseq, NoticeVO noticeVO) {

		noticeVO = service.noticeInfoer(noseq);

		return new ModelAndView("/manager/notice/noticeModify", "noticeVO", noticeVO);
	}

	// 수정 (실행)
	@RequestMapping("/manager/notice/noticeModifyOK")
	public String noticeModifyOK(NoticeVO noticeVO) {

		service.noticeUpdater(noticeVO);

		return "redirect:/manager/notice/noticeList.do?";
	}

	// 삭제 (실행)
	@RequestMapping("/manager/notice/noticeDelete")
	public String noticeDelete(@RequestParam int noseq) {

		service.noticeDeleter(noseq);
		return "redirect:noticeList.do";
	}

}