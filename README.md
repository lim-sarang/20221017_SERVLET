# 자바 웹 프로그래밍(2) 수1-3 20221017 임사랑
* [웹 기능 구현 전체 이미지 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/screenshot)
* [웹 admin 이미지 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/screenshot/admin)
* [웹 main 이미지 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/screenshot/main)
* [admin 코드 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/admin)
---
### 추가 구현
* [popup 화면 sale 이미지로 변경](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/popup.png)
* [회원가입 화면 주소검색 기능 추가](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/singup/main_signup_add.png)
* [회원가입 화면 모든 값 입력 에러 추가](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/singup/main_signup_error.png)
* [상품 등록 시, 상품 id 길이 수정](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_product_add_validation_name.png)
---
### 2023년 8월 30일 1주차 
---
###### 강의 소개
    - 자바 웹 프로그래밍 개요
    - 사용 개발 툴 소개 : 구름 IDE
    - 사용 언어 : JSP, JAVA, MYSQL

### 2023년 9월 6일 2주차 
---
##### 1. 쇼핑몰 메인 페이지 개발
* [쇼핑몰 메인 페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/mainScene.png)
##### 2. index.jsp 실행 및 수정 완료
* [index.jsp](https://github.com/lim-sarang/20221017_SERVLET/blob/main/index.jsp)
##### 3. 프로젝트 환경 설정 및 HELLO WORLD 확인
* [helloword java 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/WEB-INF/src/example/HelloWorld.java)
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
##### 1. 쇼핑몰 메인 페이지 분리
* [쇼핑몰 메인페이지 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/index.jsp)
* [쇼핑몰 top_menu 카테고리 추가 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/main_product_category_add.png)
##### 2. forward 액션 태그 확인
* [forward가 사용된 popup1 코드 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/popup/popup1.jsp)
* [포워딩되는 popup2 코드 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/popup/popup2.jsp)
##### 3. 연습 문제 구현
* [shopTime 코드 분리 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/footer.jsp)
* [shopTime 코드 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/WEB-INF/src/example/ShopTime.java)
* [shopTime 및 buffer 출력 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/main_bufferAndShopTime.png)
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
    
### 2023년 09월 20일 4주차 개교기념일

### 2023년 9월 27일 5주차
---
##### 1. 쇼핑몰 상품 목록 페이지(이미지 포함) 추가
* [상품 목록 페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/main_product_repository.png)
##### 2. useBean 액션 태그 확인
##### 3. 연습 문제 구현
---
###### 웹 트랜드 분석
	1. 서블릿과 자바 빈즈
		- 역할 구분
          - JSP : 뷰
          - 서블릿 : 제어
          - 자바 빈즈 : 로직
		- 자바 빈즈 장단점
			- 장점
				- 서블릿 객체 정보 저장/읽기
				- 다수 JSP 페이지에 로직 재사용 가능.
			- 단점
				- 구조가 복잡해지는 경우, 성능 저하 문제 존재.
		- 자바 빈즈 필수 개발 규약
			- 패키지 : 폴더의 WEB-INF 하위 src 폴더 내
			- Serializable 인터페이스 적용(생략 가능)
				- 네트워크를 통해 객체가 전송되는 경우 저장방법 필요
			- 생성자 : 객체를 만들 때, 값 초기화
				- 멤버 변수들의 값을 지정하게 됨.
			- 멤버 변수(private) : 변수에 직접 접근 제한(은닉화)
				- private한 변수에 직접 접근이 불가능해 우회해 접근할 방법 필요.
				- 선언하지 않는 경우, private로 동작함.
			- get/set 메서드
				- public 메서드로 구현해 접근.
				- private 변수 수정/읽기.
				- private한 멤버 변수에 접근 가능한 방법임.
###### 쇼핑올 메인 페이지 개발
	1. 상품 정보 구성 및 저장 (DB 사용 X)
	2. 상품 정의, 상품 저장 java 개발
		- DB 연동을 하지 않았으므로 자바 빈즈를 통해 객체 정보 저장.
		- product.java
			- src에 dto 패키지 속에 생성
			- 상품 아이디, 상품명, 상품 가격, 제조사, 분류, 재고수, 신상품/중고품/재생품 구분에 대한 정의를 구현
			- 각 멤버 변수에 대한 set, get 메소드를 구현.
		- productRepository.java
			- 상품 목록의 저장을 담당.
			-  src 속 dao 패키지에 생성
			-  product.java에서 정의한 멤버 변수를 작성해줌.
			-  ArrayList를 사용해 상품 정보를 설정.
		-  body_main 속 상품 목록 출력 부분 수정.
		-  <jsp:useBean id="productDAO" class="dao.ProductRepositor" scope="session" /> : 자바 빈즈를 사용하기 위한 패키지 연동.
		-  ArrayList<Product> listOfProducts = productDAO.getALLProducts(); : 리스트에 상품 전체 정보를 얻어옴.
		-  for문을 통해 ArrayList에 저장된 상품 목록을 출력함.
			- .size() 메서드를 통해 ArrayList의 크기를 리턴해줌. 
		-  <%=product.getPname()%>, <%=product.getDescription()%>, <%=product.getUnitPrice()%>를 출력함.
	3. 상품 목록을 6개가 출력되도록 수정함.
###### 액션 태그 - useBean
	- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
		- 자바 빈즈 정의, 식별자와 클래스/범위 지정 완료.
		- <% ProductRepository test=new ProductRepository();%>와 동일함.
	- 객체 정보 저장 범위
		- page : 현재 페이지 내에서만 정보를 유지. 기본값임.
		- request : JSP 요청(객체)에 포함되는 모든 페이지에서 정보를 유지.
		- session : 세션(객체)가 유지 되는 동안 정보를 유지.
		- application : 종료 전까지. 즉, 웹 브라우저가 유지되는 동안 정보를 유지함.
	- 상품 목록에 자바 빈즈를 활용해 이미지 추가
		- image 폴더 속 product 폴더 생성
		- 지정해둔 상품 코드와 동일하게 이미지의 이름을 지정
		- body_main 코드 수정
			- 상품 이름 상단에 이미지 삽입 태그 추가. (폴더 경로 확인)
			- <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
###### 5주차 연습 문제 구현 완료.
	- 상품 3개 추가.
	- 이미지도 출력되도록 수정함.

### 2023년 10월 4일 6주차
---
##### 1. 쇼핑몰 상품 세부 정보 페이지 추가
* [상품 세부 정보 페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/product_Detail.png)
##### 2. 내장 객체
##### 3. 에러 페이지 지정하기
* [상품 정보 에러 페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/product_error.png)
##### 4. 연습 문제 구현
* [web.xml error 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/WEB-INF/web.xml)
* [메인화면 에러페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/main_error.png)
---
###### 웹 트랜드 분석
	- JSP 내장 객체
		- page : 현재 페이지 내장 객체
		- request/response : 요청/응답 객체. 가장 많이 사용됨.
		- session : 세션 객체
		- application : app 내장 객체
		- 기타 : out, config, pageContext
	- request 객체
		- 페이지 요청시 마다 생성.
		- 속성, 파라미터를 가질 수 있음.
		- 내장 객체 활용 : set/getParameter 메서드
###### 쇼핑몰 상품 세부 정보 구현
	- productRepository.java
		- 링크 클릭을 통해 요청된 상품 id를 리턴하는 새로운 메소드를 추가함.
	- body_main.jsp
		- 마우스로 링크를 클릭 시, 새로운 페이지가 뜨는 기능 구현.
		- 부트스트랩의 html 링크 버튼 스타일 활용.
		- <a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			- &raquo; : HTML 엔터티 코드(Entity Code)로 ">>"를 나타냄.
	- product_detail.jsp
		- 상품 상세 정보만 표시하도록 구성.
		- request를 통해 jsp 내장 객체를 활용해 정보를 받음.
		- 앞 페이지의 id를 얻고, 자바 빈즈로 전달.
###### 내장 객체
	- 태그 형태로 사용되지 않음.
	- 표현식, 스크립트 릿에서 직접적으로 사용됨.(자바 코드 형태)
	- request.getParameter("id"); 중요
###### 에러 페이지 지정하기
	- 예외 처리를 위한 exception 폴더 생성
	- <%@ page errorPage = "exception/에러페이지파일명.jsp" %>
	- 에러 페이지를 구현함.
###### 6주차 연습 문제 구현 완료.
	- 상품 상세 및 예외 처리 페이지
	- index.jsp에 대한 예외처리 페이지 제작
	- 메인 페이지 예외처리 코드
	    <error-code>404</error-code>
    	<location>/exception/main_server_downtime.jsp</location>
    	</error-page>

### 2023년 10월 11일 7주차
---
##### 1. 쇼핑몰 상품 등록 추가
* [관리자 index_ad 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_main.png)
* [상품 등록 추가 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/product_add.png)
* [상품 등록 추가 완료 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/product_add_index_ad.png)
---
###### 웹 트렌드 분석
	- HTML 태그
		- form 태그
			- 전송 방식
				- get : 주소에 쿼리스트링 형태로 값이 전달
				- post : 내부 데이터 전송(안전)
			- 사용자로부터 입력
				- form 속 다양한 입력 데이터 전송 기능 제공.
				- input, button, select, option 등
	- form 데이터 전달받기
		- JSP 내장 객체 중 request 객체 사용.
		- 전송 받는 페이지는 반드시 .jsp 페이지여야 함.
		- getParameter 메서드가 대표적임.
		- 대표 메서드 종류
			- getRemoteAddr() : 클라이언트의 IP 주소
			- getRequestURI() : 웹 브라우저가 요청한 url 경로
			- getParameter(String name) : 이름이 name인 파라미터
			- getParameterValues(String name) : 이름이 name인 모든 파라미터 값
			- getParameterNames() : 웹 브라우저가 전송한 파라미터의 이름 목록
	- 파일 업로드 방식
		- JSP 파일 업로드 및 다운로드 : form
			- 서버 이미지 최적화
				- 이미지 압축, 캐싱, 썸네일 최적화 등 다양한 기법 존재.
				- png, jpeg, svg, gif 파일 비중 높음.
			- form을 통한 파일 업로드
				- 이미지, 실행 파일 등 바이너리 파일의 업로드
				- multipart/form-data 속성 사용.
			- MultipartRequest 객체 활용
				- 파일 용량, 저장 경로, 인코딩, 이름 변환(중복) 등
				- 서버 라이브러리 속 cos.jar 파일 필요.
###### 상품 등록 페이지 추가
	1. 관리자 모드 페이지 추가
	- 관리자 모드 페이지 top_menu바에 상품 등록 navbar를 추가.
	- 이미지 폴더 경로 수정.
		- 절대 경로 -> 상대 경로로 수정.
	- admin 폴더 속 product_add.jsp 파일을 생성.
		- 쇼핑몰의 상품 등록을 진행하는 화면.
		- 상품 코드, 상품명, 가격, 상세 정보, 제조사, 분류, 재고수, 상태 등을 입력 받음.
	- admin 폴더 속 product_add_process.jsp 파일을 생성.
		- admin 폴더 속 상품 정보를 저장에 대한 처리를 하는 페이지임.
		- 한글 처리, request 객체 정보 전달, 현재 상품 객체에 추가. 
	- ProductRepository.java 수정
		- 데이터 추가를 위한 객체 변수 인스턴스 사용
		- 메모리를 공유(stack에 1회), 같은 메모리 주소 사용.
		- 인스턴스 변수 : 객체 내부에 존재하는 변수.
		- 클래스 변수 : 공유를 위한 객체 외부 변수.
	- body_main_ad.jsp 수정
		- 기존 빈즈 제거 후, import 방식으로 변경.
		- 현재 생성된 객체의 상품 목록 출력, 파일 및 폴더 변경으로 경로를 수정함.
	- product_detail_ad.jsp를 수정.
		- 기존 빈즈 제거 후 import 방식으로 변경.
		- 파일 및 경로 수정.
		- 세부 상품 정보 출력 관련.
	2. 이미지 업로드
	- product.java와 productRepository.java 파일에 file 변수 추가와 set/get 메서드를 추가함.
	- 기존에 등록한 상품은 이미지 이름을 미리 지정해서 작성해줌.
	- body_main.jsp 수정
		- 메인 화면 이미지 로드 수정.
		- <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
	- 파일 업로드를 위한 라이브러리 cos.jar 추가.
	- product_detail.jsp 및 product_detail_ad.jsp 파일 수정
		- <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
	- product_add.jsp 수정
		- 파일 업로드를 위한 폼 전송 타입 수정
		- <form name="newProduct" action="product_add_process.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
		- 이미지 파일 폼 컨트롤 등록(등록 버튼 위)
		- <div class ="form-group row">
          <label class ="col-sm-2">이미지</label>
              <div class ="col-sm-5">
                <input type="file" name="productImage" class="form-control">
              </div>
          </div>
	- product_add_process.jsp 수정
		- 라이브러리 사용을 위한 import 추가
		- 파일 업로드에 필요한 각 변수 초기화
		- 서버 업로드 경로 로딩
			- String filename = "";
              String realFolder = request.getServletContext().getRealPath("image/product"); //웹 어플리케이션상의 절대 경로
              String encType = "utf-8"; //인코딩 타입
              int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
              DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
              MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);
		- getParameter 메서드 수정.
		- Enumeration 객체 추가 : 파일명 반환.

