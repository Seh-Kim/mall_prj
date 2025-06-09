<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="shortcut icon" href="http://localhost/mall_prj/admin/common/images/core/favicon.ico"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <title>Donutted</title>

<c:import url="common/header.jsp" />
  <!-- 메인 영역 시작 -->
  <main>
  
<!-- 배너 영역 -->
<div class="slider">
  <img src="<c:url value='/common/images/slider_1.png'/>" class="active" alt="배너1">
  <img src="<c:url value='/common/images/slider_2.png'/>" alt="배너2">
  <img src="<c:url value='/common/images/slider_3.png'/>" alt="배너3">
  <img src="<c:url value='/common/images/slider_4.png'/>" alt="배너4">
  <img src="<c:url value='/common/images/slider_5.png'/>" alt="배너5">
  <img src="<c:url value='/common/images/slider_6.png'/>" alt="배너6">
  <img src="<c:url value='/common/images/slider_7.png'/>" alt="배너7">
</div>

<script>
  let currentIndex = 0;
  const banners = document.querySelectorAll(".slider img");

  setInterval(() => {
    banners[currentIndex].classList.remove("active");
    currentIndex = (currentIndex + 1) % banners.length;
    banners[currentIndex].classList.add("active");
  }, 3500);
</script>

<style>
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
    }

    main {
      flex: 1;
    }
    
    .slider {
  position: relative;
  width: 100%;
  height: 780px !important;
  overflow: hidden;
  box-shadow: 0px 0px 30px rgb(0, 0, 0, 0.3);
}
    
    
.slider img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%; 
  object-fit: cover;
  opacity: 0;
  transition: transform 1s ease-in-out;
}


    .slider img.active {
      opacity: 1;
      z-index: 1;
    }

    /* Instagram 슬라이더 스타일 */
    .instagram-slider-container {
      overflow: hidden;
      width: 100%;
      position: relative;
      margin-top: 50px;
    }

    .instagram-slider {
      display: flex;
      width: calc(200px * 20);
      animation: scroll 20s linear infinite;
    }

    .instagram-slider img {
      width: 200px;
      height: 200px;
      object-fit: cover;
      flex-shrink: 0;
      margin-right: 10px;
      border-radius: 10px;
    }

    #instagram_section {
      margin-top: 10px;
      margin-bottom: 80px !important;
      background: url('<c:url value="/common/images/instagram_bg.png"/>') no-repeat center center / cover;
      padding: 40px 20px;
      border-radius: 12px;
      max-width: 1280px;
      margin-left: auto;
      margin-right: auto;
      box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }

    #instagram_section h3 {
      font-size: 36px;
      color: #d63384;
      margin-bottom: 20px;
      text-align: center;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      letter-spacing: 2px;
      text-transform: uppercase;
      position: relative;
    }

    #instagram_section h3::after {
      content: "";
      display: block;
      width: 80px;
      height: 4px;
      background-color: #d63384;
      margin: 10px auto 0;
      border-radius: 2px;
    }


    @keyframes scroll {
      0% {
        transform: translateX(0);
      }
      100% {
        transform: translateX(-50%);
      }
    }
    
    .kakao-channel-box {
  text-align: center;
  margin-bottom: 30px;
}

.kakao-channel-btn {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  background-color: #fee500;
  color: #3c1e1e;
  font-weight: bold;
  padding: 12px 20px;
  border-radius: 30px;
  text-decoration: none;
  font-size: 16px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.15);
  transition: background-color 0.3s ease, transform 0.2s ease;
}

.kakao-channel-btn:hover {
  background-color: #ffd900;
  transform: translateY(-2px);
}

.rabbit-icon {
  width: 32px;
  height: 32px;
}

#brand_story_section {
  background-color: #fff5f8;
  text-align: center;
  padding: 60px 20px 20px 20px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#brand_story_section h3 {
  font-size: 28px;
  color: #d63384;
  margin-bottom: 20px;
  text-align: center; /* 혹시 몰라 h3도 따로 명시 */
}

#brand_story_section p {
  font-size: 18px;
  line-height: 1.6;
  color: #333;
  max-width: 800px;
  margin: 0 auto; /* 가운데 정렬 + 가운데 박스 */
  text-align: center; /* 텍스트 자체도 가운데 정렬 */
}



