<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="project.ReviewVO"%>
<%@page import="project.ReviewDAO"%>
<%@page import="project.Board1VO"%>
<%@page import="project.Board1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	// 1. 파라미터 값 가져오기
		String saveDir = request.getRealPath("/upload");
	//out.println(saveDir);
	// 첨부파일의 최대 크기 : 30MB까지 업로드 가능
			int maxFileSize = 1024*1024*30;
// 1. 파라미터 값 가져오기
		MultipartRequest mr = new MultipartRequest(request, saveDir,maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
		String title = request.getParameter("title");
		String rContents = request.getParameter("contents");
		String reno = request.getParameter("reno");
		String f = mr.getOriginalFileName("filename");
		if(reno != null){
			int no = Integer.parseInt(reno);
	// 2. dao객체 생성
	
		ReviewDAO dao1 = new ReviewDAO();
	
	// 3. vo객체생성
		ReviewVO vo1 = new ReviewVO();
	
	// 4. 값 지정 (setter)
		vo1.setReno(no);
		vo1.setTitle(title);
		vo1.setrContents(rContents);
		vo1.setImgSrc(f);
	// 5. dao메서드를 사용해서 db에 update
		dao1.updateOne(vo1);
	// 6. dao자원반납
		dao1.close();
	// 7. sendRedirect ==> list.jsp이동
		response.sendRedirect("list.jsp");
		}
%>


</body>
</html>