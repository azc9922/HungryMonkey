<%@page import="project.MasterDAO"%>
<%@page import="project.MasterVO"%>
<%@page import="vo.MemberVO"%>
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
   // 로그인 되어있는 상태를 확인
   
   
   // 1. 로그인 되어 있는 상태인지 판정 : session vo 속성 가져오기
   Object obj = session.getAttribute("vo");
   String id ="";
   if(obj != null){
   // 2. 있다면 로그인 되어있는 상태 : 아래코드를 처리
      MasterVO m = (MasterVO)obj;
      id = m.getId();
      //out.println("<h3>" + id  + "</h3>");
      
   }else{
      // 3 없다면 로그인 안되어있는 상태 day5/login.jsp로 리다이렉트
      response.sendRedirect("./login.jsp");
   }
   
	MasterDAO dao = new MasterDAO();
	MasterVO vo1 = dao.selectNickName(id);
   
%>


<form action="writeOk.jsp" method = "get">
<table>
   <tr>
      <td>작성자</td>
      <td><input type="text" name="writer" id="" value="<%=vo1.getNickname() %>" 
           readonly="readonly" /></td>
           <%-- value="<%=id %>보류" 
           readonly="readonly" 나중에 위에 옮겨야함--%>
   </tr>
   
   <tr>
      <th>제목</th>
      <td><input type="text" name="title" id="" /></td>
   </tr>
   
   <tr>
      <th>내용</th>
      <td><textarea name="contents" id="" cols="30" rows="10"
                  ></textarea></td>
   </tr>
   
      <tr>
         <td colspan="2">
            <a href="list.jsp"><input type="button" value="목록" /></a>
            <input type="submit" value="작성" />
            <input type="reset" value="다시쓰기" />
         </td>
      </tr>
   </table>
</form>
</body>
</html>