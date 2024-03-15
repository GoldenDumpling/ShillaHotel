<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String message = request.getParameter("message");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/login.css">
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <script>
        $(function(){
            $('a[href="#"]').each(function() {
        $(this).click(function(e) {
            e.preventDefault();
        })
    });
        });
    </script>
    <script>
	window.onload = function() {
	    // URL에서 message 쿼리 스트링 값을 확인
	    var message = "<%=message%>";
	    
	    if (message === "success") {
	        alert("회원 가입에 성공했습니다. 로그인 해주세요.");
   	 	} else if (message === "loginFail") {
            alert("로그인에 실패했습니다. 이메일 또는 비밀번호를 확인해주세요.");
        }
	}
</script>
</head>
<body>
    <div id="wrap">
        <!-- Header -->
        <header>
			<jsp:include page="/include/header.jsp" />
        </header>
        <!-- /Header -->

        <!-- Contents -->
        <main class="w700">
            <div id="login_box_container">
                <form method="post" action="Login">
                    <input type="hidden" name="returnUrl">
                    <h1 class="title">로그인</h1>
                    <div class="login_box">
                        <ul>
                            <li class="input_box">
                                <div class="copy email_copy">이메일</div>
                                <div class="input">
                                    <input type="text" maxlength="80" name="email" class="login_email" title="이메일">
                                </div>
                            </li>
                            <li class="input_box">
                                <div class="copy">비밀번호</div>
                                <div class="input">
                                    <input type="password" maxlength="30" name="password" class="login_pw" title="비밀번호">
                                </div>
                            </li>
                            <li class="wrong_copy"></li>
                            <li class="email_save_box">
                                <div class="email_save"><label for="checkbox"></label><input type="checkbox" id="checkbox"><div></div>이메일 저장</a></div>
                                <div class="email_find"><a href="#">이메일/비밀번호 찾기</a></div>
                            </li>
                            <li class="info">신라호텔의 회원이 되시면 다양한 혜택을 누리실 수 있습니다.</li>
                            <li class="btns">
                            <input type="submit" value="로그인">

                                
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
        </main>
        <!-- /Contents -->

        <!-- Footer -->
        <footer>
            <jsp:include page="/include/footer.jsp" />
        </footer>
        <!-- /Footer -->
    </div>
</body>
</html>