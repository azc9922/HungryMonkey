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
 	.board{
 		padding-left:19px;
 	}
 </style>
</head>
<body>
<%Object obj = session.getAttribute("vo");
String id ="";
if(obj != null){
// 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
   MasterVO m = (MasterVO)obj;
   id = m.getId();
   //out.println("<h3>" + id  + "</h3>");
   
}else{
   // 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
   response.sendRedirect("./login2.jsp");
}

	MasterDAO dao = new MasterDAO();
	MasterVO vo1 = dao.selectNickName(id);
	%>
<header>
<nav class="navbar">
	
		<div class="navbar_logo">
        <a href="../fullpage/Fullpage.html"><img src="../images/monkey.jpg" alt="" class="icon" /></a>
		</div>
		<b6>배고픈 원숭이</b6>
		<ul class="navbar_menu">
		<li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarntok.jsp">맛집스토리</a></li>
      <%
		if(obj != null){ 
		%>
		<li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
		<li><a href="../fullpage/together.jsp">동행</a></li>
		<%}else { %>
		<li><a href="../fullpage/alert.jsp">고객센터</a></li>
		<li><a href="../fullpage/alert.jsp">동행</a></li>
		<%} %>
		<% if(obj != null){ %>
      	<span><li><a href="../fullpage/logout.jsp">로그아웃<img src="../images/loginon.png" alt=""/></a></li></span>
      	<%}else { %>
      	<span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/loginoff.png" alt=""/></a></li></span>
      	<%} %>
		</ul>
	</nav>
</header>

<form action="TogetherwriterOk.jsp" method= "get"> 
 <div class="write">
	<table>
		<tr id="title">
		 <tr>
      <td>작성자</td>
      <td class="board"><input type="text" name="writer" id="" value="<%= vo1.getNickname() %>" 
           readonly="readonly" /></td>
   		</tr>
   		<tr>
			<td>제목</td>
			<td class="board"><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="contents" id="contents" name="contents" cols="30" rows="10" ></textarea></td>
		</tr>
		<tr id="btns">
			<td colspan="2">
			<a href="../fullpage/together.jsp"><input type="button" value="목록"/></a>
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