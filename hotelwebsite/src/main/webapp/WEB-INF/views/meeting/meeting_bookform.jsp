<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.per-table{
		width : 500px;
		text-align : center;
	}
	#it5 {
		height : 40px;
		background-color : #D8D8D8;
	}
	.meeting-table{
		width : 800px;
		text-align : center;
	}
	#it1{
		width : 170px;
		height : 70px;
		background-color : #D8D8D8;
		text-align : center;
	}
	#it2{
		width : 630px;
		height : 70px;
	}
	#it3{
		width : 210px;
		height : 120px;
		text-align : center;
	}
	#it4{
		width : 170px;
		background-color : #D8D8D8;
		text-align : center;
	}
	.btn-wrap{
		margin-top : 20px;
		text-align : center;
	}
	#bk_btn{
		dispaly : inline-block;
		width : 100px;
		height : 40px;
		align : center;
		background-color : #FFFFFF;
		border : none;
		margin : 0 10px;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- book 화면 시작 -->
<form action="meeting_book.do" method="post">
<input type="hidden" name="member_id" value="${member_id }">
<input type="hidden" name="met_num" value="${meeting.met_num }">
<div class="bk-wrap">
<div class="per-info">
	<h2 align="center">예약자 정보</h2><br>
	<table class="per-table" align="center">
		<tr>
			<td id="it5">아이디</td>
			<td>${member_id }</td>
			<td id="it5">이름</td>
			<td>${member.member_name }</td>
		</tr>
		<tr>
			<td id="it5">전화번호</td>
			<td>${member.member_tel }</td>
			<td id="it5">이메일</td>
			<td>${member.member_email }</td>
		</tr>

	</table>
</div>
<br><br>
<div class="bk-info">
<h2 align="center">행사 정보</h2><br>
<table align="center" class="meeting-table">
	<tr>
		<td id="it1">연회장</td>
		<td id="it2" colspan="3">${meeting.met_name }</td>
	</tr>
	<tr>
		<td id="it1">행사명</td>
		<td id="it2" colspan="3"><input type="text" name="mbk_title" required="required" style="width:100%;"></td>
	</tr>
	<tr>
		<td id="it1">예약일</td>
		<td id="it2" colspan="3"><input type="date" name="mbk_date" required="required"></td>
	</tr>
	<tr>
		<td id="it1">시간</td>
		<td id="it2" colspan="3">
			<select name="mbk_sthour" style="width:100px;">
				<option value="오전 9시">오전 9시</option>
				<option value="오전 10시">오전 10시</option>
				<option value="오전 11시">오전 11시</option>
				<option value="오전 12시">오전 12시</option>
				<option value="오후 1시">오후 1시</option>
				<option value="오후 2시">오후 2시</option>
				<option value="오후 3시">오후 3시</option>
				<option value="오후 4시">오후 4시</option>
				<option value="오후 5시">오후 5시</option>
				<option value="오후 6시">오후 6시</option>
				<option value="오후 7시">오후 7시</option>
				<option value="오후 8시">오후 8시</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;부터&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="mbk_edhour" style="width:100px;">
				<option value="오전 9시">오전 9시</option>
				<option value="오전 10시">오전 10시</option>
				<option value="오전 11시">오전 11시</option>
				<option value="오전 12시">오전 12시</option>
				<option value="오후 1시">오후 1시</option>
				<option value="오후 2시">오후 2시</option>
				<option value="오후 3시">오후 3시</option>
				<option value="오후 4시">오후 4시</option>
				<option value="오후 5시">오후 5시</option>
				<option value="오후 6시">오후 6시</option>
				<option value="오후 7시">오후 7시</option>
				<option value="오후 8시">오후 8시</option>
			</select>
		</td>
	</tr>
	<tr>
		<td id="it1">인원수 </td>
		<td id="it2" colspan="3">
			<p>*최대 ${meeting.met_seat }명까지 가능합니다.</p>
			<c:if test="${met_num == 1}">
				<label><input type="radio" name="mbk_seat" value="700 ~ 800">&nbsp;&nbsp;700 ~ 800</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="800 ~ 900">&nbsp;&nbsp;800 ~ 900</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="900 ~ 1000">&nbsp;&nbsp;900 ~ 1000</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="1000 ~ 1100">&nbsp;&nbsp;1000 ~ 1100</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="1100 ~ 1200">&nbsp;&nbsp;1100 ~ 1200</label>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
			<c:if test="${met_num == 2 }">
				<label><input type="radio" name="mbk_seat" value="300 ~ 400">&nbsp;&nbsp;300 ~ 400</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="400 ~ 500">&nbsp;&nbsp;400 ~ 500</label>&nbsp;&nbsp;&nbsp;&nbsp;		
			</c:if>
			<c:if test="${met_num == 3 }">
				<label><input type="radio" name="mbk_seat" value="100 ~ 200">&nbsp;&nbsp;100 ~ 200</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="200 ~ 300">&nbsp;&nbsp;200 ~ 300</label>&nbsp;&nbsp;&nbsp;&nbsp;				
			</c:if>
			<c:if test="${met_num == 4 }">
				<label><input type="radio" name="mbk_seat" value="50명 이하">&nbsp;&nbsp;50명 이하</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="radio" name="mbk_seat" value="100명 이하">&nbsp;&nbsp;100명 이하</label>&nbsp;&nbsp;&nbsp;&nbsp;				
			</c:if>
			<c:if test="${met_num == 5 }">
				<label><input type="radio" name="mbk_seat" value="50명 이하">&nbsp;&nbsp;50명 이하</label>&nbsp;&nbsp;&nbsp;&nbsp;				
			</c:if>
			<c:if test="${met_num == 6 }">
				<label><input type="radio" name="mbk_seat" value="30명 이하">&nbsp;&nbsp;30명 이하</label>&nbsp;&nbsp;&nbsp;&nbsp;				
			</c:if>
		</td>
	</tr>
	<tr>
		<td id="it4">테이블 배치</td>
		<td id="it3">
			<label><input type="radio" name="mbk_shape" value="극장형">&nbsp;&nbsp;&nbsp;&nbsp;
			<img alt="" src="resources/image/theater.png"></label>
		</td>
		<td id="it3">
			<label><input type="radio" name="mbk_shape" value="사각 테이블형">&nbsp;&nbsp;&nbsp;&nbsp;
			<img alt="" src="resources/image/class.png"></label>
		</td>
		<td id="it3">
			<label><input type="radio" name="mbk_shape" value="원형 테이블형">&nbsp;&nbsp;&nbsp;&nbsp;
			<img alt="" src="resources/image/round.png"></label>
		</td>
	</tr>
	<tr>
		<td id="it1">기타 추가 사항</td>
		<td id="it2" colspan="3">
			<textarea rows="5" cols="60" name="mbk_etc" style="width:100%;"></textarea>
		</td>
	</tr>
</table>
</div>
<br><br>
<div class="btn-wrap">
	<input id="bk_btn" type="submit" value="예약하기">
	<input id="bk_btn" type="button" onclick="history.back()" value="취소">
</div>
</div>
</form>

<!-- book 화면 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>