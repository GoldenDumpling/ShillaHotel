<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
//한글 처리
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>News</title>
<link rel="shortcut icon" href="./images/main/app_icon.png">
<!-- 기본 Reset CSS -->
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/font.css">
<!-- 페이지 관련 CSS -->
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/board.css">
<!-- JQ 플러그인 파일 -->
<script src="./js/jquery-1.12.4.min.js"></script>
<script src="./js/jquery-3.3.1.min.js"></script>
<!-- 박스 슬라이더 CSS -->
<link rel="stylesheet" href="./css/jquery.bxslider.css">
<!-- 박스 슬라이더 플러그인 -->
<script src="./js/jquery.bxslider.js"></script>
<script>
	
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/header.jsp" />
	</header>
	<main>
		<div class="news_section w1200">
			<h1>공지 & 뉴스</h1>
			<p>신라호텔의 최신 뉴스 및 공지사항을 알려드립니다.</p>
			<form action="BoardSearchCon" method="post" class="search_area">
				<select name="searchCol" title="검색 타입 선택">
					<option value="all">전체</option>
					<option value="subject">제목</option>
					<option value="content">내용</option>
				</select>
				<div class="input_area">
					<div class="input_box">
						<input type="text" class="input_search" name="searchText"
							title="검색어 입력란">
					</div>
					<button type="submit" class="search_btn">
						<img src="./images/board/list/ico_search.png" alt="검색">
					</button>
				</div>
			</form>

			<c:if test="${not empty v }">
				<table>
					<colgroup>
						<col width="8%">
						<col width="10%">
						<col width="72%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th colspan="2">제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bean" items="${v}">
							<tr>
								<td class="num">${bean.num }</td>
								<td class="type ">${bean.category }<i></i></td>
								<td class="tit "><a href="javascript:detail(100)"> <span>
											<a href="BoardInfoCon?num=${bean.num}"> ${bean.subject }
										</a>
									</span>
								</a></td>
								<td class="day">${bean.reg_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
			<c:if test="${empty v }">
				<div class="no_post">
					<img src="./images/board/list/write.png" alt="no_post" />
					<h2>등록된 게시물이 없습니다.</h2>
				</div>
			</c:if>
			<c:if test="${user.role=='admin'}">
				<div class="publish_btn">
					<a class="new_post" href="./publish.jsp">글 작성</a>
				</div>
			</c:if>


			<div class="paging">
				<!-- 페이징,카운터 -->
				<!-- 계산을 위한 바인딩 데이터 사용 -->
				<c:if test="${count > 0 }">
					<!-- 총글갯수가 몇개라고 가정 -->
					<!-- 총글갯수가 7개라 가정 0.7 + 1 = 1.7 -->
					<c:set var="pageCount"
						value="${count / pageSize + (count%pageSize == 0 ? 0 : 1)}" />
					<!-- startPate = 1 -->
					<c:set var="startPage" value="${1 }" />


					<c:if test="${currentPage%10 != 0 }">
						<!-- 시작페이지가 0이 아니면 -->
						<!-- 결과를 정수형으로 받기위해 fmt 사용 -->
						<!-- integerOnly = 정수 부분만 파싱할지 여부를 지정 | 기본값은 false -->
						<!-- result = 1/10 = 0.1 -->
						<fmt:parseNumber var="result" value="${currentPage/10 }"
							integerOnly="true" />
						<!-- startPage = 0.1*10+1=1 -->
						<c:set var="startPage" value="${result*10+1 }" />
					</c:if>
					<c:if test="${currentPage%10 == 0 }">
						<!-- 시작페이지가 0이면 10페이지%10 -->
						<fmt:parseNumber var="result" value="${currentPage / 10}"
							integerOnly="true" />
						<c:set var="startPage" value="${(result - 1) * 10 + 1}" />
					</c:if>

					<!-- endPage 화면에 보여질 페이지 숫자 -->
					<c:set var="pageBlock" value="${10 }" />
					<c:set var="endPage" value="${startPage+pageBlock-1 }" />

					<!-- 마지막 페이지가 10보다 크면 -->
					<c:if test="${endPage > pageCount }">
						<!-- 11할당 -->
						<c:set var="endPage" value="${pageCount }" />
					</c:if>


					<nav aria-label="Page navigation" class="pagenav">
						<ul class="pagination">
							<!-- << 버튼: 항상 첫 페이지로 -->
							<c:choose>
								<c:when test="${currentPage > 1}">
									<li class="first_page_btn"><a
										href="${currentPageName}?pageNum=1&searchCol=${searchCol}&searchText=${searchText}"
										aria-label="First" class="page-link"><span></span></a></li>
								</c:when>
								<c:otherwise>
									<li class="first_page_btn"><a href="#" aria-label="First"
										class="page-link" onclick="event.preventDefault();"><span></span></a>
									</li>
								</c:otherwise>
							</c:choose>

							<!-- 이전 버튼 -->
							<c:choose>
								<c:when test="${currentPage > 1}">
									<li class="prev_page_btn"><a
										href="${currentPageName}?pageNum=${currentPage-1}&searchCol=${searchCol}&searchText=${searchText}"
										aria-label="Previous" class="page-link"><span></span></a></li>
								</c:when>
								<c:otherwise>
									<li class="prev_page_btn"><a href="#"
										aria-label="Previous" class="page-link"
										onclick="event.preventDefault();"><span></span></a></li>
								</c:otherwise>
							</c:choose>

							<!-- 페이지 번호 -->
							<c:forEach var="i" begin="${startPage }" end="${endPage }">
								<li class="${currentPage == i ? 'on' : ''}"><a
									href="${currentPageName}?pageNum=${i }&searchCol=${searchCol}&searchText=${searchText}"
									class="page-link">${i}</a></li>
							</c:forEach>

<!-- 다음 버튼 -->
                     <c:choose>
                         <c:when test="${currentPage * pageSize < count}">
                             <li class="next_page_btn">
                                 <a href="${currentPageName}?pageNum=${currentPage + 1}&searchCol=${searchCol}&searchText=${searchText}" aria-label="Next">
                                     <span></span>
                                 </a>
                             </li>
                         </c:when>
                         <c:otherwise>
                             <li class="next_page_btn">
                                 <a href="#" aria-label="Next" class="page-link" onclick="event.preventDefault();">
                                     <span></span>
                                 </a>
                             </li>
                         </c:otherwise>
                     </c:choose>
							<!-- >> 버튼: 마지막 페이지로 -->
							<c:choose>
								<c:when test="${currentPage < pageCount}">
									<li class="last_page_btn"><fmt:parseNumber
											var="totalPages"
											value="${count / pageSize + (count % pageSize == 0 ? 0 : 1)}"
											integerOnly="true" /> <a
										href="${currentPageName}?pageNum=${totalPages}&searchCol=${searchCol}&searchText=${searchText}"
										aria-label="Last" class="page-link"><span></span></a></li>
								</c:when>
								<c:otherwise>
									<li class="last_page_btn"><a href="#" aria-label="Last"
										class="page-link" onclick="event.preventDefault();"><span></span></a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</c:if>
				<!-- /페이징,카운터 -->
			</div>
			</div>
	</main>
	<footer>
		<jsp:include page="/include/footer.jsp" />
	</footer>



</body>
</html>