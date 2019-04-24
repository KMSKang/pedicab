package com.team150.AboutUs.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController {

	// 아띠 소개
	@RequestMapping("/user/html/aboutus")
	public String aboutus() {
		return "/user/html/aboutus";
	}
}
