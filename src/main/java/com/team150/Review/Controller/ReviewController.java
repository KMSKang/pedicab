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
		return "review/reviewWrite";
	}

	// 리뷰 등록 (실행)
	@RequestMapping(value = "/review/reviewWriteOK", method = RequestMethod.POST)
	public String reviewWriteOK(ReviewVO reviewVO, HttpServletRequest request) throws Exception {

		service.reviewRegister(reviewVO, request);

		return "redirect:courseReservation.do";
	}

	// 리스트 (리뷰, 답글) (페이지)
	@RequestMapping("/course/courseReservation")
	public String courseReservation(Model model) {

		model.addAttribute("commentList", service.commentSelecter());

		// 리뷰 전체 조회
		model.addAttribute("reviewList", service.reviewSelecter());

		return "course/courseReservation";
	}

	// 리뷰 상세 (페이지)
	@RequestMapping("/review/reviewInfo")
	public String reviewInfo(Model model, @RequestParam int reseq) {

		model.addAttribute("reviewInfo", service.reviewInfoer(reseq));

		// 리뷰 전체 조회
		model.addAttribute("reviewList", service.reviewSelecter());

		return "review/reviewInfo";
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

		return "redirect:courseReservation.do";
	}

	// 리뷰 삭제 (실행)
	@RequestMapping("/review/reviewDelete")
	public String reviewDelete(@RequestParam int reseq) {

		service.reviewDeleter(reseq);

		return "redirect:courseReservation.do";
	}

	// 답글 등록 (페이지)
	@RequestMapping("/review/commentWrite")
	public String commentWrite(Model model, @RequestParam int reseq) {

		model.addAttribute("reviewInfo", service.reviewInfoer(reseq));

		// 리뷰 전체 조회
		model.addAttribute("reviewList", service.reviewSelecter());

		return "review/commentWrite";
	}

	// 답글 등록 (실행)
	@RequestMapping(value = "/review/commentWriteOK", method = RequestMethod.POST)
	public String commentWriteOK(CommentVO commentVO, @RequestParam int reseq) {

		service.commentRegister(commentVO, reseq);

		return "redirect:courseReservation.do";
	}

}
