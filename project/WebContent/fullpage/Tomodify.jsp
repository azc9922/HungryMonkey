<%@page import="project.MasterDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="project.MasterVO"%>
<%@page import="project.Board1VO"%>
<%@page import="project.Board1DAO"%>
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

 <form action="TomodifyOk.jsp" method="post">
<div id="header"><h1>밥 한끼해요</h1></div>
<div class="wrapper">
   <table>
      <tr style="height: 51px;">
         <th id="col1">제목</th>
         <th id="col2">내용</th>
         <th id="col3">작성자</th>
         <th id="col4">작성일</th>
         <th id="col5">조회수</th>
      </tr>
     
    <%
    Object obj1 = session.getAttribute("vo");
    String nickname ="";
    if(obj != null){
    // 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
       MasterVO m = (MasterVO)obj;
       nickname = m.getNickname();
    }else{
       response.sendRedirect("./login2.jsp");
    }
    
	String bno = request.getParameter("bno");
	
	if (bno != null) {
		// 2. DAO객체 생성
		Board1DAO dao1 = new Board1DAO();
		// 3. dao를 통해서 지정한 게시물을 가져오기
		int no = Integer.parseInt(bno);
		Board1VO vo = dao1.selectOne(no);
		// 4. 화면에 출력
		dao.close();
		if(nickname.equals(vo.getNickName())){
		%>
  
			
			<tr>
				<td><input type="text" name="title" value="<%=vo.getTitle()%>" id="" /></td>
				<td><input type="text" name="contents" value=<%=vo.getbContents()%> id="" /></td>
				<td><%=vo.getNickName()%></td>
				<td><%=vo.getBregdate()%> <input type="hidden" name="bno" value="<%=vo.getBno()%>" /></td>
				<td><%=vo.getHits()%></td>
			</tr>

						<%
	}
	else{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('작성자만 수정할 수 있습니다.')");
		script.println("document.location.href = 'together.jsp'");
		script.println("</script>");
	}
	}
			%>
			
			<tr style="height: 41px;">
				<td  id="writer"><a href="together.jsp"><input type="button" value="목록" /></a></td>
				<td id="writer"></td>
				<td  id="writer" colspan="4"><input type="submit" value="수정" /> </td>
			</tr>

	
   </table>
   </div>
  </form>
   
   
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