package com.team150.Question.Model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDAOImpl implements QuestionDAO {

	@Inject
	SqlSession session;

	private static String namespace = "com.team150.mappers.questionMapper";

	// 문의하기 리스트 (페이지)
	public List<QuestionVO> questionListAll() {
		return session.selectList(namespace + ".questionListAll");
	}

	// 문의하기 등록 (실행)
	public int questionCreate(QuestionVO questionVO) {
		return session.update(namespace + ".questionCreate", questionVO);
	}

	// 문의하기 리스트 (상세)
	public QuestionVO questionSelectOne(int quseq) {
		return session.selectOne(namespace + ".questionSelectOne", quseq);
	}

//	---------------------------------------------------------------------------

//	관리자

	// 답변하기 등록 (실행)
	public int answerCreate(AnswerVO answerVO, int quseq) {
		return session.update(namespace + ".answerCreate", answerVO);
	}

	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerListAll() {
		return session.selectList(namespace + ".answerListAll");
	}
}
