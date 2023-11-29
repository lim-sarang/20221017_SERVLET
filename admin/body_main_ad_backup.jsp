<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.ArrayList"%>

<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "현재 페이지는 기타 상품 목록입니다.";%>

    <div class="jumbotron">
        <div class="container">
            <h3 class="display-3">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
    <div class="container">
            <div class="row" align="center">
                <%
                    for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
                %>
                <div class="col-md-4">
                    <div class="card bg-white text-dark">
                        <img src="../img/product/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">
                                기타 이미지 샘플
                            </h5>
                            <p class="card-text">
                                출처 : 쿠팡
                            </p>
                        </div>
                    </div>
                    <h3>
                        <%=product.getPname()%>
                    </h3>
                    <p>
                        <%=product.getDescription()%>
                    </p>
                    <p>
                        <%=product.getUnitPrice()%>원
                    </p>
                    <p>
                        <a href = "product_detail_ad.jsp?id=<%= product.getProductId()%>" class="btn btn-secondary" role="button">상품상세정보 &raquo;</a>
                    </p>
                </div>
                <%
                    }
                %>
        </div>
        <hr>
    </div>
    <div class="card bg-dark text-white">
        <img src="../img/event.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">가성비 악기/악기용품 이벤트</h5>
            <p class="card-text">출처 : 쿠팡</p>
        </div>
    </div>
    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">베이스 기타</a>
        <a href="#" class="list-group-item list-group-item-action">일렉 기타</a>
        <a href="#" class="list-group-item list-group-item-action">디지털 피아노</a>
        <a href="#" class="list-group-item list-group-item-action">통기타</a>
        <a href="#" class="list-group-item list-group-item-action">트럼펫</a>
        <a href="#" class="list-group-item list-group-item-action">칼림바</a>
    </div>
<br>


