package com.team150.Question.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team150.Question.Model.AnswerVO;
import com.team150.Question.Model.QuestionDAO;
import com.team150.Question.Model.QuestionVO;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Inject
	private QuestionDAO dao;

	/// 문의하기 리스트 (실행)
	public List<QuestionVO> questionSelecter() {
		return dao.questionListAll();
	}

	// 문의하기 등록 (실행)
	public void questionRegister(QuestionVO questionVO) {

		int result = dao.questionCreate(questionVO);

		if (result == 0) {
			System.out.println("noticeRegister Fail!!");
		} else {
			System.out.println("noticeRegister Success!!");
		}
	}

	// 문의하기 상세 (페이지)
	public QuestionVO questionInfoer(int quseq) {
		return dao.questionSelectOne(quseq);
	}

//	----------------------------------------------------------------------------

//	관리자

	// 답변하기 등록 (실행)
	public void answerRegister(AnswerVO answerVO, int quseq) {

		int result = dao.answerCreate(answerVO, quseq);

		if (result == 0) {
			System.out.println("noticeRegister Fail!!");
		} else {
			System.out.println("noticeRegister Success!!");
		}
	}

	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerSelecter() {
		return dao.answerListAll();
	}
}
