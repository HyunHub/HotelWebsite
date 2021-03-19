<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/calendar_style.css">
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- 달력시작 -->
<form name="calendarFrm" id="calendarFrm" action="" method="GET">
<div class="calendar" >
	<!--날짜 네비게이션  -->
	<div class="cal_navigation">
		<a class="before_after_year" href="mag_reservation.do?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
			&lt;&lt;
		<!-- 이전해 -->
		</a> 
		<a class="before_after_month" href="mag_reservation.do?year=${today_info.before_year}&month=${today_info.before_month}">
			&lt;
		<!-- 이전달 -->
		</a> 
		<!-- 현재달 -->
		<span class="this_month">
			&nbsp;${today_info.search_year}. 
			<c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
		</span>
		<a class="before_after_month" href="mag_reservation.do?year=${today_info.after_year}&month=${today_info.after_month}">
		<!-- 다음달 -->
			&gt;
		</a> 
		<a class="before_after_year" href="mag_reservation.do?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
			<!-- 다음해 -->
			&gt;&gt;
		</a>
	</div>
<!-- 달력출력 -->
<table class="calendar_body">
<thead>
	<tr bgcolor="#D8D8D8">
		<td class="day sun" >일	</td>
		<td class="day" >월</td>
		<td class="day" >화</td>
		<td class="day" >수</td>
		<td class="day" >목</td>
		<td class="day" >금</td>
		<td class="day sat" >토</td>
	</tr>
