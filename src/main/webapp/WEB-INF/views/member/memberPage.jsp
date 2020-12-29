<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="./memberPage" method="post" id="frm">
		<h5 style="line-height: 0.2;"><b>기본정보</b></h5>
   <p style="text-align: right; font-size: 13px; color=#353535; line-height: 0.2; font-family: 돋움;" ><img src="../resources/images/ico_required.png"> 필수입력사항</p>
   <table border="1" class="table" style="border-color: #e8e8e8" >
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;아이디 <img src="../resources/images/ico_required.png"></td>
         <td><input type="text" class="inputTypeText" id="id" name="id" value="${member.id}" readonly="readonly" required="required">
              <div id="idResult" class="result"></div>
           </td>
      </tr>
      
      <tr id="#idResult"></tr>
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;비밀번호 <img src="../resources/images/ico_required.png"></td>
         <td><input type="password" class="inputTypeText" id="pw" name="pw"> (영문 대/소문자/숫자 중 3가지 이상 조합, 8자~16자)
             <div id="pwResult" class="result"></div>
            </td>
      </tr>
      
      <tr class="group">
         <td class="leftrow">&nbsp;&nbsp;이름 <img src="../resources/images/ico_required.png"></td>
         <td><input type="text" class="inputTypeText empty should" id="name" name="name" value="${member.name}" required="required"></td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;이메일 <img src="../resources/images/ico_required.png"></td>
         <td><input type="email"  class="inputTypeText empty should" id="email" name="email" value="${member.email}" required="required">
         		
         	
         </td>
      </tr>
 
   </table>
   <div style="text-align: center;" >   
   <input type="button" value="수정" class="btn btn-join" id="update">  
   <input type="button" value="취소" class="btn btn-cancel" id="cancel">
  
   </div>
	<div style="text-align:right; margin-top: 50px;">
	<input type="button" value="회원탈퇴" class="btn btn-cancel" id="delete">
	</div>
</form>
</div>
</body>
</html>