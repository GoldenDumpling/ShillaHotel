<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Shilla Hotels & Resorts</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png" />
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/rsv1_header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/reservation1.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- prefix js파일 -->
    <script src="./js/prefixfree.min.js"></script>
    <!-- 박스 슬라이더 플러그인 파일 -->
    <script>
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
        <main>
            <div class="room_choose">
                <div class="w1200">
                    
                    <div class="step1">
                        <img src="./images/reservation/rsv_step1_on.png" alt="">
                    </div>
    
                    <div class="room_tab">
                        <div class="room_tab_wrap">
                            <ul class="room_tab_l">
                                <li class="room_tab_active" onclick="roomActive(0)">회원전용</li>
                                <li onclick="roomActive(1)">패키지</li>
                                <li onclick="roomActive(2)">객실</li>
                            </ul>
                            <ul class="room_tab_r">
                                <li>
                                    <p>키워드</p>   
                                    <div>
                                        <img src="./images/reservation/bottomArrow.png" alt="키워드화살표">
                                        <img src="./images/reservation/topArrow.png" alt="키워드화살표">
                                    </div>
                                </li>
                                <div class="sort_line"></div>
                                <li>
                                    <select name="" id="sort_by">
                                        <option value="low_price">낮은 가격 순</option>
                                        <option value="high_price">높은 가격 순</option>
                                        <option value="newest" selected="selected">최신순</option>
                                        <option value="hot">인기순</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                        <div class="keyword_search">
                            <div class="keyword_tit">
                                <div class="keyword_head">
                                    <img src="./images/reservation/tit_rsv_keyword.gif" alt="키워드">
                                    <img src="./images/reservation/btn_hotel_clear_txt.png" alt="선택해제">
                                </div>
                                <div class="keyword_check w1200">
                                    <ul>
                                        <li>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="breakfast_included">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="breakfast_included">조식</label>
                                        </li>
                                        <li>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="lounge_benefits">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="lounge_benefits">라운지혜택</label>
                                        </li>
                                        <li>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="winery_access">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="winery_access">와이너리</label>
                                        </li>
                                        <li>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="outdoor_pool">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="outdoor_pool">야외수영장</label>
                                        </li>
                                        <li>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="extra_bed_available">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="extra_bed_available">엑스트라 베드</label>
                                        </li>
                                        <li>
                                            <div class="keyword_btn">
                                                <img src="./images/reservation/reserve_step1_keyword.gif" alt="키워드버튼">
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="room_notice">
                        <p>*할인이 적용된 요금입니다.</p>
                        <p>객실예약 연락처 : 010-1234-5678&nbsp;&nbsp;&nbsp;<span><a href="./ready.jsp">문의하기</a></span></p>
                    </div>
                    <div class="room_cont">
                        <ul class="room_list">
                            <li value="375000" data-date="2023-01-01" data-popularity="5">
                                <ul class="room_box room_win selectMember">
                                    <li><img src="./images/reservation/FILEa3e14ce478ed771f.jpg" alt=""></li>
                                    <li>
                                        <h3>Rewads Special</h3>
                                        <p>리워즈 1만P + 18시 체크인</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>375,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
    
                            <li value="400000" data-date="2023-01-02" data-popularity="3">
                                <ul class="room_box room_poo room_ben selectMember">
                                    <li><img src="./images/reservation/room2.gif" alt="컨텐츠 이미지2"></li>
                                    <li>
                                        <h3>Member Exclusive</h3>
                                        <p>리워즈 회원 전용 객실 할인</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>400,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 3번째 -->
                            <li value="455000" data-date="2023-01-22" data-popularity="11">
                                <ul class="room_box room_mor selectPackage">
                                    <li><img src="./images/reservation/FILE17e069c9fc35faf8.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Art Voyage at The Shilla Seoul</h3>
                                        <p>서울신라호텔 아트 도록 1부 + 리움미술관 연간 멤버십 2매 + F&B크레딧 5만원 <br>
                                            + 무료 발레파킹 1회 + 사우나 무료 입장 (17시 이후)</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>440,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
    
                            <!-- 4번째 -->
                            <li value="515000" data-date="2023-03-01" data-popularity="2">
                                <ul class="room_box room_ben room_win selectRoom">
                                    <li><img src="./images/reservation/img3.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Morning Delights</h3>
                                        <p>룸서비스 조식 2인</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>515,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
    
                            <!-- 5번째 -->
                            <li value="500000" data-date="2023-03-22" data-popularity="25">
                                <ul class="room_box room_ben room_win selectRoom">
                                    <li><img src="./images/reservation/R0000000Y72R_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Deluxe</h3>
                                        <p>객실크기 : 36㎡<br><br>
                                            침대타입 : 더블(킹 사이즈), 트윈</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>500,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 6번째 -->
                            <li value="550000" data-date="2023-11-01" data-popularity="31">
                                <ul class="room_box room_ext selectRoom">
                                    <li><img src="./images/reservation/R0000000Y726_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Business Deluxe</h3>
                                        <p>객실크기 : 43㎡<br><br>
                                            침대타입 : 더블(킹 사이즈), 트윈</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>550,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 7번째 -->
                            <li value="550000" data-date="2023-12-01" data-popularity="1"> 
                                <ul class="room_box room_box room_ext room_win room_ben selectRoom">
                                    <li><img src="./images/reservation/R0000001U0QG_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Barrier-free Business Deluxe</h3>
                                        <p>객실크기 : 43㎡<br><br>
                                            침대타입 : 더블(킹 사이즈)</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>550,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 9번째 -->
                            <li value="610000" data-date="2023-07-21" data-popularity="15">
                                <ul class="room_box room_box room_ext room_win room_ben selectRoom">
                                    <li><img src="./images/reservation/R0000000ZZO5_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Grand Corner Deluxe</h3>
                                        <p>객실크기 : 51㎡<br><br>
                                            침대타입 : 더블(킹 사이즈)</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>610,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 10번째 -->
                            <li value="930000" data-date="2023-04-25" data-popularity="12">
                                <ul class="room_box room_ext room_win room_ben selectRoom">
                                    <li><img src="./images/reservation/R0000000Y732_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Executive Grand Deluxe</h3>
                                        <p>객실크기 : 53㎡<br><br>
                                            침대타입 : 더블(킹 사이즈)</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>930,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 11번째 -->
                            <li value="1410000" data-date="2023-06-03" data-popularity="9">
                                <ul class="room_box room_ext room_win room_ben selectRoom">
                                    <li><img src="./images/reservation/R000000013SA_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Corner Suite</h3>
                                        <p>객실크기 : 68㎡<br><br>
                                            침대타입 : 더블(킹 사이즈), 트윈</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>1,410,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                            <!-- 12번째 -->
                            <li value="2020000">
                                <ul class="room_box room_ext room_win room_ben">
                                    <li><img src="./images/reservation/R000000013U4_KR.jpg" alt="3번째"></li>
                                    <li>
                                        <h3>Premier Suite</h3>
                                        <p>객실크기 : 84㎡<br><br>
                                            침대타입 : 더블(킹 사이즈), 트윈</p>
                                        <p>혜택 및 이용안내</p>
                                    </li>
                                    <li>
                                        <p>2,020,000 원 ~</p>
                                        <p>1박</p>
                                    </li>
                                    <li>
                                        <img src="./images/reservation/reserve_step1_rsvopen.gif" alt="예약오픈버튼">
                                    </li>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Double
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>550,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="room_select">
                                        <div class="room_select_top">
                                            <div class="room_select_top_left">    
                                                <fieldset>
                                                    <label>
                                                        <input type="radio" name="subject" id="select_reservation">
                                                        <img src="./images/reservation/bed.png" alt="침대">
                                                        Twin
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="room_select_top_right">
                                                <p>440,000&nbsp;&nbsp;원</p>
                                                <p>다른날짜 요금</p>
                                                <img src="./images/reservation/bottomArrow.png" alt="">
                                            </div>
                                        </div>
                                        <div class="room_select_content">
                                            <div>
                                                <p>객실 연관 상품</p>
                                                <p>회원전용</p>
                                            </div>
                                            <div class="content_box">
                                                <h2>Memeber Exclusive</h2>
                                                <p>리워즈 회원 전용 객실 할인</p>
                                                <p>400,000&nbsp;&nbsp;원</p>
                                            </div>
                                        </div>
                                </ul>                   
                            </li>
                        </ul>
                    </div>
                <!-- 객실 모달 창 시작-->
                <div class="room_modal">
                    <!-- 1 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont">
                        <div class="modal_desc">  
                            <p><img src="images/reservation/FILE5bd78652287e924.jpg" alt="모달헤드이미지"></p>
                            <p>신라리워즈 회원에게만 제공하는 특별 프로모션</p> 
                            <p><br></p> 
                            <p>기간 : 2023년 12월 17일 ~ 2024년 2월 7일</p> 
                            <p>해당 호텔 : 서울신라호텔</p> 
                            <p><br></p> 
                            <p class="room_modal_in">※ <b>제외 일자 : 12월 22일~24일</b></p> 
                            <p class="room_modal_in">※ 투숙일에 따라 금액은 변동됩니다. </p> 
                            <p class="room_modal_in">※ 본 상품은 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p> 
                            <p class="room_modal_in">※ <b>본 상품은 오후 6시 이후 체크인 가능합니다.</b></p>		
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <th>객실 타입 및 금액</th>
                                    <td>
                                        <b>[디럭스 룸]</b> 285,000원 ~<br>
                                        <b>[비즈니스 디럭스 룸]</b> 326,250원 ~<br>
                                        <b>[그랜드 코너 디럭스 룸]</b> 367,500원 ~
                                    </td>
                                </tr>
                                <tr>
                                    <th>공통 혜택</th>
                                    <td>
                                        <ul>
                                            <li>체련장(Gym), 실내 수영장 혜택</li>
                                            <li>
                                                <b>리워즈 1만 포인트 추가 적립</b><br>
                                                ※ 추가 포인트는 본 페이지에서 약 진행 시에만 제공됩니다.
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Deluxe Room</li>
                                    <li><img src="./images/reservation/modalFILE487e6738b369f5dd.jpg" alt="모달왼쪽이미지"></li>
                                    <li>깃털처럼 포근한 침구류를 갖춘 객실에서의 따스하고 아늑한 시간</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>Urban Refresh</li>
                                    <li><img src="./images/reservation/modalFILE830b73a15c763723.jpg" alt="모달오른쪽이미지"></li>
                                    <li>생기 넘치는 하루를 만드는 피트니스에서의 활기찬 시작</li>
                                </ul>
                            </li>
                        </ul>
                        <div class="product_warn">
                            <p>※ 피트니스 클럽 이용 안내</p>
                            <p>- 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기휴무입니다.</p>
                            <p>- 체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</p>
                            <p>- 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 입장 가능합니다.<br> 
                            (단, 주말 및 공휴일에는 성인 보호자의 보호 하에 만 13세 미만인 고객이 입장 가능하며, 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 입장 가능합니다.)
                            </p>
                            <p>- 수영장에서 다이빙은 금지되어 있습니다.</p>
                            <p>- 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다.</p>

                        </div>
                        <div class="useInfo">
                            <p>- 추가 제공 포인트는 회원 등급 점수에 반영되지 않습니다.</p>
                            <br>
                            <p>- 상기 이미지들은 연출된 예로 실제와 다를 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 성인 2인 1실 기준이며, 요금에는 10% 부가가치세가 부과됩니다.</p>
                            <br>
                            <p>- 본 상품은 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p>
                            <br>
                            <p>- 본 상품은 한정 수량 판매되며, 조기 마감될 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 어번 아일랜드(야외 수영장) 입장 혜택을 포함하고 있지 않습니다.</p>
                            <br>
                            <p>- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.</p>
                            <br>
                            <p>* 객실 1실 당 성인은 최대 3인까지만 투숙 가능하며, 소인(만 13세 미만)은 최대 2인까지만 동반 투숙 가능합니다.</p>
                            <br>
                            <p>* 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.</p>
                            <br>
                            <p>- Check-in은 오후 6시, Check-out은 오전 11시까지입니다.</p>
                            <br>
                            <p>- 패키지에 포함된 혜택 및 선물은 1박당 1회(또는 1개) 제공됩니다.</p>
                            <br>
                            <p>- 주류는 성인 고객에 한해 이용 가능합니다.</p>
                            <br>
                            <p>- 호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, <br>
                            조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</p>
                        </div>
                        <div class="refund_warn">
                            <div class="box_tit">
                                <p>유의사항</p>
                                <img src="./images/reservation/ico_t.png" alt="위화살표">
                            </div>
                            <ul>
                                <li><b>[취소/변경 및 노쇼(No-show) 안내]</b></li>
                                <li>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
                                <li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,</li>
                                <li>- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
                                <li>- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
                            </ul>
                        </div>
                    </div> 
                    <!-- /1 -->
                    <!-- 2 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont">
                        <div class="modal_desc">  
                            <p><img src="images/reservation/FILEcd1196f7dd0d85f2.jpg" alt="모달헤드이미지"></p>
                            <p>신라리워즈 회원에게만 제공하는 특별한 가격</p> 
                            <p><br></p> 
                            <p>기간 : 2023년 11월 26일 ~ 2024년 3월 31일</p> 
                            <p>해당 호텔 : 서울신라호텔</p> 
                            <p><br></p> 
                            <p class="room_modal_in">※ 투숙일에 따라 금액은 변동됩니다. </p> 
                            <p class="room_modal_in">※ 본 상품은 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않습니다.</p>		
                            <p class="room_modal_in">※ 본 상품은 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p> 
                            <p class="room_modal_in">※ <b> 제외 기간 : 매주 토요일, <br>
                                &nbsp;&nbsp;&nbsp;2023년 12월 24일, 12월 31일, <br>
                                &nbsp;&nbsp;&nbsp;2024년 1월 1일, 2월 8일~11일</b></p> 
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <th>객실 타입 및 금액</th>
                                    <td>
                                        <b>[디럭스 룸]</b> 280,000원 ~<br>
                                        <b>[비즈니스 디럭스 룸]</b> 324,000원 ~<br>
                                        <b>[그랜드 디럭스 룸]</b> 368,000원 ~<br>
                                        <b>[이그제큐티브 비즈니스 디럭스 룸]</b> 500,000원 ~<br>
                                        <b>[이그제큐티브 그랜드 디럭스 룸]</b> 544,000원 ~<br>
                                        <b>[수페리어 스위트]</b> 920,000원 ~
                                    </td>
                                </tr>
                                <tr>
                                    <th>공통 혜택</th>
                                    <td>
                                        <ul>
                                            <li>체련장(Gym), 실내 수영장 혜택</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>개별 혜택</th>
                                    <td>
                                        <b>[이그제큐티브 비즈니스 디럭스 룸, 이그제큐티브 그랜드 디럭스 룸, 수페리어 스위트]</b><br><br>
                                        <ul>
                                            <li>더 이그제큐티브 라운지 혜택</li>
                                            <li>실내 사우나 혜택</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Deluxe Room</li>
                                    <li><img src="./images/reservation/modalFILE487e6738b369f5dd.jpg" alt="모달왼쪽이미지"></li>
                                    <li>깃털처럼 포근한 침구류를 갖춘 객실에서의 따스하고 아늑한 시간</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>Urban Refresh</li>
                                    <li><img src="./images/reservation/modalFILE830b73a15c763723.jpg" alt="모달오른쪽이미지"></li>
                                    <li>생기 넘치는 하루를 만드는 피트니스에서의 활기찬 시작</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Kids Lounge</li>
                                    <li><img src="./images/reservation/FILEa997d370f21834.jpg" alt="모달왼쪽이미지2"></li>
                                    <li>수백여 권의 도서와 자연 소재의 원목 장난감으로<br> 가득 채워진 공간에서 보내는 자유로운 놀이 시간</li>
                                    <li>* 운영 시간 : 매일 10:00~19:00 / 시설 정비 시간 13:00~14:00</li>
                                    <li>* 연장 운영 안내 : 7월 14일~8월 13일 중 매주 금, 토, 일요일은 19:00~21:00 운영합니다.</li>
                                    <li>※ 단 해당 기간 13:00~19:00는 Young Artist's English Journey 객실 패키지 이용객에 한해 운영됩니다. <br>
                                        6월 23일 ~ 7월 8일 중 매주 금, 토요일<br>
                                        7월 14일 ~ 8월 15일 중 매주 금, 토, 일요일 및 8월 14일, 15일<br>
                                        8월 18일 ~ 9월 2일 중 매주 금, 토요일
                                    </li>
                                    
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><br></li>
                                    <li><img src="./images/reservation/FILEec424afabae1fa03.jpg" alt="모달오른쪽이미지2"></li>
                                    <li>* 운영 장소 : 5층 키즈 라운지</li>
                                    <li>* 키즈 라운지는 보호자를 동반하는 경우에 한해 입장 가능합니다.</li>
                                    <li>* 프랑스 파리에 살고 있는 귀여운 친구들 '가스파드와 리사'의 이야기를 키즈 라운지에서 만나보세요.</li>
                                    <li>* 매월 3번째 수요일 정기 휴무입니다.</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Executive, Suite 개별 혜택 : The Executive Lounge</li>
                                    <li><img src="./images/reservation/FILE316505657d7dad93.jpg" alt="모달왼쪽이미지3"></li>
                                    <li>남산과 도심 전경이 그림처럼 펼쳐지는 공간에서 하루 3번 제공되는 다이닝 서비스와 함께하는 특별한 경험.</li>
                                    <li>* 더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로, 라운지 혜택이 포함된 이그제큐티브 비즈니스 디럭스 룸, 이그제큐티브 그랜드 디럭스 룸,<br>
                                        수페리어 스위트 객실 타입을 예약하신 투숙객(만 13세 이상)에 한해 이용 가능합니다.</li>
                                    <li><b>Afternoon Tea</b> : 나른한 오후, 라운지에서 여유롭게 즐기는 애프터눈 티 타임(이용 시간 : 15:30 ~ 17:00)</li>
                                    <li><b>Happy Hour</b> : 화려한 도심 야경을 바라보며 즐기는 다채로운 라운지 다이닝(이용 시간 : 18:00 ~ 22:00)</li>
                                    <li><b>Breakfast</b> : 기분 좋은 하루를 위해 세심하게 준비한 라운지의 건강식 조식(이용 시간 : 06:30 ~ 10:00 / 단, 토, 일요일 및 공휴일은 06:30 ~ 10:30)</li>
                                    <li>※ 호텔 사정에 따라 더 파크뷰 조식으로 대체 제공될 수 있으며, 체크인 시 확인 가능합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><br></li>
                                    <li><img src="./images/reservation/FILE893a5a066882ca1a.jpg" alt="모달오른쪽이미지3"></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="product_warn">
                            <p>※ 피트니스 클럽 이용 안내</p>
                            <p>- 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기휴무입니다.</p>
                            <p>- 체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</p>
                            <p>- 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 입장 가능합니다.<br> 
                            (단, 주말 및 공휴일에는 성인 보호자의 보호 하에 만 13세 미만인 고객이 입장 가능하며, 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 입장 가능합니다.)
                            </p>
                            <p>- 수영장에서 다이빙은 금지되어 있습니다.</p>
                            <p>- 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다.</p>

                        </div>
                        <div class="useInfo">
                            <p>- 본 상품은 어번 아일랜드 입장 혜택을 포함하고 있지 않습니다.</p>
                            <br>
                            <p>- 상기 이미지들은 연출된 예로 실제와 다를 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 성인 2인 1실 기준이며, 요금에는 10% 부가가치세가 부과됩니다.</p>
                            <br>
                            <p>- 본 상품은 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p>
                            <br>
                            <p>- 본 상품은 한정 수량 판매되며, 조기 마감될 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 어번 아일랜드(야외 수영장) 입장 혜택을 포함하고 있지 않습니다.</p>
                            <br>
                            <p>- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.</p>
                            <br>
                            <p>[일반실] 객실 1실 당 성인은 최대 3인까지 투숙 가능하며, 성인과 소인(만 13세 미만)을 합하여 최대 4인까지 투숙 가능합니다.</p>
                            <br>
                            <p>[스위트] 객실 1실 당 성인은 최대 4인까지 투숙 가능하며, 성인과 소인(만 13세 미만)을 합하여 최대 5인까지 투숙 가능합니다.</p>
                            <br>
                            <p>- Check-in은 오후 6시, Check-out은 오전 11시까지입니다.</p>
                            <br>
                            <p>- 패키지에 포함된 혜택 및 선물은 1박당 1회(또는 1개) 제공됩니다.</p>
                            <br>
                            <p>- 호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, <br>
                            조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</p>
                        </div>
                        <div class="refund_warn">
                            <div class="box_tit">
                                <p>유의사항</p>
                                <img src="./images/reservation/ico_t.png" alt="위화살표">
                            </div>
                            <ul>
                                <li><b>[취소/변경 및 노쇼(No-show) 안내]</b></li>
                                <li>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
                                <li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,</li>
                                <li>- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
                                <li>- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /2 -->
                    <!-- 3 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont">
                        <div class="modal_desc">  
                            <p><img src="images/reservation/FILEb178a0802c1670fc.jpg" alt="모달헤드이미지"></p>
                            <p>객실에서 편안하게 즐기는 룸서비스 조식과 함께 휴식에 여유를 더해드립니다.</p> 
                            <p><br></p> 
                            <p>기간 : ~ 2024년 1월 31일</p> 
                            <p>해당 호텔 : 서울신라호텔</p> 
                            <p><br></p> 
                            <p class="room_modal_in">※ 투숙일에 따라 금액은 변동됩니다. </p> 
                            <p class="room_modal_in">※ 본 상품은 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p> 
                            <p class="room_modal_in">※ 본 상품은 온라인 예약만 가능합니다.</p>
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <th>객실 타입 및 금액</th>
                                    <td>
                                        <b>[디럭스 룸]</b> 395,000원 ~<br>
                                        <b>[비즈니스 디럭스 룸]</b> 450,000원 ~<br>
                                        <b>[그랜드 코너 디럭스 룸]</b> 505,000원 ~
                                    </td>
                                </tr>
                                <tr>
                                    <th>공통 혜택</th>
                                    <td>
                                        <ul>
                                            <li>룸서비스 조식 (아메리칸 브렉퍼스트, 곰탕, 북엇국 중 택 1) 2인</li>
                                            <li>체련장(Gym), 실내 수영장 혜택</li>
                                            <li><b>리워즈 1만 포인트 추가 적립</b><br>
                                            &nbsp;※ 추가 포인트는 본 페이지에서 예약 진행 시에만 제공됩니다.</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Room Service Breakfast</li>
                                    <li style="width: 451px;"><img src="./images/reservation/img3.jpg" alt="모달왼쪽이미지" style="width: 420px;" height="220px;"></li>
                                    <li>객실에서 여유롭게 즐기는 아침 식사</li>
                                    <li>* 아메리칸 브렉퍼스트, 곰탕, 북엇국 중 택 2</li>
                                    <li>* 이용 시간 : 06:00~11:00</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>Indoor Swimming Pool</li>
                                    <li><img src="./images/reservation/modalFILE830b73a15c763723.jpg" alt="모달오른쪽이미지" style="width: 420px;" height="220px;"></li>
                                    <li>유리돔을 통해 보이는 남산의 전경을 만끽하며 즐기는 수영과 휴식 길이 25m,<br>
                                        너비 6m의 풀과 함께 건식 사우나와 실내 및 야외 자쿠지를 갖추고 있습니다.</li>
                                    <li>* 운영 시간 : 06:00~22:00</li>
                                    <li>* 평일에는 만 13세 이상 고객에 한해 이용 가능하며, 주말 및 공휴일에는 성인<br>
                                         보호자의 동반 하에 만 13세 미만 고객이 이용 가능합니다.</li>
                                    <li>* 매월 3번째 수요일 정기 휴무입니다.</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>Kids Lounge</li>
                                    <li><img src="./images/reservation/FILEa997d370f21834.jpg" alt="모달왼쪽이미지2"></li>
                                    <li>수백여 권의 도서와 자연 소재의 원목 장난감으로<br>가득 채워진 공간에서 보내는 자유로운 놀이 시간</li>
                                    <li>* 운영 시간 : 매일 10:00~19:00 / 시설 정비 시간 13:00~14:00</li>
                                    <li>* 연장 운영 안내 : 7월 14일~8월 13일 중 매주 금, 토, 일요일은 19:00~21:00 운영합니다.</li>
                                    <li>※ 단 해당 기간 13:00~19:00는 Young Artist's English Journey 객실 패키지 이용객에 한해 운영됩니다. <br>
                                        6월 23일 ~ 7월 8일 중 매주 금, 토요일<br>
                                        7월 14일 ~ 8월 15일 중 매주 금, 토, 일요일 및 8월 14일, 15일<br>
                                        8월 18일 ~ 9월 2일 중 매주 금, 토요일
                                    </li>
                                    
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><br></li>
                                    <li><img src="./images/reservation/FILEec424afabae1fa03.jpg" alt="모달오른쪽이미지2"></li>
                                    <li>* 운영 장소 : 5층 키즈 라운지</li>
                                    <li>* 키즈 라운지는 보호자를 동반하는 경우에 한해 입장 가능합니다.</li>
                                    <li>* 프랑스 파리에 살고 있는 귀여운 친구들 '가스파드와 리사'의 이야기를 키즈 라운지에서 만나보세요.</li>
                                    <li>* 매월 3번째 수요일 정기 휴무입니다.</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>[Happy Kids Origami Program]</li>
                                    <li>- 운영 기간 : 12월 1일~1월 31일 중 매주 금~토요일, 12월 24일, 25일</li>
                                    <li>- 운영 시간 : 1부 15시~16시 30분 / 2부 17시~18시 30분 <br>
                                    &nbsp;(16시 30분~17시는 재정비 시간으로, 프로그램을 진행하지 않습니다.)</li>
                                    <li>* 본 프로그램은 부모 동반 수업으로 진행됩니다.</li>
                                    <li>* 본 프로그램은 체크인 이후 5층 키즈라운지에서 선착순으로 예약 가능합니다.</li>
                                    <li>* Family Moment 패키지 예약 고객님 우선으로 배정되며, 예약은 조기에 마감 될 수 있습니다.</li>
                                    <li>* 호텔 사정에 따라 본 프로그램은 변동될 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li><br></li>
                                    <li><img src="./images/reservation/FILE893a5a066882ca1a.jpg" alt="모달오른쪽이미지3"></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="product_warn">
                            <p>※ 피트니스 클럽 이용 안내</p>
                            <p>- 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기휴무입니다.</p>
                            <p>- 체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</p>
                            <p>- 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 입장 가능합니다.<br> 
                            (단, 주말 및 공휴일에는 성인 보호자의 보호 하에 만 13세 미만인 고객이 입장 가능하며, 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 입장 가능합니다.)
                            </p>
                            <p>- 수영장에서 다이빙은 금지되어 있습니다.</p>
                            <p>- 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다.</p>

                        </div>
                        <div class="useInfo">
                            <p>- 추가 제공 포인트는 회원 등급 점수에 반영되지 않습니다.</p>
                            <br>
                            <p>- 상기 이미지들은 연출된 예로 실제와 다를 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 성인 2인 1실 기준이며, 요금에는 10% 부가가치세가 부과됩니다.</p>
                            <br>
                            <p>- 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p>
                            <br>
                            <p>- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.</p>
                            <br>
                            <p>[일반실] 객실 1실 당 성인은 최대 3인까지 투숙 가능하며, 성인과 소인(만 13세 미만)을 합하여 최대 4인까지 투숙 가능합니다.</p>
                            <br>
                            <p>- Check-in은 오후 6시, Check-out은 오전 11시까지입니다.</p>
                            <br>
                            <p>- 패키지에 포함된 혜택 및 선물은 1박당 1회(또는 1개) 제공됩니다.</p>
                            <br>
                            <p>- 주류는 성인 고객에 한해 이용 가능합니다.</p>
                            <br>
                            <p>- 호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, <br>
                            조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</p>
                        </div>
                        <div class="refund_warn">
                            <div class="box_tit">
                                <p>유의사항</p>
                                <img src="./images/reservation/ico_t.png" alt="위화살표">
                            </div>
                            <ul>
                                <li><b>[취소/변경 및 노쇼(No-show) 안내]</b></li>
                                <li>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
                                <li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,</li>
                                <li>- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
                                <li>- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /3 -->
                    <!-- 4 -->
                     <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont">
                        <div class="modal_desc">  
                            <p><img src="images/reservation/FILEf32d33e249814727.jpg" alt="모달헤드이미지"></p>
                            <p>올 겨울, 서울신라호텔이 특별한 예술적 영감을 선사할 공간으로 초대합니다. <br>
                                다양한 작품을 통해 일상 속 예술 경험을 제공해 온 서울신라호텔 예술을 마주하는 <br>
                                인상적인 순간을 경험해보길 바랍니다.</p> 
                            <p><br></p> 
                            <p>기간 : 2023년 12월 20일 ~ 2024년 2월 29일</p> 
                            <p><br></p> 
                            <p class="room_modal_in">※ <b>제외 일자 : 2월 9일</b></p> 
                            <p class="room_modal_in">※ <b>1월 1일, 2월 9일~10일은 내부 정비로 인해 전시 휴관일입니다.</b></p> 
                            <p class="room_modal_in">※ 투숙일에 따라 금액은 변동됩니다.</p>
                            <p class="room_modal_in">※ 본 상품은 성인 2인 1실 기준입니다.</p>
                            <p class="room_modal_in">※ 본 패키지는 Shilla S 멤버십 또는 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p>
                            <p class="room_modal_in">※ 본 상품은 홈페이지 및 모바일 앱을 통한 온라인 예약만 가능합니다.</p>
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <th>객실 타입 및 금액</th>
                                    <td>
                                        <b>[디럭스 룸]</b> 345,800원 ~<br>
                                        <b>[비즈니스 디럭스 룸]</b> 395,850원 ~<br>
                                        <b>[그랜드 코너 디럭스 룸]</b> 445,900원 ~
                                    </td>
                                </tr>
                                <tr>
                                    <th>공통 혜택</th>
                                    <td>
                                        <ul>
                                            <li>서울신라호텔 아트 도록 1부</li>
                                            <li>리움미술관 연간 멤버십 2매</li>
                                            <li>F&B크레딧 5만원</li>
                                            <li>무료 발렛파킹 1회</li>
                                            <li>사우나 무료 입장 (17시 이후)</li>
                                            <li>체련장(Gym), 실내 수영장 혜택</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>서울신라호텔 아트 도록</li>
                                    <li><img src="./images/reservation/FILE42c46bb91e9c8209.jpg" alt="모달왼쪽이미지"></li>
                                    <li>서울신라호텔의 타임리스한 공간 속에서 만나 볼 수 있는 다양한 아트워크들을 도록으로 먼저 만나보세요. <br>
                                        호텔 곳곳에서 실제로 만나는 작품과 작가들의 스토리를 통해 더욱 깊은 영감을 제안합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>리움 미술관 연간 멤버십 2매</li>
                                    <li><img src="./images/reservation/FILE15a28380be36e728.jpg" alt="모달오른쪽이미지"></li>
                                    <li>리움 미술관 멤버십</li>
                                    <li>- 멤버십 기간 : 등록일로부터 1년</li>
                                    <li>- 멤버십 주요 혜택 : 리움/호암 미술관 전시 상시 무료 입장 (멤버십 소유자), 디지털 가이드 무료 대여</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li style="width: 451px;">
                                <ul>
                                    <li>무료 발레파킹</li>
                                    <li><img src="./images/reservation/FILE8ddc7f4830cc429.jpg" alt="모달왼쪽이미지2"></li>
                                    <li>서울신라호텔에서의 완벽한 연말을 위해, 제공하는 무료 발레파킹 혜택</li>
                                </ul>
                            </li>
                            <li style="width: 420px;">
                                <ul>
                                    <li>F&B 크레딧 5만원</li>
                                    <li><img src="./images/reservation/FILE64d0c9f8a9f41ff8.jpg" alt="모달오른쪽이미지2"></li>
                                    <li>서울신라호텔의 식음 업장 (객실 내 미니바 제외) 및 룸 서비스에서 사용할 수 있는 F&B Credit 5만원</li>
                                    <li>* 투숙 중에 한하여 사용 가능합니다.</li>
                                    <li>* 파인 다이닝(팔선, 아리아께, 콘티넨탈, 라연) 및 더 파크뷰 이용 시, <br>
                                        반드시 사전 예약 바랍니다.</li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="modal_room_desc">
                            <li>
                                <ul>
                                    <li>사우나 무료 이용 (17시 이후)</li>
                                    <li><img src="./images/reservation/FILEb017cce2c34a3bae.jpg" alt="모달왼쪽이미지"></li>
                                    <li>편안한 투숙을 위한 사우나 무료 이용 혜택</li>
                                    <li>* 17시 이후 이용 가능합니다.</li>
                                </ul>
                            </li>
                        </ul>
                        <div class="product_warn">
                            <p>※ 피트니스 클럽 이용 안내</p>
                            <p>- 체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일 정기휴무입니다.</p>
                            <p>- 체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</p>
                            <p>- 실내 수영장은 성인 고객 전용 시설로서, 안전을 위해 만 13세 이상인 고객에 한해 입장 가능합니다.<br> 
                            (단, 주말 및 공휴일에는 성인 보호자의 보호 하에 만 13세 미만인 고객이 입장 가능하며, 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시 입장 가능합니다.)
                            </p>
                            <p>- 수영장에서 다이빙은 금지되어 있습니다.</p>
                            <p>- 적정 인원 초과 시 이용을 위해 대기하실 수 있습니다.</p>

                        </div>
                        <div class="useInfo">
                            <p>- 추가 제공 포인트는 회원 등급 점수에 반영되지 않습니다.</p>
                            <br>
                            <p>- 상기 이미지들은 연출된 예로 실제와 다를 수 있습니다.</p>
                            <br>
                            <p>- 본 상품은 성인 2인 1실 기준이며, 요금에는 10% 부가가치세가 부과됩니다.</p>
                            <br>
                            <p>- 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</p>
                            <br>
                            <p>- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.</p>
                            <br>
                            <p>[일반실] 객실 1실 당 성인은 최대 3인까지 투숙 가능하며, 성인과 소인(만 13세 미만)을 합하여 최대 4인까지 투숙 가능합니다.</p>
                            <br>
                            <p>- Check-in은 오후 6시, Check-out은 오전 11시까지입니다.</p>
                            <br>
                            <p>- 패키지에 포함된 혜택 및 선물은 1박당 1회(또는 1개) 제공됩니다.</p>
                            <br>
                            <p>- 주류는 성인 고객에 한해 이용 가능합니다.</p>
                            <br>
                            <p>- 호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, <br>
                            조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</p>
                        </div>
                        <div class="refund_warn">
                            <div class="box_tit">
                                <p>유의사항</p>
                                <img src="./images/reservation/ico_t.png" alt="위화살표">
                            </div>
                            <ul>
                                <li><b>[취소/변경 및 노쇼(No-show) 안내]</b></li>
                                <li>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
                                <li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,</li>
                                <li>- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
                                <li>- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
                            </ul>
                        </div>
                    </div> 
                    <!-- /4 -->
                    <!-- 5 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R000000011K5_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011K7_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000023NT_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011KH_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000023O1_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R00000010AZ9_KR.jpg" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>55인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div> 
                    <!-- /5 -->
                    <!-- 6 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R00000002BPW_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BPY_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001S0BK_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000000CD0Y_KR.gif" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>65인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /6 -->
                    <!-- 7 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R00000002BPW_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BPY_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001S0BK_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000001U0PF_KR.gif" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>65인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                        <br>
                                        <ul>
                                            <li><b>[장애인 편의 시설]</b></li>
                                            <li>객실 내 장애인 우대 시설</li>
                                            <li>화장실 및 욕실 내 장애인 우대 시설(롤인 샤워 포함)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /7 -->
                    <!-- 8 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R0000000ZZIJ_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BPY_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001S0BK_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000001020F_KR.jpg" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>65인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div> 
                    <!-- /8 -->
                    <!-- 9 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R00000002C2B_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BPY_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001S0BK_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000000ZGDY_KR.gif" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>65인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>더 이그제큐티브 라운지에서의<br>
                                                &nbsp;신속한 익스프레스 체크인/체크아웃 서비스</li>
                                            <li>더 이그제큐티브 라운지 이용 혜택(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 조식 서비스 제공(06:30~10:00 / 단, 토, 일요일 및 공휴일은 <br>
                                                &nbsp;&nbsp;&nbsp;06:30~10:30)</li>
                                            <li>&nbsp;&nbsp;&nbsp;* 호텔 사정에 따라 더 파크뷰 조식으로 대체 제공될 수 있으며, <br>
                                                &nbsp;&nbsp;&nbsp;체크인 시 확인 가능합니다.</li>
                                            <li>&nbsp;- 애프터눈 티 서비스 제공(15:30~17:00)</li>
                                            <li>&nbsp;- 해피아워 서비스 제공(18:00~22:00)</li>
                                            <li>&nbsp;- 미팅룸 1시간 무료 이용(투숙 중 1회. 사전 예약 필요)</li>
                                            <li>&nbsp;※ 음료 테이크 아웃 서비스 미제공</li>
                                            <li>&nbsp;※ 더 이그제큐티브 라운지는 평일 주중에 한해(금·토·일 및 공휴일 제외) <br>
                                                &nbsp;투숙객께서 동반하신 외부 고객 2인까지 유료 입장 가능합니다.</li>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /9 -->
                    <!-- 10 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R0000001OR9O_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BPY_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001S0BK_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000000CD70_KR.gif" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>55인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>더 이그제큐티브 라운지에서의<br>
                                                &nbsp;신속한 익스프레스 체크인/체크아웃 서비스</li>
                                            <li>더 이그제큐티브 라운지 이용 혜택(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 조식 서비스 제공(06:30~10:00 / 단, 토, 일요일 및 공휴일은 <br>
                                                &nbsp;&nbsp;&nbsp;06:30~10:30)</li>
                                            <li>&nbsp;&nbsp;&nbsp;* 호텔 사정에 따라 더 파크뷰 조식으로 대체 제공될 수 있으며, <br>
                                                &nbsp;&nbsp;&nbsp;체크인 시 확인 가능합니다.</li>
                                            <li>&nbsp;- 애프터눈 티 서비스 제공(15:30~17:00)</li>
                                            <li>&nbsp;- 해피아워 서비스 제공(18:00~22:00)</li>
                                            <li>&nbsp;- 미팅룸 1시간 무료 이용(투숙 중 1회. 사전 예약 필요)</li>
                                            <li>&nbsp;※ 음료 테이크 아웃 서비스 미제공</li>
                                            <li>&nbsp;※ 더 이그제큐티브 라운지는 평일 주중에 한해(금·토·일 및 공휴일 제외) <br>
                                                &nbsp;투숙객께서 동반하신 외부 고객 2인까지 유료 입장 가능합니다.</li>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /10 -->
                    <!-- 11 -->
                    <div class="room_modal_head">
                        <h2 class="room_modal_tit"></h2>
                        <img src="./images/reservation/popLayerBtnClose.gif" alt="닫기버튼" class="modal_close">
                    </div>
                    <div class="modal_cont cf">
                        <div class="modal_desc">  
                            <ul>
                                <li><img src="images/reservation/R0000001ORG9_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001ORGG_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R0000001ORGL_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R00000002BQ6_KR.jpg" alt="모달헤드이미지"></li>
                                <li><img src="images/reservation/R000000011PD_KR.jpg" alt="모달헤드이미지"></li>
                         
                                <li style="margin-top: 20px;"><img src="images/reservation/R0000000CD7Z_KR.gif" alt="모달헤드이미지"></li>
                            </ul>
                        </div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>객실이용</th>
                                    <td>
                                        <ul>
                                            <li>65인치 스마트 TV(위성 TV 48개 채널)</li>
                                            <li>50~100Mbps 초고속 유·무선(wifi) 인터넷 무료</li>
                                            <li>220V, 110V 전압 사용 가능</li>
                                            <li>커피·차 티백 무료 제공</li>
                                            <li>엑스트라 베드 1개 추가 60,000원/1박</li>
                                            <li>베이비 크립(무료)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>부대시설</th>
                                    <td>
                                        <ul>
                                            <li>더 이그제큐티브 라운지에서의<br>
                                                &nbsp;신속한 익스프레스 체크인/체크아웃 서비스</li>
                                            <li>더 이그제큐티브 라운지 이용 혜택(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 조식 서비스 제공(06:30~10:00 / 단, 토, 일요일 및 공휴일은 <br>
                                                &nbsp;&nbsp;&nbsp;06:30~10:30)</li>
                                            <li>&nbsp;&nbsp;&nbsp;* 호텔 사정에 따라 더 파크뷰 조식으로 대체 제공될 수 있으며, <br>
                                                &nbsp;&nbsp;&nbsp;체크인 시 확인 가능합니다.</li>
                                            <li>&nbsp;- 애프터눈 티 서비스 제공(15:30~17:00)</li>
                                            <li>&nbsp;- 해피아워 서비스 제공(18:00~22:00)</li>
                                            <li>&nbsp;- 미팅룸 1시간 무료 이용(투숙 중 1회. 사전 예약 필요)</li>
                                            <li>&nbsp;※ 음료 테이크 아웃 서비스 미제공</li>
                                            <li>&nbsp;※ 더 이그제큐티브 라운지는 평일 주중에 한해(금·토·일 및 공휴일 제외) <br>
                                                &nbsp;투숙객께서 동반하신 외부 고객 2인까지 유료 입장 가능합니다.</li>
                                            <li>피트니스 클럽 이용 안내</li>
                                            <li>&nbsp;- 체육관(Gym) 무료 이용(만 16세 이상 입장 가능)</li>
                                            <li>&nbsp;- 실내 수영장 무료 이용(만 13세 이상 입장 가능) <br>
                                                &nbsp;&nbsp;&nbsp;(단, 주말 및 공휴일에는 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;만 13세 미만인 고객이 이용 가능하며, <br>
                                                &nbsp;&nbsp;&nbsp;신장 140cm 미만인 고객은 성인 보호자의 보호 하에 <br>
                                                &nbsp;&nbsp;&nbsp;구명조끼 착용 시 이용 가능)</li>
                                            <li>&nbsp;- 사우나 이용 시 유료(만 13세 이상 입장 가능)</li>
                                            <li>&nbsp;- 피트니스 클럽은 매월 세 번째 수요일 정기휴일입니다.</li>
                                            <li>투숙 기간 내 무료 주차 가능</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>룸서비스</th>
                                    <td>
                                        <ul>
                                            <li>객실에서 즐기실 수 있는 다양한 룸서비스 메뉴가 준비되어 있습니다.</li>
                                            <li>식사 및 음료 : 24시간 서비스</li>
                                            <li>중식, 일식 : 점심 12:00~13:30, 저녁 17:30~20:30</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="useInfo2">
                            <h2>Hotel Info.</h2>
                            <br>
                            <ul>
                                <li><b>조식 이용 안내</b></li>
                                <li>&nbsp;- 더 파크뷰 06:00~10:00(주중/주말/공휴일)</li>
                            </ul>
                            <br>
                            <ul>
                                <li><b>체크인/체크아웃 시간</b></li>
                                <li>&nbsp;- 체크인 : 오후 2시 이후</li>
                                <li>&nbsp;- 체크아웃 : 오전 11시까지</li>
                            </ul>
                            <br>    
                            <ul>
                                <li><b>취소/변경 및 노쇼(No-show) 안내</b></li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시까지는 위약금 없음</li>
                                <li>&nbsp;- 숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시</li>
                                <li>&nbsp;&nbsp;&nbsp;성수기(5월~10월, 12월 24일~31일) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 80%가 위약금으로 부과</li>
                                <li>&nbsp;&nbsp;&nbsp;비수기(성수기 외 기간) :</li>
                                <li>&nbsp;&nbsp;&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /11 -->
                </div>
                <!-- 객실 모달 창 끝-->
    
               </div>
                <div class="toggle_wrap">
                    <div class="scroll_toggle_position ">
                        <div>
                            <button class="btn_detail"></button>
                            <div class="rsv_detail">
                                <div class="detail_wrap w1200">
                                    <ul class="detail_info">
                                        <li>
                                            <h3>예약정보</h3>
                                        </li>
                                        <li class="detail_img">
                                            <img src="./images/reservation/FILEafd876ae8bd11949.jpg" alt="호텔이미지">
                                            <span>서울신라호텔</span>
                                        </li>
                                        <li>
                                            <h4>체크인 - 체크아웃</h4>
                                        </li>
                                        <li>
                                            <p class="datail_checkin_days">2024.01.29 ~ 2024.01.30(1박)</p>
                                        </li>
                                        <li>
                                            <h4>객실타입</h4>
                                        </li>
                                        <li>
                                            <p class="room_type">[Standard] Deluxe, Double</p>
                                        </li>
                                        <li>
                                            <h4>투숙인원</h4>
                                        </li>
                                        <li>
                                            <p class="guest_count">성인 2, 어린이 0</p>
                                        </li>
                                    </ul>
                                    <div class="detail_price">
                                        <div class="detail_title_wrap">
                                            <h3 class="stit">요금상세</h3>
                                            <img src="./images/reservation/btn_rsvclear.png" alt="예약초기화">
                                        </div>
                                        <div>
                                            <div class="detail_room">
                                                <div class="detail_room_name">객실 1</div>
                                                <div class="detail_guest">
                                                    <p> 
                                                        ( 성인 2 / 어린이 0 )
                                                    </p>
                                                </div>
                                                <div class="detail_sum_price">990,000&nbsp;원</div>
                                            </div>
                                        </div>
                                        <div class="detail_payment">
                                            <ul>
                                                <li>
                                                    <ul>
                                                        <li class="flex_jc">
                                                            <div class="detail_room_payment_name em">객실 요금</div>
                                                            <div class="detail_room_payment_price em">990,000&nbsp;원</div>
                                                        </li>
                                                        <li class="flex_jc">
                                                            <div class="detail_room_date">2023.12.24(일)</div>
                                                            <div class="detail_room_price">900,000&nbsp;원</div>
                                                        </li>
                                                    </ul>
                                                    
                                                </li>
                                                <li>
                                                    <ul class="flex_jc">
                                                        <li class="detail_obt em">옵션 사항</li>
                                                        <li class="detail_obt_num em">0&nbsp;원</li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul class="flex_jc">
                                                        <li class="detail_value_tax em">부가가치세</li>
                                                        <li class="detail_value_tax_num em">90,000&nbsp;원</li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <div class="var_txt">부가가치세 10%가 포함된 금액입니다.</div>
                                        </div>
                                    </div>
            
                                </div>
                            </div>
                            <div class="w1200">
                                
                                <div class="toggle_panel">
                                    <div class="btn_prev">
                                        <a href="#"></a>
                                    </div>
                                    <div class="rsv_box">
                                        <div class="price_sum">
                                            <img src="./images/reservation/tit_est_totalprice4.png" alt="합계표시">
                                        </div>
                                        <div>
                                            <div class="room_price">
                                                990,000&nbsp;원
                                            </div>
                                            <div class="btn_login_rsv">
                                                <img src="./images/reservation/select_btn.gif" alt="회원예약">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
        
                        
                    
                    </div>
                </div>
            </div>
        </main>
        <div class="not_searched w1200">예약을 원하시는 호텔, 날짜, 인원을 선택해주세요.</div>
        
        <!-- Footer -->
        <footer>
			<jsp:include page="/include/footer.jsp" />
        </footer>
        <!-- Footer -->

        <script src="./js/reservation1.js"></script>
        <script src="./js/reservation.js"></script>
</body>
</html>

