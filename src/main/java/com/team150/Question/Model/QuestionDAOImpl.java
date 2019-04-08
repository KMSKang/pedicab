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

	// 문의하기 수정 (실행)
	public int questionUpdate(QuestionVO questionVO) {
		return session.update(namespace + ".questionUpdate", questionVO);
	}

	// 문의하기 삭제 (실행)
	public int questionDelete(int quseq) {
		return session.delete(namespace + ".questionDelete", quseq);
	}

	// 문의하기 삭제 (실행)
	public int allDelete(int quseq) {
		return session.delete(namespace + ".allDelete", quseq);
	}

//	---------------------------------------------------------------------------

//	관리자

	// 답변하기 등록 (실행)
	public int answerCreate(AnswerVO answerVO) {
		return session.update(namespace + ".answerCreate", answerVO);
	}

	// 답변하기 리스트 (페이지)
	public List<AnswerVO> answerListAll() {
		return session.selectList(namespace + ".answerListAll");
	}

	// 답변하기 수정 (페이지)
	public AnswerVO answerSelectOne(int naseq) {
		return session.selectOne(namespace + ".answerSelectOne", naseq);
	}

	// 답변하기 수정 (실행)
	public int answerUpdate(AnswerVO answerVO) {
		return session.update(namespace + ".answerUpdate", answerVO);
	}

	// 답변하기 삭제 (실행)
	public int answerDelete(int naseq) {
		return session.delete(namespace + ".answerDelete", naseq);
	}
}
