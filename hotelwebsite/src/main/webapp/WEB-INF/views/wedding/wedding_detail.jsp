<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#book-btn{
		background-color : #FFFFFF;
		border : none;
	}
</style>
</head>
<body>
<div id="header">
	<%@ include file="../main/header.jsp" %>
</div>
<!-- detail 시작 -->
<div>
	<c:if test="${wed_num == 1}">
		<img width="100%" alt="" src="resources/image/harmony-title.jpg">
		<br><br>
		<p style="margin : 30px 0 0 50px;">일생에 단 한번뿐인 소중한 웨딩을 위한 선택</p>
		<p style="margin : 0 50px;"><font size="13">HARMONY WEDDING</font></p>
	</c:if>
	<c:if test="${wed_num == 2}">
		<img width="100%" alt="" src="resources/image/floor-title.jpg">
		<br><br>
		<p style="margin : 30px 0 0 50px;">로맨틱한 무대연출과 세련된 감각을 갖춘</p>
		<p style="margin : 0 50px;"><font size="13">FLOOR WEDDING</font></p>
	</c:if>
	<c:if test="${wed_num == 3 }">
		<img width="100%" alt="" src="resources/image/sky-title.jpg">
		<br><br>
		<p style="margin : 30px 0 0 50px;">환상적인 도심의 전경이 돋보이는 낭만적인 웨딩 공간</p>
		<p style="margin : 0 50px;"><font size="13">SKY WEDDING</font></p>	
	</c:if>
	<c:if test="${wed_num == 4 }">
		<img width="100%" alt="" src="resources/image/boutique-title.jpg">
		<br><br>
		<p style="margin : 30px 0 0 50px;">가장 축복받고 싶은 가족과 지인들만이 함께하는 특별한 웨딩</p>
		<p style="margin : 0 50px;"><font size="13">BOUTIQUE WEDDING</font></p>		
	</c:if>
</div>
<div style="margin : 0 0 80px 50px;">
	<hr width="500px" align="left">
	<table>
		<caption style="caption-side:top;">예약 및 이용 문의</caption>
		<tr><td width="70px">전화</td><td>02-3921-8888</td></tr>
		<tr><td>이메일</td><td>wedding@project.co.kr</td></tr>
	</table>
	<img src="resources/image/calendar.png">
	<button id="book-btn" onclick="location.href='wedding_bookform.do?member_id=${member_id }&wed_num=${wed_num }'">예약하기</button>	
</div>
<c:if test="${wed_num == 1}">
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/harmony-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">대규모 웨딩을 원하는 콘셉트로 디자인하는 하모니 웨딩</font></p>
			<p>최대 600석까지 수용 가능한 대규모 웨딩을 원하는 콘셉트로 마음껏 디자인하세요.</p>
			<p>다채로운 컬러로 연출할 수 있는 천장의 LED 조명으로</p>
			<p>신랑과 신부의 런웨이를 하나의 화려한 쇼처럼 연출할 수 있습니다.</p>
			<p>원하는 태마의 색상을 선택할 수 있어 일생에 단 한 번뿐인</p>
			<p>소중한 결혼식을 나만의 감각적인 웨딩으로 완성하여 드립니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;" style="text-align:center;">
	<tr>
		<td><p>* 위치 : Project Hotel in Seoul B1</p></td>
		<td><p>* 수용 가능 인원 : 최대 600명</p></td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">FACILITIES & SERVICES</font></p>
<br><br>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/harmony-detail2.jpg" width="95%"></td>
		<td>
			<p><font size="5">웨딩 플라워 디자인</font></p>
			<p>화려한 꽃 장식으로 개성을 표현하고자 하는 신랑 신부를 위해</p>
			<p>프로젝트 호텔의 플라워 팀이 1:1 상담을 통해</p>
			<p>웨딩 플라워를 디자인합니다.</p>
			<p>디테일한 공간 데커레이션까지 세련된 감각으로 디자인하여</p>
			<p>예식장을 마치 고급스러운 예술 공간으로 완성해드립니다.</p>		
		</td>
	</tr>
</table>
<br>
<table align="center" style="text-align:right;">
	<tr>
		<td>
			<p><font size="5">신부대기실</font></p>
			<p>가장 설레는 순간에 가장 편안한 마음으로 하객을</p>
			<p>맞이할 수 있는 공간입니다. 신부의 취향에 맞춘 꽃으로 장식해</p>
			<p>더욱더 빛나는 순간을 완성해 줍니다.</p>	
		</td>
		<td><img alt="" src="resources/image/harmony-detail3.jpg" width="95%"></td>
	</tr>
</table>
<br>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/harmony-detail4.jpg" width="95%"></td>
		<td>
			<p><font size="5">폐백실</font></p>
			<p>부모님께 구고의 예를 올리는 전통 혼례 의식인 폐백.</p>
			<p>우아하며 전통이 묻어나는 분위기 속에서 가족 간의</p>
			<p>따뜻한 시간을 만드는 넉넉하면서도 아늑한 공간입니다.</p>
		</td>
	</tr>
