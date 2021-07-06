<%@page import="project.RmenuVO"%>
<%@page import="project.RmenuDAO"%>
<%@page import="project.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="project.ReviewDAO"%>
<%@page import="project.ResVO"%>
<%@page import="project.ResDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 상단,하단css -->
<link rel="stylesheet" href="../fullpage/style1.css" />
<link rel="stylesheet" href="../fullpage/board.css" />
<!-- 하단바 이미지호출 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f995c83b9d.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- 슬라이더 -->
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- 네이버지도 -->
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
 <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=0am1s9wjnw"></script>
<style>	
	.foodimages button{position:absolute; z-index:-1; top:-200%;}
	.foodimages button.slick-prev{left:0; font-size:0; color:transparent;, z-index:-1; top:-200%; }

	</style>

</head>
<body>


<header>
<nav class="navbar">
   
      
      <div class="navbar_logo">
       <a href="../fullpage/Fullpage.jsp"><img src="../images/monkey2.jpg" alt="" /></a>
      </div>
      <b6>배고픈 원숭이</b6>      
      <ul class="navbar_menu">
      <li><a href="../fullpage/restaurant.jsp">맛집리스트</a></li>
      <li><a href="../fullpage/restuarantStory.jsp">맛집스토리</a></li>
      <% 
        String rno = request.getParameter("rno");
  		if (rno != null) {
		// 2. DAO객체 생성
		ResDAO dao = new ResDAO();
		
		// 3. dao를 통해서 지정한 게시물을 가져오기
		int no = Integer.parseInt(rno);
		
		ResVO vo = dao.selectOne(no);
		dao.close();
	
		Object obj = session.getAttribute("vo");
		if(obj != null){ %>
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
   </nav>
</header>
<%
         RmenuDAO dao2 = new RmenuDAO();
        ArrayList<RmenuVO> list = dao2.selectAll(no);
      %>
<div class="restuarant_static">
<div class="foodimages">
   <%for(RmenuVO vo3 : list){ %>
    <div><img src="<%= vo3.getImgsrc() %>" alt="" /></div>
    <%} %>
</div>

<div class="impormation">
   <table>
     <tr id="restaurant_name">
         <td colspan="2" style="text-align: center;"><%=vo.getRname() %></td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td><%= vo.getRadress() %></td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <%if(vo.getRtnum() != null){ %>
         <td><%= vo.getRtnum() %></td>
         <%}else{ %>
         <td>없음.</td>
         <%} %>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td><%=vo.getFoodtype() %></td>
      </tr>
      <tr>
      
         <td>메뉴 : </td>
         <%for(RmenuVO vo2 : list){
         if(vo2.getSal() == null){
         continue;            
         }
         %>
         <td><%=vo2.getMenu()  %> <%=vo2.getSal() %>
         <%
         break;
         } 
         %>
         </td>
      </tr>
      <tr>
         <td>주차 : </td>
      <%if(vo.getParking() == 2){ %>
         <td>불가</td>
         <%}else{ %>
         <td>가능</td>
         <%} %>
      </tr>

      <tr>
         <td>홈페이지 :</td>
         <%if(vo.getRhpl() == null){ %>
         <td>없음</td>
         <%}else{ %>
         <td><a href="<%=vo.getRhpl()%>"><%=vo.getRhpl() %></a></td>
         <%} %>
      </tr>

<div class="introduce">
   <table>

   </table>
</div>


<table class="maps">
   <tr>
   <br />
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(<%= vo.getMapmark1()%>),
                zoom: 19 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(<%= vo.getMapmark1()%>),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="count">
   <ul id="allcount">
   <% 
	ReviewDAO dao1 = new ReviewDAO();
	int result = dao1.getTotalCount(no);   
   %>
      <li>전체리뷰(<%= result %>)</li>
   </ul>
   <ul id="evaluate">
   <%
   	int good = dao1.getGradeCount(no,1);
   	int soso = dao1.getGradeCount(no,2);
   	int bad = dao1.getGradeCount(no,3);
   %>
      <li>만족(<%= good %>)</li>
      <li>보통(<%= soso %>)</li>
      <li>불만족(<%= bad %>)</li>
   </ul>
</div>
<div class="write_img"><a href="Review_Write.jsp?rno=<%=rno%>"><input type="button" value="리뷰 작성" /></a></div>
<%
	int startNo = 1;
	int endNo = 100;
	ArrayList<ReviewVO> list1 = dao1.selectAll(no);
	for(ReviewVO vo1 : list1){
%>


<div class="review">
   <table>
      <tr>
         <td rowspan="2" style="text-align: center; padding-right: 30px;"><img alt="프로필사진" src="<%=vo1.getImgSrc() %>" style="width: 100px; height: 100px;"><p><%=vo1.getNickname() %></p></td>
         <td style="text-align: right;"><%=vo1.getTitle() %></td>
         <td style="text-align: right;"><%=vo1.getrRegdate() %></td>
      </tr>
      <tr id="review_img">
         <td colspan="2" style="width: 800px;"><%=vo1.getrContents() %></td>
         
      </tr>
      <%} %>
   </table>
   </div>
   
</div>
 
 
<footer>
    <div class="footer_contents">
       <h3>안녕하세요</h3>
       <p>배고픈 원숭이를 찾아주셔서 감사합니다.</p>
       <ul class="socials">
          <li><a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a></li>
          <li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
          <li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
       </ul>
    </div>
    <div class="footer_bottom">
       <p>copyright &copy;2021 codeOpacity. designed by <span>HungryMonkey</span></p>
    </div>
</footer>


<script type="text/javascript">
  $('.foodimages').slick({
		 autoplay: true,
		autoplaySpeed: 1000,
	  slidesToShow: 3,
	  slidesToScroll: 1,
	});
  </script>
<%} %>
</body>
</html>