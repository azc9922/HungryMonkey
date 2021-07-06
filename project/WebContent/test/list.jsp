
<%@page import="project.Board1DAO"%>
<%@page import="project.Board1VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="project.MasterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="./style.css" />
<title>Insert title here</title>
<style>
.wrapper{
	height: auto;
	min-height: 100%;
}
footer{
	height: 20%;
	background: yellow;
	color: black;
	position: relative;
	transfrom:translateY(-100%);
}

div#header{
	background-color: gold;
	border-bottom: 1px solid gold;
	width: 100%;
	margin:0;
	    margin-bottom: 60px;
	text-align: center;
}

h1{
	margin:0px;
	 padding-top: 150px;
	 padding-bottom: 50px;
}

table {
	width: 60%;
	margin: auto;
	border-bottom: 1px solid black;
}

table, th, td {
	border-top: 1px solid blue;
	border-collapse: collapse;
	text-align: center;
}
 
#col1 {width: 10%;}
#col2 {width: 55%;}
#col3 {width: 10%;}
#col4 {width: 10%;}
#col5 {width: 5%;}
</style>
</head>

<body>
<header>
<%
	// 로그인 되어있는 상태를 확인
	
	
	// 1. 로그인 되어 있는 상태인지 판정 : session vo 속성 가져오기
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
	}

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
<nav class="navbar">
	
		<div class="navbar_logo">
		 <a href="">DraemCoding</a>
		</div>
		
		<ul class="navbar_menu">
		<li><a href="">123</a></li>
		<li><a href="">ads</a></li>
		<li><a href="">gf</a></li>
		<li><a href="">dfgg</a></li>
		<li><a href="">hhg</a></li>
		</ul>
	</nav>
</header>
<div class="wrapper">
<div id="header"><h1>고객센터</h1></div>
<form action="deleteList.jsp">

	<table>
		<tr>
			<th id="col1">게시물번호</th>
			<th id="col2">제목</th>
			<th id="col3">작성자</th>
			<th id="col4">작성일</th>
			<th id="col5">조회수</th>
		</tr>
		<%


		ArrayList<Board1VO> list = dao.selectAll(startNo, endNo);
		for(Board1VO vo : list){
		%>
		<tr>
			<td><%=vo.getBno() %></td>
			<td><a href="detail1.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle()%></a></td><!-- 제목누르면 하이퍼링크로 타고감 -->
			<td><%=vo.getNickName() %></td>
			<td><%= vo.getBregdate() %></td>
			<td><%= vo.getHits() %></td>
		</tr>
		<% }%>

		<tr>
			<!-- 4칸 병합 -->
			<td id="writer" colspan="5"><a href="write.jsp"><input type="button"
					value="글쓰기" /></a>
					
			</td>
		</tr>

		<!-- 페이지 번호 -->
		<tr>
			<td colspan="5">
				<a href=""></a>
			</td>
		</tr>
	<tr>
			<td colspan="4">
			<%
				for(int i=startPage; i<=endPage; i++){
				
			%>
				<a href="list.jsp?cp=<%= i %>"><%=i %></a>
			<% 	
				}
		
		
			%>
			
		</td>
		
		</tr>
	</table>
</form>
</div>
<footer>
footer
</footer>
</body>
</html>