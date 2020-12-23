<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	*{
		font-family: NanumGothic;
   		margin: 0;
   		padding: 0;
	}
	
	.body_top{
		background: url("./images/top_banner_bg.gif");
	}
	
	.top_service{
		width: 1300px;
		height: 50px;
		margin: 0 auto;
		background: url("./images/top_banner_1.png");
	}
	
	#essential_service{
		display: inline-block;
		margin-left: 550px;
		color: #fff;
		font-weight: 600;
		width: 200px;
		height: 50px;
		font-size: 16px;
		text-align: center;
		padding-top: 17px;
	}
	
	.top_banner{
		width: 1300px;
		height: 150px;
	}
	
	.common{
		float: left;
		text-align: center;
		padding-top: 23px;
		border-left: 1px solid #E1E1E1;
		border-bottom: 1px solid #E1E1E1;
	}
	
	.common a{
		text-decoration: none;
		color: #555;
		font-weight: 500;
	}
	
	.common:hover{
		background-color: #8BA1CB;
	}
	
	.common:hover a{
		color: #fff;
	}
	
	.top_banner_1{
		width: 216px;
		height: 150px;
	}
	
	.top_banner_2{
		width: 216px;
		height: 150px;
	}
	
	.top_banner_3{
		width: 216px;
		height: 150px;
	}
	
	.top_banner_4{
		width: 216px;
		height: 150px;
	}
	
	.top_banner_5{
		width: 216px;
		height: 150px;
	}
	
	.top_banner_6{
		width: 220px;
		height: 150px;
		border-right: 1px solid #E1E1E1;
	}
	
	#icon{
		padding-bottom: 15px;
	}
	
	.middle_service{
		width: 649px;
		height: 50px;
		float: left;
		background: url("./images/mid_banner.png");
	}
	
	.middle_service2{
		width: 651px;
		height: 50px;
		float: left;
		background: url("./images/mid_banner2.png");
	}
	
	#service{
		display: inline-block;
		margin-left: 280px;
		color: #fff;
		font-weight: 600;
		width: 100px;
		height: 50px;
		font-size: 16px;
		text-align: center;
		padding-top: 10px;
	}
	
	.middle_banner{
		width: 1300px;
		height: 350px;
	}
	
	.table{
		padding:0px;
		width:1300px;
		height: 60px;
		margin: 0px;
		border-left: 1px solid #E1E1E1;
		border-bottom: 1px solid #E1E1E1;
	}
	
	.table span{
		text-decoration:none;
		cursor: pointer;
		color: #555;
		font-size: 16px;
		font-weight: 500;
		text-align: center;
		float: left;
		height: 70px;
		width: 100%;
		margin: 0 auto;
		padding-top: 19px;
	}
	
	.table span:hover{
		background-color: #E1E1E1;
	}
	
	.middle_banner_1{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_2{
		width: 324.5px;
		float: left;
		height: 60px;
	}
	
	.middle_banner_3{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_4{
		width: 326.5px;
		float: left;
		height: 60px;
		border-right: 1px solid #E1E1E1;
	}
	
	.middle_banner_5{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_6{
		width: 324.5px;
		float: left;
		height: 60px;
	}
	
	.middle_banner_7{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_8{
		width: 326.5px;
		float: left;
		height: 60px;
		border-right: 1px solid #E1E1E1;
	}
	
	.middle_banner_9{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_10{
		width: 324.5px;
		float: left;
		height: 60px;
	}
	
	.middle_banner_11{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_12{
		width: 326.5px;
		float: left;
		height: 60px;
		border-right: 1px solid #E1E1E1;
	}
	
	.middle_banner_13{
		width: 324.5px;
		height: 60px;
		float: left;
	}
	
	.middle_banner_14{
		width: 975.5px;
		float: left;
		height: 60px;
		border-right: 1px solid #E1E1E1;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main_body">
		<div class="body_top">
			<div class="top_service">
				<span id="essential_service">주요학사 서비스</span>
			</div>
		</div>
		<div class="top_banner">
			<div class="common top_banner_1"><a href="#">
				<img id="icon" src="./images/knowledge1.png" style="width: 50px; height: 60px;"><br>
				<span id="management">학사관리<br>(등록금 납부)</span></a>
			</div>
			<div class="common top_banner_2"><a href="#">
				<img id="icon" src="./images/research.png" style="width: 50px; height: 60px;"><br>
				<span id="management">학부/대학원<br>수강편람조회</span></a>
			</div>
			<div class="common top_banner_3"><a href="#">
				<img id="icon" src="./images/pc1.png" style="width: 50px; height: 60px;"><br>
				<span id="management">학부<br>수강신청</span></a>
			</div>
			<div class="common top_banner_4"><a href="#">
				<img id="icon" src="./images/pc1.png" style="width: 50px; height: 60px;"><br>
				<span id="management">대학원<br>수강신청</span></a>
			</div>
			<div class="common top_banner_5"><a href="#">
				<img id="icon" src="./images/chart.png" style="width: 50px; height: 60px;"><br>
				<span id="management">학부/대학원<br>성적평가 조회</span></a>
			</div>
			<div class="common top_banner_6"><a href="#">
				<img id="icon" src="./images/knowledge1.png" style="width: 50px; height: 60px;"><br>
				<span id="management">학부모<br>서비스</span></a>
			</div>
		</div>
		
		<div class="body_middle">
			<div class="middle_service">
				<span id="service">IT 학사서비스</span>
			</div>
			<div class="middle_service2">
				<span id="service">관련사이트</span>
			</div>
		</div>
		
		<div class="middle_banner">	
			<div class="table middle_banner_1">
				<a href="#"><span>인터넷 증명서</span></a>
			</div>
			<div class="table middle_banner_2">
				<a href="#"><span>웹메일</span></a>
			</div>
			<div class="table middle_banner_3">
				<a href="#"><span>을지대학교</span></a>
			</div>
			<div class="table middle_banner_4">
				<a href="#"><span>을지의료원</span></a>
			</div>
			<div class="table middle_banner_5">
           		 <a href="#"><span>공간대관시스템</span></a>
			</div>
			<div class="table middle_banner_6">
				<a href="#"><span>IT 서비스</span></a>
			</div>
			<div class="table middle_banner_7">
				<a href="#"><span>을지동문회</span></a>
			</div>
			<div class="table middle_banner_8">
				<a href="#"><span style="padding-top: 9px">통합연구<br>정보시스템</span></a>
			</div>
			<div class="table middle_banner_9">
				<a href="#"><span style="padding-top: 9px">대전캠퍼스<br>셔틀버스예약</span></a>
			</div>
			<div class="table middle_banner_10">
				<a href="#"><span>모바일 학사서비스</span></a>
			</div>
			<div class="table middle_banner_11">
				<a href="#"><span style="padding-top: 9px">비대면 | 온라인<br>강의설문조사</span></a>
			</div>
			<div class="table middle_banner_12">
			</div>
			<div class="table middle_banner_13">
				<a href="#"><span>전자출석부</span></a>
			</div>
			<div class="table middle_banner_14">
			</div>
		</div>
	
	</div>
</body>
</html>