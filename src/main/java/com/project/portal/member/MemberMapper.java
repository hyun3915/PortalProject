package com.project.portal.member;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MemberMapper {
	
	public MemberVO getMemberLogin(MemberVO memberVO) throws Exception;

}
