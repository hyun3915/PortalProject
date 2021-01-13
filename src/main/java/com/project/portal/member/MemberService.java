package com.project.portal.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception{
		return memberMapper.getMemberLogin(memberVO);
	}
	
	public int setMemberUpdate(MemberVO memberVO) throws Exception{
		return memberMapper.setMemberUpdate(memberVO);
	}
	
	public int setMemberDelete(MemberVO memberVO) throws Exception{
		return memberMapper.setMemberDelete(memberVO);
	}

}
