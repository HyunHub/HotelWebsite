<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="roomBook.do" method="post">
		<input type="hidden" name="member_id" value="${member.member_id }">
		
		<div class="container" align="center">
			<h2>예약 가능한 객실</h2>
			<table class="table table-bordered">
				<c:forEach var="room" items="${list}">
					<tr><td rowspan="6"><img alt="" src="resources/image/room/${room.room_image }"></td></tr>
					<tr><td>룸이름</td><td>${room.room_name }</td></tr>
					<tr><td>크기</td><td>${room.room_size }m<sup>2</sup></td></tr> 
					<tr><td>침대타입</td><td>${room.room_bed}</td></tr>
					<tr><td>가격</td><td>${room.room_price }</td></tr>
					<tr><td colspan="2"><input type="submit" value="예약하기"></td></tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>
</html>