<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="project.ReviewDAO"%>
<%@page import="project.Board1VO"%>
<%@page import="project.Board1DAO"%>
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

	String nickName = request.getParameter("writer");
	String title = request.getParameter("title");
	String bContents =request.getParameter("contents");
	
	 
	// 2. dao 객체 생성
	Board1DAO dao = new  Board1DAO();
	dao.customorInsertOne(nickName, title, bContents);
	dao.close();
	// 3. vo객체 생성
	// 4.setter로 값을 지정 안해도됨
 	
	// 5. dao : insert method 호출
	
	
	// 6. close()
	
	// 목록 페이지로 이동 : list.jsp
	//  이동방식 : foworad, redirect  1번은 요청이 이어짐 2번은 요청이 끊김
	
	response.sendRedirect("CustomerService.jsp");
%>




</body>
</html>