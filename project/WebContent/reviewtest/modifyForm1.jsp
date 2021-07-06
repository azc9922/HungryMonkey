<%@page import="project.ReviewVO"%>
<%@page import="project.ReviewDAO"%>
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
	String reno = request.getParameter("reno");

	
	if (reno != null) {
		// 2. DAO객체 생성
		ReviewDAO dao = new ReviewDAO();
		// 3. dao를 통해서 지정한 게시물을 가져오기
		int no = Integer.parseInt(reno);
		ReviewVO vo = dao.selectOne(no);
		// 4. 화면에 출력
		dao.close();
		//out.println(vo);
		if(nickname.equals(vo.getNickname())){%>
			
			<form action="modifyOk1.jsp" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>작성자</td>
				<td><%=vo.getNickname()%></td>
				<td>작성일시</td>
				<td><%=vo.getrRegdate()%> <input type="hidden" name="reno"
					value="<%=vo.getReno()%>" /></td>
			</tr>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="<%=vo.getTitle()%>"
					id="" /></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><input type="text" name="contents" value="<%= vo.getrContents() %>" id="" /></td>
			</tr>
			<tr>
			<td>첨부파일</td>
			<td><input type="file" name="filename" id="" value="<%=vo.getImgSrc()%>"/></td>
			</tr>
			<tr>
				<th></th>
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