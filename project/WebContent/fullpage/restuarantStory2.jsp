<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../fullpage/style1.css" />
<link rel="stylesheet" href="../fullpage/board.css" />
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
	.foodimages button{visibility: hidden;}
  
   .restuarant_static{
    position: static;
    display: flex;
    padding-top: 100px;
    flex-direction: row;
    flex-wrap: wrap;
    align-items: center;
   }
   .maps1{
   width:600px; height:600px; z-index: -1;
   }
   .maps1{
   		text-align: center;
		font-size: 30px;
		padding-bottom: 30px;
		font: bold;
   }
   .restuarant_header{
    margin-top: 60px;
    width: 100%;
    text-align: center;
   }
   .restuarant_header h1{
   margin-top: 60px;
    margin-bottom: 60px;
   }
   .foodimages.slick-initialized.slick-slider {
    z-index: -1;
    border-top: 2px solid;
    top: 0px;
	}
	.impormation{
	margin-bottom: 100px;
	margin-top: 50px;
	}
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
      <li><a href="../fullpage/CustomerService.jsp">고객센터</a></li>
      <li><a href="../fullpage/together.jsp">동행</a></li>
         <span><li><a href="../fullpage/login2.jsp">로그인<img src="../images/loginoff.png" alt=""/></a></li></span>
      </ul>
   </nav>
</header>

<div class="restuarant_static">
<div class="restuarant_header">
	<h1>혼밥하기 좋은 맛집 TOP5</h1>
</div>
<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210503_187%2F1620021764557pdBY7_JPEG%2Fupload_2dce0f39ccdc4f318d56eb17d60acab8.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210301_275%2F1614586903949HD86i_JPEG%2Fupload_12f4dadae6a3a567b5ae1087d50fbd82.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210105_280%2F1609841789190U4h3d_JPEG%2Fupload_9890778ea8f8085187fadb5fd365c9fb.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDZfMjc3%2FMDAxNjE3NjkyMjQyNjE2.X1cHSmUMmTu5KyiS6cZqpfI4bhCyI1zAQxbrTLuiQbIg.gwiOalwfxjf7QGMlMsRilXSQvghzEcRrZtzOZAI0z8kg.JPEG.nanaya213%2FKakaoTalk_20210406_154906009.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjhfMjU2%2FMDAxNjE2OTE5Mjk3ODQ1.g0SrL1I0vqZeiFcF9hBwlGirFVHsYk4E4MTulAXlw4wg.ymsbzg3fZAJSmYLN1DhR4ql8k0JbziUxSTmJv1gmGyMg.JPEG.guswjd0407%2FIMG_2345.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">미요</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 강남구 강남대로110길 11 2F</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>0507-1401-4841</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>벤또 & 화로구이</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>3,000 ~ 39,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>평일 오전 11:00 ~ 23:00 <br /> 
         	주말 오전 11:00 ~ 23:00 </td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td>평일 15:30 ~ 17:00 <br />
         	주말 15:30 ~ 17:00
         </td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://www.instagram.com/miyo8581/">음식점 홈페이지 바로가기</a></td>
      </tr>
   </table>
</div>

<table class="maps1">
   <tr>
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map1">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map1', {
                center: new naver.maps.LatLng(37.50402093148841, 127.02572505388244),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.50402093148841, 127.02572505388244),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210426_25%2F1619407305314BF40R_JPEG%2Fupload_03aea2c0e4855d8acd9c1d1e50452ffe.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210404_274%2F1617537805769BElFs_JPEG%2Fupload_957dd964f07ecb6017d00585ba509a7c.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210226_228%2F1614314735050l9nUm_JPEG%2Fupload_b80db8cc2c2214a23652735d1fdf6585.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210213_211%2F1613226308848jIb2P_JPEG%2Fupload_c14826d43875559a022fc598737e67c0.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210123_261%2F1611378638621TutAB_JPEG%2Fupload_b07509079226390d3c0ffe83db97388f.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">회춘</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 제주시 조천읍 신북로 489</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>0507-1336-0853</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>한식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>9,000 ~ 12,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>주6일 오전 11:00 ~ 21:00 <br />
         매주 수요일 정기휴무</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td>16:00 ~ 17:00</td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://instagram.com/rejuvenate0853">음식점 홈페이지 바로가기</a></td>
      </tr>
   </table>
</div>

