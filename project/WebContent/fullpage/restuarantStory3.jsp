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
	<h1>이색맛집 외국음식점</h1>
</div>
<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210429_96%2F1619658719729IfUQg_JPEG%2Fupload_766bc7176f9c7eb9890aa3677b4db7ec.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210404_284%2F1617539807128e1dLI_JPEG%2Fupload_4d6cb467c4bb7b9423660b35d584a54c.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210402_192%2F1617331546841L9jgQ_JPEG%2Fupload_4b2fdd90899ebd5ff906abde6dac3845.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210402_238%2F1617331546089WYNx0_JPEG%2Fupload_2607c968c2ff50a58f0b5dc9bb06a308.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210303_198%2F1614783182397B6bco_JPEG%2Fupload_9e26e6556be8ff22f6becfba6b6d1a67.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">카사블랑카 샌드위치</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 용산구 신흥로 35</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>02-797-8367</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>샌드위치</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>8,000원 ~ 11,000원</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>평일 오후 12:00 ~ 22:00 <br /> 
         	매주 월요일 휴무</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://www.facebook.com/CasablancaSandwicherie">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(37.54160593801241, 126.98710033277868),
                zoom: 18 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.54160593801241, 126.98710033277868),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210422_26%2F1619066358884PmMmL_JPEG%2Fupload_40db594048521aa09c73f384081e2853.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210412_111%2F1618209766168um78d_JPEG%2Fupload_ff49f07ad6ff2b3f4169d7bf783db598.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210412_285%2F1618209767184avJvU_JPEG%2Fupload_532d27838e0caef7583ef0ae7bd6ae2c.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDNfMjUg%2FMDAxNjIwMDM1MjE4NDEx.bssA35_goZDzYdlq6g5fBdAz16nESS-F0y6SgyMqa50g.vUVkti0URbrcLtwPSoYcTmxDS5p9BHVFzFOoN4Ag-bgg.JPEG.2tngkr2%2F20210503%25A3%25DF125546.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjhfMjA5%2FMDAxNjE2OTI3MDc0NTQ5.HyrmZ8lO5pjS9XjwCNyZA2zgzw0gJgtinaevHYLN4uYg.WMAoxyb8aScRymYlVzVt8NKy0ZlMpM9b2lBdcP_dUigg.JPEG.dekilu%2FDSC04859.JPG" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">카파도키아</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>부산 금정구 금단로 123-9</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>051-515-5981</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>터키식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>10,000 ~ 35,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 11:30 ~ 22:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://capa5981.modoo.at">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(35.260102107071454, 129.09222627245737),
                zoom: 18 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(35.260102107071454, 129.09222627245737),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210429_237%2F1619690244971IYQgH_JPEG%2Fupload_02ac28a67c96573e8cd51eb704a72a36.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDJfMjYz%2FMDAxNjE5ODgyNTg3NjEy.13B9VFCIZTznbNSqxsACNqYiE5wHxfIiLos17KHlVS8g.cBOziVQy8SZ95S3lHl_RsW1FsE8cZRq0z9mvyFphGDkg.JPEG.mangoliveu%2Foutput_1226830226.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210421_219%2F1618934403952i78gm_JPEG%2Fupload_7d3daa0436b96ddc6a153401e88d6a6c.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210408_180%2F1617869244047XiJ0L_JPEG%2Fupload_142464b059a6c658731c9473181f4046.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210409_249%2F16179523243706m2v4_JPEG%2Fupload_7c9160ec5fd44804fd9b28bbc51c9323.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">모로코코 카페</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 용산구 신흥로 34</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>02-794-8367</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>모로코식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>6,000 ~ 12,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오후 12:00 ~ 22:00 <br />
         	매주 월요일 휴무</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://map.naver.com/v5/search/%EB%AA%A8%EB%A1%9C%EC%BD%94%EC%BD%94/place/603232677?c=14134228.8751824,4515183.0339480,13,0,0,0,dh">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(37.54143180453041, 126.98729613379587),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.54143180453041, 126.98729613379587),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210214_231%2F16132987202788f6yd_JPEG%2Fupload_40a5a154dd1e9062e3def6f65acd9b0a.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201018_32%2F1603019979120Dtw4Y_JPEG%2Fupload_6cc30db4bb642d3bc3393db28d78a4ac.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201018_149%2F16030200133604lsQw_JPEG%2Fupload_ad6ef944647dd441acd54810c85b1d80.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20201018_63%2F1603020100954HFLCW_JPEG%2Fupload_b011b081ecc7901252cf95362453db53.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA5MDZfMTc1%2FMDAxNTk5MzUwNzI2NzIz.JIiHmnSMYncvIxy0fOfmDV9NHAZPHKkFta9pOAqf6XAg.IWzabz_MxHskIPfVd1mXyq3qOGl3FdaLNvUbolmBVFcg.JPEG.haesu_kal%2F1599350726093.jpg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">진타이식당</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>경기 구리시 원수택로 64 2층</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>0507-1326-4117</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>태국식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>8,000 ~ 17,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 10:00 ~ 22:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="https://map.naver.com/v5/search/%EC%A7%84%ED%83%80%EC%9D%B4/place/1276085555?c=14152494.9362854,4522767.0203482,15,0,0,0,dh&placePath=%3Fentry%253Dpll">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(37.59939674312378, 127.1414052811454),
                zoom: 17 
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.59939674312378, 127.1414052811454),
                map: map
            });
            </script>
       </td>
   </tr>
</table>

<div class="foodimages">
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210508_272%2F1620483669487lYDGE_JPEG%2Fupload_7b847be2dc69b83924292ac1d2777a97.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210504_253%2F1620097969039GzcjX_JPEG%2Fupload_a9085da239baa873371c49f07e50434f.jpeg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210502_262%2F1619943004157Q5CzQ_JPEG%2Fupload_03ac51c2aff3a90d35140115d39ecb35.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210307_71%2F16150905149120PrFN_JPEG%2Fupload_bf5ff3ab134b8421c09f8b990e222a0f.jpg" alt="" /></div>
    <div><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210403_48%2F1617449810946z0AgD_JPEG%2Fupload_2fff3184410c93257f556609c8781da7.jpeg" alt="" /></div>
</div>
  
<div class="impormation">
   <table>
      <tr id="restaurant_name">
         <td colspan="2" style="text-align: center; font-size:50px;">에베레스트 레스토랑</td>
      </tr>
      <tr>
         <td>주소 : </td>
         <td>서울 종로구 종로51가길 2-1</td>
      </tr>
      <tr>
         <td>전화번호 : </td>
         <td>02-766-8850</td>
      </tr>
      <tr>
         <td>음식종류 : </td>
         <td>네팔식</td>
      </tr>
      <tr>
         <td>가격대 : </td>
         <td>8,000 ~ 29,000</td>
      </tr>
      <tr>
         <td>주차 : </td>
         <td>불가능</td>
      </tr>
      <tr>
         <td>영업시간 : </td>
         <td>매일 오전 11:00 ~ 23:00</td>
      </tr>
      <tr>
         <td>쉬는시간 : </td>
         <td></td>
      </tr>
      <tr>
         <td>홈페이지</td>
         <td><a href="http://www.everestfood.com/">음식점 홈페이지 바로가기</a></td>
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
                center: new naver.maps.LatLng(37.57253730444041, 127.01247977690257),
                zoom: 18
            });
            
            var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.57253730444041, 127.01247977690257),
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