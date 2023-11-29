<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">피아노</a>
            <a class="dropdown-item" href="#">키보드/신디사이저</a>
            <a class="dropdown-item" href="#">기타/우쿨렐레</a>
            <a class="dropdown-item" href="#">학습/교육용악기</a>
            <a class="dropdown-item" href="#">드럼/칼림바</a>
            <a class="dropdown-item" href="#">관악기/현악기</a>
            <a class="dropdown-item" href="#">기타 악기용품</a>
        </div>
	</div>
    <div>
        <img src="../img/logo.gif" class="img-fluid" alt="main_image" width="300em">
    </div>
    <div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="../index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="../login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="../index.jsp">회원가입</a>
            <a class="navbar-brand" href="../BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="../admin/index_ad.jsp">관리자모드</a>
		</div>
	</div>
</nav>
