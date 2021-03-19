<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<%@ include file="../main/header.jsp" %>
</div>
<!-- book 시작 -->
<form action="wedding_book.do" method="post">
<input type="hidden" name="member_id" value="${member_id }">
<input type="hidden" name="wed_num" value="${wedding.wed_num }">
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
<table align="center" class="wedding-table">
	<tr>
		<td id="it1">연회장</td>
		<td id="it2">${wedding.wed_name }</td>
	</tr>
	<tr>
		<td id="it1">예약일</td>
		<td id="it2"><input type="date" name="wbk_date" required="required"></td>
	</tr>
	<tr>
		<td id="it3">시간</td>
		<td id="it2">
			<p>*예식 진행 시간은 90분입니다.</p>
			<select name="wbk_hour" style="width:200px;">
				<option value="오전 11시 ~ 오후 12시 30분">오전 11시 ~ 오후 12시 30분</option>
				<option value="오후 1시 ~ 오후 2시 30분">오후 1시 ~ 오후 2시 30분</option>
				<option value="오후 3시 ~ 오후 4시 30분">오후 3시 ~ 오후 4시 30분</option>
				<option value="오후 5시 ~ 오후 6시 30분">오후 5시 ~ 오후 6시 30분</option>
				<option value="오후 7시 ~ 오후 8시 30분">오후 7시 ~ 오후 8시 30분</option>
			</select>
		</td>
	</tr>
	<tr>
		<td id="it3">인원수 </td>
		<td id="it2">
			<p>*최대 ${wedding.wed_seat }명까지 가능합니다.</p>
			<c:if test="${wed_num == 1}">
				<label><input type="radio" name="Wbk_seat" value="300 ~ 400">&nbsp;&nbsp;300 ~ 400</label>
				<label><input type="radio" name="Wbk_seat" value="400 ~ 500">&nbsp;&nbsp;400 ~ 500</label>
				<label><input type="radio" name="Wbk_seat" value="500 ~ 600">&nbsp;&nbsp;500 ~ 600</label>
			</c:if>
			<c:if test="${wed_num == 2 }">
				<label><input type="radio" name="Wbk_seat" value="100명 이하">&nbsp;&nbsp;100명 이하</label>
				<label><input type="radio" name="Wbk_seat" value="200명 이하">&nbsp;&nbsp;200명 이하</label>	
			</c:if>
			<c:if test="${wed_num == 3 }">
				<label><input type="radio" name="Wbk_seat" value="80명 이하">&nbsp;&nbsp;80명 이하</label>
			</c:if>
			<c:if test="${wed_num == 4 }">
				<label><input type="radio" name="Wbk_seat" value="50명 이하">&nbsp;&nbsp;50명 이하</label>	
			</c:if>
		</td>
	</tr>
	<tr>
		<td id="it3">상담 요청</td>
		<td id="it2">
			<p>* 관심있게 상담받고 싶은 내용을 선택해주세요.(다중선택 가능)</p>
			<label><input type="checkbox" name="wbk_counsel" value="꽃장식" style="font-weight : normal;">&nbsp;&nbsp;꽃장식</label>
			<label><input type="checkbox" name="wbk_counsel" value="장소 정보">&nbsp;&nbsp;장소 정보</label>
			<label><input type="checkbox" name="wbk_counsel" value="음식">&nbsp;&nbsp;음식</label>
			<label><input type="checkbox" name="wbk_counsel" value="가격">&nbsp;&nbsp;가격</label>
			<label><input type="checkbox" name="wbk_counsel">&nbsp;&nbsp;기타</label><br>
			<input type="text" name="wbk_counsel" style="width:100%;">
		</td>
	</tr>
	<tr>
		<td id="it1">기타 추가 사항</td>
		<td id="it2">
			<textarea rows="5" cols="60" name="Wbk_etc" style="width:100%;"></textarea>
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



<!-- book 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>