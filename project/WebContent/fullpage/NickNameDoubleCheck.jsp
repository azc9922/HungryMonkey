<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){

		$('#id').css("ime-mode", "active");
		
	});

</script>
</head>
<body>
	<div style="text-align : center">
		<h3>* 닉네임 중복확인 *</h3>
		<form action="NickNameCheckPro.jsp" method="post" onsubmit="return blankCheck(this)">
		아이디 : <input type="text" onkeyup="fn_press_han(this);" style="ime-mode:disabled;" name="nickName" maxlength="7" autofocus  placeholder="영문과 숫자만 입력하세요."/>
		<input type="submit" value="중복확인" />
		</form>
	</div>
	
    <script>
	function blankCheck(nickName){
		var nickName = f.nickName.value;
		nickName = nickName.trim();
		if(nickName.length<2){
			alert("닉네임 2자 이상 입력해주세요");
			return false;
		}
		return true;
	}
	function fn_press_han(obj){
		if(event.KeyCode == 8 || event.KeyCode == 9 || event.keyCode == 37 || event.KeyCode == 39 ||
				event.KeyCode == 46)return;
		obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ|가-힣]/g,'');
		setCaretPosition(obj,nowCarePosition);
			
	}

	
	</script>
</body>
</html>