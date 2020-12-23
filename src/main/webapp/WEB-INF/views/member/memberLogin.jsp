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
	}
	
	.container{
		width: 1300px;
		height: 700px;
		margin: 0 auto;
		background-color: black;
		padding-bottom: 95px;
	}

	.container_1{
		width: 500px;
		height: 400px;
		background-color: lime;
		margin-top: 150px;
		margin-bottom: 190px;
		float:left;
	}
	
	.container_2{
	display: inline-block;
		width: 800px;
		height: 500px;
		background-color: red;
		margin-top: 100px;
		margin-bottom: 190px;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="container_1">
			<h1>hello</h1>
		</div>
		<div class="container_2">
			<h1>world</h1>
		</div>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>