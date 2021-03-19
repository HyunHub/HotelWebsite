<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" type="text/css" href="resources/css/update_style.css">
<script type="text/javascript">
	function chk() {
		if (frm.member_pw.value != frm.password2.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.member_pw.focus();  // 커서를 password로 가라
			frm.member_pw.value = ""; // password 입력한 값 삭제
			return false;   // action을 하지 마라
		}
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- 회원정보 수정 시작 -->
<div class="container" align="center">
<h2 align="center">회원 정보 수정</h2>
<br>
<form action="update.do" method="post" onsubmit="return chk()" name="frm">
	<input type="hidden" name="member_id" value="${member.member_id }">
<table class="update-table">
	<tr>
		<td id="up_td">아이디</td>
		<td>${member.member_id }</td>
	</tr>
	<tr>
		<td id="up_td">이름 </td>
		<td>${member.member_name }</td>
	</tr>	
	<tr>
		<td id="up_td">암호</td>
		<td><input type="password" name="member_pw" required="required"></td>
	</tr>
	<tr>
		<td id="up_td">암호확인</td>
		<td><input type="password" name="password2" required="required"></td>
	</tr>
	<tr>
		<td id="up_td">이메일</td>
		<td><input type="email" name="member_email" value="${member.member_email }" required="required"></td>
	</tr>
	<tr>
		<td id="up_td">전화번호</td>
		<td><input type="tel" name="member_tel" value="${member.member_tel}" required="required" pattern="\d{3}-\d{3,4}-\d{4}" title="xxx-xxxx-xxxx형식입니다"></td>
	</tr>
	<tr>
		<td id="up_td">주소</td>
		<td><input type="text" name="member_addr" value="${member.member_addr }" required="required"></td>
	</tr>
</table>
<div class="update-wrap">
	<input id="update-btn" type="submit" value="수정" >
	<button id="update-btn" onclick="location.href='myPage.do'">취소</button>
</div>
</form>

</div>
<!-- 회원정보 수정 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>