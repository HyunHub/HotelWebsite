<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		// 이미지 슬라이드 컨트롤
		$('#carousel-example-generic').carousel({
			// 슬리아딩 자동 순환 지연 시간 false면 자동 순환하지 않음 
			interval: 3000,
			// 마우스를 올리면 자동 순환이 멈춤
			pause: "hover",
			// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
			wrap: true,
		});
	});
</script>

<style type="text/css">
	#header {margin-bottom: 80px;}
	.location {/* border:1px solid green; */height:40px;}
	h2 {float:left; font-size:24px;}
	.list {float:right; font-size:12px; line-height:30px;}
	.images {margin: 20px 0 40px 0; }
	.tell {margin: 30px 0;}
	.text1 {margin: 20px 0 30px 0;}
	.container {margin-bottom: 20px;}
	
	.text1 dt {float:left; margin-right:7px;}
	.text1 dd {float:left; margin-right:15px; padding-right: 15px; border-right:1px solid #999;}
	.text1 dd:last-child {border-right:none;}
	/* .container {border:1px solid red;} */
	.leftArea {float:left; width:60%; /* background:green; */}
	.rightArea {float:left; width:40%;/*  background:pink; */}
	.ra2 {width:50%;}
	
	.carousel-inner > .carousel-item > img {
		margin: 0px auto;
		width: 100%;
		height: 350px;
    }
    #demo{
    	margin-top : 30px;
    	margin-bottom : 30px;
    }
    .res-btn{
    	width:150px;
    	height:40px;
    	background-color:#FFFFFF;
    	border:2px solid #D8D8D8;
    }
</style>

</head>
<body>
	<div id="header">
		<%@ include file="../main/header.jsp"%>
	</div>

	<div class="container content">
		<div class="location">
		<h2>노멀 스탠다드</h2>
			<p class="list"><span class="glyphicon glyphicon-home"></span>&nbsp &gt; 객실  &gt; 스탠다드 &gt; <strong>노멀</strong></p>
		</div>
<div id="demo" class="carousel slide" data-ride="carousel"  data-interval="3000">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img src="resources/image/room/roomDetail/standardNomal1-0.jpg" alt="Nomal 내부 전경 사진">
				<div class="carousel-caption d-none d-md-block">
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/image/room/roomDetail/standardNomal1-1.jpg" alt="Nomal 내부_침대와 미니바가 보이는 전경">
				<div class="carousel-caption d-none d-md-block">
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/image/room/roomDetail/standardNomal1-2.jpg" alt="Nomal 내부전경 사진">
				<div class="carousel-caption d-none d-md-block">
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/image/room/roomDetail/standardNomal1-3.jpg" alt="Nomal_Bathroom 사진">
				<div class="carousel-caption d-none d-md-block">
				</div>
			</div>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
		</div>
</div>
		
		<div class="container" align="left">
			<p>노멀 룸은 편안하고 안락한 공간을 효율적으로 구성했습니다.</p>
			<p>
				글로벌 럭셔리 호텔 디자이너 피터 리미디오스가 디자인한 '시대를 아우르는 모던함'을 만나보십시오.<br> 요트
				콘셉트로 구성한 프라이빗 바와 세계적인 수준의 침구류와 함께 생에 최고의 휴식을 경험해 보시기 바랍니다.
			</p>
			<p class="tell">문의전화 02-313-1722<p>
			<p>모든 객실과 레스토랑에서 유.무선 인터넷(wi-fi) 연결 가능합니다.</p>
			<dl class="text1">
				<dt>위치</dt>
				<dd>7~22층</dd>
				<dt>전망</dt>
				<dd>남산 또는 시티 뷰</dd>
				<dt>침대</dt>
				<dd>더블, 트윈</dd>
				<dt>크기</dt>
				<dd>36m<sup>2</sup></dd>
				<dt>룸구성</dt>
				<dd>침실 1, 욕실 1, 화장실 1</dd>
			</dl>
		</div> <!-- 룸설명 -->
		
		<div class="container content" align="center">
			<div class="leftArea" align="center">
				<table>
					<tr>
						<th>객실이용</th>
						<td>
							<div>
								<ul>
									<li class="first">55인치 스마트 TV(위성 TV 48개 채널)</li>
									<li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
									<li>220V, 110V 전압 사용 가능</li>
									<li>커피·차 티백 무료 제공</li>
									<li>엑스트라 베드 1개 추가 36,300원/1박</li>
									<li class="last">베이비 크립(무료)</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th>부대시설</th>
						<td>
							<div>
								<ul>
									<li>피트니스 클럽 이용 안내<br> 
										- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)<br> 
										- 실내 수영장 무료 이용(만 13세 이상 입장 가능)<br>
										&nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에<br>
										&nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며,<br>
										&nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에<br>
										&nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)<br> 
										- 사우나 이용 시 유료(만 13세 이상 입장 가능)<br>
										- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.
									</li>
									<li class="last">투숙 기간 내 무료 주차 가능</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th>룸서비스</th>
						<td>
							<div>
								<ul>
									<li class="first">객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
									<li>식사 및 음료 : 24시간 서비스</li>
									<li class="last">중식, 일식 : 점심 12:00~14:00, 저녁 18:00~21:30</li>
									<li>룸서비스 메뉴</li>
								</ul>
							</div>
						</td>
					</tr>
				</table>
			</div> <!-- leftArea 호텔 이용 안내 -->
		
			<div class="rightArea">
				<div class="container rightArea" align="center">
					<button class="res-btn" onclick="location.href='roomBookForm.do?room_id=1&member_id=${member_id}'">예약하기</button>
				</div> <!-- ra1 예약 -->
				
				<div class="container rightArea 2">
					<h5>Hotel Info.</h5>
					<div class="rightArea ra2 2-1" align="left">
						<p>조식&nbsp;레스토랑 안내</p>
						<p>
							- 더 파크뷰<br> &nbsp;&nbsp;06:00~10:00<br>
							&nbsp;&nbsp;(주중/주말/공휴일)
						</p>
						<p>
							- 더 라이브러리<br> &nbsp;&nbsp;08:00~11:30
						</p>
					</div> <!-- rightArea2-1 조식, 레스토랑 안내 -->
					<div class="rightArea ra2 2-2" align="left">
						<p>체크인/체크아웃 시간</p>
						<p>- 체크인 : 오후 2시 이후</p>
						<p>- 체크아웃 : 오전 11시</p>
					</div> <!-- rightArea2-2 체크인,체크아웃 -->
					<div class="container rightArea" align="left">
						<p>취소/변경 및 노쇼(No-show) 안내</p>
						<p>숙박 예정일 1일 전 18시까지는 위약금 없음</p>
						<p>숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</p>
						<p>
							- 성수기 (5월~10월, 12월 24일~31일) :<br> &nbsp; 최초 1일 숙박 요금의 80%가
							위약금으로 부과
						</p>
						<p>
							- 비수기 (성수기 외 기간) :<br> &nbsp; 최초 1일 숙박 요금의 10%가 위약금으로 부과
						</p>
					</div> <!-- rightArea2-3 취소 변경 및 노쇼 -->
				</div> <!-- rightArea2 end -->
			</div> <!-- rightArea all end -->
		</div> <!-- left + right Area end -->
	</div> <!-- content -->

	<div id="footer">
		<%@ include file="../main/footer.jsp"%>
	</div>
</body>
</html>