</table>
</c:if>
<c:if test="${wed_num == 2}">
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/floor-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">중소규모의 웨딩에 특화된 다이아몬드 웨딩</font></p>
			<p>플라워홀은 로맨틱한 무대연출과 세련된 감각을 갖춘</p>
			<p>연회장으로, 최대 200명의 하객을 수용할 수 있는</p>
			<p>중소규모 웨딩에 특화된 최적의 공간입니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;" style="text-align:center;">
	<tr>
		<td><p>* 위치 : Project Hotel in Seoul B1</p></td>
		<td><p>* 수용 가능 인원 : 최대 200명</p></td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">FACILITIES & SERVICES</font></p>
<br><br>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/floor-detail2.jpg" width="95%"></td>
		<td>
			<p><font size="5">웨딩 플라워 디자인</font></p>
			<p>화려한 꽃 장식으로 개성을 표현하고자 하는 신랑 신부를 위해</p>
			<p>프로젝트 호텔의 플라워 팀이 1:1 상담을 통해</p>
			<p>웨딩 플라워를 디자인합니다.</p>
			<p>디테일한 공간 데커레이션까지 세련된 감각으로 디자인하여</p>
			<p>예식장을 마치 고급스러운 예술 공간으로 완성해드립니다.</p>		
		</td>
	</tr>
</table>
<br>
<table align="center" style="text-align:right;">
	<tr>
		<td>
			<p><font size="5">신부대기실</font></p>
			<p>가장 설레는 순간에 가장 편안한 마음으로 하객을</p>
			<p>맞이할 수 있는 공간입니다. 신부의 취향에 맞춘 꽃으로 장식해</p>
			<p>더욱더 빛나는 순간을 완성해 줍니다.</p>	
		</td>
		<td><img alt="" src="resources/image/floor-detail3.jpg" width="95%"></td>
	</tr>
</table>
</c:if>
<c:if test="${wed_num == 3 }">
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/sky-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">파란 하늘이 눈앞에 펼쳐지는 스카이 웨딩</font></p>
			<p>아름다운 도심의 전경이 돋보이는 낭만적인 웨딩 공간으로</p>
			<p>소중한 지인들에게만 허락되는 프라이빗한 예식을 </p>
			<p>준비하실 수 있습니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;" style="text-align:center;">
	<tr>
		<td><p>* 위치 : Project Hotel in Seoul 30층</p></td>
		<td><p>* 수용 가능 인원 : 최대 80명</p></td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">FACILITIES & SERVICES</font></p>
<br><br>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/sky-detail2.jpg" width="95%"></td>
		<td>
			<p><font size="5">웨딩 플라워 디자인</font></p>
			<p>화려한 꽃 장식으로 개성을 표현하고자 하는 신랑 신부를 위해</p>
			<p>프로젝트 호텔의 플라워 팀이 1:1 상담을 통해</p>
			<p>웨딩 플라워를 디자인합니다.</p>
			<p>디테일한 공간 데커레이션까지 세련된 감각으로 디자인하여</p>
			<p>예식장을 마치 고급스러운 예술 공간으로 완성해드립니다.</p>		
		</td>
	</tr>
</table>
<br>
<table align="center" style="text-align:right;">
	<tr>
		<td>
			<p><font size="5">신부대기실</font></p>
			<p>가장 설레는 순간에 가장 편안한 마음으로 하객을</p>
			<p>맞이할 수 있는 공간입니다. 신부의 취향에 맞춘 꽃으로 장식해</p>
			<p>더욱더 빛나는 순간을 완성해 줍니다.</p>	
		</td>
		<td><img alt="" src="resources/image/sky-detail3.jpg" width="95%"></td>
	</tr>
</table>
</c:if>
<c:if test="${wed_num == 4 }">
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/boutique-detail1.jpg" width="95%"></td>
		<td>
			<p><font size="5">오붓하고 특별한 축복의 시간을 누릴 수 있는 부티크 웨딩</font></p>
			<p>가장 축복받고 싶은 가족과 지인들만이 함께하는 특별한 웨딩을 준비하시나요.</p>
			<p>한강의 전경이 눈 앞에 펼쳐진 30층 소연회장에서 </p>
			<p>오붓한 축복의 시간을 누리시기 바랍니다.</p>
		</td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">INFORMATION</font></p>
<br><br>
<table align="center" width="600px;" style="text-align:center;">
	<tr>
		<td><p>* 위치 : Project Hotel in Seoul 30층 소연회장</p></td>
		<td><p>* 수용 가능 인원 : 최대 50명</p></td>
	</tr>
</table>
<br><br><br>
<p align="center"><font size="9">FACILITIES & SERVICES</font></p>
<br><br>
<table align="center">
	<tr>
		<td><img alt="" src="resources/image/boutique-detail2.jpg" width="95%"></td>
		<td>
			<p><font size="5">웨딩 플라워 디자인</font></p>
			<p>화려한 꽃 장식으로 개성을 표현하고자 하는 신랑 신부를 위해</p>
			<p>프로젝트 호텔의 플라워 팀이 1:1 상담을 통해</p>
			<p>웨딩 플라워를 디자인합니다.</p>
			<p>디테일한 공간 데커레이션까지 세련된 감각으로 디자인하여</p>
			<p>예식장을 마치 고급스러운 예술 공간으로 완성해드립니다.</p>		
		</td>
	</tr>
</table>
<br>
</c:if>

<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>