</style>

<section id="brand_story_section">
  <h3>🍩 Welcome Donutted 🍩</h3>
  <p>Donutted는 세상에서 가장 사랑스러운 도넛과 커피를 만드는 브랜드입니다.<br>
  매일 아침 신선한 재료로 구워내는 다양한 도넛과 풍미 깊은 커피로 고객님께 행복을 선사합니다. ☕️🍩✨</p>
</section>


<!-- Instagram 영역 -->
<section id="instagram_section">
  <h3>📸Instagram💕</h3>
  
  <!-- 카카오톡 채널 추가 영역 -->
<div class="kakao-channel-box">
  <a href="https://pf.kakao.com/_AUDFj" target="_blank" class="kakao-channel-btn">
    <img src="<c:url value='/common/images/kakao.png'/>" alt="카카오톡 QR코드" class="rabbit-icon">
    카카오톡 채널 추가하기
  </a>
</div>

  <!-- 기존 슬라이더 영역 -->
  <div class="instagram-slider-container">
    <div class="instagram-slider">
      <img src="<c:url value='/common/images/insta_1.png'/>" alt="insta1">
      <img src="<c:url value='/common/images/insta_2.png'/>" alt="insta2">
      <img src="<c:url value='/common/images/insta_3.png'/>" alt="insta3">
      <img src="<c:url value='/common/images/insta_4.png'/>" alt="insta4">
      <img src="<c:url value='/common/images/insta_5.png'/>" alt="insta5">
      <img src="<c:url value='/common/images/insta_6.png'/>" alt="insta6">
      <img src="<c:url value='/common/images/insta_7.png'/>" alt="insta7">
      <img src="<c:url value='/common/images/insta_8.png'/>" alt="insta8">
      <img src="<c:url value='/common/images/insta_9.png'/>" alt="insta9">
      <img src="<c:url value='/common/images/insta_10.png'/>" alt="insta10">
      <img src="<c:url value='/common/images/insta_11.png'/>" alt="insta11">
      <img src="<c:url value='/common/images/insta_12.png'/>" alt="insta12">
      <img src="<c:url value='/common/images/insta_13.png'/>" alt="insta13">
      <img src="<c:url value='/common/images/insta_14.png'/>" alt="insta14">
      <img src="<c:url value='/common/images/insta_15.png'/>" alt="insta15">
      <img src="<c:url value='/common/images/insta_16.png'/>" alt="insta16">
      <!-- 반복 효과 위해 이미지 한번 더 -->
      <img src="<c:url value='/common/images/insta_1.png'/>" alt="insta1-dup">
      <img src="<c:url value='/common/images/insta_2.png'/>" alt="insta2-dup">
      <img src="<c:url value='/common/images/insta_3.png'/>" alt="insta3-dup">
      <img src="<c:url value='/common/images/insta_4.png'/>" alt="insta4-dup">
      <img src="<c:url value='/common/images/insta_5.png'/>" alt="insta5-dup">
      <img src="<c:url value='/common/images/insta_6.png'/>" alt="insta6-dup">
      <img src="<c:url value='/common/images/insta_7.png'/>" alt="insta7-dup">
      <img src="<c:url value='/common/images/insta_8.png'/>" alt="insta8-dup">
      <img src="<c:url value='/common/images/insta_9.png'/>" alt="insta9-dup">
      <img src="<c:url value='/common/images/insta_10.png'/>" alt="insta10-dup">
      <img src="<c:url value='/common/images/insta_11.png'/>" alt="insta11-dup">
      <img src="<c:url value='/common/images/insta_12.png'/>" alt="insta12-dup">
      <img src="<c:url value='/common/images/insta_13.png'/>" alt="insta13-dup">
      <img src="<c:url value='/common/images/insta_14.png'/>" alt="insta14-dup">
      <img src="<c:url value='/common/images/insta_15.png'/>" alt="insta15-dup">
      <img src="<c:url value='/common/images/insta_16.png'/>" alt="insta16-dup">
    </div>
  </div>
</section>


  </main>
  <!-- 메인 영역 끝 -->

<c:import url="common/footer.jsp" />