### 2023년 10월 18일 8주차 중간고사

### 2023년 10월 25일 9주차

---
##### 1. 쇼핑몰 관리자 로그인 기능 추가
* [login 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/login)
* [관리자 로그인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/login/admin_login.png)
* [관리자 로그인 실패 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/login/admin_login_error.png)
##### 2. 폼 입력값 필터링
* [폼 입력값 필터링 js 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/js/validation.js)
* [폼 입력값 필터링 화면 id 필터링](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_product_add_validation_name.png)
* [폼 입력값 필터링 화면 상품 이름 필터링](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_product_add_validation_productName.png)
* [폼 입력값 필터링 화면 상품 가격 필터링](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_product_add_validation_price.png)
* [폼 입력값 필터링 화면 재고수 필터링](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_product_add_validation_inventory.png)
##### 3. 9주차 연습 문제 구현
* [관리자 페이지 메뉴 로그인 수행 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/login/admin_login.png)
* [관리자 페이지 로그인 실패 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/login/admin_login_error.png)
---
###### 웹 트렌드 분석
	- 웹 서버 보안
		- 해킹
		- 주요 목적 : 서비스 장애 및 정보 유출
		- 랜섬웨어 DDos 피해 증가
		- 랜섬웨어 등 악성 코드의 감염 원인
	-  OWASP TOP 10
		- A01 : 2021-잘못된 접근 제어
		- A02 : 2021-암호화 실패
		- A03 : 2021-인젝션
		- A04 : 2021-불안전한 디자인
		- A05 : 2021-보안 설정 오류
		- A06 : 2021-취약하고 오래된 구성요소
		- A07 : 2021-식별 및 인증 실패
		- A08 : 2021-소프트에어 및 데이터 무결성 실패
		- A09 : 2021-보안 기록 및 모니터링 실패
		- A10 : 2021-서버사이드 요청 위조
