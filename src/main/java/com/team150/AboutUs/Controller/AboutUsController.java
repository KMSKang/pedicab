package com.team150.AboutUs.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController {
	
	// 아띠 인력거 소개
	@RequestMapping("/companyIntroduce/companyIntroduce")
	public String companyIntroduce() {
		return "companyIntroduce/companyIntroduce";
	}
	
	// 아띠 라이더 소개
		
}
