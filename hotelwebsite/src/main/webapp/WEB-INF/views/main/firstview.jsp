<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first view</title>
<style>
	.carousel-inner > .carousel-item > img {
		margin: 0px auto;
		width: 80%;
		height: 500px;
    }
    #demo{
    	margin-top : 30px;
    	margin-bottom : 30px;
    }
    .package{
    	text-align : center;
    	
    }
    .box1{
    	margin-top : 40px;
    	display : inline-block;
    	width : 600px;
    }
    .box2{
    	display : inline-block;
    	margin-left : 40px;
    	width : 600px;
    	height : 300px;
    	
    }
    .box3{
    	line-height : 20px;
    }
    .package-img{
    	width : 600px;
    	height : 440px;
    }
    .weddingimg{
    	margin-top : 50px;
    	width : 100%;
    }
</style>
</head>
<body>
<div id="demo" class="carousel slide" data-ride="carousel"  data-interval="3000">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img class="d-block" src="resources/image/main1.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>PROJECT HOTEL IN SEOUL</h1>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" src="resources/image/main2.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>OUT DOOR POOL</h1>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" src="resources/image/main3.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>IN DOOR POOL</h1>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" src="resources/image/main4.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>DE LUXE ROOM</h1>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block" src="resources/image/main5.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>RESTAURANT</h1>
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
<br><br>
<p align="center"><font size="6" >SPECIAL OFFER</font></p><br><br>
<table align="center">
	<tr>
		<td><img class="package-img" alt="" src="resources/image/package1.jpg"></td>
		<td>
			<div style="margin-left:30px;">
				<p><font size="5">Strawberry Dessert Festival</font></p>
				<p><font size="3">2021.02.14~2021.03.31</font></p>
				<p>국내산 생딸기로 만든 풍부한 디저트를 즐겨보세요.</p>
				<p>아몬드 크림 타르트와 마스카포네 크림 위에 신선한 딸기를 듬뿍 올린 레몬 마스카포네</p>
				<p>타르트, 딸기와 라즈베리 필링이 들어있는 진한 다크초콜릿 무스 케이크를 비롯해</p>
				<p>화이트 초콜릿 파나코타와 블루베리 젤리를 얹은 딸기 치즈 케이크 등 다양한 디저트가</p>
				<p> 준비되어있습니다.</p>
				<p>1인 49000원~</p>
			</div>
		</td>
	</tr>
</table>
<br>
<table align="center">
	<tr>
		<td>
			<div style="text-align:right; margin-right:30px;">
				<p><font size="5">Spring Hotel Vacance</font></p>
				<p><font size="3">2021.03.01~2021.04.30</font></p>
				<p>3월 따뜻한 봄을 맞이하여 지친 몸과 마음에 활력을 더해줄 호캉스를 준비했습니다.</p>
				<p>건강한 하루를 위한 비건 시리얼 로우 놀라부터 재사용이 가능한 친환경 코코넛 볼과 스푼,</p>
				<p>느긋한 아침을 완성하는 조식까지. 여러분께 봄의 진정한 휴식을 선사합니다.</p>
				<p>1인 230000원~</p>			
			</div>		
		<td><img class="package-img" alt="" src="resources/image/package2.png"></td></td>
	</tr>
</table>
<div class="wedding">
<img class="weddingimg" alt="" src="resources/image/wedding2.jpg">
</div>
</body>
</html>