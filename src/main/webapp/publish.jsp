<%@page import="biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//beanNow 객체를 가져옵니다.
Object bean = request.getAttribute("bean");

//filePath 초기화
String filePath = "";

//beanNow의 null 처리
if (bean != null) {
 // beanNow에서 파일 경로를 가져옵니다. 적절한 캐스팅이 필요합니다.
 filePath = ((BoardVO)bean).getFile_path(); 
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
      <c:if test="${bean==null }">
       <title>공지 & 뉴스 등록</title>
    </c:if>
      <c:if test="${bean!=null }">
       <title>공지 & 뉴스 수정</title>
    </c:if>
    <link rel="shortcut icon" href="./images/main/app_icon.png">
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/publish.css" />
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>
    <script src="https://cdn.tiny.cloud/1/ndviic9dd5e3akc17edbzhvuvq189poofdsyr7zgs8l7ycnc/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
     tinymce.init({
       selector: 'textarea',
       plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage advtemplate ai mentions tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss',
       toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
       tinycomments_mode: 'embedded',
       tinycomments_author: 'Author name',
       mergetags_list: [
         { value: 'First.Name', title: 'First Name' },
         { value: 'Email', title: 'Email' },
       ],
       ai_request: (request, respondWith) => respondWith.string(() => Promise.reject("See docs to implement AI Assistant")),
     });
   </script>
    <script>
        $(function(){
            $('header').load('./include/header.jsp');
            $('footer').load('./include/footer.jsp');

            $('#file').change(function() {
                var fileName = $(this).val().split('\\').pop();
                $('#file-name').text(fileName);
            });
        });
    </script> 
    
<%--     <c:if test="${user.role != 'admin'}">
       <script type="text/javascript">
           alert("접근 권한이 없습니다.");
           window.location.href = "BoardListCon"; // 여기에 실제 리다이렉션할 URL 입력
       </script>
   </c:if> --%>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .publishing_form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        .form_title, textarea, select, .file-input-container input {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
        }
        .form_title:focus, textarea:focus, select:focus, .file-input-container input:focus {
            border-color: #007bff;
        }
        
        select, .file-input-container input {
            cursor: pointer;
        }
        .btnBox {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .category-select {
            display: flex;
            align-items: center;
            font-size: 20px;
        }
        .category-select select {
            margin-left: 10px;
            width: auto;
            flex-grow: 1;
        }
        .file-input-container {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .file-input-container label {
        	font-size: 12px;
            background-color: white;
            color: black;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            border: 1px solid #ccc;
        }
        .file-input-container input[type="file"] {
            display: none;
        }
        #file-name {
            margin-left: 10px;
        }
    </style>
    
  </head>
  <body>
    <div id="wrap">
        <header>
        	<jsp:include page="/include/header.jsp" />
        </header>
      <section class="publishing w980">
         <c:if test="${bean==null }">
        <h1 class="publishing_title">공지 & 뉴스 등록</h1>
        </c:if>
        <c:if test="${bean!=null }">
        <h1 class="publishing_title">공지 & 뉴스 수정</h1>
         </c:if>   
          <c:if test="${bean==null }">
             <form action="BoardWriteCon" class="publishing_form" method="post" enctype="multipart/form-data">
             <input type="text" class="form_title" placeholder="제목을 입력하세요." name="subject">
             <textarea placeholder="내용을 입력하세요." rows="20" name="content"></textarea>
          </c:if>
          <c:if test="${bean!=null }">
              <form action="BoardUpdateConProc" class="publishing_form" method="post" enctype="multipart/form-data">
             <input type="text" class="form_title" placeholder="제목을 입력하세요." name="subject" value="${bean.subject }">
             <textarea placeholder="내용을 입력하세요." rows="20" name="content">${bean.content }</textarea>
          </c:if>
       <div class="file-input-container">
            <label for="file">파일 선택</label>
            <input type="file" id="file" name="filedata">
            <span id="file-name"><%=fileName %></span>
        </div> 
          <div class="btnBox">
         <div class="category-select">
           카테고리
         <select name="category">
           <option value="NOTICE" ${bean != null && bean.category == 'NOTICE' ? 'selected' : ''}>NOTICE</option>
           <option value="NEWS" ${bean != null && bean.category == 'NEWS' ? 'selected' : ''}>NEWS</option>
           <option value="EVENT" ${bean != null && bean.category == 'EVENT' ? 'selected' : ''}>EVENT</option>
         </select>
         </div>
         <div>
               <a class="list" href="./BoardListCon">목록</a>
               <c:if test="${bean==null }">
                  <button type="submit">등록</button>
               </c:if>
               <c:if test="${bean!=null }">
                  <input type="hidden" name="num" value="${bean.num}" />
                  <button type="submit">수정</button>
               </c:if>
            </div>
          </div>
        </form>
      </section>
      <footer>
      	<jsp:include page="/include/footer.jsp" />
      </footer>
    </div>
  </body>
</html>
