<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <style>
 
 .profile{
 
 position: relative;
 overflow: hidden;
 
 }
 .profile input[type=file]{
 /* position: absolute; */
 top: 0;
 right : 0;
 min-width : 100%;
 min-height: 100%;
 font-size : 10px;
 text-align: right;
 filter : alpha(opacity=0);
 outline : none;
 background: white;
 display: block;
 
 
 }
 -->
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../" method="post" enctype="multipart/form-data" class="profile" name="userprofile">
	<input type="file" />
	<input type="submit" />
</form>
</body>
</html>