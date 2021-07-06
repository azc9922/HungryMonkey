<%@page import="project.MasterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fullpage</title>
<link rel="stylesheet" href="../fullpage/header.css" />
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="jquery.fullPage.js"></script>
<script src="main.js"></script>
	
	<style>
	.section1{position:relative;}
	.section1 button{position:absolute; z-index:10; top:50%; transfrom:translateY(-50%);
						width:71px; height:71px; border-radius:100%; background:rgba(0,0,0,.5);}
	.section1 button:before{font-family:'xeicon'; color:#fff; font-size:20px;}
	.section1 button.slick-prev{left:0; font-size:0; color:transparent;}
	.section1 button.slick-prev:before{content:"\e93d";}
	.section1 button.slick-next{right:0; font-size:0; color:transparent;}
	.section1 button.slick-next:before{content:"\e940";}
	.icon{
		width:100px;
		height:100px;
	}
	.img{
		width:100%;
		height:1300px;
	}

	</style>	
	
	
</head>
<body>
	 <nav class="navbar">
    <div class="navbar_logo">
       <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey2.jpg" alt="" /></a>
      </div>
 		<b6>배고픈 원숭이</b6>
      <header class="navbar_menu">
      <li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarantStory.jsp">맛집스토리</a></li>
      <%
      Object obj = session.getAttribute("vo");
      if(obj != null){ %>
		<li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
		<li><a href="../fullpage/together.jsp">동행</a></li>
		<span><li><a href="../fullpage/logout.jsp">로그아웃<img src="../images/loginon.png" alt=""/></a></li></span>
		<%}else { %>
		<li><a href="../fullpage/alert.jsp">고객센터</a></li>
		<li><a href="../fullpage/alert.jsp">동행</a></li>
		<span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/loginoff.png" alt=""/></a></li></span>
		<%} %>
      </header>
      
	</nav>
 	<!-- 첫번째 페이지 -->
	<section class="section1">
<div><iframe width="1900" height="1300" src="https://www.youtube.com/embed/AIwIa0w8VCs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
     <div>
    <img src="../images/bibimbab.PNG" alt="" class="img">
    </div>
      <div>
      <img src="../images/jaeyuk.PNG" alt="" class="img">
    </div>
      <div>
      <img src="../images/pork.PNG" alt="" class="img">
    </div>
</section>

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

	 <script type="text/javascript">
  $('.section1').slick({
	 autoplay: true,
  	autoplaySpeed: 1000
  });

  
	</script>
	

</body>
</html>