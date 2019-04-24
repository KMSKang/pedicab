package com.team150;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team150.Course.Service.CourseService;
import com.team150.Member.Service.MemberService;
import com.team150.Reserve.Service.ReserveService;

@Controller
public class HomeController {

	@Inject
	MemberService mService;

	@Inject
	ReserveService rService;

	@Inject
	CourseService cService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/managerhome", method = RequestMethod.GET)
	public String managerhome(Model model) throws Exception {
		Map<String, Integer> map = new HashMap<>();
		map.put("members", mService.count());
		map.put("purchased", rService.countPurchase());
		map.put("order", rService.countOrder());
		map.put("cources", cService.count());

		model.addAllAttributes(map);

		return "managerhome";
	}
	
	
}