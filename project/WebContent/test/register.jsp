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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload=function(){
		var btn = document.getElementById("btn");
		btn.onclick = openKaKaoPostCode;
		}
	function openKaKaoPostCode(){
		new daum.Postcode({
			oncomplete : function(data){
				//console.dir(data);
				// 팝업에서 검색결과를 항목을 클릭했을떄 실행할 코드를 작성하는 부분
				/* document.getElementById("address").value=data.zonecode; */
				document.getElementById("adrs1").value=data.address;
				/* document.getElementById("addrs2").value=data.jibunAddress;
 */				}
		}).open();
	}
	
	
</script>
<script>
function idCheck(){
	window.open("IdDoubleCheck.jsp", "idCheck", "width=400, height=350");
}
</script>
</head>
<body>


	<form action="registerOk.jsp" name="regForm" method="get">
		<table>
			<tr>
				<th>ID</th>
				<td><input type="text" name="id" id="id" maxlength="20" readonly/> <input
					type="button" value="중복체크" onclick="idCheck()" /></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" name="pwd" id="" maxlength="20" /></td>
			</tr>
			<tr>
				<th>pwc</th>
				<td><input type="password" name="pwc" id="" /></td>
			</tr>
			<tr>
				<th>Nickname</th>
				<td><input type="text" name="nickname" id="" maxlength="7" /></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="name" id="" maxlength="10" /></td>
			</tr>
			<tr>
				<th>address</th>
				<td><input type="text" name="adrs1" id="adrs1" /> <input
					type="button" id="btn" value="우편번호찾기" /></td>
				<br />
			</tr>
			<tr>
				<th>상세주소</th>
				<td><input type="text" name="adrs2" id="adrs2" /></td>
			</tr>
			<tr>
				<th>hp</th>
				<td><input type="text" name="hp" id="" /></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="email" id="" /></td>
			</tr>
			<tr>
				<th>birth</th>
				<td><select name="year" id="">
						<%
						for (int i = 1900; i <= 2021; i++) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
						}
						%>
				</select> <select name="month" id="">
						<%
						for (int i = 1; i <= 12; i++) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
						}
						%>
				</select> <select name="day" id="">
						<%
						for (int i = 1; i <= 31; i++) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
						}
						%>
				</select></td>
			</tr>
			<tr>
				<th>pwq</th>
				<td><select name="pwq" id="">
						<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
						<option value="자신의 보물 제 1호는?">자신의 보물 제 1호는?</option>
						<option value="기억에 남는 선생님의 성함은?">기억에 남는 선생님의 성함은?</option>
						<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
						<option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>
				</select></td>
			</tr>
			<tr>
				<th>pwa</th>
				<td><input type="text" name="pwa" id="" /></td>
			</tr>
			<tr>
				<th>emailcheck</th>
				<td><input type="radio" name="emailOk" id="1" value="1" />동의 <input
					type="radio" name="emailOk" id="2" value="2" />거부</td>
			</tr>
			<!-- <tr>
		<th>profile</th>
		<form action="result.jsp" method="post" enctype="multipart/form-data">
			<td><input type="file" name="filename" id="" /></td>
			<<td >
				<input type="submit" value="전송" />
			</td>
	</form>
	</tr> -->

			<tr>

				<td colspan="2"><input type="submit" value="가입" id="btn1" /></td>
				<!-- <td><input type="submit" value="테스트" /></td> -->

			</tr>
		</table>
	</form>
</body>
</html>