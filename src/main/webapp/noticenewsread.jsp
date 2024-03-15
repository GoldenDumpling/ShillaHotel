<%@page import="biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	//beanNow 객체를 가져옵니다.
	Object beanNow = request.getAttribute("beanNow");
	
	//filePath 초기화
	String filePath = "";
	
	//beanNow의 null 처리
	if (beanNow != null) {
	 // beanNow에서 파일 경로를 가져옵니다. 적절한 캐스팅이 필요합니다.
	 filePath = ((BoardVO)beanNow).getFile_path(); 
	}
	
	//파일 이름을 추출합니다.
	String fileName = "";
	if (filePath != null && !filePath.isEmpty()) {
	 fileName = filePath.substring(filePath.lastIndexOf('/') + 1);
	}
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지사항 & 뉴스 상세보기</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/header.css" />
    <link rel="stylesheet" href="./css/footer.css" />
    <link rel="stylesheet" href="./css/noticenewsread.css" />
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <script>
    </script>
    <style>
/* 파일 첨부 섹션 스타일 */
.noticenews_attachments {
    margin-top: 30px;
    padding: 20px;
}

/* 첨부 파일 제목 스타일 */
.noticenews_attachments h4 {
    color: #282828;
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 15px;

}
/* 첨부 파일 목록 스타일 */
.noticenews_attachments p {
    margin: 5px 0; /* 첨부 파일 간 간격 */
    color: #282828;
    font-size: 16px;
}
/* 첨부 파일 링크 스타일 */
.noticenews_attachments a {
    color: #007bff;
    transition: color 0.3s ease-in-out;
}

.noticenews_attachments a:hover {
    color: #0056b3;
    text-decoration: none; /* 링크에 밑줄 없애기, 호버 효과로 색상 변경 */
}

    </style>
  </head>
  <body>
    <div id="wrap">
      <header>
      	<jsp:include page="/include/header.jsp" />
      </header>
      <main class="w980">
        <section class="noticenews_h">
          <h1>공지 & 뉴스</h1>
          <h2>신라호텔의 최신 뉴스 및 공지사항을 알려드립니다.</h2>
        </section>
        <section class="noticenews_main">
          <div class="noticenews_header">
            <h3>
              ${beanNow.category }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;${beanNow.subject }
            </h3>
            <p class="date">${beanNow.reg_date }</p>
          </div>
          <div class="noticenews_text">
			${beanNow.content }
          </div>
        </section>
		<section class="noticenews_attachments">
		    <c:if test="${not empty beanNow.file_path}">
			    <h4>첨부 파일</h4>
		        <p><a href="BoardFileDownload?file_path=${beanNow.file_path}" target="_blank">
		            <%= fileName %>
		        </a></p>
		    </c:if>
		</section>


        <section class="noticenews_footer">
          <article class="noticenews_before">
             <p>
	           다음글&nbsp;
             <img src="./images/board/read/up.png" alt="위" />
	           	  <c:if test="${beanNext!=null}">
	             <a href="BoardInfoCon?num=${beanNext.num}">
	             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${beanNext.subject}
	             </a>
	            </c:if>
	           	  <c:if test="${beanNext==null}">
	             <a href="BoardInfoCon?num=${beanNext.num}">
	             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다음 글이 없습니다.
	             </a>
	            </c:if>
            </p>
            <p>${beanPrev.reg_date}</p>
          </article>
          <article class="noticenews_next">
            <p>
              이전글&nbsp;
	           <img src="./images/board/read/down.png" alt="아래" />
             	  <c:if test="${beanPrev!=null}">
	              <a href="BoardInfoCon?num=${beanPrev.num}">
	              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${beanPrev.subject}
	              </a>
              </c:if>
             	  <c:if test="${beanPrev==null}">
	              <a href="BoardInfoCon?num=${beanPrev.num}">
	              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이전 글이 없습니다.
	              </a>
              </c:if>
            </p>
            <p>${beanPrev.reg_date}</p>
          </article>
          <article class="noticenews_button">
          <c:if test="${user.role=='admin'}">
			<button onclick="location.href='./BoardUpdateCon?num=${beanNow.num}'">수정</button>
			<button onclick="location.href='./BoardDeleteCon?num=${beanNow.num}'">삭제</button>
     	   </c:if>
			<a class="no_mr" href="./BoardListCon">목록</a>
          </article>
        </section>
      </main>
      <footer>
      	<jsp:include page="/include/footer.jsp" />
      </footer>
    </div>
  </body>
</html>
