<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>에러 페이지 | The Shilla Hotels & Resorts</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/header.css" />
    <link rel="stylesheet" href="./css/footer.css" />
    <link rel="stylesheet" href="./css/ready.css" />
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <script>
          $('a[href="#"]').each(function() {
        $(this).click(function(e) {
            e.preventDefault();
        })
    });
    </script>
  </head>
  <body>
    <div id="wrap">
      <header>
      	<jsp:include page="/include/header.jsp" />
      </header>
      <section class="ready w980">
        <img src="./images/ready/exclamation.png" alt="exclamation">
        <h1>서비스 준비중</h1>
        <p>
          보다 나은 서비스 제공을 위하여 페이지를 준비 중입니다.<br />
          서비스 이용에 불편을 드려 죄송합니다.
        </p>
        <p>
          We are preparing the page for better service.<br />
          We apologize for the inconvenience in using the service.
        </p>
        <p>爲了提供更好的服務，正在準備頁面。很抱歉給服務使用帶來不便。</p>
        <p>
          より良いサービスを提供するためにページを準備しています<br />
          サービスのご利用にご不便をおかけして申し訳ございません。
        </p>
        <button><a href="./index.jsp">메인 페이지로 이동</a></button>
      </section>
      <footer>
      	<jsp:include page="/include/footer.jsp" />
      </footer>
    </div>
  </body>
</html>
