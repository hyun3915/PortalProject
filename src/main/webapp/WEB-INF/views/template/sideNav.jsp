<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
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
</head>
<body>
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
</body>
</html>