package com.project.portal.member;

import lombok.Data;

@Data
public class MemberVO {
	
	private String id;
	private String pw;
	private String name;
	public int age;
	private String email;

}