</thead>
<tbody>
	<tr>
		<c:forEach var="dateList" items="${dateList}" varStatus="date_status">
			<c:choose>
				<c:when test="${dateList.value=='today'}">
					<td class="today">
						<div class="date">
							${dateList.date}
						</div>
						<div>							
						</div>
					</td>
				</c:when>
				<c:when test="${date_status.index%7==6}">
					<td class="sat_day">
						<div class="sat">
							${dateList.date}
						</div>
						<div>
							<c:forEach var="meeting_book" items="${mb_list }">
							<c:if test="${meeting_book.mbk_day == dateList.date and meeting_book.mbk_month == today_info.search_month 
							and meeting_book.mbk_year == today_info.search_year}"> 
								<div class="bg-met" onclick="location.href='reservation_mcheck.do?member_id=${meeting_book.member_id}&mbk_month=${meeting_book.mbk_month }&mbk_day=${meeting_book.mbk_day }&mbk_date=${meeting_book.mbk_date }'">
								예약자 : ${meeting_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
								장소 : ${meeting_book.mplace }
								</div><br>
							</c:if>
							</c:forEach>
							<c:forEach var="wedding_book" items="${wb_list }">
							<c:if test="${wedding_book.wbk_day == dateList.date and wedding_book.wbk_month == today_info.search_month 
							and wedding_book.wbk_year == today_info.search_year}">  
							<div class="bg-wed" onclick="location.href='reservation_wcheck.do?member_id=${wedding_book.member_id}&wbk_month=${wedding_book.wbk_month }&wbk_day=${wedding_book.wbk_day }&wbk_date=${wedding_book.wbk_date}'">
							예약자 : ${wedding_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
							장소 : ${wedding_book.wplace }
							</div><br>
							</c:if>
							</c:forEach>
							<c:forEach var="booking" items="${rb_list }">
							<c:if test="${booking.rbk_day == dateList.date and booking.rbk_month == today_info.search_month 
							and booking.rbk_year == today_info.search_year}">  
								<div class="bg-rest" onclick="location.href='reservation_rcheck.do?member_id=${booking.member_id}&rbk_month=${booking.rbk_month }&rbk_day=${booking.rbk_day }&booking_date=${booking.booking_date }'">
								예약자 : ${booking.booking_name }&nbsp;&nbsp;&nbsp;
								장소 : ${booking.rplace }
								</div><br>
							</c:if>
							</c:forEach>
							<c:forEach var="room_book" items="${rm_list }">
							<c:if test="${room_book.rm_day == dateList.date and room_book.rm_month == today_info.search_month 
							and room_book.rm_year == today_info.search_year}">  
								<div class="bg-rom" onclick="location.href='reservation_ocheck.do?member_id=${room_book.member_id}&rm_month=${room_book.rm_month }&rm_day=${room_book.rm_day }&rcheck_in=${room_book.rcheck_in }'">
								예약자 : ${room_book.member_id }&nbsp;&nbsp;&nbsp;
								장소 : ${room_book.rname }
								</div><br>
							</c:if>
							</c:forEach>							
						</div>
					</td>
				</c:when>
				<c:when test="${date_status.index%7==0}">
	</tr>
	<tr>	
		<td class="sun_day">
			<div class="sun">
				${dateList.date}
			</div>
			<div>
				<c:forEach var="meeting_book" items="${mb_list }">
				<c:if test="${meeting_book.mbk_day == dateList.date and meeting_book.mbk_month == today_info.search_month 
				and meeting_book.mbk_year == today_info.search_year}">  
					<div class="bg-met" onclick="location.href='reservation_mcheck.do?member_id=${meeting_book.member_id}&mbk_month=${meeting_book.mbk_month }&mbk_day=${meeting_book.mbk_day }&mbk_date=${meeting_book.mbk_date }'">
					예약자 : ${meeting_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
					장소 : ${meeting_book.mplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="wedding_book" items="${wb_list }">
				<c:if test="${wedding_book.wbk_day == dateList.date and wedding_book.wbk_month == today_info.search_month 
				and wedding_book.wbk_year == today_info.search_year}">  
					<div class="bg-wed" onclick="location.href='reservation_wcheck.do?member_id=${wedding_book.member_id}&wbk_month=${wedding_book.wbk_month }&wbk_day=${wedding_book.wbk_day }&wbk_date=${wedding_book.wbk_date}'">
					예약자 : ${wedding_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
					장소 : ${wedding_book.wplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="booking" items="${rb_list }">
				<c:if test="${booking.rbk_day == dateList.date and booking.rbk_month == today_info.search_month 
				and booking.rbk_year == today_info.search_year}">  
					<div class="bg-rest" onclick="location.href='reservation_rcheck.do?member_id=${booking.member_id}&rbk_month=${booking.rbk_month }&rbk_day=${booking.rbk_day }&booking_date=${booking.booking_date }'">
					예약자 : ${booking.booking_name }&nbsp;&nbsp;&nbsp;
					장소 : ${booking.rplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="room_book" items="${rm_list }">
				<c:if test="${room_book.rm_day == dateList.date and room_book.rm_month == today_info.search_month 
				and room_book.rm_year == today_info.search_year}">  
					<div class="bg-rom" onclick="location.href='reservation_ocheck.do?member_id=${room_book.member_id}&rm_month=${room_book.rm_month }&rm_day=${room_book.rm_day }&rcheck_in=${room_book.rcheck_in }'">
					예약자 : ${room_book.member_id }&nbsp;&nbsp;&nbsp;
					장소 : ${room_book.rname }
					</div><br>
				</c:if>
				</c:forEach>
			</div>
		</td>
				</c:when>
				<c:otherwise>
		<td class="normal_day">
			<div class="date">
				${dateList.date}
			</div>
			<div>
				<c:forEach var="meeting_book" items="${mb_list }">
				<c:if test="${meeting_book.mbk_day == dateList.date and meeting_book.mbk_month == today_info.search_month 
				and meeting_book.mbk_year == today_info.search_year}"> 
					<div class="bg-met" onclick="location.href='reservation_mcheck.do?member_id=${meeting_book.member_id}&mbk_month=${meeting_book.mbk_month }&mbk_day=${meeting_book.mbk_day }&mbk_date=${meeting_book.mbk_date }'">
					예약자 : ${meeting_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
					장소 : ${meeting_book.mplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="wedding_book" items="${wb_list }">
				<c:if test="${wedding_book.wbk_day == dateList.date and wedding_book.wbk_month == today_info.search_month 
				and wedding_book.wbk_year == today_info.search_year}">  
					<div class="bg-wed" onclick="location.href='reservation_wcheck.do?member_id=${wedding_book.member_id}&wbk_month=${wedding_book.wbk_month }&wbk_day=${wedding_book.wbk_day }&wbk_date=${wedding_book.wbk_date}'">
					예약자 : ${wedding_book.member_id }&nbsp;&nbsp;&nbsp;&nbsp;
					장소 : ${wedding_book.wplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="booking" items="${rb_list }">
				<c:if test="${booking.rbk_day == dateList.date and booking.rbk_month == today_info.search_month 
				and booking.rbk_year == today_info.search_year}">  
					<div class="bg-rest" onclick="location.href='reservation_rcheck.do?member_id=${booking.member_id}&rbk_month=${booking.rbk_month }&rbk_day=${booking.rbk_day }&booking_date=${booking.booking_date }'">
					예약자 : ${booking.booking_name }&nbsp;&nbsp;&nbsp;
					장소 : ${booking.rplace }
					</div><br>
				</c:if>
				</c:forEach>
				<c:forEach var="room_book" items="${rm_list }">
				<c:if test="${room_book.rm_day == dateList.date and room_book.rm_month == today_info.search_month 
				and room_book.rm_year == today_info.search_year}">  
					<div class="bg-rom" onclick="location.href='reservation_ocheck.do?member_id=${room_book.member_id}&rm_month=${room_book.rm_month }&rm_day=${room_book.rm_day }&rcheck_in=${room_book.rcheck_in }'">
					예약자 : ${room_book.member_id }&nbsp;&nbsp;&nbsp;
					장소 : ${room_book.rname }
					</div><br>
				</c:if>
				</c:forEach>
			</div>
		</td>
				</c:otherwise>
			</c:choose>
		</c:forEach>
</tbody>
</table>
</div>
</form>
<div class="in-wrap">
	<div class="in1"><div style="width:150px; height:25px; background-color:#CEECF5;">ROOM</div></div>
	<div class="in1"><div style="width:150px; height:25px; background-color:#D8F6CE;">RESTAURANT</div></div>
	<div class="in1"><div style="width:150px; height:25px; background-color:#F6D8CE;">MEETTING</div></div>
	<div class="in1"><div style="width:150px; height:25px; background-color:#F5F6CE;">WEDDING</div></div>
</div>
<div class="list-wrap">
	<button id="list-btn" onclick="history.back();">뒤로가기</button>
</div>
<!-- 달력 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>
