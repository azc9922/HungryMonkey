# 🎂 HungryMonkey


#### 개요 : MVC1 기반 맛집 소개 사이트

- IDE : eclipse

- 개발언어: JAVA, JSP, JavaScript, jQuery, Oracle

- 개발 취지 및 목적 : JSP와 OracleDB에 대해 학습하면서 얻은 지식을 활용하고 회원관리, 게시판을 통해 
                     웹 페이지 운영을 간접적으로 체험해보기 위함.

- 담당 업무 : DB테이블 설계, VO, DAO, CRUD 메서드 작-성
           회원가입, 리뷰(게시판0, 맛집 상세 리스트 페이지 제작
           각 페이지 DB연결

- 프로젝트 참여 인원 : 4명




---
![회원가입](https://user-images.githubusercontent.com/84759004/124624356-c5921a00-deb7-11eb-9afb-2502d88eb2a3.PNG)
```
<script>
      window.onload=function(){
    	var btn = document.getElementById("btn");
   		btn.onclick = openKaKaoPostCode;
       }
      function openKaKaoPostCode(){
      new daum.Postcode({
	       oncomplete : function(data){
	// 팝업에서 검색결과를 항목을 클릭했을떄 실행할 코드를 작성하는 부분
   				document.getElementById("adrs1").value=data.address;
  		}
	    }).open();
	    }
	    function idCheck(){
	        window.open("IdDoubleCheck.jsp", "idCheck", "width=400, height=350");
	        }
	     function nickNameCheck(){
	         window.open("NickNameDoubleCheck.jsp", "nickNameCheck", "width=400, height=350");
	        }
</script>
       <td>아이디</td>
       <td><input type="text" name="id" id="" maxlength="20" placeholder="중복체크를 진행 하세요." readonly>
       <input type="button" value="중복체크" style="width: 74px;" onclick="idCheck()" />
       </td>
       <td>주소</td>
       <td><input type="text" name="adrs1" id="adrs1" />
       <input type="button" id="btn" value="주소검색" style="width: 74px;" /></td>
```
- 카카오 주소api를 활용하여 adr1에 자동으로 검색 값이 입력되도록 유도했습니다.
- Id, NickName의 중복체크를 위해 팝업을 띄어 유효성검사를 실행할 수 있도록 했습니다.
---
![리스트](https://user-images.githubusercontent.com/84759004/124621807-8a8ee700-deb5-11eb-9450-ad983144cf10.PNG)
```
 <% 
		Object obj = session.getAttribute("vo");
		String id = "";
		if(obj != null){ 
			MasterVO m = (MasterVO)obj;
			id = m.getId();
		%>
		<li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
		<li><a href="../fullpage/together.jsp">동행</a></li>
		<%}else { %>
		<li><a href="../fullpage/alert.jsp">고객센터</a></li>
		<li><a href="../fullpage/alert.jsp">동행</a></li>
		<%} %>
		<% if(obj != null){ %>
      	<span><li><a href="../fullpage/logout.jsp">로그아웃<img src="../images/loginon.png" alt=""/></a></li></span>
      	<%}else { %>
      	<span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/loginoff.png" alt=""/></a></li></span>
      	<%} %>
		</ul>
```
- session을 활용하여 로그인 상태를 구분하는 코드를 작성하였습니다.
```
	<div class="checklist">
		<form action="restaurant.jsp" method="get">
			<div class="zone">
				<select name="local" id="local">
					<option value="서울">서울</option>
					<option value="경기도">경기도</option>
					<option value="강원도">강원도</option>
					<option value="충청도">충청도</option>
					<option value="전라도">전라도</option>
					<option value="경상도">경상도</option>
					<option value="제주도">제주도</option>
				</select> <input type="submit" value="이동" />
			</div>
		</form>
	</div>
```
- select optioin을 활용하여 지역별로 맛집 리스트를 나열할 수 있게 해두었습니다.
---
![상세화면](https://user-images.githubusercontent.com/84759004/124626381-941a4e00-deb9-11eb-87ef-041c414da91c.PNG)
```
<%
	RmenuDAO dao2 = new RmenuDAO();
	ArrayList<RmenuVO> list = dao2.selectAll(no);
	%>
	<div class="restuarant_static">
		<div class="foodimages">
			<%for (RmenuVO vo3 : list) {%>
			<div>
				<img src="<%=vo3.getImgsrc()%>" alt="" />
			</div>
			<%}%>
		</div>
		<div class="impormation">
			<table>
				<tr id="restaurant_name">
					<td colspan="2" style="text-align: center;"><%=vo.getRname()%></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td><%=vo.getRadress()%></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<%if (vo.getRtnum() != null) {%>
					<td><%=vo.getRtnum()%></td>
					<%} else {%>
					<td>없음.</td>
					<%}%>
```
DB에서 정보를 불러와 해당 음식점의 정보를 표출해줍니다.
```
<!-- 네이버지도 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0am1s9wjnw"></script>
				<table class="maps">
					<tr>
						<br />
						<td>식당 위치</td>
					</tr>
					<tr>
						<td id="map">
							<div style="width: 20%; height: 300px; padding-right: 200px;"></div>
							<script>
								var map = new naver.maps.Map('map', {
									center : new naver.maps.LatLng(
							<%=vo.getMapmark1()%>
								),
									zoom : 19
								});

								var marker = new naver.maps.Marker({
									position : new naver.maps.LatLng(
							<%=vo.getMapmark1()%>
								),
									map : map
								});
							</script>
						</td>
					</tr>
				</table>
```
- 네이버 지도api를 활용하여 해당 음식점의 위치를 지도에 표기해줍니다.
---
![게시판](https://user-images.githubusercontent.com/84759004/124621844-91b5f500-deb5-11eb-94cb-a1d0a2673230.PNG)
- 기본 게시판의 CRUD 기능을 활용하여 작성했습니다.
- <br>
---
### 느낀점
- 초기설계 및 약속(변수명, 클래스명, 파일위치,정리)의 중요성
    초반에는 중요성을 모르다가 계속된 충돌,엇갈림 파일명,위치가 정리가 안되고 중구난방 해지면서 다소 불편함을 겪었음.
