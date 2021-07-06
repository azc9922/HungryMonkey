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
<%
   // 로그인 되어있는 상태를 확인
   
   
   // 1. 로그인 되어 있는 상태인지 판정 : session vo 속성 가져오기
   String rno = request.getParameter("rno");
   Object obj = session.getAttribute("vo");
   String id ="";
   if(obj != null && rno != null){
   // 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
      MasterVO m = (MasterVO)obj;
      id = m.getId();
      //System.out.println("<h3>" + id  + "</h3>");
      int no = Integer.parseInt(rno);
      
      MasterDAO dao = new MasterDAO();
  	  MasterVO vo1 = dao.selectNickName(id);
   
   %>
   <header>
<nav class="navbar">
   
      
      <div class="navbar_logo">
       <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey2.jpg" alt="" /></a>
      </div>
      <b6>배고픈 원숭이</b6>      
      <ul class="navbar_menu">
      <li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarntok.jsp">맛집스토리</a></li>
      <% 
       
  		if (rno != null) {
		// 2. DAO객체 생성
		if(obj != null){ %>
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
<%} %>


<form action="Review_WriteOk.jsp" method = "post" enctype="multipart/form-data">
 <div class="write">
<table>
   <tr>
      <th>작성자</th>
      <td><input type="text" name="writer" id="" value="<%= vo1.getNickname() %>" 
           readonly/>
           <input type="hidden" name="rno" value="<%=rno %>"  />
           </td>
   </tr>
   
   <tr>
      <th>제목</th>
      <td><input type="text" name="title" id="" /></td>
   </tr>
   
   <tr>
      <th>내용</th>
      <td><textarea name="contents" id="" cols="120" rows="30"
                  ></textarea></td>
   </tr>
   <tr>
			<th>첨부파일</th>
			<td><input type="file" name="filename" id="" /></td>
		</tr>
		<tr>
   		<td colspan="2" align="center"><input type="radio" name="grade" id="1" value="1" />만족
   			<input type="radio" name="grade" id="2" value="2"/>보통
   			<input type="radio" name="grade" id="3" value="3"/>불만족
   		</td>
   </tr>
   
      <tr id="btns">
         <td colspan="2">
            <a href="restaurant.jsp"><input type="button" value="목록" /></a>
            <input type="submit" value="작성" />
            <input type="reset" value="다시쓰기" />
         </td>
      </tr>
   </table>
   </div>
</form>
<%
	}else{
      // 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
      out.println("<script>alert('로그인 후 이용할 수 있습니다.'); location.href='login2.jsp';</script>");
   }
   
	
   
%>
</body>
</html>