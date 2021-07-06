<%@page import="project.ReviewVO"%>
<%@page import="project.ReviewDAO"%>
<%@page import="project.MasterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Object obj = session.getAttribute("vo");
String id ="";
if(obj != null){
// 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
	MasterVO m = (MasterVO)obj;
	id = m.getNickname();
	 out.println("<h3>" + id  + "</h3>");
	 }else{
	// 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
	response.sendRedirect("./login.jsp");
}
	// 1. 전달 받은 파라미터 값 가져오기
	String no = request.getParameter("reno");

	if(no != null){	
	// 2. DAO객체 생성
	 ReviewDAO dao1 = new ReviewDAO();
	
	// 3. dao를 통해서 지정한 게시물을 가져오기
	int reno = Integer.parseInt(no);
	
	
	ReviewVO vo = dao1.selectOne(reno);
	// 4. 화면에 출력
	dao1.close();
	//out.println(vo);
	%>
	 
	<table>
	
	
		<tr>
			<td>작성자</td>
			<td><%=vo.getNickname() %></td>
			<td>작성일시</td>
			<td><%=vo.getrRegdate() %></td>
		</tr>
		
		<tr>
			<th>제목</th>
			<td><%=vo.getTitle() %></td>
		</tr>
		
		<tr>
			<th>내용</th><br />
			<td><img src="<%=vo.getImgSrc() %>" width="100" height="100" alt="이미지" /></td><br />
			<td><%=vo.getrContents() %></td>
		</tr>
		<tr>
			<th></th>
			<td colspan="6">
			<a href="list.jsp"><input type="button" value="목록" /></a>
			<a href="modifyForm1.jsp?reno=<%=vo.getReno() %>"><input type="button" value="수정" /></a>
			<a href="deleteOk.jsp?reno=<%=vo.getReno()%>"><input type="button" value="삭제" />	</a>		
			</td>
		</tr>
			
	<%
	}
	%>
	
	</table>


</body>
</html>