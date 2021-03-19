<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link rel="stylesheet" type="text/css" href="resources/css/join_style.css">
<script type="text/javascript">
	function chk() {
		if (frm.member_pw.value != frm.password2.value) {
			alert("비밀번호와 비밀번호 확인이 다릅니다");
			frm.member_pw.focus();  // 커서를 password로 가라
			frm.member_pw.value = ""; // password 입력한 값 삭제
			return false;   // action을 하지 마라
		}
	}
	function idChk() {
		if (!frm.member_id.value) {
			alert("아이디를 입력하고 중복 체크 하세요");
			frm.member_id.focus();
			return false;
		}
		// jquery에 있는 ajax를 사용
		// data는 Controller 보내준 msg가 들어온다
		$.post("idChk.do","id="+frm.member_id.value, function(data) {
			$('#disp').html(data);
		});
	}
</script>
</head>
<body>
	<div id="header">
		<%@ include file="../main/header.jsp" %>
	</div>
<!-- 회원가입 시작 -->
<div class="container" align="center">
<form action="join.do" method="post" onsubmit="return chk()" name="frm" id="login-form">
<p class="text-p">* 모든 사항은 필수 입력입니다.</p>
<table class="join-table" align="center">
	<tr>
		<td><input style="width:70%;" type="text" name="member_id" placeholder="아이디" maxlength="20" required="required">
			<button onclick="idChk()" id="chk-btn" style="float:right;">중복체크</button>
			<div id="disp" class="err"></div>
			<div id="err"></div>
		</td>
	</tr>
	<tr>
		<td><input type="password" name="member_pw" placeholder="비밀번호" maxlength="20" required="required"></td>
	</tr>
	<tr>
		<td><input type="password" name="password2" placeholder="비밀번호 확인" maxlength="20" required="required"></td>
	</tr>
	<tr>
		<td><input type="text" name="member_name" placeholder="이름" maxlength="20" required="required"></td>
	</tr>
	<tr>
		<td><input type="text" name="member_email" placeholder="이메일" required="required"></td>
	</tr>
	<tr>
		<td><input type="tel" name="member_tel" required="required" pattern="\d{3}-\d{3,4}-\d{4}" title="xxx-xxxx-xxxx형식입니다" placeholder="휴대전화"></td>
	</tr>
	<tr>
		<td><input type="text" name="member_addr" placeholder="주소" required="required"></td>
	</tr>
</table>
<input type="submit" value="Join" class="btn">
</form>
</div>
<!-- 회원가입 끝 -->
	<div id="footer">
		<%@ include file="../main/footer.jsp" %>
    </div>
</body>
</html>