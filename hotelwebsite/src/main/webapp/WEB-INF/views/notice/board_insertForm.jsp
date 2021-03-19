<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert notice</title>
<style>
	.insert-table{
		border: 3px solid #D8D8D8;
		width : 80%;
		text-align : center;
	}
	td{
		border: 3px solid #D8D8D8;
	}
	#input-item{
		width : 100%;
	}
	.insert-wrap{
		margin-top : 20px;
		text-align : center;
	}
	#insert-btn{
		dispaly : inline-block;
		width : 100px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : none;
		margin : 0 10px;
	}
</style>
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
<h2 align="center">공지사항 작성</h2>
<br><br>
<form action="board_insert.do" method="post">
<input type="hidden" name="bd_num" value="${bd_num }">
<input type="hidden" name="pageNum" value="${pageNum }">
<input type="hidden" name="member_id" value="${member_id }">
<table class="insert-table">
	<tr>
		<td>제목</td>
		<td><input id="input-item" type="text" name="bd_title" required="required" autofocus="autofocus"></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td>${member_id }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea id="input-item" rows="20" cols="40" name="bd_content" required="required"></textarea>
	</tr>
</table>
<div class="insert-wrap">
	<input id="insert-btn" type="submit" value="작성 완료">
	<input id="insert-btn" type="button" value="취소" onclick="cancel()">
</div>
</form>
</div>

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>