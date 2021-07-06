<%@page import="project.MasterVO"%>
<%@page import="project.MasterDAO"%>
<%@page import="vo.MemberVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	MasterDAO dao = new MasterDAO();
	MasterVO vo = dao.isEXists(id, pwd);
	
	if(vo == null){
		

		
		response.sendRedirect("loginFail.jsp");%>
		<script type="text/javascript">

 		 alert("로그인실패.");

</script>
<%
	}else{
		out.println("<h3>"+vo.getNickname() + "님 환영합니다</h3>");
		//session 내장 객체 저장
		session.setAttribute("vo", vo);
		
		response.sendRedirect("login.jsp"); 
		}
	
%>

</head>

</html>