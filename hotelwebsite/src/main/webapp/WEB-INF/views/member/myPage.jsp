<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link rel="stylesheet" type="text/css" href="resources/css/myinfo.css">
<script type="text/javascript">
	function del() {
		var con = confirm("정말로 탈퇴 하시겠습니까?");
		if (con) location.href="deleteid.do";
		else {
			alert("탈퇴가 취소 되었습니다");
			return;
		}
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<h2 align="center">My Page</h2>
<br>
<table align="center" class="mypage-table">
	<tr>
		<td id="my_td">아이디</td>
		<td>${member.member_id }</td>
	</tr>
	<tr>
		<td id="my_td">이름</td>
		<td>${member.member_name }</td>
	</tr>
	<tr>
		<td id="my_td">전화번호</td>
		<td>${member.member_tel }</td>
	</tr>
	<tr>
		<td id="my_td">주소</td>
		<td>${member.member_addr }</td>
	</tr>
	<tr>
		<td id="my_td">이메일</td>
		<td>${member.member_email }</td>
	</tr>
</table>
<div class="btn-wrap">
	<button id="mypage-btn" onclick="location.href='updateForm.do'">수정</button>
	<button id="mypage-btn" onclick="del()">탈퇴</button>
	<button id="mypage-btn" onclick="location.href='mainForm.do'">메인으로</button>
</div>
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>