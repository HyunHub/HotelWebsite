<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/css/login_style.css">
<script type="text/javascript">

	function checkValue(){
		if(!loginInfo.member_id.value){
			alert("아이디를 입력하세요.");
			loginInfo.member_id.focus();
			return false;
		}
		if(!loginInfo.member_pw.value){
			alert("비밀번호를 입력하세요.");
			loginInfo.member_pw.focus();
			return false;
		}
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- 로그인화면 -->
<div class="container" align="center">
<form action="login.do" id="login-form" name="loginInfo" onsubmit="return checkValue()">
	<table class="login-table" align="center">
		<tr>
			<td><input type="text" name="member_id" class="form-control" placeholder="아이디" maxlength="10"></td>
		</tr>
		<tr>
			<td><input type="password" name="member_pw" class="form-control" placeholder="비밀번호" maxlength="20"></td>
		</tr>
	</table>
	<input type="submit" value="Login" class="btn">
	<p class="text-p">Don't have an account? <a href="joinForm.do">&nbsp; Sign up</a></p>
</form>
</div>
<!-- 로그인화면끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>