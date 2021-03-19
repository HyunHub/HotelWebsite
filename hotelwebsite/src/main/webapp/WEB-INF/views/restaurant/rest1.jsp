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
<img class="mainimg" alt="" src="resources/image/grand.jpg">
</div>

   <article>
<div class="flex-container">
        <div style="flex-basis:600px">
            7m 높이의 시원한 공간감과 전면 통창이 돋보이는 그랜드 키친은 신선한 로컬 식재료들을 이용해 건강한 메뉴를 선보이는
            뷔페 레스토랑입니다. 입구에서부터 홀까지 배치된 Kitchen piazza(라이브 스테이션)를 따라 셰프들이 요리하는 모습을 
            확인하실 수 있으며, 다양한 크기로 이루어진 총 11개의 별실이 준비되어 있어, 아늑한 분위기에서 프라이빗한 모임과 
            행사를 즐기기에도 제격입니다.
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
                <div>grandkitchen@hotelpro.co.kr</div>
              </div>
            </div>
          </div>
          <div>
            <a onclick="location.href='booking1.do?member_id=${member_id}&restaurant_num=1'" class="btn btn-outline-dark btn-lg">BOOK YOUR DINING</a>
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
				<td>06:30 ~ 22:00</td>
		</table>
     </div>
              <div class="flex-container2">
		<table style="text-align: left;">
			<tr>
				<td width="100" style="font-weight: bold;">좌석 수</td>
				<td>294석 (별실 11개)</td>
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
                      <th scope="row">아침</th>
                      <td colspan="2">06:30 ~ 10:30</td>
                    </tr>
                    <tr>
                      <th scope="row">점심</th>
                      <td><p class="font">주중 & 토요일</p> 12:00 ~ 14:30</td>
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
              <strong>2021 ALL DAY DINING 운영 시간</strong>
              <div>
              
                <table class="type03" width="700">
                  <caption>그랜드 키친 2021 ALL DAY DINING 운영 시간 - 시간, 영업시간(주중), 영업시간(주말) 정보 제공</caption>
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
                    <th scope="row">아침</th>
                    <td colspan="3">06:30 ~ 10:30</td>
                  </tr>
                  <tr>
                    <th scope="row" rowspan="2">점심</th>
                    <td rowspan="2">12:00 ~ 14:30</td>
                    <th scope="row">토요일</th>
                    <td>12:00 ~ 14:00</td>
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
            <div class="inner">
              <strong>2021 ALL DAY DINING 가격</strong>
              <div>
                <table class="type03" width="700">
                  <caption>그랜드 키친 2021 ALL DAY DINING 가격 - 시간, 성인, 만 4세 ~ 만 12세 정보 제공</caption>
                  <colgroup>
                    <col width="67px">
                    <col width="*">
                    <col width="*">
                  </colgroup>
                  <thead>
                  <tr>
                    <th scope="col" >시간</th>
                    <th scope="col">성인</th>
                    <th scope="col">만 4세 ~ 만 12세</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr height="76px">
                    <th scope="row">아침</th>
                    <td>59,000원</td>
                    <td>29,500원</td>	
                  </tr>
                  <tr height="75px">
                    <th scope="rowgroup" rowspan="2">점심</th>
                    <td>주중 100,000원</td>
                    <td>주중 50,000원</td>
                  </tr>
                  <tr height="75px">
                    <td>주말 110,000원</td>
                    <td>주말 55,000원</td>
                  </tr>
                  <tr height="76px">
                    <th scope="rowgroup">저녁</th>
                    <td>120,000원</td>
                    <td>60,000원</td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
<br><br><br>
          <div class="inner">
            <ul style="color: #5E5E5E;">
              <li>봉사료 및 세금 포함 가격</li>
              <li>특정 날짜 또는 기간에 따라 운영 시간과 요금이 상이할 수 있으니, 레스토랑에 문의 부탁 드립니다.</li>
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
 		   <th colspan="8" rowspan="6"><img class="img" alt="" src="resources/image/all.jpg"></th>
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