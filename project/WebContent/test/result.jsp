<%@page import="vo.FileVO"%>
<%@page import="dao.FileDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
</head>
<body>
	<%
	//upload 디렉토리의 실제경로 얻어오기
		String saveDir = request.getRealPath("/upload");
		out.println(saveDir);
	// 첨부파일의 최대 크기 : 30MB까지 업로드 가능
		int maxFileSize = 1024*1024*30; 
	// 1KB ==> 1024 Byte
	
			
		MultipartRequest mr = new MultipartRequest(request, saveDir , maxFileSize , "UTF-8" , new DefaultFileRenamePolicy());	
			
		/* String title = mr.getParameter("title");
		
		String writer = mr.getParameter("writer");
		
		String contents = mr.getParameter("contents"); */
		
		// 파일의 원래 이름
		String f = mr.getOriginalFileName("filename");
		
		%>
	<!-- 표형태로 출력  -->
	<!-- 파일번호 제목 작성자 첨부이미지 -->
	
</body>
</html>