<table class="maps1">
   <tr>
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map2">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map2', {
                center: new naver.maps.LatLng(33.54314478469051, 126.66259833107878),
                zoom: 18 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.54314478469051, 126.66259833107878),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200417_139%2F1587099785654hgR71_JPEG%2Fupload_9a0c5822ac74ed806f24f1047fe1b516.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEwMjVfMTQy%2FMDAxNjAzNjE3MTkzNTY1._TaTzW-uslk3i9ffy3_M-Cm9Y8HT-amgsWROqWpcY20g.IYQPUC7ZXRoDgp0dfcVk2tjBsXnklkE9iMmLNL3Cb4Ug.JPEG.haichuu%2F1603617171730.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDdfNTAg%2FMDAxNjIwMzE0OTY1Njg5.JohIcrEFksNVbsSqtbsFNZQMBmmqe2QoQJjkLNeytywg.JRwQDlGeBSGpnIZBsnLBZ2aV03oVBM7uXQUOP6LMYNMg.JPEG.jasminedream%2FIMG_0319.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNzA5MDJfMTEg%2FMDAxNTA0MjgxMTAwMjI0.E9HO3qfCq-lSpZLr4a3DM418MCmAq1LOvRrHBMJvYosg.wfC3Xgpw7XKMn80yJb2BXZa2c-DEwOBZcNjsXCdOXVsg.JPEG.k_limm%2Fse3_image_3046601106.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA4MTNfMjc5%2FMDAxNTM0MTEzNDUxMzU2.U4N4vQMuCdFUtq0FeBsODdxIbcZE0rLd0hH7Gi-qM9Qg.mlTJ1jqZ_M1H6x5ye5-VCHk7KqcUlf_DBwj5HHqjfU4g.JPEG.4735980%2FIMG_0619.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">도시락집 미미</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 마포구 와우산로29가길 54-13</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>070-4154-0768</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>가정식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>10,000 ~ 12,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 10:00 ~ 18:00 <br />
         	매주 일요일 휴무 </td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://www.instagram.com/mimi_dosirak/">음식점 홈페이지 바로가기</a></td>
      </tr>
   </table>
</div>

<table class="maps1">
   <tr>
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map3">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map3', {
                center: new naver.maps.LatLng(37.55428072252733, 126.92642775046254),
                zoom: 18 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.55428072252733, 126.92642775046254),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210424_279%2F1619270534430dMFhI_JPEG%2Fupload_5c55bb131d90bc53c09537e9e84f1635.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210422_37%2F1619081528435HYKP4_JPEG%2Fupload_ca16661a505d64ca6a21ac945289ca15.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210422_57%2F1619081533736BuYM9_JPEG%2Fupload_32218870103b1d67cd0e79a069ac5f23.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210102_6%2F1609579109775yjdIb_JPEG%2Fupload_2920b0b5766a20a35c8fdac939906e47.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMTRfNDQg%2FMDAxNjE1Njg0NDIyMTE2.0F8n9PUF7NA-hPZGsk6GDDGHofzzhpPDxHk1PZaoWzcg.nZ8rU_3i6I-dh9OnWWMD03eg1nO-zl4FEA_2L8oaAMEg.JPEG.mymiy22%2FNaverBlog_20210314_101341_01.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">사가라멘 강남역점</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 서초구 서초대로77길 9 1층</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>02-535-6775</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>일식라멘</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>7,000 ~ 8,900</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 11:00 ~ 22:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://instagram.com/#사가라멘">음식점 홈페이지 바로가기</a></td>
      </tr>
   </table>
</div>

<table class="maps1">
   <tr>
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map4">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map4', {
                center: new naver.maps.LatLng(37.518650053580956, 127.02243523907751),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.518650053580956, 127.02243523907751),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210426_81%2F1619425686284GQC7p_JPEG%2Fupload_72a9c26f68b158833a88d51b2804f058.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210415_142%2F1618496152293fiyzM_JPEG%2Fupload_4cb7a83050cad72b9c2c02a6c21bb2c4.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjlfMTMx%2FMDAxNjE2OTk2MTYzMjA5.YUGJSb4QiLdY9gWKU-Clw8dcp8NSQXheBW0voD-abYUg.a9K-4kYUEOnfcMjAT2djmToDOLm5QhSOFSixLJUCu5sg.JPEG.eunju917%2FIMG_7055.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210414_186%2F1618408249808nQAwk_JPEG%2Fupload_59d263861589153739f764685472569b.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210407_287%2F1617722172140t2LU5_JPEG%2Fupload_375a89714dddc97648914e5115d7650f.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">금학 칼국수</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>강원 강릉시 대학길 12-6</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>033-646-0175</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>한식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>7,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 09:00 ~ 21:00 <br />
          매주 일요일 휴무</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://map.naver.com/v5/search/%EA%B8%88%ED%95%99%EC%B9%BC%EA%B5%AD%EC%88%98/place/15293378?c=14347719.8838400,4544878.8194368,15,0,0,0,dh&placePath=%3Fentry%253Dpll">음식점 홈페이지 바로가기</a></td>
      </tr>
   </table>
</div>

<table class="maps1">
   <tr>
      <td>식당 위치</td>
   </tr>
   <tr>
      <td id="map">
         <div style="width:20%;height:300px;padding-right:200px;"></div>
            <script>
            var map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.75440457489663, 128.89627222178558),
                zoom: 18
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.75440457489663, 128.89627222178558),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

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
</body>
</html>