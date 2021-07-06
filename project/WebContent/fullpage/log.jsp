
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../fullpage/log.css" />
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
	function idCheck(){
		window.open("IdDoubleCheck.jsp", "idCheck", "width=400, height=350");
	}
	function nickNameCheck(){
		window.open("NickNameDoubleCheck.jsp", "nickNameCheck", "width=400, height=350");
	}
	
	
</script>
</head>

<body>

<form action="registerOk.jsp" name="regForm" method="get" >

<div class="membership">

<div class="membership_header">
	<h1>회원가입</h1>
</div>
   <table>
   <tr>
      <td>아이디</td>
       <td><input type="text" name="id" id="" maxlength="20" placeholder="중복체크를 진행 하세요." readonly>
       <input type="button" value="중복체크" style="width: 74px;" onclick="idCheck()" />
       </td>
   </tr>
   <tr>
      <td>패스워드</td>
      <td><input type="password" name="pwd" id="" maxlength="20" placeholder="숫자와 영문을 넣어주세요."></td>
   </tr>
   <tr>
      <td>패스워드확인</td>
      <td><input type="password" name="pwc" id="" maxlength="20" placeholder="한번 더 입력해주세요."></td>
   </tr>
   <tr>
      <td>닉네임</td>
      <td><input type="text" name="nickname" id="" maxlength="7" placeholder="중복체크를 진행 하세요." readonly/>
      <input type="button" value="중복체크" style="width: 74px;" onclick="nickNameCheck()" />
      </td>
   </tr>
   <tr>
      <td>이름</td>
      <td><input type="text" name="name" id="" maxlength="10" /></td>
   </tr>
   <tr>
      <td>주소</td>
      <td><input type="text" name="adrs1" id="adrs1" />
      <input type="button" id="btn" value="주소검색" style="width: 74px;" /></td>
   </tr>
   <tr>
   <td>상세주소</td>
   <td><input type="text" name="adrs2" id="" placeholder="상세주소를 입력해주세요."></td>
   </tr>
   <tr>
      <td>핸드폰번호</td>
      <td><input type="text" name="hp" id="" placeholder="숫자만 입력해주세요."></td>
   </tr>
   <tr>
      <td>Email</td>
      <td><input type="text" name="email" id="" placeholder="영문으로 입력해주세요."></td>
   </tr>
  <tr>
      <td>생년월일</td>
      <td>
      <select name="year" id="" style="height: 36px; margin-bottom: 11px; padding-right: 10px;" >
      <% for(int i=1900; i <=2021; i++){ %>
      <option value="<%=i %>"><%=i %>년</option>
      <% } %>
      </select>
      <select name="month" id="" style="height: 36px; margin-bottom: 11px; padding-right: 10px;">
      <% for(int i=1; i <=12; i++){ %>
      <option value=" <%=i %>"><%=i %>월</option>
      <% } %>
      </select>
      <select name="day" id="" style="height: 36px; margin-bottom: 11px; padding-right: 10px;">
      <% for(int i=1; i <=31; i++){ %>
      <option value="<%=i %>"><%=i %>일</option>
      <% } %>
      </select></td>
   </tr>
   <tr>
      <td>비밀번호 찾기 질문</td>
      <td >
      <select name="pwq" id="" style="height: 36px; margin-bottom: 11px;">
      <option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
      <option value="자신의 보물 제 1호는?">자신의 보물 제 1호는?</option>
      <option value="기억에 남는 선생님의 성함은?">기억에 남는 선생님의 성함은?</option>
      <option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
      <option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>
      </select></td>
   </tr>
   <tr>
      <td>비밀번호 찾기 답</td>
      <td><input type="text" name="pwa" id="" /></td>
   </tr>
   <tr>
      <td colspan="2" style="text-align: center;">Email수신 동의</td>
   </tr>
   <tr style="text-align-last: center;">
   		<td><input type="radio" name="emailOk" id="1" value="1" style="width: 60px; height: 20px;"/>동의 </td>
   		<td><input type="radio" name="emailOk" id="2" value="2" style="width: 60px; height: 20px;"/>거부</td>
   </tr>

   
      <tr>
      <td colspan="2" style="text-align: center;"><input type="submit" value="회원가입" /></td>
      </tr>
</table>
	<div class="close"> <a href="../fullpage/login2.jsp" id="">닫기</a> </div>
</div>
</form>

	
	
</body>
</html>