###### 상품 등록 페이지 추가
	- 폼 입력값 필터링을 위한 validation.js 파일 작성.
	- product_add.jsp 수정
		- validation.js 파일 연동
		- 자바 스크립트 체크를 위한 id 값, 전송 버튼을 js 호출형으로 수정.
		- 상품코드, 상품명, 가격, 재고수 
	- 탐캣 서버 내 tomcat-users.xml 파일 수정
		- 리눅스 터미널 창 확인
		- 파일 백업
		- 주석 삭제로 활성화시킴
		- 내용 수정
		- admin이라는 role을 추가시킴.
	- web.xml 수정
		- 특정 페이지 접근을 위한 로그인 수행
		- admin/product_add.jsp에 대한 보안 접근을 설정.
		- 보안 접근 방법 : form을 통한 인증
			- 대상 : login폴더에 login.jsp로 인증받도록 설정.
	- login.jsp
		- 상품 페이지 접근에 필요한 로그인 페이지를 구현.
		- required
			- 입력값 없이 submit 시, 포커싱
			- autofocus는 문서 로드시 자동 포커싱
			* 포커싱 : 사용자 인터페이스(UI)에서 현재 작업 중인 요소나 컨트롤에 대한 주목 또는 활성화를 의미
	- login_failed.jsp 및 logout.jsp 파일 생성
		- 로그인 실패 시, 다시 로그인 페이지 로딩.
		- 로그아웃 버튼 클릭 시, 세션 삭제 후 상품 등록 페이지로 이동. 

