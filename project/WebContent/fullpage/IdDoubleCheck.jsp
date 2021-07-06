<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Insert title here</title>
<script type="text/javascript">

	$(document).ready(function(){

		$('#id').css("ime-mode", "active");

	});

</script>
</head>
<body>
	<div style="text-align : center">
		<h3>* 아이디 중복확인 *</h3>
		<form action="idCheckPro.jsp" method="post" onsubmit="return blankCheck(this)">
		아이디 : <input type="text" onkeyup="fn_press_han(this);" style="ime-mode:disabled;" name="id" maxlength="10" autofocus  placeholder="영문과 숫자만 입력하세요."/>
		<input type="submit" value="중복확인" />
		</form>
	</div>
	<script>
	function blankCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<5){
			alert("아이디는 5자 이상 입력해주세요");
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