<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../member/link.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Website</title>
<link rel="stylesheet" type="text/css" href="resources/css/header.css">
<script type="text/javascript">
	function changeView(value){
		if(value == "0"){
			location.href="main.do";
		}
		else if(value == "1"){
			location.href="loginForm.do";
		}
		else if(value == "2"){
			location.href="joinForm.do";
		}
		else if(value == "3"){
			location.href="myPage.do";
		}
		else if(value == "4"){
			location.href="logout.do";
		}
		else if(value == "5"){
			location.href="board_list.do?member_id=${member.member_id}";
		}
		else if(value == "6"){
			location.href="book_reservation.do?member_id=${member.member_id}";
		}
		else if(value == "7"){
			location.href="management_main.do";
		}
		else if(value == "8"){
			location.href="restmain.do";
		}
		else if(value == "9"){
			location.href="roomList.do";
		}
		else if(value == "10"){
			location.href="meeting_main.do?member_id=${member.member_id}";
		}
		else if(value == "11"){
			location.href="wedding_main.do?member_id=${member.member_id}";
		}
		else if(value == "12"){
			location.href="about.do";
		}
		
	}
</script>
</head>
<body>
<div class="info">
<c:if test="${member.member_id == null && member_id == null}">
	<div class="info-item">
		<button class="info-btn" onclick="changeView(2)">JOIN</button>
	</div>
	<div class="info-item">
		<button class="info-btn" onclick="changeView(1)">LOGIN</button>
	</div>
</c:if>
<c:if test="${member.member_id != null || member_id != null}">
	<div class="info-item">
		<button class="info-btn" onclick="changeView(3)">MY PAGE</button>
		<button class="info-btn" onclick="changeView(6)">RESERVATION</button>
		<button class="info-btn" onclick="changeView(4)">LOGOUT</button>
		<c:if test="${member.member_id == 'admin' || member_id == 'admin'}">
		<button class="info-btn" onclick="changeView(7)">MANAGEMENT</button>
		</c:if>
	</div>
</c:if>
</div>
<div class="page-header">
	<div class="row">
		<div class="col">
			<ul class="nav nav-tabs justify-content-center" style="border:none">
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(12)">ABOUT</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(9)">ROOMS</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(8)">RESTAURANTS</a>
			</li>
			<div class="header-title">
				<h1 align="center" onclick="location.href='mainForm.do'">PROJECT HOTEL</h1>
			</div>
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(10)">MEETINGS</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(11)">WEDDINGS</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" onclick="changeView(5)">NOTICE</a>
			</li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>