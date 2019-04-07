package com.team150.Question.Model;

import java.util.List;

public interface QuestionDAO {

	// 문의하기 리스트 (페이지)
	public List<QuestionVO> questionListAll();

	// 문의하기 등록 (실행)
	public int questionCreate(QuestionVO questionVO);

	// 문의하기 리스트 (상세)
	public QuestionVO questionSelectOne(int quseq);

	// 문의하기 수정 (실행)
	public int questionUpdate(QuestionVO questionVO);
	
	// 문의하기 삭제 (실행)
	public int questionDelete(int quseq);
	
	// 문의+답변 삭제 (실행)
	public int allDelete(int quseq);

	// 답변하기 등록 (실행)
	public int answerCreate(AnswerVO answerVO);

	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerListAll();

	// 답변하기 수정 (페이지)
	public AnswerVO answerSelectOne(int naseq);

	// 답변하기 수정 (실행)
	public int answerUpdate(AnswerVO answerVO);

	// 답변하기 삭제 (실행)
	public int answerDelete(int naseq);
}
