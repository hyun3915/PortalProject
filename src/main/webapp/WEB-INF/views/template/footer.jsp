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
	
	footer{
		width: 1300px;
		height: 110px;
		margin: 0 auto;
	}
	
	.ft_top{
		width:1300px;
		height:30px;
		margin: 0 auto;
		background: #303030;
	}
	
	.ft_menu li{
		margin-top: 4px;
		margin-left:57px;
		float: left;
	}
	
	.ft_menu a{
		font-size: 14px;
		color: #fff;
		text-align: center;
		cursor: pointer;
	}
	
	#border{
		color: white;
	}
	
	.ft_left{
		padding-top:20px;
		float: left;
		width: 200px;
		height: 90px;
	}
	
	.ft_center{
		width: 1000px;
		height: 90px;
		float: left;
	}
	
	#ft_center_address{
		padding-top:10px;
		margin-left: 200px;
	}
	
	#ft_center_address span{
		text-align: left;
		font-weight: 600;
		font-size: 12px;
   		color: #a7a7a7;
	}
	
	.ft_right{
		padding-top:50px;
		float: left;
		width: 100px;
		height: 90px;
	}
	
	#ft_sns{
		float: right;
		margin-right: 10px;
	}
	
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<footer>
	
	<div class="ft_top">
		<div class="ft_menu_wrap">
			<ul class="ft_menu">
				<li id="ft_menu_top">
					<a href="http://eulji.ac.kr/?menuno=4677">개인정보 처리방침</a>
				</li>
				<li id="border">|</li>
				<li>
					<a href="http://eulji.ac.kr/?menuno=3175">이메일무단수집거부</a>
				</li>
				<li id="border">|</li>
				<li>
					<a href="http://eulji.ac.kr/?menuno=5685">대학자체평가보고서</a>
				</li>
				<li id="border">|</li>
				<li>
					<a href="http://eulji.ac.kr/?menuno=3177">정보공개</a>
				</li>
				<li id="border">|</li>
				<li>
					<a href="https://www.academyinfo.go.kr/pubinfo/pubinfo1600/doInit.do?schlId=0000161">대학정보공시</a>
				</li>
				<li id="border">|</li>
				<li>
					<a href="http://eulji.ac.kr/innovation/index.html?menuno=4017">대학혁신지원사업단</a>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="ft_left">
		<div id="ft_left_logo">
			<img src="${pageContext.request.contextPath}/images/f_logo.png">
		</div>
	</div>
	
	<div class="ft_center">
		<div id="ft_center_address">
			<span>대전캠퍼스(구, 을지의과대학교) [34824] 대전광역시 중구 계룡로 771번길 77 (용두동 143-5)</span><br>
			<span>성남캠퍼스 (구, 서울보건대학) [13135] 경기도 성남시 수정구 산성대로 553 (양지동 212)</span>
		</div>
		
		<div id="ft_center_address">
			<span>Copyright © Eulji university. all rights reserved.</span>
		</div>
	</div>
	
	<div class="ft_right">
		<div id="ft_sns">
			<a><img src="${pageContext.request.contextPath}/images/sns1.gif"></a>
			<a><img src="${pageContext.request.contextPath}/images/sns2.gif"></a>
		</div>
	</div>

</footer>
</body>
</html>