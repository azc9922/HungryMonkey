<%@page import="project.MasterVO"%>
<%@page import="project.Board1VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="project.Board1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="../fullpage/style1.css" />
 <link rel="stylesheet" href="../fullpage/board.css" />
 <script src="https://kit.fontawesome.com/f995c83b9d.js" crossorigin="anonymous"></script>
<title>Insert title here</title>

</head>

<body>
<header>
<nav class="navbar">
	
		<div class="navbar_logo">
        <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey2.jpg" alt=""/></a>
		</div>
		<b6>배고픈 원숭이</b6>
		<ul class="navbar_menu">
		<li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarntok.jsp">맛집스토리</a></li>
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
</header>

<div id="header"><h1>밥 한끼해요</h1></div>

<div class="wrapper">
<%
	// 로그인 되어있는 상태를 확인
	
	/*	// 1. 로그인 되어 있는 상태인지 판정 : session vo 속성 가져오기
	 Object obj = session.getAttribute("vo");
	String id ="";
	if(obj != null){
	// 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
		MasterVO m = (MasterVO)obj;
		id = m.getId();
		 out.println("<h3>" + id  + "</h3>");
		 }else{
		// 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
		response.sendRedirect("./login.jsp");
	} */
 
	Board1DAO dao = new Board1DAO();
	// 총 게시물 수
	int totalCount = dao.getTotalCount();
	// 페이지당 게시물 건수: 20
	int recordPerpage = 20;
	// 총 페이지 수
	int totalPage = (totalCount/recordPerpage==0)?totalCount/recordPerpage:totalCount/recordPerpage+1;
	// 380/20 = 19
	// 380/20 = 19+1
	
	
	String cp = request.getParameter("cp");
	// 현재 페이지 : 1페이지
	int currentPage = 0;
	if(cp != null){
		currentPage = Integer.parseInt(cp);	
	}else{
		currentPage = 1;
	}
	
		
	// 시작번호 : 1
	int startNo = (currentPage-1)*recordPerpage+1;
	// 페이지 끝번호 : 20
	int endNo = currentPage*recordPerpage+1;
	
	// 시작페이지 번호
	int startPage = 1;
	int endPage = totalPage;
	
	
	// 시작페이지 미세조정
	if(currentPage <= 5){
		startPage =1;
	}else if(currentPage >= 6){
		startPage = currentPage-4;
	}
	
	// 끝 페이지 미세서종
	if(totalPage - currentPage <=5){
		endPage = totalPage;
	}else if(totalPage - currentPage > 5) {
		if(currentPage <= 5){
			if(totalPage> 10){
				endPage = 10;
			}else{
				endPage = totalPage;
			}
		}else{
			endPage = currentPage +4;
		}
	}
	%>
	<table>
		<tr style="height: 51px;">
			<th id="col1">게시물번호</th>
			<th id="col2">제목</th>
			<th id="col3">작성자</th>
			<th id="col4">작성일</th>
			<th id="col5">조회수</th>
		</tr>
		<%
		int btype= 2;
		ArrayList<Board1VO> list = dao.selectAll(startNo, endNo, btype);
		for(Board1VO vo : list){
		%>
		
		<tr>
			<td><%=vo.getBno() %></td>
			<td><a href="Togetherdetail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle()%></a></td><!-- 제목누르면 하이퍼링크로 타고감 -->
			<td><%=vo.getNickName() %></td>
			<td><%=vo.getBregdate() %></td>
			<td><%=vo.getHits() %></td>
		</tr>
	<%
		}
	%>

				

		<tr style="height: 41px;">
			<!-- 4칸 병합 -->
			<td id="writer" colspan="5"><a href="../fullpage/Togetherwriter.jsp"><input type="button" value="글쓰기" /></a>
					
			</td>
		</tr>

	<tr style="height: 51px;">
			<td colspan="5">
			<%
			
				for(int i=startPage; i<=endPage; i++){
				
			%>
				<a href="together.jsp?cp=<%= i %>"><%=i %></a>
			<% 	
				}
		
		
			%>
			
		</td>
		
		</tr>


	</table>
	
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