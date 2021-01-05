<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:import url="../template/bootStrap.jsp"></c:import>
<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		
	<form action="./noticeUpdate" method="post" enctype="multipart/form-data">
		    
	<table>
  	<tr class="group">
  		<td>카테고리</td>
  		<td><select id="category" name="category" value="${vo.category}" style="width:395px;" onchange="">
               <option value="일반" ${vo.category == '일반' ? 'selected="selected"' : '' }>일반</option>
               <option value="공지" ${vo.category == '공지' ? 'selected="selected"' : '' }>공지</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td>캠퍼스</td>
  		<td><select id="campus" name="campus" value="${vo.campus}" style="width:395px;" onchange="">
               <option value="성남" ${vo.campus == '성남' ? 'selected="selected"' : '' }>성남</option>
               <option value="대전" ${vo.campus == '대전' ? 'selected="selected"' : '' }>대전</option>
               <option value="공통" ${vo.campus == '공통' ? 'selected="selected"' : '' }>공통</option>
            </select>
		</td>
  	</tr>
  	
  	<tr class="group">
  		<td>부서</td>
  		<td>
  			<select id="department" name="department" class="inputTypeText" onchange="">
				<option value="기획조정팀" ${vo.department == '기획조정팀' ? 'selected="selected"' : '' }>기획조정팀</option>
				<option value="교무처 학사지원팀" ${vo.department == '교무처 학사지원팀' ? 'selected="selected"' : '' }>교무처 학사지원팀</option>
				<option value="교육지원팀" ${vo.department == '교육지원팀' ? 'selected="selected"' : '' }>교육지원팀</option>
				<option value="대외협력팀" ${vo.department == '대외협력팀' ? 'selected="selected"' : '' }>대외협력팀</option>
				<option value="시설팀" ${vo.department == '시설팀' ? 'selected="selected"' : '' }>시설팀</option>
				<option value="입학관리팀" ${vo.department == '입학관리팀' ? 'selected="selected"' : '' }>입학관리팀</option>
				<option value="취창업지원센터" ${vo.department == '취창업지원센터' ? 'selected="selected"' : '' }>취창업지원센터</option>
				<option value="총무팀" ${vo.department == '총무팀' ? 'selected="selected"' : '' }>총무팀</option>
				<option value="학생생활상담실" ${vo.department == '학생생활상담실' ? 'selected="selected"' : '' }>학생생활상담실</option>
				<option value="학생지원팀" ${vo.department == '학생지원팀' ? 'selected="selected"' : '' }>학생지원팀</option>
				<option value="EU-컨버전스센터" ${vo.department == 'EU-컨버전스센터' ? 'selected="selected"' : '' }>EU-컨버전스센터</option>
				<option value="기타" ${vo.department == '기타' ? 'selected="selected"' : '' }>기타</option>
			</select>
  		</td>
  	</tr>
  	
  	<tr class="group" style="height: 70px;">
  		<td>제목</td>
  		<td><input type="text" class="inputTypeText" value="${vo.title}" id="title" name="title" required="required"></td>
  	</tr>
  	
  	<tr class="group">
  		<td colspan="2">
  		<label for="contents">Contents:</label>
  		<textarea class="form-control" id="contents" name ="contents">${vo.contents}</textarea>
  		</td>
  	</tr>
  	
  </table>
		    
		    <input type="hidden" id="num" name="num" value="${vo.num}">
			<input type="button" id="exit" class="btn btn-default" value="취소">
			<button type="submit" class="btn btn-info">수정</button>
	  	</form>
	  
	</div>
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">

	$('#contents').summernote({
		width: 1140,
	    height: 300
	});
	
	$('#contents').summernote('code','${vo.contents}');

	$("#exit").click(function(){
		location.href="./noticeList";
	});
	
</script>

</body>
</html>