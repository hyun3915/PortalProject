<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

	*{
		margin : 0;
		padding : 0;
	}
	
	.container{
		width: 1300px;
		height: 700px;
		margin: 0 auto;
	}
	
	.table{
		width: 1300px;
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <h2>공지사항</h2>
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
  <a href="./${board}Write" class="btn btn-default">글쓰기</a>
</div>
<c:import url="../template/footer.jsp"></c:import>
</body>
</html>