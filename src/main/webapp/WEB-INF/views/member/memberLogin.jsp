<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	*{
		font-family: NS;
		margin: 0;
		padding: 0;
	}
	
	.container{
		width: 1300px;
		height: 700px;
		margin: 0 auto;
		padding-bottom: 95px;
	}

	.container_1{
		width: 600px;
		height: 530px;
		background-color: #fff;
		border:2px #ebf2fc solid;
		margin-top: 150px;
		margin-bottom: 190px;
		float:left;
	}
	
	.container_2{
		display: inline-block;
		width: 650px;
		height: 600px;
		background-color: #094b9f;
		margin-top: 100px;
		margin-bottom: 190px;
	}
	
	.login{
		width: 450px;
		height: 460px;
		margin-left: 75px;
		margin-top: 30px;
	}
	
	.login h2{
		width: 450px;
		height: 80px;
	}
	
	.login span{
		margin-left:30px;
		height: 85px;
		display: inline-block;
		vertical-align: middle;
		font-size: 16px;
		color: #222;
		font-weight: 400;
	}
	
	.login span b{
		font-weight: 500;
		font-size: 18px;
		color: #094b9f;
	}
	
	.login_input{
		float: left;
		margin-top: 10px;
	}
	
	.login_input input{
		width: 450px;
		height: 38px;
	}
	
	#id{
		margin-bottom: 10px;
	}
	
	.login_ex{
		float: left;
		text-align: left;
		width: 450px;
		height:60px;
	}
	
	.login_ex span{
		color: #ff4c4c;
		padding-top: 10px;
		margin:0px;
		width: 450px;
		height:60px;
		text-align: left;
		font-size: 14px;
	}
	
	.btn{
		border: none;
		width:450px;
		height: 50px;
		margin-top: 10px;
		text-align: center;
		font-size: 18px;
		color: #fff;
		background: #0067b3;
		cursor: pointer;
	}
	
	.login_notice{
		width: 450px;
		height: 110px;
		margin-top: 45px;
		float: left;
	}
	
	.login_notice span{
		margin-left:0px;
		font-size: 13px;
		width: 450px;
		height: 30px;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	  <form action="./memberLogin" method="post">
		<div class="container_1">
			<div class="login">
				<h2>
				<img alt="" src="../images/logo_1.png" width="190px" height="60px">
				<span>을지대학교 <b>포털시스템</b>에<br>오신 것을 환영합니다.</span>
				</h2>
				
				<div class="login_input">
					<input type="text" id="id" name="id" title="아이디 또는 학번" placeholder="학번(교번) (ID No.)">
					<input type="password" id="pw" name="pw" title="비밀번호" placeholder="비밀번호 (Password)">
				</div>
				
				<div class="login_ex">
					<span>원하는 서비스를 이용하시려면 로그인이 필요합니다.<br>Login is required for the service you want.</span>
				</div>
				
				<div>
					<button type="submit" class="btn">로그인(Login)</button>
				</div>
				
				<div class="login_notice">
					<span>●&nbsp;&nbsp;최초 로그인시 팝업차단 설정을 해제 후 사용하시기 바랍니다.</span>
					<span>●&nbsp;&nbsp;도구 → 팝업차단 → 팝업차단 사용안함</span>
					<span>●&nbsp;&nbsp;패스워드는 8~15자 사이의 영문, 숫자, 특수문자의 조합만 가능합니다.</span>
					<span>●&nbsp;&nbsp;패스워드는 3개월마다 갱신할 것을 권고합니다.</span>
				</div>
			</div>
		</div>
		</form>
		<div class="container_2">
		</div>
	</div>
</body>
</html>