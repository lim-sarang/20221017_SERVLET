# 자바 웹 프로그래밍(2) 수1-3 20221017 임사랑

### 2023년 8월 30일 1주차 
---
###### 강의 소개
    - 자바 웹 프로그래밍 개요
    - 사용 개발 툴 소개 : 구름 IDE
    - 사용 언어 : JSP, JAVA, MYSQL

### 2023년 9월 6일 2주차 
---
##### 1. 쇼핑몰 메인 페이지 개발
##### 2. index.jsp 실행 및 수정 완료
##### 3. 프로젝트 환경 설정 및 HELLO WORLD 확인
---
###### 웹 트랜드 분석
	- 서블릿/JSP
		- 서버 사이드 프로그래밍
			- JVM 위에서 실행됨. 크로스 플랫폼
			- JSP + 서블릿 조합
				- Spring Framework
		- JSP/서블릿 역할 구분
			- JSP(Java Server Page)
				- 프론트 뷰 : HTML + JS
			- 서블릿(Servlet Container)
				- 주요 데이터 처리 : 핵심 로직
	- 스프링 프레임 워크
		- 2004년 등장
		- 큰 규모 및 복잡한 서블릿 관리
		- 최근 자동화된 스프링 부트가 인기임.
	- 주요 대표 자동화 기능
		- 개발자의 편의성과 생산성 극대화 추세
			- 강제 뷰 분리 및 인스턴스가 공유됨.
			- 스타터와 자동 환경 설정.
			- 자동 빌드 및 리로드
	- 전자 정부 표준 프레임워크
		- 스프링 기반 eGov 공개
			- 2010년 이후
			- 주요 개발 가이드 제공
		- 국내 주요 웹 프로젝트
			- JSP, JQuery, eGov 기술 요구
				- 스프링 프레임워크
###### 2주차 개발 내역
	1. HELLO WORLD 출력하기
	-  Hello world
		- 자바 코드 속에 String을 통해 문자를 return 하도록 코드를 구성
	- jsp에 import를 통해 example 속 모든 파일(*)을 가져옴.
	- <%= %>를 통해 자바 코드에서 return 받은 문자열 출력.
		- java 코드 수정 시, 서버 재시작이 필요함.
		- java 코드의 소스는 직접 접근이 불가능함.
	2. 꾸팡.COM 메인화면 제작
	- 부트스트랩을 통해 UI 표현.
	- navbar, jumbotron, text-center, footer로 구분해 화면 구성.
	- 메뉴바, 페이지 소개, 하단페이지, 최하단 속 저작권 등 제작자 정보가 각기 작성됨.
	- 최하단 상태 바
		- 날짜 출력 코드 삽입.
		- UTC 표준 시각으로 가져옴.
		- 코드 이슈로 인한 한국 시간 지정
		- TimeZone koreanTimeZone = TimeZone.getTimeZone("Asia/Seoul");
	3. JSP 태그
	- <%-- --> : 주석
	-  <%@ page %> : 디렉티브 태그
		- 페이지 처리 태그
	- <%! %> : 자바 코드 선언부
		- 자바변수, 메서드 정의
	- <%= %> : 표현문  
		- 데이터 출력
	- <% %>: 자바 코드 실행부
		- 스크립트 릿

### 2023년 9월 13일 3주차
---
##### 1. 쇼핑몰 메인 페이지 개발
##### 2. forward 액션 태그 확인
##### 3. 연습 문제 구현
---
###### 웹 트랜드 분석
	1. 자바 vs C++
	- 자바 장점 : 안정성 및 보안에 뛰어남
	- C++ 장점 : C언어와의 호환성 및 컴파일 및 실행 속도가 빠름
	2. 자바
	- 기본 구조 : 클래스 기반
	- 표준 입출력 : printIn() 사용
	- 변수 선언 및 데이터 타입 : 정수, 실수, 문자, 문자열, boolean 등
	- 문자열 제어 : string 클래스

