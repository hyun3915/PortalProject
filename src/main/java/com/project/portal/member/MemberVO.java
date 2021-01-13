package com.project.portal.member;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private String id;
	private String pw;
	private String name;
	private String birth;
	private Date enrollDate;
	private String addr1;
	private String addr2;
	private String addr3;
	private String phone;
	private String email;
	private String gender;
	private String status;
	private String course;
	private String major;
	private String grade;
	private String campus;
	private long codeNum;

}
