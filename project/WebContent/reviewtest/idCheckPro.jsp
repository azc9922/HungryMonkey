<%@page import="project.MasterVO"%>
<%@page import="project.MasterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align : center"></div>
		<h3>* 아이디 중복 확인 결과 *</h3>
		<%
			String id = request.getParameter("id");
			MasterDAO dao = new MasterDAO();
			int cnt = dao.idDoubleCheck(id);
			
			if(cnt==0){
				out.println("<p>사용 가능한 아이디입니다.</p>");
				out.println("<a href='javascript:apply(\"" + id + "\")'>[적용]</a>");
			
		%>
		<script>
			function apply(id){
				// 중복확인 id를 부모창에 적용
				// 부모창 opener
				opener.document.regForm.id.value=id;
				window.close();
			}
		</script>
		<%
			}else{
				out.println("<p style='color : red'>해당 아이디는 사용하실 수 없습니다.</p>");
			}
		%>
	<hr>
	<a href="javascript:history.back();">[다시시도]</a>
	&nbsp; &nbsp;
	<a href="javascript:window.close()">[창닫기]</a>	
</body>
</html>