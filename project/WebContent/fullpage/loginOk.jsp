<%@page import="project.MasterVO"%>
<%@page import="project.MasterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pw");

	MasterDAO dao = new MasterDAO();
	MasterVO vo = dao.isEXists(id, pwd);
	
	if(vo == null){
		out.println("<script>alert('입력하신 정보가 일치하지 않습니다.'); location.href='loginFail.jsp';</script>");
	}else{
		//session 내장 객체 저장
		session.setAttribute("vo", vo);
		out.println("<script>alert('환영합니다.'); location.href='restaurant.jsp';</script>");
		}
	
%>

</head>

</html>