<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/rest_style.css">
</head>
<body>
	<div id="header">
		<%@ include file="../main/header.jsp" %>
	</div>
<div class="met_wrap">
	<img alt="" src="resources/image/rest-main.jpg" style="width:100%;">
	<br><br>
	<p align="center"><font size="13">RESTAURANT</font></p>
	<hr width="500px">
	<p align="center">이탈리안 파인 다이닝부터 한식, 중식 등 아시아 요리를 총망라한 아시안 레스토랑을 비롯해</p>
	<p align="center">로컬푸드가 준비된 올데이 다이닝, 로비라운지와 바까지 총 5개의 레스토랑과 바가 준비되어 있습니다.</p>
</div>
<div class="flex-container">
<div class="hover_effect_box hover_effect_1">
  <div class="content_bg">
    <img class="image-thumbnail" alt="" src="resources/image/grand-main.jpg">
  </div>
  <div class="caption">
    <div class="caption_desc">
    <br><br>
      All-Day Dining<br>
      그랜드 키친<br><br><br><br>
7 m 높이의 시원한 공간감과 전면 통창이
돋보이는 그랜드 키친은 신선한 로컬
식재료들을 이용해 건강한 메뉴를 선보이는
뷔페 레스토랑입니다.
    </div>
    <a onclick="location.href='rest1.do?restaurant_num=1'" class="caption_link">View Details</a>
  </div>
</div>
<div class="hover_effect_box hover_effect_1">
  <div class="content_bg">
    <img class="image-thumbnail" alt="" src="resources/image/hwa-main.jpg">
  </div>
  <div class="caption">
    <div class="caption_desc">
    <br><br>
      Fusion Korean Cusine<br>
      무궁화<br><br><br>
      호텔 1층 안쪽에 자리한 무궁화는 정통 한식과 전세계의 요리를 조합해 탄생시킨
      퓨전 한식을 선보입니다. 국내외 오피니언 리더들에게 꾸준히 사랑받는 레스토랑입니다.
    </div>
    <a onclick="location.href='rest2.do?restaurant_num=2'"  class="caption_link">View Details</a>
  </div>
</div>
<div class="hover_effect_box hover_effect_1">
  <div class="content_bg">
    <img class="image-thumbnail" alt="" src="resources/image/weidao-main.jpg">
  </div>
  <div class="caption">
    <div class="caption_desc">
    <br><br>
      Modern Chinese<br>
      웨이다오(味道)<br><br><br>
      웨이다오는 가장
뛰어난 맛을 표방하는 모던 차이니즈 레스토랑
입니다. 중국 최고의 전문 레스토랑 출신의 셰프가 선보이는 국내 최고의
베이징덕과 사천요리, 북경요리 등이 준비됩니다.
    </div>
    <a onclick="location.href='rest3.do?restaurant_num=3'"  class="caption_link">View Details</a> 
  </div>
</div>
<div class="hover_effect_box hover_effect_1">
  <div class="content_bg">
    <img class="image-thumbnail" alt="" src="resources/image/lounge-main.jpg">
  </div>
  <div class="caption">
    <div class="caption_desc">
    <br><br>
      Lounge & Bar<br>
      <br><br><br>
      호텔 24층에 위치한 라운지&바는 전세계의
      미술 작품을 감상할 수 있는 호텔의 상징적인 공간입니다.
      따뜻한 느낌의 라운지에서 고객의 취향에 맞는 음료와
      라이브 뮤직을 만나실 수 있습니다.
    </div>
    <a onclick="location.href='rest4.do?restaurant_num=4'" class="caption_link">View Details</a>
  </div>
</div>
<div class="hover_effect_box hover_effect_1">
  <div class="content_bg">
    <img class="image-thumbnail" alt="" src="resources/image/tearoom-main.jpg">
  </div>
  <div class="caption">
    <div class="caption_desc">
    <br><br>
      Afternoon Tea<br>
      티룸<br><br><br><br>
      호텔 1층 로비에 위치한 티룸은 티와 디저트를 즐길 수 있는 샵으로,
      소중한 사람들과 따뜻한 티를 즐기며
      여유로운 시간을 즐길 수 있는 공간입니다.
    </div>
   <a onclick="location.href='rest5.do?restaurant_num=5'"  class="caption_link">View Details</a>
  </div>
</div>
</div>

<script>
  var rad = document.flexForm.fDTypes;
  var fContainer = document.getElementsByClassName('flex-container');
  var prev = null;
    for(var i = 0; i < rad.length; i++) {
      rad[i].addEventListener('change', function() {
        fContainer.item(0).style.flexWrap = this.value;
      });
    }
</script>
	
	
	<div id="footer">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>