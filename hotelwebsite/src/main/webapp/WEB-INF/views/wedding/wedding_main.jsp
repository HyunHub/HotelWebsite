<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.table1{
		width : 1300px;
		height : 300px;
	}
	.table2{
		width : 1300px;
		height : 300px;
		text-align : right;
	}
	.table3{
		width : 1300px;
		height : 500px;
		text-align : center;
	}
	#book-btn{
		background-color : #FFFFFF;
		border : none;
	}
	#view-btn{
		background-color : #FFFFFF;
		margin-right : 15px;
		border : 0.5px solid #D8D8D8;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- wedding list 출력 시작 -->
<div class="met_wrap">
	<img alt="" src="resources/image/wedding_main.jpg" style="width:100%;">
	<br><br>
	<p align="center"><font size="13">PLAN YOUR WEDDING</font></p>
	<hr width="500px">
	<p align="center">가장 아름답게 기억하고 싶은 순간을 위한 완벽한 서비스와 장소.</p>
	<p align="center">프로젝트 호텔 인 서울에서 행복한 시작을 그려보세요.</p>
</div>
<br><br>
<p align="center"><font size="6">WEDDING THEMES</font></p>
<p align="center">생애 가장 특별한 순간. 꿈꿔왔던 잊지 못할 웨딩을 미리 만나보세요.</p><br>
<p align="center" ><iframe width="1000" height="500" src="https://www.youtube.com/embed/FjndMc0YxOE" 
frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe></p>
<br><br>
<!-- 하모니웨딩 -->
<table class="table1" align="center">
	<tr>
		<td style="width : 850px;"><img alt="" src="resources/image/wedding_pic1.jpg"></td>
		<td style="width : 450px;">
			<p><font size="5">HARMONY HALL</font></p>
			<p>최대 600석까지 수용 가능한 대규모 웨딩을</p>
			<p>원하는 콘셉트로 마음껏 디자인하세요.</p>
			<p>원하는 테마의 색상을 선택할 수 있어 일생에 단 한 번 뿐인</p>
			<p>소중한 결혼식을 나만의 감각적인 웨딩으로 완성하여 드립니다.</p>
			<button id="view-btn" onclick="location.href='wedding_detail.do?member_id=${member_id}&wed_num=1'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='wedding_bookform.do?member_id=${member_id }&wed_num=1'">예약하기</button>
		</td>
	</tr>
</table>
<br>
<!-- 플라워웨딩 -->
<table class="table2" align="center">
	<tr>
		<td style="width : 450px;">
			<p><font size="5">FLOOR HALL</font></p>
			<p>최대 200명을 수용할 수 있는 플라워홀은 로맨틱한 무대연출과</p>
			<p>세련된 감각을 갖춘 연회장으로 중소규모 웨딩에 최적의 공간입니다.</p>
			<button id="view-btn" onclick="location.href='wedding_detail.do?member_id=${member_id}&wed_num=2'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='wedding_bookform.do?member_id=${member_id }&wed_num=2'">예약하기</button>
		</td>
		<td style="width : 850px;"><img alt="" src="resources/image/wedding_pic2.jpg"></td>
	</tr>
</table>
<br>
<p id="met-title" style="margin-left:140px;"><font size="6">PRIVATE WEDDING</font></p>
<br>
<table class="table3" align="center">
	<tr>
		<td><img alt="" src="resources/image/wedding_pic3.jpg"></td>
		<td><img alt="" src="resources/image/wedding_pic4.jpg"></td>
	</tr>
	<tr>
		<td>
			<p><font size="5">SKY HALL</font></p>
			<p>환상적인 도심의 전경이 돋보이는 낭만적인 웨딩 공간으로</p>
			<p>소중한 지인들에게만 허락되는 프라이빗한 예식을 준비하실 수 있습니다.</p>
			<button id="view-btn" onclick="location.href='wedding_detail.do?member_id=${member_id}&wed_num=3'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='wedding_bookform.do?member_id=${member_id }&wed_num=3'">예약하기</button>
		</td>
		<td>
			<p><font size="5">BOUTIQUE HALL</font></p>
			<p>가장 축복받고 싶은 가족과 지인들만이 함께하는 특별한 웨딩.</p>
			<p>한강의 전경이 눈 앞에 펼처진 소연회장에서 오붓한 축복의 시간을 누리세요.</p>
			<button id="view-btn" onclick="location.href='wedding_detail.do?member_id=${member_id}&wed_num=4'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='wedding_bookform.do?member_id=${member_id }&wed_num=4'">예약하기</button>
		</td>
	</tr>
</table>

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>