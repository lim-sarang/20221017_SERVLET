<%@ page contentType="text/html; charset=utf-8"%>
<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
    String tagline = "하단 페이지 : 확인";%>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>	
    <div class="card bg-dark text-white">
        <img src="img/event.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">가성비 악기/악기용품 이벤트</h5>
            <p class="card-text">출처 : 쿠팡</p>
        </div>
    </div>

    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">입문용 베이스 기타</a>
        <a href="#" class="list-group-item list-group-item-action">입문용 일렉 기타</a>
        <a href="#" class="list-group-item list-group-item-action">미니 하프 리라 악기</a>
        <a href="#" class="list-group-item list-group-item-action">팬플룻</a>
        <a href="#" class="list-group-item list-group-item-action">실로폰</a>
        <a href="#" class="list-group-item list-group-item-action">악기용품</a>
    </div>
    <div class="container">
        <div class="text-center">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>


