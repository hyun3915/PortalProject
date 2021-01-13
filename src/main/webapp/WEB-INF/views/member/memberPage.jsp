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
		height: 400px;
		float: right;
		margin-top: 45px;
		margin-left: 40px;
		background-color: yellow;
		border: 1px solid black;
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

		<table class="main_table">
			<tr>
				<td>아이디</td><td>${member.id}</td>
				<td colspan="3">비밀번호</td><td>${member.pw}</td>
			</tr>
			<tr>
				<td>학번</td><td>${member.codeNum}</td>
				<td>성명</td><td>${member.name}</td>
				<td>생년월일</td><td>${member.birth}</td>
			</tr>
			<tr>
				<td>대학(원)</td><td>${member.campus}캠퍼스</td>
				<td>조직/과정</td><td>${member.course}</td>
				<td>전공</td><td>${member.major}학과</td>
			</tr>
			<tr>
				<td>학년(이수학기)</td><td>본교&nbsp;${member.grade}학년</td>
				<td>입학일자</td><td>${member.enrollDate}</td>
				<td>성별</td><td>${member.gender}</td>				
			</tr>
			<tr>
				<td>전화번호</td><td>${member.phone}</td>
				<td>주소</td><td id="address"></td>
				<td>이메일</td><td>${member.email}</td>
			</tr>
		</table>
		
</div>
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
	
</script>
</body>
</html>