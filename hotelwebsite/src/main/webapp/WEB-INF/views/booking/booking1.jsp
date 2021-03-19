<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input.btn[type="submit"] {
  background: #D8D8D8;
  border:none;
  border-radius: 2px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 3px;
  margin: 5px 0;
  outline: medium none;
  overflow: hidden;
  padding: 10px;
  text-transform: uppercase;
  transition: all 0.15s ease-in-out 0s;
  width: 150px;
}

.booking-table{
	width :50%;
	border : 3px solid #D8D8D8;
	margin-left:auto;
    margin-right:auto;
}

#item{
	width : 100px;
	height : 60px;
	background-color : #E4E4E4;
	text-align : center;
}
#item2{
	background-color : #FBF8EF;
	border : none;
}
.wrap{
	text-align : center;
}

.btn2{
  background: #D8D8D8;
  border:none;
  border-radius: 2px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 3px;
  margin: 5px 0;
  outline: medium none;
  overflow: hidden;
  padding: 10px;
  text-transform: uppercase;
  transition: all 0.15s ease-in-out 0s;
  width: 100px;
}
input{
	width : 100%;
}
</style>
</head>
<body>

	<div id="header">
		<%@ include file="../main/header.jsp" %>
	</div>
	
	<br><br><br><br>
<div style="text-align:center">
<form action="booking.do" method="post">
<input type="hidden" name="member_id" value="${member.member_id }">
<input type="hidden" name="restaurant_num" value="${restaurant.restaurant_num }">
<table class="booking-table">
<thead>
  <tr>
    <td colspan="2" id="item">레스토랑 이름</td>
    <th colspan="4">${restaurant.restaurant_name }</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td colspan="2" id="item">고객 아이디</td>
    <td colspan="4">${member.member_id }</td>
  </tr>
  <tr>

        <td colspan="2" id="item">전화번호</td>
    <td colspan="4">${member.member_tel }</td>
  </tr>
  <tr>
    <td colspan="2" id="item">예약자 이름</td>
    <td colspan="4"><input type="text" name="booking_name" placeholder="예약자 대표 성함을 입력하세요." size="50" maxlength="30" required="required" style="border:none;"></td>
  </tr>
  <tr>
    <td colspan="2" id="item">예약일</td>
    <td colspan="4" ><input type="date" name="booking_date" required="required"></td>
  </tr>
    <tr>
    <td colspan="2" id="item">예약 시간</td>
    <td colspan="4"><input type="text" name="booking_hours" placeholder="00:00 형식으로 입력하세요. Ex) 14:00" size="50" maxlength="30" required="required" style="border:none;"></td>
  </tr>
  <tr>
    <td colspan="2" id="item">예약 인원</td>
    <td colspan="4"><input type="text" name="guests" placeholder="레스토랑 이용 인원 입력하세요." size="50" maxlength="30" required="required" style="border:none;"></td>
  </tr>
  <tr>
    <td colspan="2" id="item">요청사항</td>
    <td colspan="4"><textarea cols="50" name="request" rows="10"  placeholder="요청사항을 입력하세요." style="width:100%; border:none;"></textarea></td>
  </tr>
</tbody>
</table>
<br>
		<input type="submit" value="예약하기" class="btn">
</form>
</div>
<br><br><br><br>
	<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body> 
</html>