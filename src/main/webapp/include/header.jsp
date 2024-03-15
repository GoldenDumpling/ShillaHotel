<%@page import="biz.users.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" isThreadSafe="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // 세션에서 user 객체를 가져옵니다.
    UserVO user = (UserVO) session.getAttribute("user");    
%>
<%
// 서울의 날씨 정보를 가져오는 URL 설정
String weatherUrl = "WeatherServlet?city=Seoul";

// 서블릿 요청을 통해 날씨 정보 가져오기
try {
    java.net.URL url = new java.net.URL(request.getScheme(), request.getServerName(), request.getServerPort(), request.getContextPath() + "/" + weatherUrl);
    java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.InputStreamReader(url.openStream()));
    StringBuilder builder = new StringBuilder();
    String line;
    while ((line = reader.readLine()) != null) {
        builder.append(line);
    }
    reader.close();

    // JSON 형식의 응답 파싱
    org.json.JSONObject json = new org.json.JSONObject(builder.toString());
    double temp = json.getJSONObject("main").getDouble("temp"); // 온도
    String weather = json.getJSONArray("weather").getJSONObject(0).getString("description"); // 날씨 상태

    // 도시 이름과 날씨 정보를 헤더에 설정
    out.println("<script>");
    out.println("$(document).ready(function() {");
    out.println("$('.header_wrap .header_first_row .top_right_nav .city').text('Seoul');");
    out.println("$('.header_wrap .header_first_row .top_right_nav .weather').text('" + weather + " ' + " + temp + " + '°C');");
    out.println("});");
    out.println("</script>");
} catch (Exception e) {
    // 오류 처리
    out.println("Error fetching weather: " + e.getMessage());
    e.printStackTrace();
}
%>

