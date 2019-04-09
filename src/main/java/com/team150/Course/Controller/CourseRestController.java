package com.team150.Course.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.team150.Course.Model.FavoriteVO;
import com.team150.Course.Service.CourseService;

@RestController
public class CourseRestController {

	@Autowired
	CourseService service;
	
	// 즐겨찾기 등록 (실행)
	@PostMapping("/favoriteRegister")
	public String favoriteRegister(FavoriteVO favoriteVO) {
		
		int result = service.favoriteRegister(favoriteVO);
		
		return result == 0 ? "fail" : "success";
	}
	
	// 즐겨찾기 삭제
	@GetMapping("favoriteDelete")
	public String deleteFavorite(FavoriteVO favoriteVO) {
		
		int result = service.deleteFavorite(favoriteVO);
		
		return result == 0 ? "fail" : "success";
	}
	
}
