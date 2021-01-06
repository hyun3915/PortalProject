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
	
	.container{
		width: 1140px;
		margin-bottom: 50px;
		padding-top: 20px;
	}
	
	.container_title{
		width: 1140px;
		height: 50px;
		margin-bottom: 10px;
	}
	
	.title{
		font-size: 17px;
    	font-weight: 500;
    	color: #1a1a1a;
	}
	
	.date{
		text-align: right;
	}
	
	.btn{
		margin-top: 100px;
		margin-left: 10px;
		width: 70px;
		height: 40px;
		line-height: 38px;
		color: #1a1a1a;
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
<div class="container_title">
  <h2>공지사항</h2>
</div>

<table class="table">
	<tr class="group">
		<td class="title">${vo.title}</td>
		<td class="date">${vo.regDate}</td>
	</tr>
	
	<tr class="group">
		<td colspan="2">${vo.campus}&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;${vo.department}</td>
	</tr>
	
	<tr class="group">
		<td id="contents" style="border-top: none; padding-top: 30px;">${vo.contents}</td>
	</tr>
	
</table>
	
	<button class="btn btn-default go" title="${vo.num}">☰&nbsp;목록</button>
	<button class="btn btn-default go" title="Update" style="float: right;">수정</button>
	<button class="btn btn-default go" title="Delete" style="float: right;">삭제</button>

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