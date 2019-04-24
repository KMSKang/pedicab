package com.team150.Member.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.team150.Member.Model.MemberVO;

public interface MemberService {

	public String loginCheck(MemberVO vo, HttpSession session);
	public void logOut(HttpSession session); 
	public List<MemberVO> listAll();
	public void insert(MemberVO vo); 
	public MemberVO viewManager(String uid);
	public MemberVO viewMember(String uid);
	public void remove_u(String uid); 
	public void remove_m(String uid);
	public void modify(MemberVO vo); 
	public boolean checkPw(String uid, String upwd);
	public int session(String uid);


}
