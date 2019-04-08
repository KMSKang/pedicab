package com.team150.Member.Model;

import java.util.List;

public interface MemberDAO {

	public String loginCheck(MemberVO vo);
	public List<MemberVO> listAll();
	public void insert(MemberVO vo);
	public MemberVO view(String uid);
	public void remove(String uid);
	public void modify(MemberVO vo);
	public boolean checkPw(String uid, String upwd);
	public int session(String uid);

}
