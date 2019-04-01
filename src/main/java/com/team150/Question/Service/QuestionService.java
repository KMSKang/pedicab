package com.team150.Question.Service;

import java.util.List;

import com.team150.Question.Model.AnswerVO;
import com.team150.Question.Model.QuestionVO;

public interface QuestionService {

	// 문의하기 리스트 (페이지)
	public List<QuestionVO> questionSelecter();

	// 문의하기 등록 (실행)
	public void questionRegister(QuestionVO questionVO);
	
	// 문의하기 상세 (페이지)
	public QuestionVO questionInfoer(int quseq);
	
	// 답변하기 등록 (실행)
	public void answerRegister(AnswerVO answerVO, int quseq);
	
	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerSelecter();
}
