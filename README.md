# SERVLET_JSP
### 2023년 9월 6일 : 프로젝트 환경 설정, HELLO WORLD 확인 완료, 쇼핑몰 메인 페이지 제작

### 22년 9월 13일 : 쇼핑몰 메인 페이지 모듈화 완료, forward 액션 태그 확인 완료
    - 배너, popup 이미지 제작 및 적용
  <p>
  <img width="1430" alt="배너변경_팝업이미지 추가" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/591490fa-686d-4967-9101-c80f9f1d9f01">
  <img width="1196" alt="일반페이지" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/f2110351-e7b0-465f-b226-e913318b1339">
  <img width="1196" alt="일반페이지2" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/3197496d-261c-40d2-8b20-a9b55dd17f71">
  </p>

### 22년 9월 27일 : 쇼핑몰 상품 목록 페이지 추가, 쇼핑몰 상품 목록 페이지(이미지 포함) 추가

### 22년 10월 4일 : 쇼핑몰 상품 상세페이지 추가/에러페이지 추가
      - 메인페이지 404 에러시 에러페이지 설정
### 22년 10월 11일 : 쇼핑몰 상품 등록 추가

### 23년 10월 25일 : 쇼핑몰 관리자 등록 로그인 기능 추가
      - body_main_ad.jsp + product_detail_ad.jsp / DB 연결 추가
### 23년 11월 1일 : 세션 및 장바구니 기능 추가
      -배너, 장바구니 삭제 오류 수정
<p>
<img width="909" alt="장바구니" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/8e532e42-70f3-4234-a78c-2fbba3b6e570">
</p>

### 23년 11월 8일 : 쇼핑몰 주문 처리 페이지 추가
      - 주문시 배송일 오늘날짜 이후로 선택 / 국가 설정 / 주소 검색해서 추가할 수 있게 기능 추가
<p>
<img width="909" alt="날짜" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/2f7e6b1a-e75d-4872-85e7-7eb467e18c5c">
<img width="909" alt="국가" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/6712d237-f914-4fea-9f03-4901cc2e1ae8">
<img width="996" alt="주소" src="https://github.com/Hoowowow/20221031_SERVLET_1/assets/149292359/04607675-f893-4df9-9970-1bb9efac90fc">
</p>

### 23년 11월 15일 : 쇼핑몰 상품 관리 페이지 추가

### 23년 11월 22일 : 쇼핑몰 상품 수정/삭제 페이지 추가
      - product_delete.jsp 추가 / 데이터 삭제 시 저장되어있던 이미지도 삭제


------------


[index.jsp : 실행/수정 완료](https://github.com/Hoowowow/20221031_SERVLET_1/blob/4a7dc28d4a75c9b2bb4983b4138ea18022ed177e/index.jsp)
<br/>
[body_main.jsp : 메인](https://github.com/Hoowowow/20221031_SERVLET_1/blob/4a7dc28d4a75c9b2bb4983b4138ea18022ed177e/body_main.jsp)
<br/>
[ProductRepository.java : 쇼핑몰 상품 목록](https://github.com/owowowa/20221031_SERVLET_1/blob/78195a61307b2342726ebc5fd8fe020e0fd9080a/WEB-INF/src/dao/ProductRepository.java)