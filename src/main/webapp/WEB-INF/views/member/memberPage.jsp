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
body { font-size: 62.5%; line-height: 1; padding-bottom: 65px; font-family: Arial, Tahoma, sans-serif; background: #c5bde5 url('images/bg.png'); }

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block; }
ol, ul { list-style: none; }

blockquote, q { quotes: none; }
blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
strong { font-weight: bold; } 

table { border-collapse: collapse; border-spacing: 0; }
img { border: 0; max-width: 100%; }

h1 { font-family: 'Merienda', 'Trebuchet MS', Verdana, sans-serif; font-size: 2.95em; line-height: 1.7em; margin-bottom: 20px; font-weight: bold; letter-spacing: -0.03em; color: #675d90; text-shadow: 2px 2px 0px rgba(255,255,255,0.65); text-align: center; }


#w { display: block; width: 740px; margin: 0 auto; padding-top: 45px; }


/* nav menu styles */
#nav { 
  display: block; 
  width: 280px; 
  margin: 0 auto; 
  -webkit-box-shadow: 3px 2px 3px rgba(0,0,0,0.7);
  -moz-box-shadow: 3px 2px 3px rgba(0,0,0,0.7);
  box-shadow: 3px 2px 3px rgba(0,0,0,0.7);
}

#nav li { }

#nav > li > a { 
  display: block; 
  padding: 16px 18px;
  font-size: 1.3em;
  font-weight: bold;
  color: #d4d4d4;
  text-decoration: none;
  border-bottom: 1px solid #212121;
  background-color: #343434;
  background: -webkit-gradient(linear, left top, left bottom, from(#343434), to(#292929));
  background: -webkit-linear-gradient(top, #343434, #292929);
  background: -moz-linear-gradient(top, #343434, #292929);
  background: -ms-linear-gradient(top, #343434, #292929);
  background: -o-linear-gradient(top, #343434, #292929);
  background: linear-gradient(top, #343434, #292929);
}
#nav > li > a:hover, #nav > li > a.open { 
  color: #e9e9e9;
  border-bottom-color: #384f76;
  background-color: #6985b5;
  background: -webkit-gradient(linear, left top, left bottom, from(#6985b5), to(#456397));
  background: -webkit-linear-gradient(top, #6985b5, #456397);
  background: -moz-linear-gradient(top, #6985b5, #456397);
  background: -ms-linear-gradient(top, #6985b5, #456397);
  background: -o-linear-gradient(top, #6985b5, #456397);
  background: linear-gradient(top, #6985b5, #456397);
}

#nav li ul { display: none; background: #4a5b78; }

#nav li ul li a { 
  display: block; 
  background: none;
  padding: 10px 0px;
  padding-left: 30px;
  font-size: 1.1em;
  text-decoration: none;
  font-weight: bold;
  color: #e3e7f1;
  text-shadow: 1px 1px 0px #000;
}
#nav li ul li a:hover {
  background: #394963;
}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../${pageContext.request.contextPath}/template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../${pageContext.request.contextPath}/template/header.jsp"></c:import>
<div class="container">

  <div id="w">
    <h1>CSS3/jQuery Accordion Nav Menu</h1>
    
    <nav>
      <ul id="nav">
        <li><a href="#">Animation</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=design+cartoons+animation">Cartoons</a></li>
            <li><a href="http:/www.google.com/search?q=design+comic+strips+inspiration">Comic Strips</a></li>
            <li><a href="http:/www.google.com/search?q=how+to+clip+video+footage">Video Clips</a></li>
            <li><a href="http:/www.google.com/search?q=design+create+animated+gifs">Web GIFs</a></li>
          </ul>
        </li>
        <li><a href="#">Graphic Design</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=photoshop+tutorials+graphics+design">Adobe Photoshop</a></li>
            <li><a href="http:/www.google.com/search?q=digital+branding+graphics+logos">Branding &amp; Logos</a></li>
            <li><a href="http:/www.google.com/search?q=graphics+design+marketing">Digital Marketing</a></li>
            <li><a href="http:/www.google.com/search?q=graphic+design+illustrations">Illustrations</a></li>
            <li><a href="http:/www.google.com/search?q=infographics+inspiration">Infographics</a></li>
            <li><a href="http:/www.google.com/search?q=product+design+inspiration">Product Design</a></li>
          </ul>
        </li>
        <li><a href="#">Digital Photography</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=cityscape+photography">Cityscapes</a></li>
            <li><a href="http:/www.google.com/search?q=water+ocean+photography">Oceans</a></li>
            <li><a href="http:/www.google.com/search?q=wide+angle+lens+photography">Wide-Angle Lens</a></li>
            <li><a href="http:/www.google.com/search?q=wildlife+photography">Wildlife</a></li>
          </ul>
        </li>
        <li><a href="#">Print &amp; Identity</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=branding+identity+print+design">Branding</a></li>
            <li><a href="http:/www.google.com/search?q=business+cards+design">Business Cards</a></li>
            <li><a href="http:/www.google.com/search?q=print+design+letterpress">Letterpress</a></li>
            <li><a href="http:/www.google.com/search?q=print+poster+artwork">Poster Art</a></li>
          </ul>
        </li>
        <li><a href="#">Programming</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=learn+css3+web+development">CSS3</a></li>
            <li><a href="http:/www.google.com/search?q=learn+html5+web+development">HTML5</a></li>
            <li><a href="http:/www.google.com/search?q=javascript+jquery+tutorials">JavaScript &amp; jQuery</a></li>
            <li><a href="http:/www.google.com/search?q=web+development+mysql">MySQL Databases</a></li>
            <li><a href="http:/www.google.com/search?q=wordpress+programming">Wordpress CMS</a></li>
          </ul>
        </li>
        <li><a href="#">Web Design</a>
          <ul>
            <li><a href="http:/www.google.com/search?q=web+design+icons">Icons</a></li>
            <li><a href="http:/www.google.com/search?q=web+design+tutorials">Tutorials</a></li>
            <li><a href="http:/www.google.com/search?q=web+design+user+interface">User Interfaces</a></li>
            <li><a href="http:/www.google.com/search?q=web+design">Website Layouts</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
	
	<div>
		<table>
			<tr>
				<td>아이디</td>
			</tr>
		</table>
	</div>
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