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

	.header_top{
		width: 100%;
		height: 50px;
		text-align: center;
		font-size: 14px;
		background-color: #072F72;
	}
	
	.haeder_inner{
		width:100%;
		float: left;
		padding-top: 15px;
	}
	
	.menu{
		display: inline-block;
		float: left;
		margin-left: 40px;
	}
	
	.menu a{
		color: white;
		text-decoration: none;
		cursor: pointer;
	}
	
	#menu1{
		margin-left: 230px;
	}
	
	#menu2{
		float: right;
	}
	
	.menu a:hover {
		color: orange;
	}
	
	.logo{
		margin-left:227px;
		height: 70px;
		width: 250px;
		background-color: yellow;
	}
	
	#header_logo{
		float:left;
		margin-top:13px;
		background-color: red;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<div class="header_top">
	<div class="haeder_inner">
		<ul class="header_inner_menu">
			<li class="menu" id="menu1">
				<a class="tab">PORTAL</a>
			</li>
			<li class="menu">
				<a>HOMEPAGE</a>
			</li>
			<li class="menu" id="menu2" style="margin-right: 50px;">
				<a>로그인 →</a>
			</li>
			<li class="menu" id="menu2">
				<a>현수빈님 환영합니다.</a>
			</li>
		</ul>
	</div>
</div>
<div>
	<div class="heder_bottom">
		<div class="logo">
			<a id="header_logo"><img src="./images/logo.png"></a>
		</div>
	</div>
</div>
</header>
</body>
</html>