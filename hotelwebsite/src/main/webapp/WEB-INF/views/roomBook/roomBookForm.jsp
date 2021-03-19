<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜&amp;인원 선택 | 객실예약</title>
<style>
	.per-table{
		width : 500px;
		text-align : center;
	}
	#it5 {
		height : 40px;
		background-color : #D8D8D8;
	}
	.wedding-table{
		width : 800px;
		text-align : center;
	}
	#it5 {
		height : 40px;
		background-color : #D8D8D8;
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
		width : 170px;
		height : 110px;
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
	label{
		margin-right : 15px;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp"%>
</div>
<!-- room 예약 시작 -->
<form action="roomBook.do" method="post">
<input type="hidden" name="member_id" value="${member_id }">
<input type="hidden" name="room_id" value="${room.room_id}">
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
<h2 align="center">룸 정보</h2><br>
<table align="center" class="wedding-table">
	<tr>
		<td id="it1">방 이름</td>
		<td>${room.room_name }</td>
		<td id="it1">가격</td>
		<td>${room.room_price }원(1박)</td>
	</tr>
	<tr>
		<td id="it3">예약일</td>
		<td id="it2" colspan="3">
			<p>*입실은 오후 2시 이후부터 가능합니다. 퇴실은 오전 11시전까지 가능합니다.</p>
			<input type="date" name="rcheck_in" required="required">
			<input type="date" name="rcheck_out" required="required">
		</td>
	</tr>
	<tr>
		<td id="it1">인원수 </td>
		<td id="it2" colspan="3">
			<select name="rpeople" style="width:200px;">
				<option value="1">1명</option>
				<option value="2">2명</option>
				<option value="3">3명</option>
			</select>
		</td>
	</tr>
	<tr>
		<td id="it1">침대 타입 </td>
		<td id="it2" colspan="3">
			<label><input type="radio" name="rbedtype" value="더블">&nbsp;&nbsp; 더블</label>
			<label><input type="radio" name="rbedtype" value="트윈">&nbsp;&nbsp; 트윈</label>
		</td>
	</tr>
	<tr>
		<td id="it3">룸 서비스</td>
		<td id="it2" colspan="3">
			<p>* 룸 서비스는 선택하신 사항에 따라 추가금이 부여됩니다.(다중선택 가능)</p>
			<label><input type="checkbox" name="rservice" value="브런치" style="font-weight : normal;">&nbsp;&nbsp;브런치</label>
			<label><input type="checkbox" name="rservice" value="와인 세팅">&nbsp;&nbsp;와인 세팅</label>
			<label><input type="checkbox" name="rservice" value="피트니스">&nbsp;&nbsp;피트니스</label>
			<label><input type="checkbox" name="rservice" value="수영장">&nbsp;&nbsp;수영장</label>
		</td>
	</tr>
	<tr>
		<td id="it1">기타 추가 사항</td>
		<td id="it2" colspan="3">
			<textarea rows="5" cols="60" name="retc" style="width:100%;"></textarea>
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

<!-- room 예약 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp"%>
</div>
</body>
</html>