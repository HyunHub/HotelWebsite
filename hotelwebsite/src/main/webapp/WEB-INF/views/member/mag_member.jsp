<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.table{
		text-align : center;
	}
	#td1{
		background-color : #D8D8D8;
	}
	.table td{
		height : 40px;
	}
	.list-wrap{
		margin-top : 20px;
		text-align : center;
	}
	#list-btn{
		dispaly : inline-block;
		width : 100px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : none;
		margin : 0 10px;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<p align="center"><font size="6">MEMBER LIST</font></p>
<br>
<table class="table table-hover" align="center">
	<tr>
		<td id="td1">아이디</td>
		<td id="td1">이름</td>
		<td id="td1">전화번호</td>
		<td id="td1">주소</td>
		<td id="td1">이메일</td>
		<td id="td1">가입일</td>
		<td id="td1">탈퇴 여부</td>
	</tr>
	<c:if test="${not empty list }">
	<c:forEach var="member" items="${list }">
	<tr>
		<td>${member.member_id }</td>
		<td>${member.member_name }</td>
		<td>${member.member_tel }</td>
		<td>${member.member_addr }</td>
		<td>${member.member_email }</td>
		<td>${member.member_date }</td>
		<td>${member.member_del }</td>
	</tr>
	</c:forEach>
	</c:if>
</table>
<div class="list-wrap">
	<button id="list-btn" onclick="history.back();">뒤로가기</button>
</div>
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>