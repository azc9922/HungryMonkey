<%@page import="vo.FileVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.FileDAO"%>
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
		FileDAO dao = new FileDAO();
		ArrayList<FileVO > list = dao.selectAll();
		for(FileVO vo :list) {
		
	%>


<table>
	<tr>
		<th><%= vo.getNo() %></th><br />
		<th><%=vo.getTitle() %></th><br />
		<th><%= vo.getWriter() %></th><br />
		<th><%=vo.getContents() %></th><br />
		<th><img src="<%=vo.getFilename() %>" alt="<%=vo.getTitle() %>" /></th>
	</tr>
	<!--  -->
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<%
	
		}
	%>
</table>



</body>
</html>