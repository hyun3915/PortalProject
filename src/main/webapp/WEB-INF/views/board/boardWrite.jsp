<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

</head>
<body>

<c:import url="../template/header.jsp"></c:import>
<div class="container">
  <form id="frm" action="./noticeWrite" method="post" enctype="multipart/form-data">
  
  <table>
  	<tr class="group">
  		<td>카테고리</td>
  		<td><select id="category" name="category" style="width:395px;">
               <option value="일반">일반</option>
               <option value="공지">공지</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td>캠퍼스</td>
  		<td><select id="campus" name="campus" style="width:395px;">
               <option value="성남">성남</option>
               <option value="대전">대전</option>
               <option value="공통">공통</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td>부서</td>
  		<td>
  			<select id="department" name="department" class="inputTypeText">
				<option value="기획조정팀">기획조정팀</option>
				<option value="교무처 학사지원팀">교무처 학사지원팀</option>
				<option value="교육지원팀">교육지원팀</option>
				<option value="대외협력팀">대외협력팀</option>
				<option value="시설팀">시설팀</option>
				<option value="입학관리팀">입학관리팀</option>
				<option value="취창업지원센터">취창업지원센터</option>
				<option value="총무팀">총무팀</option>
				<option value="학생생활상담실">학생생활상담실</option>
				<option value="학생지원팀">학생지원팀</option>
				<option value="EU-컨버전스센터">EU-컨버전스센터</option>
				<option value="기타">기타</option>
			</select>
  		</td>
  	</tr>
  	
  	<tr class="group" style="height: 70px;">
  		<td>제목</td>
  		<td><input type="text" class="inputTypeText" id="title" name="title" required="required"></td>
  	</tr>
  	
  	<tr class="group">
  		<td>
  		<textarea class="form-control" rows="5" id="contents" name ="contents"></textarea>
  		</td>
  	</tr>
  	
  </table>

	<div style="text-align: right;" >
		<input type="button" class="btn btn-write" id="write" value="작성">
		<input type="button" value="취소" class="btn btn-cancel" id="cancel">
	</div>
 </form>
</div>

<script type="text/javascript">
$('#contents').summernote({
	height:300,	
});

$("#write").click(function() {
	$("#frm").submit();
});

$("#cancel").click(function() {
	location.href="./noticeList";
});
</script>
</body>
</html>