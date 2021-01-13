<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

	*{
		margin: 0;
		padding: 0;
		font-family: "맑은 고딕", "Nanum Gothic";
		text-decoration: none;
	}

	.container{
		width: 1300px;
		height: 700px;
		margin: 0 auto;
		display: block;
	}
	
	.main_table{
		width: 900px;
		height: 385px;
		float: right;
		margin-top: 25px;
		margin-left: 40px;
	}
	
	.table_tr{
		height: 60px;
	}
	
	.table_tr .index{
		background-color: #EFF2F7;
		width: 70px;
		font-size: 13px;
		font-weight: 600;
		color: #5A5752;
	}
	
	.main_table td{
		border-bottom: 1px solid #DFE6EE;
		width: 110px;
		height: 77px;
		padding-top: 30px;
		padding-left: 10px;
		font-size: 13px;
		font-weight: 500;
		color: #5A5752;
		margin-top: 20px;
	}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../${pageContext.request.contextPath}/template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../${pageContext.request.contextPath}/template/header.jsp"></c:import>
<c:import url="../template/sideNav2.jsp"></c:import>
<div class="container">
<h2 style="padding-top: 30px; margin-left: 240px; font-weight: 600; font-size: 30px;font-family: inherit; color: inherit;">개인정보</h2>
		<table class="main_table">
			<tr class="table_tr" style="border-top: 3px solid #072F72;">
				<td class="index">아이디</td><td>${member.id}</td>
				<td class="index">전화번호</td><td>${member.phone}</td>
				<td class="index">이메일</td><td>${member.email}</td>
			</tr>
			<tr class="table_tr">
				<td class="index">학번</td><td>${member.codeNum}</td>
				<td class="index">성명</td><td>${member.name}</td>
				<td class="index">생년월일</td><td>${member.birth}</td>
			</tr>
			<tr class="table_tr">
				<td class="index">대학(원)</td><td>${member.campus}캠퍼스</td>
				<td class="index">조직/과정</td><td>${member.course}</td>
				<td class="index">전공</td><td>${member.major}학과</td>
			</tr>
			<tr class="table_tr">
				<td class="index">학년(이수학기)</td><td>본교&nbsp;${member.grade}학년</td>
				<td class="index">입학일자</td><td>${member.enrollDate}</td>
				<td class="index">성별</td><td>${member.gender}</td>				
			</tr>
			<tr class="table_tr">
				
				<td class="index">주소</td><td colspan="5" id="address"></td>
				
			</tr>
		</table>
		
</div>
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
	document.getElementById('address').innerText='${member.addr1}${member.addr2}${member.addr3}';
</script>
</body>
</html>