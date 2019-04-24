package com.team150.Member.Model;

import java.util.List;

public interface MemberDAO {

	public String loginCheck(MemberVO vo);
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
