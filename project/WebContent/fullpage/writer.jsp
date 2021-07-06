<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../fullpage/style1.css" />
 <script src="https://kit.fontawesome.com/f995c83b9d.js" crossorigin="anonymous"></script>
 <style>
 	.write table{
 		position:static;
 		background-color:orange;
 		margin-left: 25%;
    	margin-top: 2.5%;
    	margin-bottom: 2.5%;
 		width: 50%;
 		height: 50%;
 		display:flexed;
 	}
 	.write tr#btns{
 		text-align: center;
 	}
 	.write #btns input{
 		font-size: 20px;
 		background-color: gray;
 		color: white;
 	}
 	.write #title input{
 		width: 80%; height: 30px; margin-left: 20px;
 		
 	}
 	.write #contents{
 		width: 80%; height: 500px; margin-left: 20px;
 		padding-bottom: 200px;
 	}
 	
 </style>
</head>
<body>
<header>
<nav class="navbar">
	
		<div class="navbar_logo">
        <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey.jpg" alt="" class="icon" /></a>
		</div>
		<b6>배고픈 원숭이</b6>
		<ul class="navbar_menu">
		<li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarntok.jsp">맛집스토리</a></li>
		<li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
		<li><a href="../fullpage/together.jsp">동행</a></li>
     	<span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/person.jpg" alt="" class="icon" /></a></li></span>
		</ul>
	</nav>
</header>

<form action="writeOk.jsp" method= "get"> 
 <div class="write">
	<table>
		<tr id="title">
			<td>제목</td>
			<td><input type="text" name="title"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="contents" id="contents" cols="30" rows="10" ></textarea></td>
		</tr>
		<tr id="btns">
			<td colspan="2">
			<a href="#목록"><input type="button" value="목록"/></a>
			<input type="reset" value="다시쓰기" />
			<input type="submit" value="작성하기" />
			
				</td>
			</tr>
		</table>
	 </div>
</form>

<footer>
 	<div class="footer_contents">
 		<h3>안녕하세요</h3>
 		<p>배고픈 원숭이를 찾아주셔서 감사합니다</p>
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