###### 9주차 연습문제 구현 완료
 	* 관리자 페이지 메뉴 클릭 시, 로그인이 수행되도록 변경
 	* role 추가 대신, 상품 등록시 사용되는 로그인 role을 관리자모드 클릭시로 변경해줌.

### 2023년 11월 1일 10주차

---
##### 1. 쇼핑몰 장바구니 기능 추가

##### 2. 10주차 연습 문제 구현

---
###### 웹 트렌드 분석
	- 웹 세션
		- 웹 사이트에 연결 상태를 지속해 저장/유지
	- 비교적 안전한 저장소 : 세션 내장 객체
		- javax.servlet.http.HttpSession
			- 고유 세션 ID를 공유
			- 세션 객체를 위한 다양한 메서드 제공
##### 장바구니 기능 추가
* [장바구니 코드 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/cart)
* [장바구니 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/cart/cart.png)
* [장바구니 상품 삭제 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/cart/cart_Delete.png)
* [장바구니 추가 여부 확인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/cart/cart_in.png)
* [세션 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/cart/cart_session.png)
##### 10주차 연습문제 구현 완료
 * footer 날짜 클래스 연동
 * footer 내에 클래스 연동 후에도 오류가 나타남
 	* 모든 파일에 클래스 연동으로 해결.
 * 로고 이미지 파일 경로 수정
 * 세션 전체 삭제 -> 뒤로가기 후 -> 특정 상품 선택 삭제 시 오류
 	* 세션 값이 비어있는지 확인 후, 삭제 후 뒤로가기를 해 나타난 상품에 대한 삭제 버튼을 클릭해도 오류가 나타나지 않도록 수정함.
 * 관리자 페이지의 상세 페이지
 	* 일반 상품 상세 페이지와 동일하게 수정해줌. 
 	* [관리자 페이지 상세 페이지 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/admin_detail.png)

