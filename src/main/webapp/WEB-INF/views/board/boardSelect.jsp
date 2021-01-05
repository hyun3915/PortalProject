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
	
	table{
   		width: 1140px;
		line-height: 180%;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<form action="" id="frm">
		<input type="hidden" value="${vo.num}" name="num">
	</form>
<div class="search_title">
  <h2>공지게시판</h2>
</div>

<table class="table">
	<tr class="group">
		<td>${vo.title}</td>
		<td>${vo.regDate}</td>
	</tr>
	
	<tr class="group">
		<td colspan="2">${vo.campus}&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;${vo.department}</td>
	</tr>
	
	<tr class="group">
		<td id="contents">${vo.contents}</td>
	</tr>
	
</table>

	<input type="button" title="${vo.num}" value="목록" class="btn btn-list" id="list">
	
	<button class="btn btn-list go" title="Update">수정</button>
	<button class="btn btn-list go" title="Delete">삭제</button>

</div>
<c:import url="../template/footer.jsp"></c:import>

<script type="text/javascript">

   $("#list").click(function() {
	   location.href="./noticeList";
   });

   $(".go").click(function(){
		var board = '${board}';
		var t = $(this).attr("title");

		$("#frm").attr("action", board+t);

		if(t=='Delete') {
			$("#frm").attr("method","get");
		}

		$("#frm").submit();
	});
   
</script>

</body>
</html>