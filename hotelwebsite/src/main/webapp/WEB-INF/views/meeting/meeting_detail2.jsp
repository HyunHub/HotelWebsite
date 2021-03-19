<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#book-btn{
		background-color : #FFFFFF;
		border : none;
	}
	.shape{
	 	border : 1px solid #E6E6E6;
	 	text-align:center;
	 	font-size:23px;
	}
	#s-td{
		background-color : #E6E6E6;
	}
	.shape td {
		border : 1px solid #E6E6E6;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- detail 시작 -->
<div>
	<img width="100%" alt="" src="resources/image/mid-title1.jpg">
	<br><br>
	<p style="margin : 30px 0 0 50px;">고급스럽고 품격 있는 파티 및 비즈니스 미팅을 위한</p>
	<p style="margin : 0 50px;"><font size="13">RUBY HALL</font></p>
</div>
<div style="margin : 0 0 80px 50px;">
	<hr width="500px" align="left">
	<table>
		<caption style="caption-side:top;">예약 및 이용 문의</caption>
		<tr><td width="70px">전화</td><td>02-3921-9999</td></tr>
		<tr><td>이메일</td><td>meeting@project.co.kr</td></tr>
	</table>
	<img src="resources/image/calendar.png">
	<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=2'">예약하기</button>	
</div>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/mid-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">화려한 조명과 인테리어로 생동감이 넘치는 공간</font></p>
			<p>천장의 물결치는 LED조명이 생동감을 주는 루비홀입니다.</p>
			<p>고급스럽고 화려한 조명과 인테리어로 품격있는 파티 및 비즈니스 미팅 등에 최적의 공간입니다.</p>
			<p>독립된 리셉션과 디지털 사인보드, 멀티 비전 등 최신 시설을 </p>
			<p>갖추고 있어 보다 효율적인 행사를 진행하실 수 있습니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;">
	<tr>
		<td><img alt="" src="resources/image/mid-detail2.jpg"></td>
		<td>
			<p>* 위치 : Project Hotel in Seoul B1</p>
			<p>* 크기(W & L & H) : 14.5 & 26 & 3</p>
			<p>* 수용 가능 인원 : 최대 500명</p>
		</td>
	</tr>
</table>
<br><br>
<table class="shape" align="center">
	<tr>
		<td height="50px" id="s-td">THEATER</td><td id="s-td">CLASSROOM</td><td id="s-td">ROUND</td>
	</tr>
	<tr>
		<td height="300px"><img alt="" src="resources/image/mid-detail3.jpg" width="80%"></td>
		<td><img alt="" src="resources/image/mid-detail4.jpg" width="80%"></td>
		<td><img alt="" src="resources/image/mid-detail5.jpg" width="80%"></td>
	</tr>
</table>
<!-- detail 끝 -->

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>