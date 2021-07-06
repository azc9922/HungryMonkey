<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../fullpage/default.css" />
<style>
.login{position:absolute; left:35%; top:15%; width:503px; transfrom:translate(-50%,-50%);}
.login h1{padding:0 0 92px 0; text-align:center; color:#ffd700; font-size:42px; text-transform:uppercase; line-height:1;
letter-spacing:-2.5px;}
.login h1 span{display:block; color:brown; font-size:50px; font-weight:normal;
letter-spacing:0;}
.login label{padding:0 0 0 50px; font-size:22px; color:#brown;}
.login label[for="txt1_1"]{background:no-repeat 100px center;}
.login label[for="txt1_2"]{background:no-repeat 15px center;}
.login input.idpw{margin:18px 0 0; height:10px; border-top:2px solid #707070; trasition: all .5s;}
.login input.idpw:focus{height:40px;}
.login li~li{padding:40px 0 0;}
.login button{margin: 52px 0 0;width: 100%; height: 79px; background:#ffd700; border-radius:11px;
				font-size:22px; color:#fff; }
.login input.logreg{background:#ffd700;
				font-size:22px; color:#fff; }
.login button:before{position: absolute; left:0; top: 0; content:""; z-index: -1; width: 246px; height:98px; background:#FFACE0; opacity:.68; filter:blur(34px);}
.login button:after{position: absolute; content:""; z-index: -1; width: 246px; height:98px; background:#FFACE0; opacity:.68; filter:blur(34px);}
.login input#register:before{position: absolute; left:0; top: 0; content:""; z-index: -1; width: 246px; height:98px; background:#FFACE0; opacity:.68; filter:blur(34px);}
.login input#register:after{position: absolute; content:""; z-index: -1; width: 246px; height:98px; background:#FFACE0; opacity:.68; filter:blur(34px);}
.login input#register{margin: 52px 0 0;width: 100%; height: 79px; background:#ffd700; border-radius:11px;
				font-size:22px; color:#fff; }
</style>
<script>
/* $(document).ready(function(){
	$(".log").on('click',function(){
	
	});
	$(".member").on('click',function(){
		$(".member").show();
	
	});	
});
 */

</script>
</head>
<body>
<form action="loginOk.jsp" name="frm" method="post">
	<div class="login">
		<h1>
			<a href="Fullpage.jsp"><span>배고픈 원숭이</span></a>
			로그인
		</h1>
	<ul>
		<li>
			<label for="txt1_1">ID</label>
			<input type="text" id="txt1_1" name = "id" class="idpw">
		</li>
		<li>
		<label for="txt1_2">Password</label>
		<input type="password" id="txt1_2" name = "pw" class="idpw">
		</li>
	</ul>
	<div>
		<button><input type="submit" value="로그인" class="logreg"/></button>
		<a href="../fullpage/log.jsp"><input type="button" value="회원가입" class="logreg" id="register"/></a>
</div>
</div>
</form>
</body>
</html>