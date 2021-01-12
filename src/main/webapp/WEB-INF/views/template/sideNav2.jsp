<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut icon" href="http://vandelaydesign.com/favicon.ico">
  <link rel="icon" href="http://vandelaydesign.com/favicon.ico">
  <link rel="stylesheet" type="text/css" href="styles.css">
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Merienda:400,700">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" charset="utf-8" src="nav.js"></script>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
		font-family: "맑은 고딕", "Nanum Gothic";
		text-decoration: none;
	}
	
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
		margin: 0;
		padding: 0;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
		outline: none;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	html { height: 101%; }


	article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block; }
	ol, ul { list-style: none; }

	blockquote, q { quotes: none; }
	blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
	strong { font-weight: bold; } 

	table { border-collapse: collapse; border-spacing: 0; }
	img { border: 0; max-width: 100%; }

	h1 { font-family: 'Merienda', 'Trebuchet MS', Verdana, sans-serif; font-size: 2.95em; line-height: 1.7em; margin-bottom: 20px; font-weight: bold; letter-spacing: -0.03em; color: #675d90; text-shadow: 2px 2px 0px rgba(255,255,255,0.65); text-align: center; }


	#w { float: left; width: 270px; padding-top: 45px; }


	/* nav menu styles */
	#nav { 
		display: block; 
		width: 270px;
		float: left;
		margin-left: 110px;
	}

	#nav li { }

	#nav > li > a { 
		display: block;
		padding: 16px 18px;
		font-size: 16px;
		font-weight: 600;
		color: #1a1a1a;
		text-decoration: none;
		border-bottom: 0.5px solid #b1b5b5;
		background-color: white;
	}
	#nav > li > a:hover, #nav > li > a.open { 
		color: #238bd7;
		border-bottom-color: #b1b5b5;
		background-color: white;
	}

	#nav li ul { display: none; background: white; }

	#nav li ul li a { 
		display: block; 
		background: none;
		padding: 10px 0px;
		padding-left: 30px;
		font-size: 14px;
		text-decoration: none;
		color: #1a1b1c;
	}
	#nav li ul li a:hover {
		color: #238bd7;
		font-size: 14px;
	}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="w">
    <nav>
      <ul id="nav">
        <li><a href="#" style="border-top: 4px solid #072F72;">개인정보<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">신상정보관리</a></li>
            <li><a href="#">학생생활정보</a></li>
            <li><a href="#">가족사항</a></li>
            <li><a href="#">학적변동내역</a></li>
          </ul>
        </li>
        <li><a href="#">수강<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">수강내역조회/출력</a></li>
            <li><a href="#">시간표조회/출력</a></li>
            <li><a href="#">시간표출력(통합강좌용)</a></li>
          </ul>
        </li>
        <li><a href="#">성적<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">강의평가</a></li>
            <li><a href="#">기이수성적조회/출력</a></li>
            <li><a href="#">당학기성적조회/출력</a></li>
          </ul>
        </li>
        <li><a href="#">등록<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">장학선발이력</a></li>
            <li><a href="#">등록금납부이력</a></li>
            <li><a href="#">등록금고지서출력</a></li>
            <li><a href="#">성적장학 신청</a></li>
            <li><a href="#">특별장학 신청</a></li>
            <li><a href="#">등록금 분납신청</a></li>
            <li><a href="#">마일리지 장학금</a></li>
          </ul>
        </li>
        <li><a href="#">학생생활상담<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">상담신청</a></li>
          </ul>
        </li>
        <li><a href="#">설문조사<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">학생설문</a></li>
            <li><a href="#">학생회비 설문조사</a></li>
          </ul>
        </li>
        <li><a href="#">졸업<img alt="" src="../images/arrow.png" width="26px" height="26px" style="float: right; cursor: pointer;"></a>
          <ul>
            <li><a href="#">졸업진단</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
<script type="text/javascript">
$(document).ready(function(){
	  $("#nav > li > a").on("click", function(e){
	    if($(this).parent().has("ul")) {
	      e.preventDefault();
	    }
	    
	    if(!$(this).hasClass("open")) {
	      // hide any open menus and remove all other classes
	      $("#nav li ul").slideUp(350);
	      $("#nav li a").removeClass("open");
	      
	      // open our new menu and add the open class
	      $(this).next("ul").slideDown(350);
	      $(this).addClass("open");
	    }
	    
	    else if($(this).hasClass("open")) {
	      $(this).removeClass("open");
	      $(this).next("ul").slideUp(350);
	    }
	  });
	});
</script>
</body>
</html>