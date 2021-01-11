<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">

	*{
		margin: 0;
		padding: 0;
		font-family: "맑은 고딕", "Nanum Gothic";
		text-decoration: none;
	}
	
	.container{
		width: 1300px;
		margin: 0 auto;
	}
	
	.table{
		width: 1000px;
		background-color: #fff;
		padding-left: 40px;
	}
	
	.table tr :hover{
		background-color:#E8F2FE;
	}
	
	.container h2{
		margin-bottom: 30px;
	}

	.table td{
		text-decoration: none;
	}
	
	.title{
		font-size: 1.2em;
		font-weight: 400;
		text-decoration: none;
	}
	
	.table a{
		color: black;
		text-decoration: none;
	}
	
	.table a:hover{
		color: black;
		text-decoration: none;
	}
	
	.btn{
		margin-left: 10px;
		width: 70px;
		height: 40px;
		line-height: 38px;
		color: #1a1a1a;
	}
	
	.center {
		text-align: center;
	}

	.pagination {
		display: inline-block;
	}

	.pagination a {
		color: black;
		float: left;
		padding: 8px 16px;
		text-decoration: none;
		transition: background-color .3s;
		border: 1px solid #ddd;
		margin: 0 4px;
	}
	
	.sidenav2 {
		width: 250px;
		z-index: 1;
		position: fixed;
		z-index: 1;
		top: 137px;
		left: 50px;
		overflow-x: hidden;
		padding: 8px 0;
	}

	.sidenav2 a {
		padding: 16px 5px 15px;
		border-bottom: 1px solid #ccc;
		text-decoration: none;
		font-size: 15px;
		color: #1a1a1a;;
		display: block;
	}

	.sidenav2 a:hover {
		color: #238bd7;
		text-decoration: none;
	}

	.main {
		margin-left: 140px; /* Same width as the sidebar + left position in px */
		font-size: 28px; /* Increased text to enable scrolling */
		padding: 0px 10px;
	}

	@media screen and (max-height: 450px) {
		.sidenav2 {padding-top: 15px;}
		.sidenav2 a {font-size: 18px;}
	}
	
	.sidenav2 h2{
		width: 250px;
		padding: 25px 0 0 19px;
		min-height: 110px;
		font-size: 28px;
		color: #fff;
		line-height: 30px;
		font-weight: 600;
		background: url("../images/bg_lnb_h2.gif");
	}
	
	.sidenav2 h2 span{
		display: block;
   		font-size: 13px;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<form action="./${board}List" id="frm">
<input type="hidden" name="curPage" id="curPage" value=1>

<div class="container">

<div class="sidenav2">
  <h2><span>CAMPUS LIFE</span>대학생활</h2>
  <a href="#about">대학공지</a>
  <a href="#services">구매/입찰</a>
  <a href="#clients">학생활동</a>
  <a href="#room">기숙사</a>
  <a href="#professor">교수학습지원센터</a>
  <a href="#job">취창업지원센터</a>
  <a href="#human">인권센터</a>
</div>
  <h2 style="padding-top: 20px; margin-left: 150px;">공지사항</h2>
    <table class="table table-hover" style="width: 1000px; max-width: 1000px; margin-left: 150px;">
		<c:forEach items="${list}" var="vo">
			<tr>
				<td><span class="title"><span style="font-style: italic; color: #0067b3;">[${vo.category}]&nbsp;&nbsp;&nbsp;</span>
				<a href="${board}Select?num=${vo.num}">${vo.title}</a></span>
				<p class="bottom" style="padding-top: 15px">${vo.campus}&nbsp;&nbsp;|
				&nbsp;&nbsp;${vo.department}&nbsp;&nbsp;|
				&nbsp;&nbsp;${vo.regDate}</p></td>
			</tr>
		</c:forEach>
	</table>

	<!-- Page -->
	<div class="center">
	<ul class="pagination">
		<c:if test="${pager.before}">
			<li><a href="#" class="list" title="${pager.startNum-1}">&laquo;</a></li>
		</c:if>
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<li><a href="#" class="list" title="${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${pager.after}">
			<li><a href="#" class="list" title="${pager.lastNum+1}">&raquo;</a></li>
		</c:if>
	</ul>
	</div>

	<a href="./${board}Write" class="btn btn-default" style="float: right; padding-top: 8px;">글쓰기</a>

</div>
	</form>
<c:import url="../template/footer.jsp"></c:import>

<script type="text/javascript">
$(".list").click(function(){
	var curPage = $(this).attr("title");
	$("#curPage").val(curPage);
	$("#frm").submit();
});
</script>
</body>
</html>