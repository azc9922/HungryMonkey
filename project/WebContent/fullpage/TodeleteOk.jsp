<%@page import="java.io.PrintWriter"%>
<%@page import="project.Board1VO"%>
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
Object obj = session.getAttribute("vo");
String nickname ="";
if(obj != null){
// 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
   MasterVO m = (MasterVO)obj;
   nickname = m.getNickname();
}else{
   // 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
   response.sendRedirect("login2.jsp");
}
String bno = request.getParameter("bno");
// 2. 이 값이 널값이 아니면
if(bno != null ){
int no = Integer.parseInt(bno); 
// 3. dao객체 생성
Board1DAO dao = new Board1DAO();
Board1VO vo = dao.selectOne(no);
if(nickname.equals(vo.getNickName())){
// 4. dao의 삭제 메서드 호출
	dao.deleteOne(no);
	// 5. 자원반납
	dao.close();
	
	// 6. list.jsp로 리 다이렉트
	
	response.sendRedirect("together.jsp");
}else{
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('작성자만 삭제할 수 있습니다.')");
	script.println("document.location.href = 'together.jsp'");
	script.println("</script>");
	
}
}


%>




	
</body>
</html>