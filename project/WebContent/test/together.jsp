<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="./style.css" />
<title>Insert title here</title>
<style>
.wrapper{
	height: auto;
	min-height: 100%;
}
footer{
	height: 20%;
	background: gray;
	color: white;
	position: relative;
	transfrom:translateY(-100%);
}

div#header{
	background-color: skyblue;
	border-bottom: 1px solid gold;
	width: 100%;
	margin:0;
	    margin-bottom: 60px;
	text-align: center;
}

h1{
	margin:0px;
	 padding-top: 150px;
	 padding-bottom: 50px;
}

table {
	width: 60%;
	margin: auto;
	border-bottom: 1px solid black;
}

table, th, td {
	border-top: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
 
#col1 {width: 10%;}
#col2 {width: 55%;}
#col3 {width: 10%;}
#col4 {width: 10%;}
#col5 {width: 5%;}
</style>

</head>

<body>
<header>
<nav class="navbar">
	
		<div class="navbar_logo">
		 <a href="#메인화면"><img src="../images/logo.PNG" alt="" width="50px" height="50px;" />배고픈원숭이</a>
		</div>
		
		<ul class="navbar_menu">
		<li><a href="">맛집리스트</a></li>
		<li><a href="">맛집스토리</a></li>
		<li><a href="">고객센터</a></li>
		<li><a href="">동행</a></li>
		<li><a href=""><img src="../images/loginIcon1.png" alt="" width="30px" height="30px;" /></a></li>
		</ul>
	</nav>
</header>
<div class="wrapper">
<div id="header"><h1>밥한끼해요</h1></div>
<form action="deleteList.jsp">

	<table>
		<tr>
			<th id="col1">게시물번호</th>
			<th id="col2">제목</th>
			<th id="col3">작성자</th>
			<th id="col4">작성일</th>
			<th id="col5">조회수</th>
		</tr>
		
		<tr>
			<td></td>
			<td><a href=""></a></td><!-- 제목누르면 하이퍼링크로 타고감 -->
			<td></td>
			<td></td>
			<td></td>
		</tr>
	

		<tr>
			<!-- 5칸 병합 -->
			<td id="writer" colspan="5"><a href="write.jsp"><input type="button"
					value="글쓰기" /></a>
					
			</td>
		</tr>

		<!-- 페이지 번호 -->
		<tr>
			<td colspan="5">
				<a href=""></a>
			</td>
		</tr>

	</table>
</form>
</div>
<footer>
footer <br>
footer <br>
footer <br>
footer <br>
footer <br>


</footer>
</body>
</html>