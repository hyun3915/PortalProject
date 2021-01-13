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

	.container{
		width: 1300px;
		height: 700px;
		margin: 0 auto;
		display: block;
	}
	
	.main_table{
		width: 900px;
		height: 385px;
		float: right;
		margin-top: 25px;
		margin-left: 40px;
	}
	
	.table_tr{
		height: 60px;
	}
	
	.table_tr .index{
		background-color: #EFF2F7;
		width: 70px;
		font-size: 13px;
		font-weight: 600;
		color: #5A5752;
	}
	
	.main_table td{
		border-bottom: 1px solid #DFE6EE;
		width: 110px;
		height: 77px;
		padding-top: 30px;
		padding-left: 10px;
		font-size: 13px;
		font-weight: 500;
		color: #5A5752;
		margin-top: 20px;
	}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../${pageContext.request.contextPath}/template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../${pageContext.request.contextPath}/template/header.jsp"></c:import>
<c:import url="../template/sideNav2.jsp"></c:import>
<div class="container">
<h2 style="padding-top: 30px; margin-left: 240px; font-weight: 600; font-size: 30px;font-family: inherit; color: inherit;">개인정보</h2>
		<table class="main_table">
			<tr class="table_tr" style="border-top: 3px solid #072F72;">
				<td class="index">아이디</td><td>${member.id}</td>
				<td class="index">전화번호</td><td><input style="width:180px;" type="text" class="inputTypeText" id="phone" name="phone" value="${member.phone}" required="required"></td>
				<td class="index">이메일</td><td><input style="width:180px;" type="text" class="inputTypeText" id="email" name="email" value="${member.email}" required="required"> </td>
			</tr>
			<tr class="table_tr">
				<td class="index">학번</td><td>${member.codeNum}</td>
				<td class="index">성명</td><td>${member.name}</td>
				<td class="index">생년월일</td><td>${member.birth}</td>
			</tr>
			<tr class="table_tr">
				<td class="index">대학(원)</td><td>${member.campus}캠퍼스</td>
				<td class="index">조직/과정</td><td>${member.course}</td>
				<td class="index">전공</td><td>${member.major}학과</td>
			</tr>
			<tr class="table_tr">
				<td class="index">학년(이수학기)</td><td>본교&nbsp;${member.grade}학년</td>
				<td class="index">입학일자</td><td>${member.enrollDate}</td>
				<td class="index">성별</td><td>${member.gender}</td>				
			</tr>
			<tr class="table_tr">
				<td class="index">주소</td><td colspan="5" id="address"></td>
				<td  class="leftrow">주소</td>
         		<td>
            		<input class="form-control"name="addr1" id="addr1" type="text" value="${member.addr1}">
              		<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
         
            		<input class="form-control" name="addr2" id="addr2" type="text" value="${member.addr2}"/>

            		<input class="form-control" name="addr3" id="addr3" type="text" value="${member.addr3}"/>
         		</td>
			</tr>
		</table>
		
</div>
<c:import url="../template/footer.jsp"></c:import>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}
</script>
</body>
</html>