<div class="header_wrap">
    <div class="w1200">
        <div class="header_first_row">
			<div class="top_header">
	            <nav class="top_right_nav">
	            	<ul class="top_left">
						<li class="city">City</li>
	               	 	<li class="weather">Weather, temp</li>
	            	</ul>
	                <ul>
					<c:if test="${empty user.name}">
					    <li><a class="activated" href="./login.jsp">로그인&nbsp;&nbsp;</a>|</li>
	                    <li><a class="activated" href="./join.jsp">신라리워즈&nbsp;가입&nbsp;&nbsp;</a>|</li>
					</c:if>
					<c:if test="${not empty user.name}">
					    <!-- 사용자 이름을 화면에 표시합니다. -->
					    <li><a class="activated" href="#">${user.name }&nbsp;님&nbsp;&nbsp;</a>|</li>
					    <li><a class="activated" href="LogoutCtrl">로그아웃&nbsp;&nbsp;</a>|</li>
					</c:if>
					                    
	                    <!-- 수정 -->
	
	                    <li class="top_right_nav_03"><a href="#">예약확인&nbsp;<img src="./images/includes/Vector.png" alt=""></a>
	                        <div class="confirm">
	                            <p><a href="#">예약확인&nbsp;<img src="./images/includes/Vector_W.png" alt=""></a></p>
	                            <p><a href="#">객실</a></p>
	                            <p><a href="#">다이닝</a></p>
	                        </div>
	                    </li>
	                    <li class="top_right_nav_04">
	                        <a href="#"><img src="./images/includes/language icon.png" alt="지구본">&nbsp;한국어&nbsp;<img src="./images/includes/Vector.png" alt=""></a>
	                        <div class="lang">
	                            <p><a href="#"><img src="./images/includes/language icon_white.png" alt="지구본">&nbsp;한국어&nbsp;<img src="./images/includes/Vector_W.png" alt=""></a></p>
	                            <p><a href="#">English</a></p>
	                            <p><a href="#">日本語</a></p>
	                            <p><a href="#">简体中文</a></p>
	                        </div>
	                    </li>
	                </ul>
	            </nav>
			</div>
        </div>

        <div class="header_second_row">
            <nav class="bot_left_nav">
                <ul>
                    <li class="bot_left_nav_01">
                        <a href="#">객실정보&nbsp;&nbsp;<img src="./images/includes/search icon.png" alt=""></a>
                    </li>
                    <li class="bot_left_nav_02">
                        <a href="#">예약&nbsp;&nbsp;<img src="./images/includes/calendar icon.png" alt=""></a>
                        <div class="room_reserve">
                        </div>
                    </li>
                </ul>
            </nav>
            <h1>
                <a href="./index.jsp">
                    <span class="span">T</span>HE<span class="span">S</span>HILLA<br>
                    <span class="HR">HOTEL & RESORTS</span>
                </a>
            </h1>
            <nav class="bot_right_nav">
                <ul>
                    <li class="bot_right_nav_01">
                        <a href="#">호텔신라</a>
                    </li>
                    <!-- 수정 -->
                    <li class="bot_right_nav_02">
                        <a href="#">신라리워즈</a>
                    </li>
                    <!-- 수정 -->
                    <li  class="bot_right_nav_03">
                        <a href="#">고객문의</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="header_nav_01_sub">
        <ul class="w1200">
            <li class="nav_title">객실정보</li>
            <span></span>
            <li><a href="./ready.jsp">스탠다드</a>
                <div>
                    <p><a href="./ready.jsp">디럭스</a></p>
                    <p><a href="./ready.jsp">비즈니스 디럭스</a></p>
                    <p><a href="./ready.jsp">배리어프리 비즈니스 디럭스</a></p>
                    <p><a href="./ready.jsp">그랜드 코너 디럭스</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">이그제큐티브</a>
                <div>
                    <p><a href="./ready.jsp">이그제큐티브 비즈니스 디럭스</a></p>
                    <p><a href="./ready.jsp">이그제큐티브 그랜드 디럭스</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">스위트</a>
                <div>
                    <p><a href="./ready.jsp">수페리어 스위트</a></p>
                    <p><a href="./ready.jsp">코리안 스위트</a></p>
                    <p><a href="./ready.jsp">코너 스위트</a></p>
                    <p><a href="./ready.jsp">프리미어 스위트</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">로얄 스위트</a>
                <div>
                    <p><a href="./ready.jsp">로얄 스위트</a></p>
                    <p><a href="./ready.jsp">신라 스위트</a></p>
                    <p><a href="./ready.jsp">프레지덴셜 스위트</a></p>
                </div>
            </li>
        </ul>
    </div>
    <div class="header_nav_02_sub">
        <ul class="w1200">
            <li class="nav_title">예약</li>
            <span></span>
            <li><a href="./ready.jsp">레스토랑</a>
                <div>
                    <p><a href="./ready.jsp">라연</a></p>
                    <p><a href="./ready.jsp">콘티넬탈</a></p>
                    <p><a href="./ready.jsp">아리아께</a></p>
                    <p><a href="./ready.jsp">팔선</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">라운지 & 바</a>
                <div>
                    <p><a href="./ready.jsp">더 라이브러리</a></p>
                    <p><a href="./ready.jsp">더 이그제큐티브 라운지</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">베이커리</a>
                <div>
                    <p><a href="./ready.jsp">패스트리 부티크</a></p>
                </div>
            </li>
        </ul>
    </div>
    <div class="header_nav_r01_sub">
        <ul class="w1200">
            <li class="nav_title">호텔신라</li>
            <span></span>
            <li><a href="./ready.jsp">소개</a>
                <div>
                    <p><a href="./brand.jsp">개요</a></p>
                    <p><a href="./ready.jsp">층별안내도</a></p>
                    <p><a href="./ready.jsp">수상이력</a></p>
                    <p><a href="./ready.jsp">오시는길</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">뉴스</a>
                <div>
                    <p><a href="BoardListCon">공지사항</a></p>
                    <p><a href="./ready.jsp">온라인 뉴스레터</a></p>
                </div>
            </li>            
            <li><a href="#">라이프 스타일</a>
                <div>
                    <p><a href="./ready.jsp">야외 수영장</a></p>
                    <p><a href="./ready.jsp">스파</a></p>
                    <p><a href="./ready.jsp">피트니스</a></p>
                    <p><a href="./ready.jsp">산책로</a></p>
                </div>
            </li>
            <li><a href="#">호텔신라</a>
                <div>
                    <p><a href="./ready.jsp">서울신라호텔</a></p>
                    <p><a href="./ready.jsp">제주신라호텔</a></p>
                    <p><a href="./ready.jsp">신라모노그램</a></p>
                    <p><a href="./ready.jsp">신라스테이</a></p>
                </div>
            </li>
        </ul>
    </div>
    <div class="header_nav_r02_sub">
        <ul class="w1200">
            <li class="nav_title">신라리워즈</li>
            <span></span>
            <li><a href="./ready.jsp">멤버십</a>
                <div>
                    <p><a href="./ready.jsp">회원특전</a></p>
                    <p><a href="./ready.jsp">이용안내</a></p>
                    <p><a href="./ready.jsp">멤버스라운지</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">포인트안내</a>
                <div>
                    <p><a href="./ready.jsp">Brown</a></p>
                    <p><a href="./ready.jsp">Silver</a></p>
                    <p><a href="./ready.jsp">Gold</a></p>
                    <p><a href="./ready.jsp">Diamond</a></p>
                </div>
            </li>
            <li><a class="activated" href="./promotion.jsp">스페셜 오퍼</a>
                <div>
                    <p><a href="./ready.jsp">객실패키지</a></p>
                    <p><a href="./ready.jsp">다이닝 프로모션</a></p>
                    <p><a href="./ready.jsp">플라워</a></p>
                    <p><a href="./ready.jsp">웹 회원 혜택</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">신라리워즈 문의</a>
                <div>
                    <p><a href="./ready.jsp">FAQ</a></p>
                    <p><a href="./ready.jsp">문의하기</a></p>
                </div>
            </li>
        </ul>
    </div>
    <div class="header_nav_r03_sub">
        <ul class="w1200">
            <li class="nav_title">고객문의</li>
            <span></span>
            <li><a href="./ready.jsp">연락처</a>
                <div>
                    <p><a href="./ready.jsp">지점별 연락처</a></p>
                </div>
            </li>
            <li><a href="./ready.jsp">문의하기</a>
                <div>
                    <p><a href="./ready.jsp">자주하는 질문</a></p>
                    <p><a href="./ready.jsp">문의하기</a></p>
                    <p><a href="./ready.jsp">고객의 소리</a></p>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="book_wrap">
    <div class="w1200">
         <div class="search_book">
             <ul>
                 <li>체크인</li>
                 <li class="prev_month">
                     <div class="prev_month_month">
                         00월&nbsp;
                     </div>
                     <div class="prev_month_day">
                         00일&nbsp;
                     </div>
                     <div class="prev_month_weekday">
                         (월)
                     </div>
                 </li>
             </ul>
             <ul class="search_date">
                 <li></li>
                 <li class="reservation_days">1박</li>
             </ul>
             <ul>
                 <li>체크아웃</li>
                 <li class="next_month">
                     <div class="next_month_month">
                         00월&nbsp;
                     </div>
                     <div class="next_month_day">
                         00일&nbsp;
                     </div>
                     <div class="next_month_weekday">
                         (월)
                     </div>
                 </li>
             </ul>
         </div>

         <div class="search_person">
             <ul>
                 <li>객실수</li>
                 <li class="room_amount">1</li>
             </ul>
             <ul>
                 <li>성인</li>
                 <li class="person_amount">2</li>
             </ul>
             <ul>
                 <li>어린이</li>
                 <li class="child_amount">0</li>
             </ul>
         </div>

         <a href="./reservation1.jsp"><button class="book_search_btn">검색</button></a>
         <div class="hide_panel">
            <p>숨기기&nbsp;&nbsp;&nbsp;</p>
            <div><img src="./images/main/icon-right-arrow.png" alt=""></div>
         </div>
    </div>
            <!-- reservation_panel -->
            <section class="reservation_panel">
                <!-- 테이블 시작 -->
                <div class="calendar_wrap">
                    <div class="calendar_btn_wrap">
                        <button id="prevMonth"></button>
                        
                        <button id="nextMonth"></button>
                    </div>
                    <div id="calendars">
                        <div id="calendar1"></div>
                        <div class="rp_line2"></div>
                        <div id="calendar2"></div>
                    </div>
                </div>
                
                <!-- 테이블 끝 -->
                <div class="rp_line"></div>
                <ul class="person_layer">
                    <li class="child_standard">
                        <div>!</div>
                        <p>어린이 기준 : 4세~12세</p>
                    </li>
                    <li class="add_room_row">
                        <span>객실1</span>
                        <div class="person">
                            <button class="person_mi">-</button>
                            <div class="grown">성인 2</div>
                            <button class="person_pl">+</button>
                        </div>
                        <div class="child">
                            <button class="person_mi">-</button>
                            <div class="children">어린이 0</div>
                            <button class="person_pl">+</button>
                        </div>
                    </li>
                    <li class="add_room_row">
                        <span>객실2</span>
                        <div class="person">
                            <button class="person_mi">-</button>
                            <div class="grown">성인 2</div>
                            <button class="person_pl">+</button>
                        </div>
                        <div class="child">
                            <button class="person_mi">-</button>
                            <div class="children">어린이 0</div>
                            <button class="person_pl">+</button>
                        </div>
                        <div class="x_mark">✕</div>
                    </li>
                    <li class="add_room_row">
                        <span>객실3</span>
                        <div class="person">
                            <button class="person_mi">-</button>
                            <div class="grown">성인 2</div>
                            <button class="person_pl">+</button>
                        </div>
                        <div class="child">
                            <button class="person_mi">-</button>
                            <div class="children">어린이 0</div>
                            <button class="person_pl">+</button>
                        </div>
                        <div class="x_mark">✕</div>
                    </li>
                    <li class="add_room_btn_wrap">
                        <span>객실추가</span>
                        <div class="add_room_btn">+</div>
                    </li>
                    <li class="select_complete">
                        <button>선택완료</button>
                    </li>
                </ul>
            </section>
            <!-- /reservation_panel -->
 </div>
    <script>
    $('.hide_panel').click(function(){
        // $(this).hide()
        $('.book_wrap').slideUp();
        localStorage.setItem('current_person', current_person);
        localStorage.setItem('current_child', current_child);
    })

</script>

<script src="./js/header_nav.js"></script>
<script src="./js/header_reservation.js"></script>
<script src="./js/header_reservation2.js"></script>
<script src="./js/index_local_storage.js"></script>