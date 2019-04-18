package com.team150.Review.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team150.Review.Model.CommentVO;
import com.team150.Review.Model.ReviewVO;
import com.team150.Review.Service.ReviewService;

@Controller
public class ReviewController {

	@Inject
	ReviewService service;

	// 리뷰 등록 (페이지)
	@RequestMapping("/review/reviewWrite")
	public String reviewWrite(ReviewVO reviewVO) {
		return "/review/reviewWrite";
	}

	// 리뷰 등록 (실행)
	@RequestMapping(value = "/review/reviewWriteOK", method = RequestMethod.POST)
	public String reviewWriteOK(ReviewVO reviewVO, HttpServletRequest request) throws Exception {

		service.reviewRegister(reviewVO, request);

		return "redirect:/user/course/courseread.do?cseq=" + reviewVO.getCseq();
	}

	// 리뷰 상세 (페이지)
	@RequestMapping("/review/reviewInfo")
	public String reviewInfo(Model model, @RequestParam int reseq) {

		model.addAttribute("reviewInfo", service.reviewInfoer(reseq));

		// 리뷰 전체 조회
		model.addAttribute("reviewList", service.reviewSelecter());

		return "/review/reviewInfo";
	}

	// 리뷰 수정 (페이지)
	@RequestMapping("/review/reviewModify")
	public ModelAndView reviewModify(Model model, @RequestParam int reseq, @ModelAttribute ReviewVO reviewVO) {

		reviewVO = service.reviewInfoer(reseq);

		// 리뷰 전체 조회
		model.addAttribute("reviewList", service.reviewSelecter());

		return new ModelAndView("/review/reviewModify", "reviewVO", reviewVO);
	}

	// 리뷰 수정 (실행)
	@RequestMapping("/review/reviewModifyOK")
	public String reviewModifyOK(@ModelAttribute ReviewVO reviewVO, HttpServletRequest request) throws Exception {
		
		service.reviewUpdater(reviewVO, request);

		return "redirect:/review/reviewInfo.do?reseq=" + reviewVO.getReseq();
	}

	// 리뷰 삭제 (실행)
	@RequestMapping("/review/reviewDelete")
	public String reviewDelete(@RequestParam int reseq) {

		service.reviewDeleter(reseq);

		return "redirect:/user/course/courseread.do?cseq=" + "46";
	}

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------

//	관리자

	// 리뷰 모든 리스트 (페이지)
	@RequestMapping("/manager/review/reviewList")
	public String reviewList(Model model) {

		model.addAttribute("reviewList", service.reviewSelecter());
		model.addAttribute("answerList", service.commentSelecter());
		
		return "/manager/review/reviewList";
	}

	// 리뷰 상세 (페이지)
	@RequestMapping("/manager/review/reviewInfo")
	public String reviewInfoManager(Model model, @RequestParam int reseq) {

		model.addAttribute("reviewInfo", service.reviewInfoer(reseq));

		model.addAttribute("answerList", service.commentSelecter());

		return "/manager/review/reviewInfo";
	}

	// 답글 작성 (페이지)
	@RequestMapping("/manager/review/commentWrite")
	public String commentWrite(Model model, @RequestParam int reseq) {

		model.addAttribute("reviewInfo", service.reviewInfoer(reseq));

		return "/manager/review/commentWrite";
	}

	// 답글 작성 (실행)
	@RequestMapping(value = "/manager/review/commentWriteOK", method = RequestMethod.POST)
	public String commentWriteOK(CommentVO commentVO) {

		service.commentRegister(commentVO);

		return "redirect:/manager/review/reviewInfo.do?reseq=" + commentVO.getReseq();
	}

	// 답글 수정 (페이지)
	@RequestMapping("/manager/review/commentModify")
	public ModelAndView commentModify(CommentVO commentVO, @RequestParam int coseq, @RequestParam int reseq) {

		commentVO = service.commentInfoer(coseq);

		return new ModelAndView("/manager/review/commentModify", "commentVO", commentVO);
	}

	// 답글 수정 (실행)
	@RequestMapping("/manager/review/commentModifyOK")
	public String commentModifyOK(CommentVO commentVO) {

		service.commentUpdater(commentVO);

		return "redirect:/manager/review/reviewInfo.do?reseq=" + commentVO.getReseq();
	}

	// 답글 삭제(실행)
	@RequestMapping("/manager/review/commentDelete")
	public String commentDelete(@RequestParam int coseq, @RequestParam int reseq) {

		service.commentDeleter(coseq);

		return "redirect:/manager/review/reviewInfo.do?reseq=" + reseq;
	}
	
	// 답글 + 댓글 삭제 (실행)
	@RequestMapping("/manager/review/commentReviewDelete")
	public String commentReviewDelete(@RequestParam int reseq) {
		
		service.reviewDeleter(reseq);
		service.allDeleter(reseq);
		
		return "redirect:/manager/review/reviewList";
	}

}