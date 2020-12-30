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
	
	.container {
		min-width:1300px;
		height: 930px;
		margin: 0 auto;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="./${pageContext.request.contextPath}/template/header.jsp"></c:import>

<div class="container" style="padding: 0px;">
	<c:import url="./template/slide.jsp"></c:import>
	<c:import url="./template/body.jsp"></c:import>
  
</div>
<c:import url="./template/footer.jsp"></c:import>
</body>
</html>