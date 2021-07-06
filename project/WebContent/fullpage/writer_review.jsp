<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 상단,하단css -->
<link rel="stylesheet" href="../fullpage/style1.css" />
<link rel="stylesheet" href="../fullpage/board.css" />

<!-- 하단바 이미지호출 -->
<script src="https://kit.fontawesome.com/f995c83b9d.js" crossorigin="anonymous"></script>
</head>
<body>

<header>
<nav class="navbar">
	
		<div class="navbar_logo">
		 <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey.jpg" alt="" />배고픈원숭이</a>
		</div>
		
		<ul class="navbar_menu">
		<li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
		<li><a href="">맛집스토리</a></li>
		<li><a href="../fullpage/customerService.jsp">고객센터</a></li>
		<li><a href="../fullpage/together.jsp">동행</a></li>
		<li><a href=""><img src="../images/person.jpg" alt="" /></a></li>
		</ul>
	</nav>
</header>

<!-- 리뷰쓰는 곳 -->
<form action="review_writeok.jsp">
	<div class="review_write">
	
		<div class="review_header">
		<span style="font-size: 30px;">배고픈원숭이</span>
		<span>(이름불러오기)에 대한 솔직한 리뷰를 써주세요.</span>
		</div>
		
		<div class="review_evaluate">
			<table>
				<tr>
					<td><img src="../images/person.jpg" alt="" />맛있어요</td>
					<td><img src="../images/person.jpg" alt="" />괜찮아요</td>
					<td><img src="../images/person.jpg" alt="" />별로예요</td>	
				</tr>
				<tr>
					<td colspan="3" ><textarea name="" id="" cols="120" rows="32" style="border: 0;" maxlength="1000" placeholder="<%%>님, 주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!"></textarea></td>
				</tr>
			</table>
				
				<div class="add_img">
					<ul>
						<li><input type="file" value="" /></li>
						<li><input type="file" value="" /></li>
						<li><input type="file" value="" /></li>
					</ul>
				</div>
			
				<div class="write_result">
				<a href="../fullpage/restuarantok.jsp"><input type="button" value="돌아가기" /></a>
				<input type="submit" value="리뷰올리기" />
				</div>
		</div>
	</div>
	
</form>

<!-- 밑 -->
<footer>
 	<div class="footer_contents">
 		<h3>Hello</h3>
 		<p>dasdafdksfjklsjdflksjdflksjdflkjs
 		sdkljfslkdjflksdjflksdjf</p>
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