<%@page import="project.ReviewDAO"%>
<%@page import="project.ReviewVO"%>
<%@page import="project.Board1VO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="project.MasterVO"%>
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

	// 1. 파라미터 값 가져오기
	// 1. 로그인 되어 있는 상태인지 판정 : session vo 속성 가져오기
   Object obj = session.getAttribute("vo");
   String nickname ="";
   if(obj != null){
   // 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
      MasterVO m = (MasterVO)obj;
      nickname = m.getNickname();
   }else{
      // 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
      response.sendRedirect("./login.jsp");
   }
 
	String reno = request.getParameter("reno");
	// 2. 이 값이 널값이 아니면
	if(reno != null ){
	int no = Integer.parseInt(reno); 
	// 3. dao객체 생성
	ReviewDAO dao = new ReviewDAO();
	ReviewVO vo = dao.selectOne(no);
	// 4. dao의 삭제 메서드 호출
	if(nickname.equals(vo.getNickname())){
		dao.deleteOne(no);
		// 5. 자원반납
		dao.close();
		
		// 6. list.jsp로 리 다이렉트
		
		response.sendRedirect("list.jsp");	
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('작성자만 삭제할 수 있습니다.')");
			script.println("document.location.href = 'list.jsp'");
			script.println("</script>");
			
		}
	
	}
	

	%>
</body>
</html>