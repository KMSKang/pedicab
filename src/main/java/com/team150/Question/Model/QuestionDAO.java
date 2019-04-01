package com.team150.Question.Model;

import java.util.List;

public interface QuestionDAO {

	// 문의하기 리스트 (페이지)
	public List<QuestionVO> questionListAll();

	// 문의하기 등록 (실행)
	public int questionCreate(QuestionVO questionVO);

	// 문의하기 리스트 (상세)
	public QuestionVO questionSelectOne(int quseq);
	
	// 답변하기 등록 (실행)
	public int answerCreate(AnswerVO answerVO, int quseq);
	
	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerListAll();
}
