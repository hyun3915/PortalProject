<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		height: 850px;
		margin: 0 auto;
	}
	
	.container h2{
		margin-bottom: 30px;
	}

	.buttons {
		margin-left: 10px;
		width: 70px;
		height: 40px;
		line-height: 38px;
		color: #1a1a1a;
	}

	.inputTypeText{
		width: 700px;
		height: 30px;
	}
	
	table{
		margin-top: 40px;
   		width: 1140px;
	}
	
	.select{
		width: 300px;
		height: 30px;
		margin-bottom: 10px;
	}

</style>
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

<div class="container_title">
  <h2>공지사항</h2>
</div>

  <table>
  	<tr class="group">
  		<td id="td1">카테고리</td>
  		<td><select class="select" id="category" name="category">
               <option value="일반">일반</option>
               <option value="공지">공지</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td id="td1">캠퍼스</td>
  		<td><select class="select" id="campus" name="campus">
               <option value="성남">성남</option>
               <option value="대전">대전</option>
               <option value="공통">공통</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td id="td1">부서</td>
  		<td>
  			<select class="select" id="department" name="department" class="inputTypeText">
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
  	
  	<tr class="group">
  		<td id="td1" style="padding-bottom: 20px;">제목</td>
  		<td id="td2" style="padding-bottom: 30px;"><input style="padding-left: 5px;" type="text" class="inputTypeText" id="title" name="title" required="required"></td>
  	</tr>
  	
  	<tr class="group" >
  		<td colspan="2">
  			<label for="contents">Contents:</label>
  			<textarea class="form-control" id="contents" name ="contents"></textarea>
  		</td>
  	</tr>
  	
  	
  </table>
  	
	<div style="text-align: right; margin-bottom: 50px;" >
		<input type="button" class="buttons btn btn-default" id="write" value="작성">
		<input type="button" value="취소" class="buttons btn btn-default" id="cancel">
	</div>
 </form>
</div>
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
$('#contents').summernote({
	width:1140,
	height:400,	
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