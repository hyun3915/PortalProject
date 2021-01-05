<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<div class="search_title">
  <h2>문의게시판</h2>
</div>

<table class="table">
	<tr class="group">
		<td>${vo.title}</td>
		<td>${vo.regDate}</td>
	</tr>
	
	<tr class="group">
		<td>${vo.campus}&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;${vo.department}</td>
	</tr>
	
	<tr class="group">
		<td id="contents">${vo.contents}</td>
	</tr>
	
</table>

  <input type="button" title="${vo.num}" value="목록" class="btn btn-list" id="list">

</div>
<c:import url="../template/footer.jsp"></c:import>

<script type="text/javascript">

   $("#list").click(function() {
	   location.href="./qnaList";
   });
   
</script>

</body>
</html>