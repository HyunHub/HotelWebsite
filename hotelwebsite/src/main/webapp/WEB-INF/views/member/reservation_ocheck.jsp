<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.retable{
		width : 600px;
		text-align : center;
	}
	.retable td{
		height : 40px;
		border : 1px solid #D8D8D8;
	}
	#retd{
		width : 150px;
		background-color : #D8D8D8;
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
</style>
<script type="text/javascript">
	function popup(){
		window.open('popup.do?member_id=${roombook.member_id}', '회원 정보', 'width=400, height=200 left=500, top=150');
	}
</script>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- 회원 예약 내용 조회 시작-->
<br>
<h2 align="center">${rm_month }월 ${rm_day }일 ${roombook.hname }님의 예약 조회</h2>
<br>
<table class="retable" align="center" border="1px solid black">
	<tr>
		<td id="retd">아이디</td>
		<td><a onclick="popup()">${roombook.member_id }</a></td>
		<td id="retd">이름</td>
		<td><a onclick="popup()">${roombook.hname }</a></td>
	</tr>
	<tr>
		<td id="retd">방 이름</td>
		<td colspan="3">${roombook.rname }</td>
	</tr>
	<tr>
		<td id="retd">예약일</td>
		<td colspan="3">${roombook.rcheck_in } ~ ${roombook.rcheck_out }</td>
	</tr>
	<tr>
		<td id="retd">인원수</td>
		<td colspan="3">${roombook.rpeople }</td>
	</tr>
	<tr>
		<td id="retd">침대 타입</td>
		<td colspan="3">${roombook.rbedtype }</td>
	</tr>
	<tr>
		<td id="retd">선택 서비스</td>
		<td colspan="3">${roombook.rservice }</td>
	</tr>
	<tr>
		<td id="retd">기타 문의 사항</td>
		<td colspan="3">${roombook.retc }</td>
	</tr>
</table>
<div class="btn-wrap">
	<button id="re-btn" onclick="history.back();">뒤로가기</button>
</div>
<!-- 회원 예약 내용 조회 끝 -->
<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>