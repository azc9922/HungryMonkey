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
//upload 디렉토리의 실제경로 얻어오기
	String saveDir = request.getRealPath("/upload");
	//out.println(saveDir);
	// 첨부파일의 최대 크기 : 30MB까지 업로드 가능
			int maxFileSize = 1024*1024*30;
// 1. 파라미터 값 가져오기
	MultipartRequest mr = new MultipartRequest(request, saveDir,maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
	String nickName = mr.getParameter("writer");
	String title = mr.getParameter("title");
	String rContents = mr.getParameter("contents");
	String rno = mr.getParameter("rno");
	String gd = mr.getParameter("grade");
	String f = mr.getOriginalFileName("filename");
	
	int no = Integer.parseInt(rno);
	int grade = Integer.parseInt(gd);
	// 2. dao 객체 생성
	ReviewDAO dao = new  ReviewDAO();
	dao.customorInsertOne(nickName, title, rContents, f, no, grade);
	// 3. vo객체 생성
	// 4.setter로 값을 지정 안해도됨
 	
	// 5. dao : insert method 호출
	
	
	// 6. close()
	
	// 목록 페이지로 이동 : list.jsp
	//  이동방식 : foworad, redirect  1번은 요청이 이어짐 2번은 요청이 끊김
	
	response.sendRedirect("restaurantok.jsp?rno="+rno+"");
%>




</body>
</html>