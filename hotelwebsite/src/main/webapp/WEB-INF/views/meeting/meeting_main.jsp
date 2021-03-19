<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>meeting main</title>
<style>
	.met-info{
		margin-top : 50px;
	}
	#met-title{
		margin-left : 100px;
	}
	#img1{
		width : 95%;
	}
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
		height : 450px;
		text-align : center;
	}
	#sm-td{
		width : 400px;
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
	#sm-td:hover{
		background-color : #D8D8D8;
	}

</style>
<script type="text/javascript">
 
	function change(value){
		if(value == "1"){
			document.all("change_div").innerHTML="<img id='img1' src='resources/image/small-size1.jpg'><br><br>"
			 + "<p>대형 유리창을 통해 도심의 경관을 한눈에 확인하실 수 있는 미팅룸으로,</p><p>오래도록 기억에 남는 행사를 완성하실 수 있습니다.</p>"
			 + "<button id='view-btn' onclick=" + "location.href='meeting_detail.do?member_id=${member_id}&met_num=1'" + ">VIEW DETAIL</button>"
			 + "<img src='resources/image/calendar.png'>"
			 + "<button id='book-btn' onclick=" + "location.href='meeting_bookform.do?member_id=${member_id }&met_num=4'"
			 + ">예약하기</button>";
		}else if(value == "2"){
			document.all("change_div").innerHTML="<img id='img1' src='resources/image/small-size2.jpg'><br><br>"
			 + "<p>도심의 스카이 라인이 아름다운 룸입니다. 밝고 화사한 분위기의 돌잔치,</p><p>야경을 즐기면서 진행하는 가족 모임을 준비하는 분들께 하늘 속 특별함을 선사합니다.</p>"
			 + "<button id='view-btn' onclick=" + "location.href='meeting_detail.do?member_id=${member_id}&met_num=1'" + ">VIEW DETAIL</button>"			 
			 + "<img src='resources/image/calendar.png'>"
			 + "<button id='book-btn' onclick=" + "location.href='meeting_bookform.do?member_id=${member_id }&met_num=5'"
			 + ">예약하기</button>";
		}else if(value == "3"){
			document.all("change_div").innerHTML="<img id='img1' src='resources/image/small-size3.jpg'><br><br>"
			 + "<p>프라이빗한 공간에서 대형 유리창을 통해</p><p>시원한 풍경을 감상할 수 있는 모던한 인테리어의 미팅룸입니다.</p>"
			 + "<button id='view-btn' onclick=" + "location.href='meeting_detail.do?member_id=${member_id}&met_num=1'" + ">VIEW DETAIL</button>"			 
			 + "<img src='resources/image/calendar.png'>"
			 + "<button id='book-btn' onclick=" + "location.href='meeting_bookform.do?member_id=${member_id }&met_num=6'"
			 + ">예약하기</button>";
		}
  	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- meeting list 출력 시작 -->
<div class="met_wrap">
	<img alt="" src="resources/image/meeting_main.png" style="width:100%;">
	<br><br>
	<p align="center"><font size="13">PLAN YOUR MEETING</font></p>
	<hr width="500px">
	<p align="center">스타일리쉬한 컨셉으로 새롭게 단장한 다양한 규모의 연회장들은</p>
	<p align="center">최신의 조명장비와 음향장비를 갖추고 있어 각종 세미나와 컨벤션, 이벤트 행사를 완벽하게 진행하실 수 있습니다.</p>
</div>
<!-- grand hall -->
<div class="met-info">
	<p id="met-title"><font size="6">GRAND-SIZED HALL</font></p>
</div>
<br>
<table class="table1" align="center">
	<tr>
		<td style="width : 900px;"><img id="img1" alt="" src="resources/image/grand-size.jpg"></td>
		<td style="width : 400px;">
			<p><font size="5">DIAMOND HALL</font></p>
			<p>컨벤션, 웨딩, 디너쇼, 전시와 기업 행사까지</p>
			<p>다양한 대규모 행사를 위한 다이아몬드홀은 자연과 테크놀</p>
			<p>로지 그리고 예술을 절묘하게 조화시킨 화려한 인테리어로</p>
			<p>행사에 품격을 더해드립니다.</p>
			<button id="view-btn" onclick="location.href='meeting_detail.do?member_id=${member_id}&met_num=1'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=1'">예약하기</button>
		</td>
	</tr>
</table>
<!-- mid hall -->
<div class="met-info">
	<p id="met-title"><font size="6">MID-SIZED HALL</font></p>
</div>
<br>
<table class="table1" align="center">
	<tr>
		<td style="width : 900px;"><img id="img1" alt="" src="resources/image/mid-size1.jpg"></td>
		<td style="width : 400px;">
			<p><font size="5">RUBY HALL</font></p>
			<p>최대 500명 수용 가능한 규모의 미팅룸으로 테마 파티 및 </p>
			<p>비지니스 미팅을 위한 다목적 연회장입니다. </p>
			<button id="view-btn" onclick="location.href='meeting_detail2.do?member_id=${member_id}&met_num=2'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=2'">예약하기</button>
		</td>
	</tr>
</table>
<br>
<table class="table2" align="center">
	<tr>
		<td style="width : 400px;">
			<p><font size="5">SAPPHIRE HALL</font></p>
			<p>최대 300명 수용 가능한 규모의 미팅룸으로 테마 파티 및 </p>
			<p>비지니스 미팅을 위한 다목적 연회장입니다. </p>
			<button id="view-btn" onclick="location.href='meeting_detail3.do?member_id=${member_id}&met_num=3'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=3'">예약하기</button>
		</td>
		<td style="width : 900px;"><img id="img1" alt="" src="resources/image/mid-size2.jpg"></td>
	</tr>
</table>
<!-- small hall -->
<div class="met-info">
	<p id="met-title"><font size="6">SMALL-SIZED HALL</font></p>
</div>
<table class="table3" align="center">
	<tr>
		<td id="sm-td"><p class="sm-title" onclick="change(1)"><font size="5">TOPAZ HALL</font></p></td>
		<td rowspan="3">
			<div id="change_div">
			<img id="img1" alt="" src="resources/image/small-size1.jpg"><br><br>
			<p>대형 유리창을 통해 도심의 경관을 한눈에 확인하실 수 있는 미팅룸으로,</p>
			<p>오래도록 기억에 남는 행사를 완성하실 수 있습니다.</p>
			<button id="view-btn" onclick="location.href='meeting_detail.do?member_id=${member_id}&met_num=1'">VIEW DETAIL</button>
			<img src="resources/image/calendar.png">
			<button id="book-btn" onclick="location.href='meeting_bookform.do?member_id=${member_id }&met_num=4'">예약하기</button>		
			</div>
		</td>
	</tr>
	<tr>
		<td id="sm-td"><p class="sm-title" onclick="change(2)"><font size="5">PEARL HALL</font></p></td>
	</tr>
	<tr>
		<td id="sm-td"><p class="sm-title" onclick="change(3)"><font size="5">EMERALD HALL</font></p></td>
	</tr>
</table>

<!-- meeting list 출력 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>