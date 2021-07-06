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
	<h1>제주 뷰 맛집 카페</h1>
</div>
<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200911_105%2F1599755187758SHU3o_JPEG%2Fupload_e8c5f81ff82c3dd4d620a1cc1d5727ed.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210213_247%2F1613224750350npXA3_JPEG%2Fupload_13eb8a23d974186c83b76356f0875cb6.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210123_124%2F1611383197950gSCRM_JPEG%2Fupload_1bb95569064161334af8e9f5c1b96320.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20200917_82%2F16003093464833dQYQ_JPEG%2Fupload_3a694b8fca735a0378e72660e7b86756.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210301_235%2F1614574781007tX5iU_JPEG%2Fupload_55c87b3e90f114e2c83bd50d0ac8f614.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">The Cliff Jeju</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 서귀포시 중문관광로 154-17</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>0507-1312-8866</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>TEA & FOOD</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>7,500원 ~ 35,000원</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>평일 오전 10:00 ~ 01:00 <br /> 
         	매일 오전 10:00 ~ 19:00 카페음료 주문가능 <br />
         	매일 오전 11:00 ~ 20:00 FOOD 주문 가능<br />
         	주말 오전 10:00 ~ 02:00 (공휴일포함)</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://www.instagram.com/thecliffjeju">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(33.24432464615031, 126.41500420536768),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.24432464615031, 126.41500420536768),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210225_115%2F1614214920213N2BR9_JPEG%2Fupload_f1661d7044b72430015a80008a5dd52b.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201222_181%2F1608624402363wBHpv_JPEG%2Fupload_d58d7f917e4f38d54d56607cd465ecaf.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201211_136%2F1607612638582jRsEh_JPEG%2Fupload_5923975caeb29bb43a3b74a9fbc6ec6f.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201122_207%2F1606037896169tmy9l_JPEG%2Fupload_648fd67c60721249234570f7d91d7e24.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201122_9%2F1606054538489GKLb4_JPEG%2Fupload_e7d9dfac039408e970b08bf429dc4d92.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">카페델문도</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 제주시 조천읍 조함해안로 519-10</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>064-702-0007</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>TEA & BREAD</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>6,500 ~ 11,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 07:00 ~ 00:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://www.https://www.delmoondo.com/">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(33.543790766208446, 126.66884601636814),
                zoom: 18 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.543790766208446, 126.66884601636814),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210504_89%2F16201311001613nuWa_JPEG%2Fupload_d33ad59d9bfce91fd3c438b7363e165e.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210429_246%2F1619682435552XKsmh_JPEG%2Fupload_9f5378e14553648b3f44430a0fddc8d4.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210405_93%2F1617549418215xH92a_JPEG%2Fupload_ab4c30edb2262892d65331ff357487ca.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210329_62%2F1616997153582aabhI_JPEG%2Fupload_84a0b3ed31ff44e4ef74edbf8535f42f.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210316_207%2F1615904439596iTOCN_JPEG%2Fupload_0160146ce43a56ad0ef1942b2adfbfe3.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">원앤온리</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 서귀포시 안덕면 산방로141</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>0507-1323-6186</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>BRUNCH & TEA</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>7,000 ~ 18,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 09:00 ~ 21:00 <br />
         	Last Order 20:30 연중무휴</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://oneandonlyjeju.modoo.at">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(33.23921976204679, 126.31929625155037),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.23921976204679, 126.31929625155037),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210307_222%2F1615105499684Cgnse_JPEG%2Fupload_c39d4e560724d99dfd0950016cf3be30.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210307_116%2F1615105499115xMGYE_JPEG%2Fupload_a7f44852474f013857ace18c67ec8a23.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210307_268%2F1615105503818c07mz_JPEG%2Fupload_0b3e864af409ce7efd4a6f1475287eab.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210307_34%2F16151055112364AIfw_JPEG%2Fupload_5d3dfc9a39badf2861b6e8b6fc3cec18.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201225_232%2F16088818959366CCc7_JPEG%2Fupload_67ea04eee73de460a4b08e957a809417.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">봄날</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 제주시 애월읍 애월로1길 25</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>064-799-4999</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>TEA & BREAD</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>5,000 ~ 8,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 09:00 ~ 21:30</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://www.jejubomnal.com/">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(33.46244715814747, 126.30959472902414),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.46244715814747, 126.30959472902414),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210512_197%2F1620784936565IBMEq_JPEG%2Fupload_28d38e29c571a7e5bccac0ad8d641883.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210106_148%2F16099314601030w9mo_JPEG%2Fupload_759584be0eb724ac952f0c1316600d8e.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201221_24%2F1608551868927GX1XF_JPEG%2Fupload_e1e14eb30e0965d47326187ec9d91961.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201222_265%2F1608636897469ylsr4_JPEG%2Fupload_529d3e470efa7775779ee781706023d0.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201102_80%2F1604322497381PHF2R_JPEG%2Fupload_d651b217bd0c6e1c98fecafe62cd1a2f.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">오르다</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>제주 서귀포시 성산읍 한도로 269-37</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>064-783-8368</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>TEA & BREAD</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>5,500 ~ 11,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 09:00 ~ 21:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://www.instagram.com/orda_jeju">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(33.46897567093205, 126.93543298809566),
                zoom: 18
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(33.46897567093205, 126.93543298809566),
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