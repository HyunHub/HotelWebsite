<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/rest_detail.css">
</head>
<body>
	<div id="header">
		<%@ include file="../main/header.jsp" %>
	</div>
	
	<div class="main">
<img class="mainimg" alt="" src="resources/image/lounge.jpg">
</div>

   <article>
<div class="flex-container">
        <div style="flex-basis:600px">
호텔 24층 뒷 편에 마련된 Lounge & Bar는 '서양의 웅장함과 동양의 우아함'이 표현된 호텔을 대표하는 상징적인 공간으로, 각종 비즈니스 및 소셜 미팅을 진행하기에 최적의 장소입니다. 탁 트인 높은 천장과 한국의 전통 문양을 재현한 인테리어, 라이브러리를 컨셉으로 조성된 좌석에서 고객의 라이프스타일에 맞는 건강 음료와 라이브 뮤직, 여유로운 시간을 만나실 수 있습니다
        </div>
        
        <div class="flex-container">
          <div>
            <h3><strong>예약 및 이용문의</strong></h3>
            <div>
              <div>
                <div>전화</div>
                <div>+82 2-313-1711</div>
              </div>
              <div>
                <div>이메일</div>
                <div>lounge_bar@hotelpro.co.kr</div>
              </div>
            </div>
          </div>
          <div>
            <a onclick="location.href='booking1.do?member_id=${member_id}&restaurant_num=4'" class="btn btn-outline-dark btn-lg">BOOK YOUR DINING</a>
            <a href="" class="btn btn-outline-dark btn-lg" target="_blank">RESTAURANTS FAQ</a>
          </div>
        </div>
        
        </div>
        <script>
  var rad = document.flexForm.fDTypes;
  var fContainer = document.getElementsByClassName('flex-container');
  var prev = null;
    for(var i = 0; i < rad.length; i++) {
      rad[i].addEventListener('change', function() {
        fContainer.item(0).style.justifyContent = this.value;
      });
    }
</script>


 <div class="outer">
 
 <div class="inner">
 <div class="flex-container2">
         <h3 style="font-size: x-large;">INFORMATION</h3>
	<div class="flex-container2">
		<table style="text-align: left;">
			<tr>
				<td width="200" style="font-weight: bold; ">OPEN</td>
				<td>월요일 ~ 일요일</td>
			</tr>
			<tr>
				<td width="200" style="font-weight: bold;">OPERATION HOURS</td>
				<td>09:00 ~ 22:00</td>
		</table>
     </div>
              <div class="flex-container2">
		<table style="text-align: left;">
			<tr>
				<td width="100" style="font-weight: bold;">좌석 수</td>
				<td>144석</td>
			</tr>
			<tr>
				<td width="100" style="font-weight: bold;">위치</td>
				<td>PROJECT HOTEL IN SOEUL 24층</td>
		</table>
               </div>  
              </div>
            </div>
<br><br><br>
 
 <div class="inner">
<div>
<div style="width:100%;">
                  <table class="type03" width="600">
                    <caption>상기 운영시간은 3월 19일까지입니다.</caption>
                    <colgroup>
                      <col width="20%">
                      <col width="40%">
                      <col width="40%">
                    </colgroup>
                    <thead>
                    <tr>
                      <th scope="col">시간</th>
                      <th scope="col" colspan="2">영업 시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <th scope="row">아침</th>
                      <td colspan="2">09:00 ~ </td>
                    </tr>
                    <tr>
                      <th scope="row">점심</th>
                      <td><p class="font">주중 & 토요일</p> 12:00 ~ 14:30</td>
                      <td><p class="font">일요일 </p> 11:30 ~ 13:30</td>
                    </tr>
                    <tr>
                      <th scope="row">저녁</th>
                      <td><p class="font">주중 & 일요일</p> 14:00 ~ 22:00</td>
                      <td><p class="font">토요일 </p> 15:00 ~ 21:50</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
            </div>
          </div>
          <div>
<br><br><br>
          </div>
          
<br><br><br>
          <div class="inner">
            <ul style="color: #5E5E5E;">
              <li>특정 날짜 또는 기간에 따라 운영 시간이 상이할 수 있으니, 레스토랑에 문의 부탁 드립니다.</li>
            </ul>
                 <br><br>
          </div>
        </div>
      
      <script>
    var rad = document.flexForm.fDTypes;
    var fContainer = document.getElementsByClassName('outer');
    var prev = null;
      for(var i = 0; i < rad.length; i++) {
        rad[i].addEventListener('change', function() {
          fContainer.item(0).style.justifyContent = this.value;
        });
      }
</script>

      </article>
      <br><br><br>

     <br><br><br>
         <h2 style="padding-left:270px; font-size: x-large;">MENU</h2>
         <br><br>
         <table class="menutable">
		<thead>
  		<tr>
 		   <th colspan="8" rowspan="6"><img class="img" alt="" src="resources/image/lounge.jpg"></th>
 		   <th colspan="7"></th>
 		 </tr>
 		 <tr>
  		  <td colspan="7" style="text-align:left; vertical-align : bottom;">Breakfast Menu</td>
 		 </tr>
 		 <tr>
  		  <td colspan="7" style="text-align:left;">
  		  <a href="" target="_self" class="btn btn-secondary btn-lg">
  		  PDF 보기</a></td>
 		 </tr>
 		 <tr>
 		   <td colspan="7" style="text-align:left; vertical-align : bottom;">LN & DN Menu</td>
 		 </tr>
 		 <tr>
  		  <td colspan="7" style="text-align:left;">
  		  <a href="" target="_self" class="btn btn-secondary btn-lg">
  		  PDF 보기</a></td>
 		 </tr>
 		 <tr>
  		  <td colspan="7" style="text-align:left; color: #5E5E5E;">* PDF 보기 버튼을 누르시면 파일이 다운로드됩니다 *</td>
  		</tr>
		</thead>
		</table>

     <br><br><br>

	<div id="footer">
	<%@ include file="../main/footer.jsp" %>
	</div>
</body>
</html>