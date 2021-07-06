<%@page import="project.MasterDAO"%>
<%@page import="project.MasterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../fullpage/style1.css" />
<link rel="stylesheet" href="../fullpage/board.css" />
<script src="https://kit.fontawesome.com/f995c83b9d.js" crossorigin="anonymous"></script>
<style>
	.matzip{
	    padding-top: 200px;
	    margin-bottom: 208px;
	}
	
</style>
</head>
<body>
<header>
<nav class="navbar">
   
      
      <div class="navbar_logo">
       <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey2.jpg" alt="" /></a>
      </div>
      <b6>배고픈 원숭이</b6>      
      <ul class="navbar_menu">
      <li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarantStory.jsp">맛집스토리</a></li>
      <li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
      <li><a href="../fullpage/together.jsp">동행</a></li>
         <span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/loginoff.png" alt=""/></a></li></span>
      </ul>
   </nav>
</header>

<div class="matzip">
	<div class="matzip_list">
		<div class="story_header"><h3 style="margin-bottom: 60px; font-size:2em;">맛집스토리</h3></div>
			<div class="list">
				<a href="../fullpage/restuarantStory1.jsp"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA5MDJfNyAg%2FMDAxNTk5MDQzNDE4Mzg4.-hnrD8N9nTsXhUVlIpYT7gKSe3IwW_Y4hvmq_qiyQpIg.L2BX068f29BB3XYeQHQm4hClVLIyCwepZNNqY677YHog.JPEG.hannajini38%2F1599043422696.jpg&type=sc960_832" alt="" /></a>
				<p>제주 뷰 맛집 카페 TOP5</p>
			</div>
			<div class="list">
				<a href="../fullpage/restuarantStory2.jsp"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMTRfOTYg%2FMDAxNjEzMjgyNjA4NzU4._vWa-uUI_EBHuB-umSmrVojuONtieJwLiu_2fYzOzBkg.Lvt_7A3XePY_TQWCjZ-9G8jLMrZUFHAEwqIA4iymuQ0g.JPEG.sy4721%2FIMG_2349.jpg&type=sc960_832" alt="" /></a>
				<p>혼밥하러 가기 TOP5</p>
			</div>
			<div class="list">
				<a href="../fullpage/restuarantStory3.jsp"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MzFfMjQ0%2FMDAxNTk2MTk5Mjc4NjU4.S-v3iZ-hBFfJ7OSxfy0-L2LX4sGbErZCuPvzZS1IfDkg.O7rnDsgJwtH0142UzCs8gs_LxpT_yp76l2GIylhxXMkg.JPEG.blogkoreaners%2Fddabca5dc096103071ff7f0ea97dc164.jpg&type=sc960_832" alt="" /></a>
				<p>이색맛집 외국음식점</p>
			</div>
			
		
	</div>
	
</div>

<footer>
 	<div class="footer_contents">
 		<h3>안녕하세요</h3>
 		<p>배고픈 원숭이를 찾아주셔서 감사합니다.</p>
 		<ul class="socials">
 			<li><a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a></li>
 			<li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
 			<li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
 		</ul>
 	</div>
 	<div class="footer_bottom">
 		<p>copyright &copy;2021 codeOpacity. designed by <span>HungryMonkey</span></p>
 	</div>
</footer>

</body>
</html>