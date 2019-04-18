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

	// =================관리자================================//
	@RequestMapping(value="/manager/course/markerwrite",method=RequestMethod.GET)
	public String markerwriteget() throws Exception{
		return"/manager/course/markerwrite";
	}
	@RequestMapping(value = "/manager/course/courselist", method = RequestMethod.GET)
	public void clistAll(Model model) throws Exception {
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/manager/course/coursewrite", method = RequestMethod.GET)
	public String coursewrite() throws Exception {
		return "/manager/course/coursewrite";
	}

	@RequestMapping(value = "/manager/course/coursewrite", method = RequestMethod.POST)
	public String cregisterPOST(CourseVO vo, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		service.regist(vo, request);
		return "redirect:/manager/course/courselist";
	}

	@RequestMapping(value = "/manager/course/courseread", method = RequestMethod.GET)
	public void cread(@RequestParam("cseq") int cseq, Model model) throws Exception {
		model.addAttribute("course", service.read(cseq));
	}

	@RequestMapping(value = "/manager/course/coursemodify", method = RequestMethod.GET)
	public void cmodifyGET(@RequestParam("cseq") int cseq, Model model) throws Exception {
		model.addAttribute("dto", service.read(cseq));
	}

	@RequestMapping(value = "/manager/course/coursemodify", method = RequestMethod.POST)
	public String cmodifyPOST(CourseVO vo, RedirectAttributes rttr) throws Exception {
		service.modify(vo);
		return "redirect:/manager/course/courselist";
	}

	@RequestMapping(value = "/manager/course/courseremove", method = RequestMethod.GET)
	public String cremovePost(@RequestParam("cseq") int cseq, RedirectAttributes rttr) throws Exception {
		service.remove(cseq);
		return "redirect:/manager/course/courselist";
	}

	// =======================유저=============================//

	@RequestMapping(value = "/user/course/courselist", method = RequestMethod.GET)
	public void uclistAll(Model model) throws Exception {
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/user/course/courseread", method = RequestMethod.GET)
	public void ucread(@RequestParam("cseq") int cseq, Model model) throws Exception {
		model.addAttribute("course", service.read(cseq));
		// 답글 조회
		model.addAttribute("commentList", service.commentSelecter());
		// 리뷰 조회
		model.addAttribute("reviewList", service.reviewSelecter());

	}

	// 즐겨찾기 조회(페이지)
	@RequestMapping("/favorite/favorite")
	public String favoriteList(Model model) {

		model.addAttribute("favorite", service.favoriteSelecter());

		return "/favorite/favorite";

	}

	// 커밋

}
