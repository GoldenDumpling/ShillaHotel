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
    <link rel="stylesheet" href="./css/roomSlide.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/main.css">
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
        <main class="main">
           <!-- Box Slider -->
           <section class="main_slide">
            <ul id="main_gallery_wrap">
            <!-- A-1. 슬라이드 될 각각 내용들 -->
                <li>
                    <img src="./images/main/mainslide.png" alt="슬라이드이미지01">
                    <div class="main_slide_txt w1200">
                        <h2>서울신라호텔</h2>
                        <p>Members Only</p>
                        <h3>REWARDS LOUNGE 23</h3>
                        <div>
                            <div class="main_txt">
                                <span></span>
                                <p>
                                    23층 23시가 되면 열리는 또 하나의 공간, Lounge 23으로 초대합니다.
                                </p>
                            </div>
                                <button><a href="./ready.jsp">패키지 바로가기 &rarr;</a></button>
                        </div>
                    </div>
                </li>
            <!-- A-2. 슬라이드 될 각각 내용들 -->
                <li>
                    <img src="./images/main/slide2.jpg" alt="슬라이드이미지02">
                    <div class="main_slide_txt w1200">
                        <h2>서울신라호텔</h2>
                        <p>Members Only</p>
                        <h3>REWARDS LOUNGE 23</h3>
                        <div>
                            <div class="main_txt">
                                <span></span>
                                <p>
                                    투숙객만을 위한 다채로운 액티비티와 함께 즐기는 여행에 초대합니다.
                                </p>
                            </div>
                            <button>
                                <a href="./ready.jsp">패키지 바로가기 &rarr;
                                </a>
                            </button>
                        </div>
                    </div>
                </li>
            <!-- A-3. 슬라이드 될 각각 내용들 -->
                <li>
                    <img src="./images/main/slide3.jpg" alt="슬라이드이미지03">
                    <div class="main_slide_txt w1200">
                        <h2>서울신라호텔</h2>
                        <p>Members Only</p>
                        <h3>REWARDS LOUNGE 23</h3>
                        <div>
                            <div class="main_txt">
                                <span></span>
                                <p>
                                   로비라운지에서 쁘띠 케이크와 함께 즐기는 달콤한 휴식.
                                </p>
                            </div>
                            <button>
                                <a href="./ready.jsp">패키지 바로가기 &rarr;
                                </a>
                            </button>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="bx_slide">
                <img src="./images/main/icoSlideNav_l.png" alt="왼쪽슬라이드">
                <img src="./images/main/icoSlideNav_r.png" alt="오른쪽슬라이드">
            </div>
        </section>
        <!-- /Box Slider -->

        <!-- Special Offer -->
        <section class="main_special_offer w1200 cf">
            <h2 class="w1200">
                <span></span>스페셜 오퍼<span></span>
            </h2>
            <div class="main_offer_left">
                <h3 class="offer_tab guest_room_offer"><a href="#">객실 패키지</a></h3>
                <img src="./images/main/specialoffer.png" alt="스페셜오퍼 이미지01" class="main_special_img">
                <img src="./images/main/speacial2.jpg" alt="스페셜오퍼 이미지02">
                <img src="./images/main/special3.jpg" alt="스페셜오퍼 이미지03">
                <img src="./images/main/special4.jpg" alt="스페셜오퍼 이미지04">
            </div>
            <div class="main_offer_right">
                <h3 class="offer_tab event_offer"><a href="#">이벤트</a></h3>
                <ul class="main_offer_top">
                    <li>
                        <a href="./promotion.jsp">
                            <h4>객실 패키지</h4>
                            <span class="main_offer_line"></span>
                            <h5>LOUNGE MOMENT</h5>
                            <p>소중한 사람들과 반짝이는 추억을 선사합니다.</p>
                            <p>2023.11.10 ~ 2023.12.31</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                    <li>
                        <a href="./promotion.jsp">
                            <h4>객실 패키지</h4>
                            <span class="main_offer_line"></span>
                            <h5>A Delightful Winter Royal Tea</h5>
                            <p>
                                크리스마스 케이크와 디저트, 샴페인과<br>
                                궁합을 이루는 세이버리까지 즐겨보세요.
                            </p>
                            <p>2023.12.01 ~ 2023.12.25</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                </ul>
                <ul class="main_offer_bottom">
                    <li>
                        <a href="./promotion.jsp">
                            <h4>객실 패키지</h4>
                            <span class="main_offer_line"></span>
                            <h5>LOUNGE SPECIAL TWO NOIGHTS</h5>
                            <p>더 이그제큐티브 라운지의 품격있는<br> 다이닝 서비스를 즐겨보세요.</p>
                            <p>2023.11.10 ~ 2024.01.31</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                    <li>
                        <a href="./promotion.jsp">
                            <h4>객실패키지</h4>
                            <span class="main_offer_line"></span>
                            <h5>WINTER STROY AT THE PARKVIEW</h5>
                            <p>
                                더 파크에서 겨울 캠핑 무드를<br>
                                느껴보시기 바랍니다.
                            </p>
                            <p>2024.01.02 ~ 2023.02.16</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!-- /Special Offer -->

        <!-- Event -->
        <section class="main_special_offer2 w1200 cf">
            <h2 class="w1200">
                <span></span>스페셜 오퍼<span></span>
            </h2>
            <div class="main_offer_left2">
                <h3 class="offer_tab guest_room_offer"><a href="#">객실 패키지</a></h3>
                <img src="./images/main/special2_1.jpg" alt="스페셜오퍼 이미지01" class="main_special_img">
                <img src="./images/main/special2_2.jpg" alt="스페셜오퍼 이미지02">
                <img src="./images/main/special2_3.jpg" alt="스페셜오퍼 이미지03">
                <img src="./images/main/special2_4.jpg" alt="스페셜오퍼 이미지04">
            </div>
            <div class="main_offer_right2">
                <h3 class="offer_tab event_offer"><a href="#">이벤트</a></h3>
                <ul class="main_offer_top2">
                    <li>
                        <a href="./promotion.jsp">
                            <h4>이벤트</h4>
                            <span class="main_offer_line"></span>
                            <h5>HAPPY HOUR</h5>
                            <p>
                                더욱 새로워진 해피아워를<br>
                                합리적인 가격으로 만나보세요.
                            </p>
                            <p>2023.12.10 ~ 2024.01.31.</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                    <li>
                        <a href="./promotion.jsp">
                            <h4>이벤트</h4>
                            <span class="main_offer_line"></span>
                            <h5>Shilla X Kakao Gift</h5>
                            <p>
                                신라호텔의 플라워 브랜드<br>
                                지스텀이 카카오에 입점했습니다.
                            </p>
                            <p>2023.12.01 ~ 2024.12.31</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                </ul>
                <ul class="main_offer_bottom2">
                    <li>
                        <a href="./promotion.jsp">
                            <h4>이벤트</h4>
                            <span class="main_offer_line"></span>
                            <h5>SANTA BEAR</h5>
                            <p>
                                한정판 크리스마스 산타베어를<br> 
                                웹 회원 할인가로 만나보세요.
                            </p>
                            <p>2023.12.20 ~ 2023.12.31.</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                    <li>
                        <a href="./promotion.jsp">
                            <h4>이벤트</h4>
                            <span class="main_offer_line"></span>
                            <h5>CHRISTMAS CAKE</h5>
                            <p>
                                블랑제리 파티시에가 준비한 크리스마스<br>
                                케이크와 함게 행복한 시간을 보내세요.
                            </p>
                            <p>2024.01.02 ~ 2023.02.16</p>
                            <button><a href="./promotion.jsp">더보기</a></button>
                            <div class="main_offer_decoline">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <span></span>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!-- /Event -->


            <!-- Room -->
            <section class="main_room">
                <h2 class="w1200">
                    <span></span>객실<span></span>
                </h2>
                <article class="room_gnb_menu">
                    <ul>
                        <li>
                            <a href="#" onclick="changeRoom(0)">스탠다드</a>
                            <div class="room_line"></div>                        
                        </li>
                        <li>
                            <a href="#" onclick="changeRoom(1)">디럭스</a>
                            <div class="room_line"></div>
                        </li>
                        <li>
                            <a href="#" onclick="changeRoom(2)">이그제큐티브 디럭스</a>
                            <div class="room_line"></div>
                        </li>
                        <li>
                            <a href="#" onclick="changeRoom(3)">수페리어 스위트</a>
                            <div class="room_line"></div>
                        </li>
                        <li class="no_pr" onclick="changeRoom(4)"><a href="#">
                            프리미어 스위트</a>
                            <div class="room_line"></div>
                        </li>
                    </ul>
                </article>
                <div class="room_slide w1200">
                    <article class="room_contents">
                        <img src="./images/main/delux1.png" alt="600x600" class="main_img">
                        <section class="right_contents">
                            <img src="./images/main/delux2.png" alt="600x300" class="sub_img1">
                            <div class="right_contents_bottom">
                                <p class="room_main_text">
                                    <strong>스탠다드</strong><br>
                                    <span class="contents_line"></span><br>
                                    모던한 콘셉트의 아늑한 공간 안에 편안한<br>
                                    휴식을 선사하는 침구와 업무를 위한 책상을 갖추어<br>
                                    효율적인 구성이 돋보이는 객실입니다.<br>
                                    일상에서 벗어난 특별한 휴식을 경험해보세요.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                                <img src="./images/main/delux3.png" alt="300x300" class="sub_img2">
                            </div>
                       </section>
                    </article>

                    <article class="room_contents">
                        <img src="./images/room_grand/standard.png" alt="600x600" class="main_img">
                        <section class="right_contents">
                            <img src="./images/room_grand/standard2.png" alt="600x300" class="sub_img1">
                            <div class="right_contents_bottom">
                                <p class="room_main_text">
                                    <strong>디럭스</strong><br>
                                    <span class="contents_line"></span><br>
                                    신라브랜드만의 시그니처 객실입니다.<br>
                                    요트 콘셉트로 구성한 프라이빗 바와<br>
                                    세계적인 수준의 침구류와 함께<br>
                                    생애최고의 휴식을 경험해보시기 바랍니다.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                                <img src="./images/room_grand/standard3.png" alt="300x300" class="sub_img2">
                            </div>
                       </section>
                    </article>
                    
                    <article class="room_contents">
                        <img src="./images/room_ex/ex1.jpg" alt="600x600" class="main_img">
                        <section class="right_contents">
                            <img src="./images/room_ex/ex2.jpg" alt="600x300" class="sub_img1">
                            <div class="right_contents_bottom">
                                <p class="room_main_text">
                                    <strong>코리안 스위트</strong><br>
                                    <span class="contents_line"></span><br>
                                    한국 전통의 미를 경험할 수 있습니다.<br>
                                    서울신라호텔 유일의 온돌 객실입니다.<br>
                                    한국 고유의 온돌 문화와 전통의 미(美)를 경험합니다<br>
                                    가족 고객분들께 권해드립니다.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                                <img src="./images/room_ex/ex3.png" alt="300x300" class="sub_img2">
                            </div>
                       </section>
                    </article>

                    <article class="room_contents">
                        <img src="./images/room_suite/super1.png" alt="600x600" class="main_img">
                        <section class="right_contents">
                            <img src="./images/room_suite/super2.png" alt="600x300" class="sub_img1">
                            <div class="right_contents_bottom">
                                <p class="room_main_text">
                                    <strong>수페리어 스위트</strong><br>
                                    <span class="contents_line"></span><br>
                                    피터 리미디오스가 디자인한.<br>
                                    '시대를 아우르는 모던함'을 만나보십시오<br>
                                    세계적인 수준의 침구류와 함께<br>
                                    생애최고의 휴식을 경험해보시기 바랍니다.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                                <img src="./images/room_suite/super3.png" alt="300x300" class="sub_img2">
                            </div>
                       </section>
                    </article>

                    <article class="room_contents">
                        <img src="./images/main/room2.png" alt="600x600" class="main_img">
                        <section class="right_contents">
                            <img src="./images/main/room1.png" alt="600x300" class="sub_img1">
                            <div class="right_contents_bottom">
                                <p class="room_main_text">
                                    <strong>프레지덴셜 스위트</strong><br>
                                    <span class="contents_line"></span><br>
                                    서울신라호텔 최고의 객실<br>
                                    국빈과 VIP 고객만을 위한 전용객실입니다.<br>
                                    고풍스러운 프렌치 디장인의 North Wing 객실과<br>
                                    모던한 스타일의 South Wing 객실이 있습니다<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                                <img src="./images/main/room3.png" alt="300x300" class="sub_img2">
                            </div>
                       </section>
                    </article>
                </div>
        </section>
            <!-- /Room -->
            <!-- Dining -->
            <section class="main_dining">
                <h2 class="w1200">
                    <span></span>다이닝<span></span>
                </h2>
                <article class="dining_gnb_menu">
                    <ul class="dining_tabs">
                        <li><a class="dining_tab dining_1 active" data-idx="1" href="#" onclick="changeDining(0)">라연</a></li>
                        <li><a class="dining_tab dining_2" data-idx="2" href="#" onclick="changeDining(1)">콘티넨탈</a></li>
                        <li><a class="dining_tab dining_3" data-idx="3" href="#" onclick="changeDining(2)">아리아께</a></li>
                        <li><a class="dining_tab dining_4" data-idx="4" href="#" onclick="changeDining(3)">팔선</a></li>
                        <li><a class="dining_tab dining_5" data-idx="5" href="#" onclick="changeDining(4)">더파크뷰</a></li>
                        <li class="no_pr"><a class="dining_tab dining_6" data-idx="6" href="#" onclick="changeDining(5)">패스트리 부티크</a></li>
                    </ul>
                </article>
                <div class="dining_slide_box">
                    <article class="dining_contents dining_contents1">
                       <section class="dining_left_contents dining_left1">
                            <img src="./images/main/dining1_1.jpg" alt="600x300" class="sub_img1">
                            <div class="left_contents_bottom">
                                <img src="./images/main/dining1_2.jpg" alt="300x300" class="sub_img2">
                                <p class="dining_main_text">
                                    <strong>라연</strong><br>
                                    <span class="contents_line"></span><br>
                                    전통과 품격의 한식 레스토랑<br>
                                    전통의 맛을 세심하고 세련되게 표현한 한식당<br>
                                    정성으로 차려낸 라연만의 한식 정찬을 선보입니다.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                </p>
                            </div>
                       </section>
                       <img src="./images/main/dining1_3.jpg" alt="600x600" class="main_img">
                    </article>
                    <article class="dining_contents dining_contents2">
                        <section class="dining_left_contents dining_left2">
                             <img src="./images/main/dining2_1.jpg" alt="600x300" class="sub_img1">
                             <div class="left_contents_bottom">
                                 <img src="./images/main/dining2_2.jpg" alt="300x300" class="sub_img2">
                                 <p class="dining_main_text">
                                    <strong>콘티넨탈</strong><br>
                                    <span class="contents_line"></span><br>
                                    최상의 프렌치 정찬<br>
                                    아름다운 서울의 전경과 함께
                                    <br>프렌치 정찬을 즐길 수 있는 레스토랑입니다.<br> 
                                    <button><a href="./ready.jsp">더보기</a></button>
                                 </p>
                             </div>
                        </section>
                        <img src="./images/main/dining2_3.jpg" alt="600x600" class="main_img">
                     </article>
                     <article class="dining_contents dining_contents3">
                        <section class="dining_left_contents dining_left3">
                             <img src="./images/main/dining3_1.jpg" alt="600x300" class="sub_img1">
                             <div class="left_contents_bottom">
                                 <img src="./images/main/dining3_2.jpg" alt="300x300" class="sub_img2">
                                 <p class="dining_main_text">
                                    <strong>아리아께</strong><br>
                                    <span class="contents_line"></span><br>
                                    五感을 만족시키는 정통 일식당<br>
                                    현대적이고 모던한 감각의 레스토랑으로 <br>
                                    정통 일식의 진수를 선보입니다.<br> 
                                    <button><a href="./ready.jsp">더보기</a></button>
                                 </p>
                             </div>
                        </section>
                        <img src="./images/main/dining3_3.jpg" alt="600x600" class="main_img">
                     </article>
                     <article class="dining_contents dining_contents4">
                        <section class="dining_left_contents dining_left4">
                             <img src="./images/main/dining4_1.jpg" alt="600x300" class="sub_img1">
                             <div class="left_contents_bottom">
                                 <img src="./images/main/dining4_2.jpg" alt="300x300" class="sub_img2">
                                 <p class="dining_main_text">
                                    <strong>팔선</strong><br>
                                    <span class="contents_line"></span><br>
                                    중식 명가의 품격<br>
                                    편안하고 품격있는 분위기를 연출합니다.<br> 
                                    <button><a href="./ready.jsp">더보기</a></button>
                                 </p>
                             </div>
                        </section>
                        <img src="./images/main/dining4_3.jpg" alt="600x600" class="main_img">
                     </article>
                     <article class="dining_contents dining_contents5">
                        <section class="dining_left_contents dining_left5">
                             <img src="./images/main/dining5_1.jpg" alt="600x300" class="sub_img1">
                             <div class="left_contents_bottom">
                                 <img src="./images/main/dining5_2.jpg" alt="300x300" class="sub_img2">
                                 <p class="dining_main_text">
                                    <strong>더파크뷰</strong><br>
                                    <span class="contents_line"></span><br>
                                    신개념 고품격 사교 공간<br>
                                    고객의 라이프스타일에 따라 <br>
                                    다양하게 이용가능한 라운지&amp;바 입니다.<br>
                                    <button><a href="./ready.jsp">더보기</a></button>
                                 </p>
                             </div>
                        </section>
                        <img src="./images/main/dining5_3.jpg" alt="600x600" class="main_img">
                     </article>
                     <article class="dining_contents dining_contents6">
                        <section class="dining_left_contents dining_left6">
                             <img src="./images/main/dining6_1.jpg" alt="600x300" class="sub_img1">
                             <div class="left_contents_bottom">
                                 <img src="./images/main/dining6_2.jpg" alt="300x300" class="sub_img2">
                                 <p class="dining_main_text">
                                    <strong>패스트리 부티크</strong><br>
                                    <span class="contents_line"></span><br>
                                    세계 최고 수준의 이그제큐티브 라운지<br>
                                    고급스러운 펜트하우스 응접실을 콘셉트로한 <br>
                                    신라만의 품격이 묻어나는 투숙객 전용 공간입니다.<br> 
                                    <button><a href="./ready.jsp">더보기</a></button>
                                 </p>
                             </div>
                        </section>
                        <img src="./images/main/dining6_3.jpg" alt="600x600" class="main_img">
                     </article>
                </div>
        </section>
            <!-- /Dining -->
            <!-- News_Rewards -->
            <section class="main_news_rewards">
                <div class="w1200">
                    <div class="main_news_left">
                        <div class="main_news_content">
                            <h2>온라인 뉴스레터</h2>
                            <span></span>
                            <p>
                                뉴스레터를 신청하시면 매월 호텔 신라에서 진행되는 <br>
                                다양한 이벤트 & 프로모션을 가장 먼저 만나볼 수 있습니다.
                            </p>
                            <button><a href="./ready.jsp">구독 신청하기</a></button>
                        </div>
                    </div>
                    <div class="main_news_right">
                        <div class="main_news_content">
                            <h2>신라멤버십</h2>
                            <span></span>
                            <p>
                                신라멤버십은 포인트 혜택 및 특전을 제공하는 통합멤버십 서비스입니다.<br>
                                지금 가입하시고 회원만을 위한 특별한 서비스와 다양한 혜택을 받아보세요.
                            </p>
                            <button><a href="./ready.jsp">자세히 보기</a></button>
                        </div>
                    </div>
                </div>
            </section>
            <!-- /News_Rewards -->
        </main>
        <!-- /Contents -->
        <aside>
            <div><a href="#" class="top">TOP</a></div>
        </aside>
        <!-- Footer -->
        <footer>
            <jsp:include page="/include/footer.jsp" />
        </footer>
        <!-- /Footer -->
    </div>
    <script src="./js/main_slide.js"></script>
    <script src="./js/roomSlide.js"></script>
    <script src="./js/dining_slide.js"></script>
    <script src="./js/jquery.bxslider.js"></script>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <script src="./js/scroll.js"></script>


    
</body>
</html>

