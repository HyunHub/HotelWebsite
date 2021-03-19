<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.mag-wrap{
		margin-top : 20px;
		text-align : center;
	}
	#mag-btn{
		dispaly : inline-block;
		width : 100px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : 3px solid #D8D8D8;
		margin : 0 60px;
		width : 400px;
		height : 300px;
	}
	#mag-btn:hover{
		background-color : #D8D8D8;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<p align="center"><font size="6">MANAGEMENT</font></p>
<br><br>
<div class="mag-wrap">
	<button id="mag-btn" onclick="location.href='mag_member.do'">회원 정보 관리</button>
	<button id="mag-btn" onclick="location.href='mag_reservation.do'">예약 정보 관리</button>
</div>
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>