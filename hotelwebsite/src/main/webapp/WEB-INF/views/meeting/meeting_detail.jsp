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
	<img width="100%" alt="" src="resources/image/grand-title.jpg">
	<br><br>
	<p style="margin : 30px 0 0 50px;">컨벤션, 디너쇼, 전시와 기업 행사까지 다양한 대규모 행사를 위한</p>
	<p style="margin : 0 50px;"><font size="13">DIAMOND HALL</font></p>
</div>
<div style="margin : 0 0 80px 50px;">
	<hr width="500px" align="left">
	<table>
		<caption style="caption-side:top;">예약 및 이용 문의</caption>
		<tr><td width="70px">전화</td><td>02-3921-9999</td></tr>
		<tr><td>이메일</td><td>meeting@project.co.kr</td></tr>
	</table>
	<img src="resources/image/calendar.png">
	<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=1'">예약하기</button>	
</div>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/grand-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">화려한 인테리어로 행사에 품격을 더한 다이아몬드홀</font></p>
			<p>대규모 행사를 위한 다이아몬드홀은 자연과 테크놀로지 그리고 예술을</p>
			<p>절묘하게 조화시킨 화려한 인테리어로 행사에 품격을 더해드립니다.</p>
			<p>최신식 LED 조명을 이용하여 다양한 분위기를 연출하실 수 있으며,</p>
			<p>3개의 최신식 디지털 사인보드와 멀티비전을 갖추고 있어 </p>
			<p>행사를 더욱 편리하게 진행 가능합니다.</p>
			<p>독립된 리셉션 공간에서 다양한 이벤트, 칵테일 리셉션 및 전시 등을 진행하실 수 있습니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;">
	<tr>
		<td><img alt="" src="resources/image/grand-detail2.jpg"></td>
		<td>
			<p>* 위치 : Project Hotel in Seoul B1</p>
			<p>* 크기(W & L & H) : 26.75 & 41.9 & 5</p>
			<p>* 수용 가능 인원 : 최대 1200명</p>
		</td>
	</tr>
</table>
<br><br>
<table class="shape" align="center">
	<tr>
		<td height="50px" id="s-td">THEATER</td><td id="s-td">CLASSROOM</td><td id="s-td">ROUND</td>
	</tr>
	<tr>
		<td height="300px"><img alt="" src="resources/image/grand-detail3.jpg" width="80%"></td>
		<td><img alt="" src="resources/image/grand-detail4.jpg" width="80%"></td>
		<td><img alt="" src="resources/image/grand-detail5.jpg" width="80%"></td>
	</tr>
</table>
<!-- detail 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>