package com.team150.Question.Controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team150.Question.Model.AnswerVO;
import com.team150.Question.Model.QuestionVO;
import com.team150.Question.Service.QuestionService;

@Controller
public class QuestionController {

	@Inject
	QuestionService service;

	// 문의하기 리스트 (페이지)
	@RequestMapping("/questionMain")
	public String questionMain(Model model) {

		model.addAttribute("questionList", service.questionSelecter());

		return "question/questionMain";
	}

	// 문의하기 등록 (페이지)
	@RequestMapping("/questionWrite")
	public String questionWrite() {
		return "question/questionWrite";
	}

	// 문의하기 등록 (실행)
	@RequestMapping(value = "/questionWriteOK", method = RequestMethod.POST)
	public String questionWriteOK(QuestionVO questionVO) {

		service.questionRegister(questionVO);

		return "redirect:questionMain.do";
	}

	// 문의하기 상세 (페이지)
	@RequestMapping(value = "/questionInfo")
	public String questionInfo(Model model, @RequestParam int quseq) {

		model.addAttribute("questionInfo", service.questionInfoer(quseq));

		model.addAttribute("answerList", service.answerSelecter());

		return "question/questionInfo";
	}

//	--------------------------------------------------------------------------------

//	관리자

	// 문의하기 모든 리스트 (페이지)
	@RequestMapping(value = "/questionAllList", method = RequestMethod.GET)
	public String questionAllList(Model model) {

		model.addAttribute("questionList", service.questionSelecter());

		return "question/questionAllList";
	}

	// 답변하기 리스트 (페이지)
	@RequestMapping(value = "/answer")
	public String answer(Model model, @RequestParam int quseq) {

		model.addAttribute("questionInfo", service.questionInfoer(quseq));

		return "question/answer";
	}

	// 답변하기 등록 (실행)
	@RequestMapping(value = "/answerOK", method = RequestMethod.POST)
	public String AnswerOK(AnswerVO answerVO, @RequestParam int quseq) {

		service.answerRegister(answerVO, quseq);

		return "redirect:questionInfo.do?quseq=" + quseq;
	}
}
