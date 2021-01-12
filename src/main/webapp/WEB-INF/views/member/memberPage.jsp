<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	.container{
		width: 1300px;
		margin: 0 auto;
		float: left;
	}
	
	.main_table{
		width: 1000px;
		height: 400px;
		float: right;
		margin-top: 45px;
		background-color: yellow;
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
				<td>myPage</td>
			</tr>
		</table>
		
</div>
</body>
</html>