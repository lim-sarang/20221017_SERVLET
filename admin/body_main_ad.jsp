<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%><!-- 자바 리스트 자료구조 연동 -->
<%@ page import="dto.Product"%><!-- 패키지 연동 -->
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "현재 페이지는 기타 상품 목록입니다.";%>

    <div class="jumbotron">
        <div class="container">
            <h3 class="display-3">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <%ArrayList<Product>listOfProducts = productDAO.getAllProducts();%>
    <div class="container">
            <div class="row" align="center">
                <%
                    String sql = "select * from product"; // 조회
                    pstmt = conn.prepareStatement(sql); // 연결 생성
                    rs = pstmt.executeQuery(); // 쿼리 실행
                    while (rs.next()) { // 결과 ResultSet 객체 반복
                %>

                <div class="col-md-4">
                    <div class="card bg-white text-dark">
                        <img src="../img/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">
                                기타 이미지 샘플
                            </h5>
                            <p class="card-text">
                                출처 : 쿠팡
                            </p>
                        </div>
                    </div>
                    <h3><%=rs.getString("p_name")%></h3>
                    <p><%=rs.getString("p_description")%>
                    <p><%=rs.getString("p_UnitPrice")%>원
                    <p><a href="product_detail_ad.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
                </div>
                <%
                        } // 반복문 끝난 이후 db 연결 종료	
                    if (rs != null)
                        rs.close();
                    if (pstmt != null)
                        pstmt.close();
                    if (conn != null)
                        conn.close();
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


