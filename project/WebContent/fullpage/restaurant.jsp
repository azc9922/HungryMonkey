<%@page import="project.ResDAO"%>
<%@page import="project.ResVO"%>
<%@page import="java.util.ArrayList"%>
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
      <% 
		Object obj = session.getAttribute("vo");
		String id = "";
		if(obj != null){ 
			MasterVO m = (MasterVO)obj;
			id = m.getId();
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

<div id="header"><h1>맛집리스트</h1></div>

<div class="checklist">
<form action="restaurant.jsp" method="get">
   <div class="zone">
      <select name="local" id="local">
         <option value="서울">서울</option>
         <option value="경기도">경기도</option>
         <option value="강원도">강원도</option>
         <option value="충청도">충청도</option>
         <option value="전라도">전라도</option>
         <option value="경상도">경상도</option>
         <option value="제주도">제주도</option>
      </select>
      <input type="submit" value="이동" />
   </div>
   </form>
   
</div>

<div class="matzip">

      <div class="matzip_list">
         <div class="list_header"><h3>맛집리스트</h3></div>
         <%
         request.setCharacterEncoding("UTF-8");

     	 String area = request.getParameter("local");
     	 ResDAO dao = new ResDAO();
     	 if(area != null){
     		
            ArrayList<ResVO> list = dao.selectAll(area);
            for(ResVO vo : list){ %>
               <div class="list">
                  <a href="../fullpage/restaurantok.jsp?rno=<%=vo.getRno()%>"><img src="<%=vo.getImgsrc() %>" alt="" /></a>
                  <p><%=vo.getRname() %></p>
               </div>
               <%} 	 
     	 }else{
            ArrayList<ResVO> list = dao.selectAll("서울");
            for(ResVO vo1 : list){ %>
               <div class="list">
                  <a href="../fullpage/restaurantok.jsp?rno=<%=vo1.getRno()%>"><img src="<%=vo1.getImgsrc() %>" alt="" /></a>
                  <p><%=vo1.getRname()%></p>
               </div><%
     			 }
     	 	}
     	 %>
         
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