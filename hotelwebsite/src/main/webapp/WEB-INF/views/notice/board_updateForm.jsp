<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice board update</title>
<link rel="stylesheet" type="text/css" href="resources/css/view_style.css">
<script type="text/javascript">
	function cancel() {
		return history.go(-1);
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<div class="container" align="center">
<h2 align="center">공지사항 수정</h2>
<br>
<form action="board_update.do">
	<input type="hidden" name="bd_num" value="${board.bd_num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table class="view_table" align="center">
	<tr>
		<td>제목</td>
		<td><input id="update-item" type="text" name="bd_title" required="required" autofocus="autofocus" value="${board.bd_title }"></td>

	<tr>
		<td>작성자</td>
		<td>${board.member_id }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea id="update-item" rows="20" cols="40" required="required" name="bd_content">${board.bd_content}</textarea></td>
	</tr>
</table>
<div class="update-wrap">
	<input id="update-btn" type="submit" value="수정 완료">
	<input id="update-btn" type="button" value="취소" onclick="cancel()">
</div>
</form>
</div>
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>