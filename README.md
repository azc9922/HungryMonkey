# ๐ HungryMonkey


#### ๊ฐ์ : MVC1 ๊ธฐ๋ฐ ๋ง์ง ์๊ฐ ์ฌ์ดํธ

- IDE : eclipse

- ๊ฐ๋ฐ์ธ์ด: JAVA, JSP, JavaScript, jQuery, Oracle

- ๊ฐ๋ฐ ์ทจ์ง ๋ฐ ๋ชฉ์  : JSP์ OracleDB์ ๋ํด ํ์ตํ๋ฉด์ ์ป์ ์ง์์ ํ์ฉํ๊ณ  ํ์๊ด๋ฆฌ, ๊ฒ์ํ์ ํตํด 
                     ์น ํ์ด์ง ์ด์์ ๊ฐ์ ์ ์ผ๋ก ์ฒดํํด๋ณด๊ธฐ ์ํจ.

- ๋ด๋น ์๋ฌด : DBํ์ด๋ธ ์ค๊ณ, VO, DAO, CRUD ๋ฉ์๋ ์-์ฑ
           ํ์๊ฐ์, ๋ฆฌ๋ทฐ(๊ฒ์ํ0, ๋ง์ง ์์ธ ๋ฆฌ์คํธ ํ์ด์ง ์ ์
           ๊ฐ ํ์ด์ง DB์ฐ๊ฒฐ

- ํ๋ก์ ํธ ์ฐธ์ฌ ์ธ์ : 4๋ช




---
![ํ์๊ฐ์](https://user-images.githubusercontent.com/84759004/124624356-c5921a00-deb7-11eb-9afb-2502d88eb2a3.PNG)
```
<script>
      window.onload=function(){
    	var btn = document.getElementById("btn");
   		btn.onclick = openKaKaoPostCode;
       }
      function openKaKaoPostCode(){
      new daum.Postcode({
	       oncomplete : function(data){
	// ํ์์์ ๊ฒ์๊ฒฐ๊ณผ๋ฅผ ํญ๋ชฉ์ ํด๋ฆญํ์๋ ์คํํ  ์ฝ๋๋ฅผ ์์ฑํ๋ ๋ถ๋ถ
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
       <td>์์ด๋</td>
       <td><input type="text" name="id" id="" maxlength="20" placeholder="์ค๋ณต์ฒดํฌ๋ฅผ ์งํ ํ์ธ์." readonly>
       <input type="button" value="์ค๋ณต์ฒดํฌ" style="width: 74px;" onclick="idCheck()" />
       </td>
       <td>์ฃผ์</td>
       <td><input type="text" name="adrs1" id="adrs1" />
       <input type="button" id="btn" value="์ฃผ์๊ฒ์" style="width: 74px;" /></td>
```
- ์นด์นด์ค ์ฃผ์api๋ฅผ ํ์ฉํ์ฌ adr1์ ์๋์ผ๋ก ๊ฒ์ ๊ฐ์ด ์๋ ฅ๋๋๋ก ์ ๋ํ์ต๋๋ค.
- Id, NickName์ ์ค๋ณต์ฒดํฌ๋ฅผ ์ํด ํ์์ ๋์ด ์ ํจ์ฑ๊ฒ์ฌ๋ฅผ ์คํํ  ์ ์๋๋ก ํ์ต๋๋ค.
---
![๋ฆฌ์คํธ](https://user-images.githubusercontent.com/84759004/124621807-8a8ee700-deb5-11eb-9450-ad983144cf10.PNG)
```
 <% 
		Object obj = session.getAttribute("vo");
		String id = "";
		if(obj != null){ 
			MasterVO m = (MasterVO)obj;
			id = m.getId();
		%>
		<li><a href="../fullpage/CustomerService.jsp">๊ณ ๊ฐ์ผํฐ</a></li>
		<li><a href="../fullpage/together.jsp">๋ํ</a></li>
		<%}else { %>
		<li><a href="../fullpage/alert.jsp">๊ณ ๊ฐ์ผํฐ</a></li>
		<li><a href="../fullpage/alert.jsp">๋ํ</a></li>
		<%} %>
		<% if(obj != null){ %>
      	<span><li><a href="../fullpage/logout.jsp">๋ก๊ทธ์์<img src="../images/loginon.png" alt=""/></a></li></span>
      	<%}else { %>
      	<span><li><a href="../fullpage/login2.jsp">๋ก๊ทธ์ธ<img src="../images/loginoff.png" alt=""/></a></li></span>
      	<%} %>
		</ul>
```
- session์ ํ์ฉํ์ฌ ๋ก๊ทธ์ธ ์ํ๋ฅผ ๊ตฌ๋ถํ๋ ์ฝ๋๋ฅผ ์์ฑํ์์ต๋๋ค.
```
	<div class="checklist">
		<form action="restaurant.jsp" method="get">
			<div class="zone">
				<select name="local" id="local">
					<option value="์์ธ">์์ธ</option>
					<option value="๊ฒฝ๊ธฐ๋">๊ฒฝ๊ธฐ๋</option>
					<option value="๊ฐ์๋">๊ฐ์๋</option>
					<option value="์ถฉ์ฒญ๋">์ถฉ์ฒญ๋</option>
					<option value="์ ๋ผ๋">์ ๋ผ๋</option>
					<option value="๊ฒฝ์๋">๊ฒฝ์๋</option>
					<option value="์ ์ฃผ๋">์ ์ฃผ๋</option>
				</select> <input type="submit" value="์ด๋" />
			</div>
		</form>
	</div>
```
- select optioin์ ํ์ฉํ์ฌ ์ง์ญ๋ณ๋ก ๋ง์ง ๋ฆฌ์คํธ๋ฅผ ๋์ดํ  ์ ์๊ฒ ํด๋์์ต๋๋ค.
---
![์์ธํ๋ฉด](https://user-images.githubusercontent.com/84759004/124626381-941a4e00-deb9-11eb-87ef-041c414da91c.PNG)
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
					<td>์ฃผ์ :</td>
					<td><%=vo.getRadress()%></td>
				</tr>
				<tr>
					<td>์ ํ๋ฒํธ :</td>
					<%if (vo.getRtnum() != null) {%>
					<td><%=vo.getRtnum()%></td>
					<%} else {%>
					<td>์์.</td>
					<%}%>
```
DB์์ ์ ๋ณด๋ฅผ ๋ถ๋ฌ์ ํด๋น ์์์ ์ ์ ๋ณด๋ฅผ ํ์ถํด์ค๋๋ค.
```
<!-- ๋ค์ด๋ฒ์ง๋ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0am1s9wjnw"></script>
				<table class="maps">
					<tr>
						<br />
						<td>์๋น ์์น</td>
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
- ๋ค์ด๋ฒ ์ง๋api๋ฅผ ํ์ฉํ์ฌ ํด๋น ์์์ ์ ์์น๋ฅผ ์ง๋์ ํ๊ธฐํด์ค๋๋ค.
---
![๊ฒ์ํ](https://user-images.githubusercontent.com/84759004/124621844-91b5f500-deb5-11eb-94cb-a1d0a2673230.PNG)
- ๊ธฐ๋ณธ ๊ฒ์ํ์ CRUD ๊ธฐ๋ฅ์ ํ์ฉํ์ฌ ์์ฑํ์ต๋๋ค.
- <br>
---
### ๋๋์ 
- ์ด๊ธฐ์ค๊ณ ๋ฐ ์ฝ์(๋ณ์๋ช, ํด๋์ค๋ช, ํ์ผ์์น,์ ๋ฆฌ)์ ์ค์์ฑ
    ์ด๋ฐ์๋ ์ค์์ฑ์ ๋ชจ๋ฅด๋ค๊ฐ ๊ณ์๋ ์ถฉ๋,์๊ฐ๋ฆผ ํ์ผ๋ช,์์น๊ฐ ์ ๋ฆฌ๊ฐ ์๋๊ณ  ์ค๊ตฌ๋๋ฐฉ ํด์ง๋ฉด์ ๋ค์ ๋ถํธํจ์ ๊ฒช์์.
