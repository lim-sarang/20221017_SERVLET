# 자바 웹 프로그래밍(2) 1-3 20221017 임사랑

### 2023년 09월 06일 자바웹프로그래밍 2주차
#### 프로젝트 환경 설정 및 HELLO World 확인 완료
##### 기본 폴더 및 파일 역할
* .git : 깃 허브 관련 설정
* META-INF : 서버 전역 설정
    * content.xml (설정 파일)
* WEB-INF : 주요 웹 APP 설정 및 클래스
    * classes
        * example(패키지 이름)
            * 서블릿 클래스.class(바이트 코드) -> java 파일과 같은 이름의 class가 생성됨.
    * lib(외부 라이브러리)
    * src(소스 코드)
        * example(패키지 이름) -> example 1, 2, ... 와 같이 패키지로 분리해서 사용 가능.
            * 서블릿이름.java (자바 코드)
* index.jsp (웹 페이지 메인)
##### 페이지 지시자 <%@ page ... %>
* 페이지에 대한 인코딩
    *      <%@ page contentType = "text/html;charset=utf-8" %>
* 파일 가져오기
    *      <%@ page import="example.*" %> 
* java는 반드시 class로 이루어짐. 
    * class 안에는 한개 이상의 함수를 넣어줌.
    * 메서드라 일컫음.
* new 연산자
    * 해당 클래스 이름으로 객체를 생성해주어야 사용 가능.
    *      HelloWorld h = new HelloWorld();
* 데이터를 찍어주기 위한 규칙 <% ... %>

* 자바 코드는 서버를 재시작 해야 적용됨.
* jsp는 새로고침만해도 적용됨.
