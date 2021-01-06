<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
		height: 750px;
		margin: 0 auto;
	}
	
	.table{
		width: 1300px;
		background-color: #fff;
		
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
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <h2 style="padding-top: 20px;">공지사항</h2>
    <table class="table table-hover">
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
  <a href="./${board}Write" class="btn btn-default" style="float: right; padding-top: 8px;">글쓰기</a>

</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>