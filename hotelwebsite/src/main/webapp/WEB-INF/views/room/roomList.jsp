<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.room-info{
		margin-top : 50px;
	}
	#room-title1, #room-title2, #room-title3{
		margin-left : 100px;
	}
	.table1{
		width : 100%;
		height : 400px;
		text-align : center;
	}
	.table1 a, .table2 a, .table3 a{
		color : black;
	}
	#room-btn{
		background-color : #FFFFFF;
		border : none;
	}
	.table2{
		width : 90%;
		height : 750px;
		text-align : center;
	}
	.table3{
		width : 90%;
		height : 380px;
		text-align : center;
	}
	.but-wrap{
		margin-top : 50px;
		text-align : center;
	}
	.but{
		dispaly : inline-block;
		width : 400px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : 1px solid #E6E6E6;
		margin : 0 5px;
	}
	.but:hover{
		background-color : #E6E6E6;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- room 시작 -->	
<div class="room-wrap">
	<img alt="" src="resources/image/room-title.jpg" style="width:100%;">
	<br><br>
	<p align="center"><font size="13">ROOM & SUITES</font></p>
	<hr width="500px">
	<p align="center">서울 도심의 풍경을 한 눈에 담은 모던 스타일리쉬 호텔.</p>
	<p align="center">쾌적한 객실에서는 비즈니스와 컨벤션, 여행에 최적화된 서비스를 경험하실 수 있습니다.</p>
</div>
<!-- 페이지 책갈피 -->
<div class="but-wrap">
	<button class="but" onclick="location.href='#room-title1'">STANDARD ROOMS</button>
	<button class="but" onclick="location.href='#room-title2'">DELUXE ROOMS</button>
	<button class="but" onclick="location.href='#room-title3'">SUITE ROOMS</button>
</div>


<!-- 스탠다드 -->
<div class="room-info">
	<p id="room-title1"><font size="6">STANDARD ROOMS</font></p>
</div>
<br>
<table class="table1" align="center">
	<tr>
		<td>
			<div style="position:relative;">
				<img alt="" src="resources/image/room/standard1.jpg" width="500px" height="300px" onclick="location.href='room_detail.do'">
				<div style="position:absolute; top:70%; left:5%; color:#FFFFFF;">
					<p style="line-height:1.3">편안하고 안락한 공간<br><font size="6">NORMAL STANDARD</font></p>
				</div>
			</div>
		</td>
		<td>
			<div style="position:relative;">
				<img alt="" src="resources/image/room/standard2.jpg" width="500px" height="300px" >
				<div style="position:absolute; top:70%; left:5%; color:#FFFFFF;">
					<p style="line-height:1.3">휴식이 필요한 비즈니스 고객을 위한<br><font size="6">BUSINESS STANDARD</font></p>
				</div>
			</div>		
		</td>
		<td>
			<div style="position:relative;">
				<img alt="" src="resources/image/room/standard3.jpg" width="500px" height="300px" >
				<div style="position:absolute; top:70%; left:5%; color:#FFFFFF;">
					<p style="line-height:1.3">자연 채광의 여유로운 공간<br><font size="6">GRAND STANDARD</font></p>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 크기 : 36m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=1&member_id=${member_id}'">▷ 예약하기</button>
		</td>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 크기 : 43m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=2&member_id=${member_id}'">▷ 예약하기</button>
		</td>
		<td>
			<p>침대 타입 : 더블 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 크기 : 51m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=3&member_id=${member_id}'">▷ 예약하기</button>
		</td>
	</tr>
</table>
<!-- 디럭스 -->
<div class="room-info">
	<p id="room-title2"><font size="6">DELUXE ROOMS</font></p>
</div>
<br>
<table class="table2" align="center">
	<tr>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/delux1.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">여유로운 만족을 위한 공간<br><font size="6">BUSINESS DELUXE</font></p>
				</div>
			</div>
		</td>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/delux2.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">깔끔하고 편안한 객실<br><font size="6">GRAND DELUXE</font></p>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 객실 크기 : 43m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=4&member_id=${member_id}'">▷ 예약하기</button>
		</td>
		<td>
			<p>침대 타입 : 더블 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 객실 크기 : 53m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=5&member_id=${member_id}'">▷ 예약하기</button>
		</td>
	</tr>
	<tr>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/delux3.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">안락하고 싱그러운 공간<br><font size="6">BLUE DELUXE</font></p>
				</div>
			</div>
		</td>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/delux4.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">큰 규모와 야경이 돋보이는 객실<br><font size="6">BLACK DELUXE</font></p>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 객실 크기 : 66m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=6&member_id=${member_id}'">▷ 예약하기</button>
		</td>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 객실 크기 : 68m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=7&member_id=${member_id}'">▷ 예약하기</button>
		</td>
	</tr>
</table>
<!-- 스위트 -->
<div class="room-info">
	<p id="room-title3"><font size="6">SUITE ROOMS</font></p>
</div>
<br>
<table class="table3" align="center">
	<tr>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/sweet1.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">모던하고 고급스러운 분위기<br><font size="6">SUPERIOR SUITE</font></p>
				</div>
			</div>
		</td>
		<td>
			<div style="position:relative;">
				<img src="resources/image/room/sweet2.jpg" alt="" width="600px" >
				<div style="position:absolute; top:70%; left:10%; color:#FFFFFF;">
					<p style="line-height:1.3">럭셔리함과 특별함을 담은 공간<br><font size="6">ROYAL SUITE</font></p>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<p>침대 타입 : 더블, 트윈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 크기 : 159m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=8&member_id=${member_id}'">▷ 예약하기</button>
		</td>
		<td>
			<p>침대 타입 : 더블 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;객실 크기 : 290m<sup>2</sup></p>
			<button id="room-btn" onclick="location.href='roomBookForm.do?room_id=9&member_id=${member_id}'">▷ 예약하기</button>
		</td>
	</tr>
</table>
<!-- room 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
   </div>
</body>
</html>