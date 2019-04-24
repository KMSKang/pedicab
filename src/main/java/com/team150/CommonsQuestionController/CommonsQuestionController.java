package com.team150.CommonsQuestionController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonsQuestionController {

	// 자주 묻는 질문
	@RequestMapping("/question/commonsquestion")
	public String commonsquestion() {
		return "/user/question/commonsquestion";
	}

}
