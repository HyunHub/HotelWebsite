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
<img class="mainimg" alt="" src="resources/image/hwa.jpg">
</div>

   <article>
<div class="flex-container">
        <div style="flex-basis:600px">
호텔 1층 안쪽에 자리한 무궁화는 정통 한식과 전세계의 요리를 조합해 탄생시킨 퓨전 한식을 선보입니다.국내외 오피니언 리더들에게 꾸준히 사랑받는 레스토랑입니다.
레스토랑 바로 앞에 실내 정원을 조성해 자연을 재현했으며 한국의 사계절을 모티프로 한 별실 13개가 준비되어 있습니다. 모든 기물은 지방 장인들이 직접 제작한 기물을 사용합니다.
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
                <div>mugunghwa@hotelpro.co.kr</div>
              </div>
            </div>
          </div>
          <div>
            <a onclick="location.href='booking1.do?member_id=${member_id}&restaurant_num=2'" class="btn btn-outline-dark btn-lg">BOOK YOUR DINING</a>
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
				<td>11:30 ~ 22:00</td>
		</table>
     </div>
              <div class="flex-container2">
		<table style="text-align: left;">
			<tr>
				<td width="100" style="font-weight: bold;">좌석 수</td>
				<td>130석 (별실 13개 포함)</td>
			</tr>
			<tr>
				<td width="100" style="font-weight: bold;">위치</td>
				<td>PROJECT HOTEL IN SOEUL 1층</td>
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
                      <th scope="row">점심</th>
                      <td><p class="font">주중 & 토요일</p> 11:30 ~ 14:30</td>
                      <td><p class="font">일요일 1부</p> 11:30 ~ 13:30
                      <br><p class="font">일요일 2부</p> 13:50 ~ 15:50</td>
                    </tr>
                    <tr>
                      <th scope="row">저녁</th>
                      <td><p class="font">주중 & 일요일</p> 18:00 ~ 22:00</td>
                      <td><p class="font">토요일 1부</p> 17:20 ~ 19:20
                      <br><p class="font">토요일 2부</p> 19:50 ~ 21:50</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
            </div>
          </div>
          <div>
<br><br><br>
          </div>
          <div class="inner">
            <div>
              <strong>2021 무궁화 DINING 운영 시간</strong>
              <div>
              
                <table class="type03" width="700">
                  <caption>무궁화 2021 DINING 운영 시간 - 시간, 영업시간(주중), 영업시간(주말) 정보 제공</caption>
                  <colgroup>
                    <col width="67px">
                    <col width="155px">
                    <col width="*">
                    <col width="*">
                  </colgroup>
                  <thead>
                  <tr>
                    <th scope="col">시간</th>
                    <th scope="col">영업시간 (주중)</th>
                    <th scope="col" colspan="2">영업시간 (주말)</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <th scope="row" rowspan="2">점심</th>
                    <td rowspan="2">11:30 ~ 14:30</td>
                    <th scope="row">토요일</th>
                    <td>11:30 ~ 14:00</td>
                  </tr>
                  <tr>
                    <th scope="row">일요일 1부<br>일요일 2부</th>
                    <td>11:30 ~ 13:30<br>13:50 ~ 15:50</td>
                  </tr>
                  <tr>
                    <th scope="row" rowspan="2">저녁</th>
                    <td rowspan="2">18:00 ~ 21:30</td>
                  	<th scope="row">토요일 1부<br>토요일 2부</th>
                  	<td>17:20 ~ 19:20<br>19:50 ~ 21:50</td>
                  </tr>
                  <tr>
                  	<th scope="row">일요일</th>
                  	<td>18:00 ~ 21:30</td>
                  </tr>	
                  </tbody>
                </table>
              </div>
            </div></div>

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
 		   <th colspan="8" rowspan="6"><img class="img" alt="" src="resources/image/hwa.jpg"></th>
 		   <th colspan="7"></th>
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