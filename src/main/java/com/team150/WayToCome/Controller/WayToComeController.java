package com.team150.WayToCome.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WayToComeController {

	// 오시는 길
	@RequestMapping("/wayToCome/wayToCome")
	public String wayToCome() {
		return "/user/wayToCome/wayToCome";
	}

}