### 2023년 11월 8일 11주차

---
##### 1. 쇼핑몰 주문 페이지

##### 2. 11주차 연습 문제 구현완료

---
###### 웹 트렌드 분석
	- 쿠키
		- 세션과 동일한 역할
		- 상태 유지
		- 쿠키는 문자열로 저장됨.
		- 정보 분리(웹 서버 부하 분산) 중요
	- JSP 쿠키 내장 객체
		- javax.servlet.http.cookie
			- 로컬에 쿠키를 저장.
			- 이름과 값으로 이루어짐.
		- 한글 저장 : url 인코딩 필요.
		- 자바 소스 코드 내에서 cookie 클래스 제공
			- setPath 메서드로 동작하는 범위를 지정 가능.
			- 삭제 메서드가 따로 존재 하지 않음.
			- 유효시간 만료.
			- set/get 메서드 등
				- 주로 타임스탬프 정보에 활용됨.
##### 주문 페이지 기능 구현
* [주문 코드 폴더 이동](https://github.com/lim-sarang/20221017_SERVLET/tree/main/order)
* [주문 화면 이미지 폴더](https://github.com/lim-sarang/20221017_SERVLET/tree/main/screenshot/main/order)
* [주문 정보 입력 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_info.png)
* [주문 영수증 확인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_confirm.png)
* [주문 취소 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_cancelled.png)
* [주문 완료 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_end.png)
* [세션 확인](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/cart/cart_session.png)
##### 11주차 연습문제 구현 완료
 * 배송일 날짜 선택 입력
 	* 날짜 제공 타입 지정.
 	* 입력 날짜가 반드시 내일 이후부터만 가능하도록 구현
 *      <% java.time.LocalDate tomorrow = java.time.LocalDate.now().plusDays(2);
                            String tomorrowStr = tomorrow.toString();
                        %>
                        <input name="shippingDate" type="date" class="form-control" min="<%= tomorrowStr %>"/>
                    </div>
                </div>
	* [주문 날짜 지정 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_diribary.png)
* 국가명을 select 박스로 수정
	* [주문 국가 지정 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_contry.png)
* 우편 번호와 주소를 검색을 통해 입력되도록 수정
	* [주문 배송지 지정 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/order/order_address_popup.png)

### 2023년 11월 15일 12주차

---
##### 1. 상품 관리 페이지를 위한 DB 연동
* [top_menu 수정](https://github.com/lim-sarang/20221017_SERVLET/blob/main/top_menu.jsp)
* [body_main.jsp 수정](https://github.com/lim-sarang/20221017_SERVLET/blob/main/body_main.jsp)
* [product_add_process 수정]()
##### 2. 12주차 연습 문제 구현완료

---
###### 웹 트렌드 분석
	- JDBC(Java Database Connectivity)
		- 데이터베이스 활용 자바 API 
	- MYSQL
		- 오라클의 오픈소스 기반 데이터베이스
	- 구름 ide 시작시, mysql 서비스 시작 필수
		- service mysql start 
##### DB 연동 및 상품 관리 페이지
* [DB 연동 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/db/db_conn.jsp)
* [DB 연동 확인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/db.png)
##### 12주차 연습문제 구현 완료
 * 데이터베이스 수정 작업
 * 관리자 패스워드 변경하기
 	* use mysql;
 	* show tables;
 	* update mysql.user SET password = PASSWORD('123654') WHERE user = 'root'
 	* FLUSH PRIVILEGES;
    

### 2023년 11월 22일 13주차

---
##### 1. 상품 관리 페이지 추가(수정 및 삭제)

##### 2. 13주차 연습 문제 구현완료

---

##### 상품 관리 페이지(수정 및 삭제)
* [상품 수정 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/admin/product_edit.jsp)
* [전체 상품 수정 선택 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/product_edit.png)
* [상품 수정 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/product_edit.png)
##### 13주차 연습문제 구현 완료
 * 상품 삭제 기능 구현
 * [상품 삭제 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/admin/product_delete.jsp)
 * [상품 삭제 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/delete/product_delete.png)
 * [상품 삭제 여부 확인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/delete/product_delete_edit.png)
 * [상품 삭제 후 db](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/admin/delete/db_delete.png)
 
 ### 2023년 11월 29일 14주차

---
##### 1. 쇼핑몰 게시판(고객센터) 페이지 추가

##### 2. 14주차 연습 문제 중 일부 구현

---
###### 웹 트렌드 분석
	- MVC 모델
		- 소프트웨어 디자인 패턴
		- Model : 모든 데이터
			- 데이터 변경 시 알림
		- View : 모델 정보 출력
			- 변경 발생 시 모델에게 전달
		- Controller : 모델과 뷰 연결
			- 두 사이 간의 변화를 모니터링
	- JSTL(JavaServer Pages Standard Tag Library)
		- JSP 태그 확장
		- EL(Expression Language)과 연동해 상ㅇ
		- 코드가 훨씬 간결하고 가독성이 개선됨.
		- 대표적으로 5가지 분류
			- 코어가 핵심.
			- 변수 지원, 흐름 제어 등
		- 서버 내 라이브러리 추가 필요.

##### 쇼핑몰 게시판 페이지
- [web.xml 코드](https://github.com/lim-sarang/20221017_SERVLET/blob/main/WEB-INF/web.xml)
- [MVC 코드 폴더](https://github.com/lim-sarang/20221017_SERVLET/tree/main/WEB-INF/src/mvc)
- [board 코드 폴더](https://github.com/lim-sarang/20221017_SERVLET/tree/main/board)
-  [게시판(고객센터) 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/board.png)
##### 14주차 연습문제 구현
* 회원 가입 및 로그인 화면의 프론트만 구현됨.
 * [사용자 로그인 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/main_login.png)
 * [사용자 회원가입 화면](https://github.com/lim-sarang/20221017_SERVLET/blob/main/screenshot/main/singup/main_signup.png)