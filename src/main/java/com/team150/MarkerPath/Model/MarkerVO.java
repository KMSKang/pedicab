package com.team150.MarkerPath.Model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MarkerVO {
	private int mseq;
	private String mtitle;
	private String mlocation;
	private String mcontent;
	private MultipartFile imgfile;
	private String mimg;

}