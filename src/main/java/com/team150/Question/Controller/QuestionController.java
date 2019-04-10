package com.team150.Question.Controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team150.Member.Service.MemberService;
import com.team150.Question.Model.AnswerVO;
import com.team150.Question.Model.QuestionVO;
import com.team150.Question.Service.QuestionService;

@Controller
public class QuestionController {

	@Inject
	QuestionService service;
	
	@Inject
	MemberService memberservice;
	
	
	
//	고객

	// 문의하기 리스트 (페이지)
	@RequestMapping("/question/questionMain")
	public String questionMain(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		String uid = session.getAttribute("uid").toString();
		
		model.addAttribute("questionList", service.questionSelecterUid(uid));

		return "question/questionMain";
	}

	// 문의하기 등록 (페이지)
	@RequestMapping("/question/questionWrite")
	public String questionWrite() {
		return "question/questionWrite";
	}

	// 문의하기 등록 (실행)
	@RequestMapping(value = "/question/questionWriteOK", method = RequestMethod.POST)
	public String questionWriteOK(QuestionVO questionVO, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		String uid = session.getAttribute("uid").toString();
		
		questionVO.setQuemail(uid);
		
		service.questionRegister(questionVO);
		

		return "redirect:questionMain.do";
	}

	// 문의하기 상세 (페이지)
	@RequestMapping(value = "/question/questionInfo")
	public String questionInfo(Model model, @RequestParam int quseq) {

		model.addAttribute("questionInfo", service.questionInfoer(quseq));

		model.addAttribute("answerList", service.answerSelecter());

		return "question/questionInfo";
	}

	// 문의하기 수정 (페이지)
	@RequestMapping("/question/questionModify")
	public ModelAndView questionModify(QuestionVO questionVO, @RequestParam int quseq) {

		questionVO = service.questionInfoer(quseq);

		return new ModelAndView("/question/questionModify", "questionInfo", questionVO);
	}

	// 문의하기 수정 (실행)
	@RequestMapping("/question/questionModifyOK")
	public String questionModifyOK(QuestionVO questionVO) {

		service.questionUpdater(questionVO);

		return "redirect:/question/questionInfo.do?quseq=" + questionVO.getQuseq();
	}

	// 문의+답변 삭제 (실행)
	@RequestMapping("/question/questionDelete")
	public String questionDelete(@RequestParam int quseq) {

		service.questionDeleter(quseq);
		service.allDeleter(quseq);

		return "redirect:/question/questionMain";
	}

//	--------------------------------------------------------------------------------

//	관리자

	// 문의하기 답변하기 모든 리스트 (페이지)
	@RequestMapping(value = "/manager/question/questionList", method = RequestMethod.GET)
	public String questionList(Model model) {

		model.addAttribute("questionList", service.questionSelecter());

		model.addAttribute("answerList", service.answerSelecter());

		return "/manager/question/questionList";
	}

	// 문의하기 상세 (페이지)
	@RequestMapping(value = "/manager/question/questionInfo")
	public String answerInfo(Model model, @RequestParam int quseq) {

		model.addAttribute("questionInfo", service.questionInfoer(quseq));

		model.addAttribute("answerList", service.answerSelecter());

		return "/manager/question/questionInfo";
	}

	// 답변하기 등록 (페이지)
	@RequestMapping(value = "/manager/question/answerWrite")
	public String answerWrite(Model model, @RequestParam int quseq) {

		model.addAttribute("questionInfo", service.questionInfoer(quseq));

		return "/manager/question/answerWrite";
	}

	// 답변하기 등록 (실행)
	@RequestMapping(value = "/manager/question/answerWriteOK", method = RequestMethod.POST)
	public String answerWriteOK(AnswerVO answerVO) {

		service.answerRegister(answerVO);

		return "redirect:/manager/question/questionInfo.do?quseq=" + answerVO.getQuseq();
	}

	// 답변하기 수정 (페이지)
	@RequestMapping("/manager/question/answerModify")
	public ModelAndView answerModify(Model model, @RequestParam int naseq, AnswerVO answerVO) {

		answerVO = service.answerInfoer(naseq);

		return new ModelAndView("/manager/question/answerModify", "answerVO", answerVO);
	}

	// 답변하기 수정 (실행)
	@RequestMapping("/manager/question/answerModifyOK")
	public String answerModifyOK(AnswerVO answerVO) {

		service.answerUpdater(answerVO);

		return "redirect:/manager/question/questionInfo.do?quseq=" + answerVO.getQuseq();
	}

	// 답변하기 삭제 (실행)
	@RequestMapping("/manager/question/answerDeleteOK")
	public String answerDelete(@RequestParam int naseq, @RequestParam int quseq) {

		service.answerDeleter(naseq);

		return "redirect:/manager/question/questionInfo.do?quseq=" + quseq;
	}

	// 문의+답변 삭제 (실행)
	@RequestMapping("/question/questionDeleteManager")
	public String questionDeleteManager(@RequestParam int quseq) {

		service.questionDeleter(quseq);
		service.allDeleter(quseq);

		return "redirect:/manager/question/questionList";
	}

}
