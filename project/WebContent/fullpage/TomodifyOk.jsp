<%@page import="java.io.PrintWriter"%>
<%@page import="project.MasterVO"%>
<%@page import="project.Board1VO"%>
<%@page import="project.Board1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 1. 파라미터 값 가져오기
		String title = request.getParameter("title");
		String bcontents = request.getParameter("contents");
		String bno = request.getParameter("bno");
		if(bno != null){
			int no = Integer.parseInt(bno);
	// 2. dao객체 생성
	
		Board1DAO dao1 = new Board1DAO();
	
	// 3. vo객체생성
		Board1VO vo1 = new Board1VO();
		
	// 4. 값 지정 (setter)
		vo1.setTitle(title);
		vo1.setbContents(bcontents);	
		vo1.setBno(no);
	// 5. dao메서드를 사용해서 db에 update
		dao1.updateOne(vo1);
	// 6. dao자원반납
		dao1.close();
	// 7. sendRedirect ==> list.jsp이동
		response.sendRedirect("together.jsp");
	
		}
	
%>


</body>
</html>