###### 3주차 개발 내역
	1. 메인 화면 페이지 분리
	- 페이지 분리
		- 메인화면을 top_menu, body, footer로 분리.
		- 특징 : 페이지 지시자는 페이지마다 중첩됨.
    - 페이지 모듈화(include)
    	- <%@ include file="파일이름.jsp" %>
    2. top_banner 추가
   		- 배너 이미지 삽입
   		- <img src="image\이미지이름.파일속성(jpg, png 등)" class="img-fluid" alt="banner_image">
   		- img-fluid
   			- 부트스트랩 프레임워크에서 제공되는 클래스.
   			- 이미지를 반응형으로 만들어 줌.
   			- 이미지가 부모 요소의 크기에 따라 적절한 비율로 조절됨.
   			- 반응형 웹 디자인에서 사용자의 디바이스에 따라 크기가 자동 조절되는 효과 제공.
   	3. top_menu 수정
    - 상단 메뉴 속 드롭다운 추가
    	- 카테고리 삽입
    - 로고 추가
    	- https://textanim.com/ 에서 제작함.
    - 메인화면 배경
        - 오버레이 배경, 이미지를 추가함.
        - <div class="card bg-dark text-white">
        - <img src = "image/top.jpg" class="card-img" alt="...">
        - <div class=card-img-overlay">
        - <h5 class="card-title"> : 이미지 속 글자 삽입
        - <p class="card-text"> : 이미지 속 글자 삽입
    - 추천 상품 및 상품 목록 추가
    	- 이미지 아래에 list-group 클래스를 통해 추천 상품 삽입.
    	- <a href="#" class="list-group-item list-group-item-action active" aria-current="true"></a>
	    	- list-group-item : 리스트 그룹의 항목 스타일
	    	- list-group-item-action : 리스트 그룹 내의 항목을 상호 작용이 가능하게 만듦.
	    	- active : 현재 선택된(활성화된) 항목을 나타냄.
	    	- aria-current="true" : 현재 페이지의 위치를 스크린 리더 등 보조 기술에 알려주는데 사용.
    - 하단 상태창
        - 웹 사이트 정보 : 제작자 정보(학번, 이름), 이메일 등을 삽입.
 ###### 액션 태그 : forward
 	1. 액션 태그
 		- forward : 페이지 흐름 제어
 		- include : 외부 페이지 내용 포함 또는 페이지 모듈화
 		- param : <jspforward>, <jspinclude>. <jspplugin> 태그에 인자 추가
 		- useBean : JSP 페이지에 자바 빈즈 설정
 		- setProperty : 자바빈즈의 프로퍼티 값 설정
 		- getProperty : 자바빈즈의 프로퍼티 값을 얻어옴
 	2. 페이지 흐름 제어 확인을 위한 팝업창 작성
 		- popup1.jsp 파일
 			- <jsp:forward page="popup2.jsp" />를 통해 페이지 흐름을 제어.
 		- popup2.jsp 파일
 			- forwarding된 후의 팝업 페이지.
 	3. forward 액션 태그
 		- 포워딩 기능을 사용하는 이유
 			- 기존 html 링크의 페이지 정보를 유지.
 			- 각 다른 요청으로 인식됨.
 		- 요청이 유지된다는 것의 의미
 			- forward 기능 : 요청(request)이 유지됨.
 			- 기본 동작 흐름 : popup1 -> popup2로 페이지 전환
 			- url 주소 변경 안됨.
 			- 즉, popup1의 페이지 요청 정보가 유지됨.
 		- 요청을 유지해야 하는 이유
 			- 게시판 보기, 검색 기능 등
 				- 사용자의 페이지 요청이 매우 많은 경우
 				- forward로 구현해 다수 요청을 서버 내 컨테이너에서 유지.
 				- 하나의 요청에 대한 쓰레드가 공유됨.
 			- 사용자의 새로고침 후
 				- 새로운 요청 자원(메모리)을 추가로 할당할 필요가 없음.
 				- html은 각 다른 요청으로 받아들임.
 					- 자원이 낭비 되는 것을 방지할 수 있음.
 			- 서버의 성능 저하 문제
 				- 메모리 오버헤드 증가 부분이 최적화됨.
    4. JSP 페이지 버퍼 확인
    	- 기본 8kb 용량으로 설정됨.
    	- 페이지 용량을 제한하는 이유 : 성능 + 보안을 위함.
    	- 메모리 버퍼 출력의 변화
    		- 8kb 이상 되면 에러가 남.
    		- 추가 용량 설정이 필요함.
    	- 기본 : 페이지 이동 시, 기존 버퍼는 비워짐.
    		- 버퍼 용량이 찰 때까지 모음.
    		- <%@ page buffer="1kb" autoFlush="true"%> : 버퍼를 1kb로 지정. autoFlush를 통해 용량이 넘치는 경우 자동으로 비워지도록 구성.
    		- <%= out.getBfferSize() %> : 현재 페이지의 버퍼 용량을 확인가능.
    		- <%= out.getRemaining() %> :  남은 페이지 버퍼 용량을 확인 가능.
###### 3주차 연습 문제 구현 완료.
	- JSP 자바 코드 분리하기
	- ShopTime 클래스 생성.
	- ShopTime.java를 통해 날짜 관련 정보를 분리.
	- footer에 example 속 파일을 import하는 코드를 추가.
	- ShopTime time에 새로운 shoptime을 삽입.
	- <%= time.timenow() %>를 통해 오늘 날짜와 시간을 확인.

### 2023년 09월 27일 쇼핑몰 상품 목록 페이지 추가
* 파일에 대한 링크 추가
* 자바 빈즈 사용
* 상품 목록 추가
* 상품 사진 삽입

### 2023년 10월 04일 쇼핑몰 상품 상세 페이지 추가
* 파일에 대한 링크 추가
* 연습문제 완료
* 예외처리 페이지 제작
* "web.xml" 파일 "<error-page>"

### 2023년 10월 11일 
* Request
    * .getRemoteAddr() : 클라이언트의 IP 주소
    * .getRequestURL() : 웹 브라우저가 요청한 url 경로
    * .getParameter(String name) : 이름이 name인 파라미터를 반환
    * .getParameterValues(String name) : 이름이 name인 모든 파라미터 값
    * .getParameterNames() : 웹 브라우저가 전송한 파라미터의 이름을 반환
* 자바에서 사용하는 외부 라이브러리 파일은 jar을 사용.
    
### 2023년 10월 25일
* 로그인 및 로그아웃 기능 추가

### 2023년 11월 1일
* 세션 및 장바구니 기능 추가

### 2023년 11월 8일
* 주문 및 주문 확인
* 주문 취소

    