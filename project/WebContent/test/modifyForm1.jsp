<%@page import="project.MasterDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="project.MasterVO"%>
<%@page import="project.Board1VO"%>
<%@page import="project.Board1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
</head>
<body>
	<%
	Object obj = session.getAttribute("vo");
	String nickname = "";
	if (obj != null) {
		// 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
		MasterVO m = (MasterVO) obj;
		nickname = m.getNickname();
	} else {
		// 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
		response.sendRedirect("./login.jsp");
	}
	
	// 1. 전달 받은 파라미터 값 가져오기
	String bno = request.getParameter("bno");

	
	if (bno != null) {
		// 2. DAO객체 생성
		Board1DAO dao = new Board1DAO();
		// 3. dao를 통해서 지정한 게시물을 가져오기
		int no = Integer.parseInt(bno);
		Board1VO vo = dao.selectOne(no);
		// 4. 화면에 출력
		dao.close();
		//out.println(vo);
		if(nickname.equals(vo.getNickName())){%>
			
			<form action="modifyOk1.jsp" method="post">
		<table>
			<tr>
				<td>작성자</td>
				<td><%=vo.getNickName()%></td>
				<td>조회수</td>
				<td><%=vo.getHits()%></td>
				<td>작성일시</td>
				<td><%=vo.getBregdate()%> <input type="hidden" name="bno"
					value="<%=vo.getBno()%>" /></td>
			</tr>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="<%=vo.getTitle()%>"
					id="" /></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"
					value=<%=vo.getbContents()%> id="" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="6"><a href="list.jsp"><input type="button"
						value="목록" /></a> <input type="submit" value="수정" /> <input
					type="button" value="삭제" /></td>
			</tr>
			<%
			}else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('작성자만 수정할 수 있습니다.')");
				script.println("document.location.href = 'list.jsp'");
				script.println("</script>");
				
			}
	%>
	

			<%
			}
			%>

		</table>
	</form>
</body>
</html>