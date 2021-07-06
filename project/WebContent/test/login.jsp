<%@page import="project.MasterVO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	span{
		display : none;
	}
</style>

<script>

window.onload = function(){
	var btn1 = document.getElementById("btn1");
	btn1.onclick = function(){
		var frm = document.frm;
		frm.action = "loginOk.jsp";
		frm.method = "post";
		frm.submit();
	}
}

</script>

</head>
<body>

<%
	Object obj = session.getAttribute("vo");
	
	if(obj != null){
		MasterVO vo = (MasterVO)obj;
		out.println("<h1><a href='logout.jsp'>" + vo.getId() + "</a>환영합니다.</h1>");	
		out.println("<a href='list.jsp'> <h3>게시판 보러가기<h3> </a>");
	}else{

%>


<form action="" name = "frm">
	<table>
	<tr>
		<th>ID</th>
	    <td><input type="text" name="id" id="id" /></td>
	</tr>
	<tr>
		<th>PW</th>
		<td><input type="password" name="pwd" id="" /></td>
		<p><span style="color:red;">로그인에 실패했습니다.</span></p>
	</tr>
		<tr>
		
		<td colspan="2"><input type="button" value="로그인" id="btn1" />
		<a href="./register.jsp"><input type="button" value="회원가입" /></a></td>
		
		</tr>
</table>
</form>

<%

	}
%>
</body>
</html>