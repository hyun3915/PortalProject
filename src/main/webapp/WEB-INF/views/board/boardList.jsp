<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <h3>Board List Page V1</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
 	<form action="./${board}List" id="frm">
 	</form>
    <table class="table table-hover">
	  		<tr>
	  			<td>Num</td>
		  		<td>Title</td>
		  		<td>Writer</td>
		  		<td>Date</td>
	  		</tr>
	  		
	  		<c:forEach items="${list}" var="vo">
	  			<tr>
	  				<td>${vo.num}</td>
	  				<td><a href="${board}Select?num=${vo.num}">${vo.title}</a></td>
	  				<td>${vo.writer}</td>
	  				<td>${vo.regDate}</td>
	  			</tr>
	  		</c:forEach>
	  		
	  	</table>
  
</div>
</body>
</html>