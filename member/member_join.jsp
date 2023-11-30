<%@ page contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
         <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <title>회원가입</title>
    </head>
    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">회원가입</h1>
            </div>
        </div>
        <div class="container">
            <form action="member_join_process.jsp" class="form-horizontal" method="post">
                <div class="form-group row">
                    <label class="col-sm-2">아이디</label>
                    <div class="col-sm-3">
                        <input type="text" name="id" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">비밀번호</label>
                    <div class="col-sm-3">
                        <input type="password" name="password" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">이름</label>
                    <div class="col-sm-3">
                        <input type="text" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">성별</label>
                    <div class="col-sm-3">
                        <input type="radio" name="gender" value="남자" checked> 남자
                        <input type="radio" name="gender" value="여자"> 여자
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">생년월일</label>
                    <div class="col-sm-3">
                        <input type="text" name="birth" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">이메일</label>
                    <div class="col-sm-3">
                        <input type="email" name="mail" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">전화번호</label>
                    <div class="col-sm-3">
                        <input type="text" name="phone" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">주소</label>
                    <div class="col-sm-5">
                        <input type="text" name="address" id="addressInput" class="form-control" placeholder="주소입력" required>
                        <button type="button" class="btn btn-primary" onclick="searchAddress()">주소 검색</button>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">상세주소</label>
                    <div class="col-sm-5">
                        <input type="text" name="address_detail" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" id="signin" class="btn btn-primary">가입하기</button>
                        <a href="../login/login_user.jsp" class="btn btn-secondary" role="button">
                            취소
                        </a>
                    </div>
                </div>
            </form>
        </div>
        <script>
            function validateForm() {
                var id = document.getElementsByName("id")[0].value;
                var password = document.getElementsByName("password")[0].value;
                var name = document.getElementsByName("name")[0].value;
                var birth = document.getElementsByName("birth")[0].value;
                var mail = document.getElementsByName("mail")[0].value;
                var phone = document.getElementsByName("phone")[0].value;
                var address = document.getElementsByName("address")[0].value;

                if (id === "" || password === "" || name === "" || birth === "" || mail === "" || phone === "" || address === "") {
                    Swal.fire({
                        title: "입력 오류",
                        text: "모든 값을 입력해주세요.",
                        icon: "error",
                        confirmButtonText: "확인"
                    });

                    return false;
                }

                return true;
            }

            document.getElementById("signin").addEventListener("click", function (event) {
                if (!validateForm()) {
                    event.preventDefault();
                }
            });
        </script>
        
        <script>
            function searchAddress() {
                new daum.Postcode({
                    oncomplete: function (data) {
                        document.getElementById("signin").value = data.address;
                    }
                }).open();
            }
        </script>
        <hr>
        <jsp:include page="../footer.jsp" />
    </body>
</html>