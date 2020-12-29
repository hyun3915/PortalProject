<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	*{
		font-family: NanumGothic;
		text-decoration: none;
    	list-style-type: none;
   		margin: 0;
   		padding: 0;
	}
	
	header{
		height: 120px;
		margin: 0 auto;
	}
	
   .fixed{
      position: fixed;
      top: 0;
   }
   
   	.header_background{
		background-color: #072F72;
	}
	
	.header_top{
		margin: 0 auto;
		width: 1300px;
		height: 50px;
		text-align: center;
		font-size: 14px;
	}
	
	.header_inner{
		background-color: #072F72;
		height: 50px;
		width:1300px;
		float: left;
		padding-top: 15px;
	}
	
	.menu{
		display: inline-block;
		float: left;
		margin-right: 13px;
	}
	
	.menu a{
		color: white;
		text-decoration: none;
		cursor: pointer;
	}
	
	#menu2{
		float: right;
		margin-left: 5px;
	}
	
	.menu a:hover {
		color: orange;
	}
	
	.header_bottom{
		margin: 0 auto;
		width: 1300px;
		height: 70px;
	}
	
	.logo{
		float: left;
		height: 70px;
		width: 250px;
	}
	
	#header_logo{
		float:left;
		margin-top:13px;
	}
	
	.nav_menu{
		float: right;
		margin-right: 10px;
	}
	
	.nav_menu li{
		margin-right:5px;
		text-align: right;
		float: left;
		width: 130px;
		height: 70px;
	}
	
	.nav_sub a{
		
		line-height: 70px;
		text-decoration: none;
		color: #202020;
		font-weight: 600;
		font-size: 17px;
   		text-align: center;
		cursor: pointer;
	}

	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<div class="header_background">
<div class="header_top">
	<div class="header_inner">
		<ul class="header_inner_menu">
			<li class="menu" id="menu1">
				<a class="tab" href="${pageContext.request.contextPath}/">PORTAL</a>
			</li>
			<li class="menu">
				<a href="${pageContext.request.contextPath}/">HOMEPAGE</a>
			</li>
			<c:choose>
       	 	<c:when test="${not empty member}">
       		 <!-- 로그인상태 -->
       		  <li class="menu" id="menu2"><a href="${pageContext.request.contextPath}/member/memberLogin"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;로그아웃</a></li>
      	 	  <li class="menu" id="menu2"><a href="${pageContext.request.contextPath}/member/memberPage"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;${member.name}
      	 	  	<c:choose>
				<c:when test="${member.status==0}">(학생)</c:when>
				<c:otherwise>(교직원)</c:otherwise>
				</c:choose>
      	 	  님 환영합니다.</a></li>
       		</c:when>
       		
       		<c:otherwise>
      	 	 <!-- 로그아웃상태 -->
      	  	  <li class="menu" id="menu2"><a href="${pageContext.request.contextPath}/member/memberJoin"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     	  	  <li class="menu" id="menu2"><a href="${pageContext.request.contextPath}/member/memberLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     	 	</c:otherwise>
     	 </c:choose>
		</ul>
	</div>
</div>
</div>
<div class="header_bottom">
	<div>
		<div class="logo">
			<a id="header_logo"><img src="./images/logo.png"></a>
		</div>
		<div class="nav_menu">
			<ul class="nav_sub">
				<li class="nav_sub01">
					<a>통합정보</a>
				</li>
				<li class="nav_sub02">
					<a>이러닝</a>
				</li>
				<li class="nav_sub03">
					<a>게시판</a>
				</li>
				
			</ul>
		</div>
	</div>
</div>
</header>
</body>
</html>