<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../${pageContext.request.contextPath}/template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../${pageContext.request.contextPath}/template/header.jsp"></c:import>
<div class="container">

	<div>
		<h4>member Page</h4>
	</div>
	
	<div>
		<table>
			<tr>
				<td>아이디</td>
				<td>비밀번호</td>
				<td>이름</td>
				<td>생년월일</td>
				<td>입학일자</td>
				<td>주소1</td>
				<td>주소2</td>
				<td>주소3</td>
				<td>휴대폰</td>
				<td>이메일</td>
				<td>성별</td>
				<td>직위</td>
				<td>과정</td>
				<td>전공</td>
				<td>학년</td>
				<td>캠퍼스</td>
			</tr>
			<tr>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.id}" readonly="readonly" required="required"></td>
				<td><input type="password" class="inputTypeText" id="pw" name="pw"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.name}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.birth}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.enrollDate}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.addr1}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.addr2}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.addr3}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.phone}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.email}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.gender}" readonly="readonly" required="required"></td>
				
				<c:choose>
				<c:when test="${member.status==0}">
				<td><input type="text" class="inputTypeText" id="id" name="id" value="학생" readonly="readonly" required="required"></td>
				</c:when>
				<c:otherwise>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="교직원" readonly="readonly" required="required"></td>
				</c:otherwise>
				</c:choose>
				
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.course}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.major}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.grade}" readonly="readonly" required="required"></td>
				<td><input type="text" class="inputTypeText" id="id" name="id" value="${member.campus}" readonly="readonly" required="required"></td>
			</tr>
		</table>
	</div>
</div>

</body>
</html>