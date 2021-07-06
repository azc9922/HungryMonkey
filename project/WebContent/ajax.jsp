<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function load(url){
		console.log(url);
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- AJAX(Asynchronous Javascript And XML 
	자바스크립트를 통해서 서버에 데이터를 요청하는것
	리로드 하지 않고 데이터를 불러오는 방식
	비동기식 자바스크립트
	-->
	
	<input type="button" value="simple1.txt" onclick="load(simple1.txt);" />
	<input type="button" value="simple1.jsp" onclick="load(simple1.jsp);" />
	<input type="button" value="simple3.txt" onclick="load(simple2.txt);" />
	<input type="button" value="simple4.txt" onclick="load(simple2.jsp);" />
	
	<div id="div1">
	<!-- 서버에서가져온 글자를 출력 -->
	
</div>
</body>

</html>