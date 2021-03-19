<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book reservation</title>
<style>
	.nores{
		margin-top : 90px;
		margin-bottom : 80px;
	}
	.re-table{
		width : 500px;
		text-align : center;
		border : 3px solid #D8D8D8;
	}
	.no-table{
		width : 500px;
		text-align : center;
		border : 3px solid #D8D8D8;
	}
	.no-table td{
		height : 50px;
	}
	.re-table td{
		height : 50px;
		border : 3px solid #D8D8D8;
	}
	#re_td{
		width : 120px;
		background-color : #D8D8D8;
		border : 3px solid #D8D8D8;
	}
	.btn-wrap{
		margin-top : 20px;
		text-align : center;
	}
	#re-btn{
		dispaly : inline-block;
		width : 100px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : none;
		margin : 0 10px;
	}
	.wrap{
		text-align : center;
		margin-top : 30px;
	}
	.box1{
		display : inline-block;
		width : 500px;
		margin-right : 40px;
	}
	.box2{
		display : inline-block;
		width : 500px;
		margin-left : 40px;
	}
</style>
<script type="text/javascript">
	function cancel(value) {
		var con = confirm("정말로 예약을 취소 하시겠습니까?");
		
		if(value == "1"){
			if (con) location.href="meeting_delete.do?member_id=${metbook.member_id }";
			else {
				alert("예약 취소 되었습니다");
				return;
			}
		}
		else if(value == "2"){
			if (con) location.href="wedding_delete.do?member_id=${wedbook.member_id }";
			else {
				alert("예약 취소 되었습니다");
				return;
			}
		}
		else if(value == "3"){
			if (con) location.href="rest_delete.do?member_id=${restbook.member_id }";
			else {
				alert("예약 취소 되었습니다");
				return;
			}			
		}
		else if(value == "4"){
			if(con) location.href="room_delete.do?member_id=${rombook.member_id }";
			else{
				alert("예약 취소 되었습니다.");
				return;
			}
		}

	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- 예약 정보 확인 시작 -->
<h2 align="center">Reservation Info</h2>
<br>
<div class="wrap">
	<div class="box1">
	<h2 align="center">Room Reservation</h2><br>
		<c:if test="${rombook.member_id == null }">
		<div class="nores">
			<table class="no-table">
				<tr><td rowspan="5"><h3 align="center">예약 내역이 없습니다.</h3></td></tr>
				<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			</table>
		</div>
		<div class="btn-wrap">
			<button id="re-btn" onclick="location.href='roomList.do'">ROOM</button>
			<button id="re-btn" onclick="location.href='restmain.do'">RESTAURANT</button>
			<button id="re-btn" onclick="location.href='meeting_main.do'">MEETING</button>
			<button id="re-btn" onclick="location.href='wedding_main.do'">WEDDING</button>
		</div>
		</c:if>
		<c:if test="${rombook.member_id != null }">
		<table class="re-table">
			<tr>
				<td id="re_td">이름</td>
				<td>${member.member_name }</td>
			</tr>
			<tr>
				<td id="re_td">아이디</td>
				<td>${rombook.member_id }</td>
			</tr>
			<tr>
				<td id="re_td">방 이름</td>
				<td>${rombook.rname }</td>
			</tr>
			<tr>
				<td id="re_td">예약 시간</td>
				<td>${rombook.rcheck_in} ~ ${rombook.rcheck_out }</td>
			</tr>
			<tr>
				<td id="re_td">인원</td>
				<td>${rombook.rpeople }명</td>
			</tr>
			<tr>
				<td id="re_td">침대 타입</td>
				<td>${rombook.rbedtype }</td>
			</tr>
			<tr>
				<td id="re_td">서비스</td>
				<td>${rombook.rservice }</td>
			</tr>
			<tr>
				<td id="re_td">기타 추가 사항</td>
				<td>${rombook.retc }</td>
			</tr>
		</table>
		<div class="btn-wrap">
			<button id="re-btn" onclick="cancel(4)">예약 취소</button>
		</div>
		</c:if>
	</div>
	<div class="box2">
	<h2 align="center">Restaurant Reservation</h2><br>
		<c:if test="${restbook.member_id == null }">
		<div class="nores">
			<table class="no-table">
				<tr><td rowspan="5"><h3 align="center">예약 내역이 없습니다.</h3></td></tr>
				<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			</table>
		</div>
		<div class="btn-wrap">
			<button id="re-btn" onclick="location.href='roomList.do'">ROOM</button>
			<button id="re-btn" onclick="location.href='restmain.do'">RESTAURANT</button>
			<button id="re-btn" onclick="location.href='meeting_main.do'">MEETING</button>
			<button id="re-btn" onclick="location.href='wedding_main.do'">WEDDING</button>
		</div>
		</c:if>
		<c:if test="${restbook.member_id != null }">
		<table class="re-table">
			<tr>
				<td id="re_td">예약자 이름</td>
				<td>${restbook.booking_name }</td>
			</tr>
			<tr>
				<td id="re_td">아이디</td>
				<td>${restbook.member_id }</td>
			</tr>
			<tr>
				<td id="re_td">식당 이름</td>
				<td>${restbook.rplace }</td>
			</tr>
			<tr>
				<td id="re_td">예약 시간</td>
				<td>${restbook.booking_date}  ${restbook.booking_hours }</td>
			</tr>
			<tr>
				<td id="re_td">인원</td>
				<td>${restbook.guests }명</td>
			</tr>
			<tr>
				<td id="re_td">기타 문의 사항</td>
				<td>${restbook.request }</td>
			</tr>
		</table>
		<div class="btn-wrap">
			<button id="re-btn" onclick="cancel(3)">예약 취소</button>
		</div>
		</c:if>
	</div>
</div>

<div class="wrap">
	<div class="box1">
	<h2 align="center">Meeting Reservation</h2><br>
		<c:if test="${metbook.member_id == null }">
		<div class="nores">
			<table class="no-table">
				<tr><td rowspan="5"><h3 align="center">예약 내역이 없습니다.</h3></td></tr>
				<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			</table>
		</div>
		<div class="btn-wrap">
			<button id="re-btn" onclick="location.href='roomList.do'">ROOM</button>
			<button id="re-btn" onclick="location.href='restmain.do'">RESTAURANT</button>
			<button id="re-btn" onclick="location.href='meeting_main.do'">MEETING</button>
			<button id="re-btn" onclick="location.href='wedding_main.do'">WEDDING</button>
		</div>
		</c:if>
		<c:if test="${metbook.member_id != null }">
		<table class="re-table">
			<tr>
				<td id="re_td">이름</td>
				<td colspan="3">${member.member_name }</td>
			</tr>
			<tr>
				<td id="re_td">아이디</td>
				<td colspan="3">${metbook.member_id }</td>
			</tr>
			<tr>
				<td id="re_td">행사 제목</td>
				<td colspan="3">${metbook.mbk_title }</td>
			</tr>
			<tr>
				<td id="re_td">행사 장소</td>
				<td colspan="3">${metbook.mplace }</td>
			</tr>
			<tr>
				<td id="re_td">행사 일시</td>
				<td colspan="3">${metbook.mbk_date }  ${metbook.mbk_sthour }부터 ${metbook.mbk_edhour }까지</td>
			</tr>
			<tr>
				<td id="re_td">좌석 수</td>
				<td>${metbook.mbk_seat }</td>
				<td id="re_td">좌석 형태</td>
				<td>${metbook.mbk_shape }</td>
			</tr>
			<tr>
				<td id="re_td">기타 문의 사항</td>
				<td colspan="3">${metbook.mbk_etc }</td>
			</tr>
		</table>
		<div class="btn-wrap">
			<button id="re-btn" onclick="cancel(1)">예약 취소</button>
		</div>
		</c:if>
	</div>
	<div class="box2">
	<h2 align="center">Wedding Reservation</h2><br>
		<c:if test="${wedbook.member_id == null }">
		<div class="nores">
			<table class="no-table">
				<tr><td rowspan="5"><h3 align="center">예약 내역이 없습니다.</h3></td></tr>
				<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
			</table>
		</div>
		<div class="btn-wrap">
			<button id="re-btn" onclick="location.href='roomList.do'">ROOM</button>
			<button id="re-btn" onclick="location.href='restmain.do'">RESTAURANT</button>
			<button id="re-btn" onclick="location.href='meeting_main.do'">MEETING</button>
			<button id="re-btn" onclick="location.href='wedding_main.do'">WEDDING</button>
		</div>
		</c:if>
		<c:if test="${wedbook.member_id != null }">
		<table class="re-table">
			<tr>
				<td id="re_td">이름</td>
				<td>${member.member_name }</td>
			</tr>
			<tr>
				<td id="re_td">아이디</td>
				<td>${wedbook.member_id }</td>
			</tr>
			<tr>
				<td id="re_td">행사 장소</td>
				<td>${wedbook.wplace }</td>
			</tr>
			<tr>
				<td id="re_td">행사 일시</td>
				<td>${wedbook.wbk_date}  ${wedbook.wbk_hour}</td>
			</tr>
			<tr>
				<td id="re_td">좌석 수</td>
				<td>${wedbook.wbk_seat }</td>
			</tr>
			<tr>
				<td id="re_td">상담 문의</td>
				<td>${wedbook.wbk_counsel }</td>
			</tr>
			<tr>
				<td id="re_td">기타 문의 사항</td>
				<td>${wedbook.wbk_etc }</td>
			</tr>
		</table>
		<div class="btn-wrap">
			<button id="re-btn" onclick="cancel(2)">예약 취소</button>
		</div>
		</c:if>
	</div>
</div>
<!-- 예약 정보 확인 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>