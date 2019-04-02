package com.team150.Notice.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	// =================관리자================================//

	// 리스트 (페이지)
	@RequestMapping("/notice/noticeMain")
	public String noticeMain(Model model) {

		model.addAttribute("List", service.noticeSelecter());

		return "notice/noticeMain";
	}

	// 등록 (페이지)
	@RequestMapping("/notice/noticeWrite")
	public String noticeWrite() {
		return "notice/noticeWrite";
	}

	// 등록 (실행)
	@RequestMapping(value = "/notice/noticeWriteOK", method = RequestMethod.POST)
	public String noticeWriteOK(NoticeVO noticeVO) {

		service.noticeRegister(noticeVO);

		return "redirect:noticeMain.do";
	}

	// 상세 (페이지)
	@RequestMapping("/notice/noticeInfo")
	public String noticeInfo(Model model, @RequestParam int noseq) {

		model.addAttribute("Info", service.noticeInfoer(noseq));

		return "notice/noticeInfo";
	}

	// 수정 (페이지)
	@RequestMapping("/notice/noticeModify")
	public ModelAndView noticeModify(Model model, @RequestParam int noseq, @ModelAttribute NoticeVO noticeVO) {

		noticeVO = service.noticeInfoer(noseq);

		return new ModelAndView("/notice/noticeModify", "noticeVO", noticeVO);
	}

	// 수정 (실행)
	@RequestMapping("/notice/noticeModifyOK")
	public String noticeModifyOK(@ModelAttribute NoticeVO noticeVO) {

		service.noticeUpdater(noticeVO);

		return "redirect:noticeInfo.do?noseq=" + noticeVO.getNoseq();
	}

	// 삭제 (실행)
	@RequestMapping("/notice/noticeDelete")
	public String noticeDelete(@RequestParam int noseq) {

		service.noticeDeleter(noseq);

		return "redirect:noticeMain.do";
	}

}
