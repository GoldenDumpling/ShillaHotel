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
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/reservation2.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- prefix js파일 -->
    <script src="./js/prefixfree.min.js"></script>
    <!-- 박스 슬라이더 플러그인 파일 -->
    <script>
        $(function(){
            $('header').load('./include/header.jsp');
            $('footer').load("./include/footer.jsp");
        });
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
            <div class="obt_choose w1200">
                <div class="step2">
                    <button><a href="./reservation1.jsp"><img src="./images/reservation/check.png" alt="이전"></a></button>
                    <img src="./images/reservation/rsv_step2_on.png" alt="">
                </div>
                <ul>
                    <li class="obt_room">
                        <div class="box_tit">
                            <p>객실</p>
                            <img src="images/reservation/ico_t.png" alt="위화살표">
                        </div>
                        <div class="box_con">
                            <div class="colL">
                                <div class="cont_obt">
                                    <h3>옵션 사항</h3>
                                    <div class="bed_obt">
                                        <p>엑스트라 베드 / 60,000 원</p>
                                        <div class="numb_opt">
                                            <button class="bed_mi">-</button>
                                            <span class="room_cnt">0</span>
                                            <button class="bed_pl">+</button>
                                        </div>
                                    </div>
                                    <ul class="carbon_c">
                                        <li>위 요금에서 부가가치세 10%가 부과됩니다.</li>
                                        <li>위 조식 요금은 성인 투숙객에 한하여 할인이 적용된 금액이며 체크인 이후 조식 추가 요청 시에는 정상요금 80,000원으로 이용 가능합니다.</li>
                                        <li>성인 : 만 13세 이상 / 어린이 : 37개월 이상 ~ 만 12세 이하</li>
                                        <li>조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.</li>
                                        <li>37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</li>
                                    </ul>
                                </div>
                                <div class="cont_checkin">
                                    <div>
                                        <h3>체크인 예정 시간</h3>
                                        <div>
                                            <label class="custom-checkbox">
                                                <input type="checkbox" id="apply">
                                                <span class="checkmark"></span>
                                            </label>
                                            <label for="apply">신청하기</label>
                                        </div>
                                    </div>
                                    <select name="time" id="time-select">
                                        <option>선택</option>
                                        <option value="14:00">14:00</option>
                                        <option value="15:00">15:00</option>
                                        <option value="16:00">16:00</option>
                                        <option value="17:00">17:00</option>
                                        <option value="18:00">18:00</option>
                                        <option value="19:00">19:00</option>
                                        <option value="20:00">20:00</option>
                                        <option value="21:00">21:00</option>
                                        <option value="22:00">22:00</option>
                                        <option value="23:00">23:00</option>
                                        <option value="24:00">24:00</option>
                                    </select>
                                    <ul class="carbon_c">
                                        <li>선택 가능한 시간대 외에 체크인하실 경우 별도의 요금이 추가될 수 있으며, 관련 문의사항은 객실예약(02-2230-3310)으로 연락해 주시기 바랍니다.</li>
                                        <li><strong>18시 Check-in 상품 이용 시에는 체크인 예정 시간 선택과 상관 없이 18시부터 체크인 가능합니다.</strong></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="colR">
                                <div class="cont_request">
                                    <h3>추가 요청사항</h3>
                                    <textarea name="" id="additional_requests" rows="7" placeholder="공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오."></textarea>
                                    <ul class="carbon_c">
                                        <li>특수문자 또는 이모티콘 사용이 제한되오니, 텍스트만 입력해주시기 바랍니다.</li>
                                        <li>전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- 유의사항 -->
                    
                    <li class="obt_alert">
                        <div class="box_tit">
                            <p>유의사항</p>
                            <img src="./images/reservation/ico_t.png" alt="위화살표">
                        </div>
                        <div class="box_con">
                            <div class="colL">
                                <div class="cont">
                                    <h3>호텔 이용안내</h3>
                                    <ul class="li_circle">
                                        <li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.<br>
                                            추가 인원에 대한 기본 요금은 성인 60,500원, 어린이 36,300원이며, 객실 타입 및 패키지 혜택에 따라 상이합니다.<br>
                                            (성인 기준 : 만 13세 이상, 어린이 기준 : 37개월 이상 ~ 만 12세 이하)<br></li>
                                        <li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, 유아(37개월 미만) 동반 여부는 체크인 시 프런트 데스크 직원에게 알려 주셔야 무료로 이용 가능합니다.<br></li>
                                        <li>체크인은 오후 2시 이후, 체크아웃은 오전 11시까지입니다.<br>
                                            오후 2시 이전 Early Check-in 또는 오전 11시 이후 Late Check-out 하실 경우 추가 요금이 부과될 수 있습니다.<br></li>
                                        <li>체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해 주시기 바랍니다.</li>
                                        <li>본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</li>
                                        <li>어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개 및 아동용 배스 로브와 슬리퍼)은 객실예약과를 통해 사전 요청 가능하며, 이용 상황에 따라 조기 마감될 수 있습니다.
                                            (단, 유모차는 현장에서만 대여 가능합니다.)</li>
                                        <li>대출 요청이 완료된 영유아 용품, 엑스트라 베드는 체크인 당일 18시까지 객실에 준비해 드립니다.</li>
                                        <li>호텔 내 객실과 공공장소는 모두 금연 장소입니다. 흡연은 금지되며 위반 시 페널티가 부과됩니다.</li>
                                        <li>관내 레스토랑은 사전 예약으로 편리하게 이용하실 수 있습니다.</li>
                                    </ul>
                                </div>
                                <div class="cont">
                                </div>

                            </div>
                            <div class="colR">
                                <div class="request">
                                    <h3>부대시설 이용안내</h3>
                                    <ul class="li_circle">
                                        <li>체련장(Gym),  및 수영장, 실내 사우나(유료 시설)는 매월 3번째 수요일 정기 휴무입니다.</li>
                                        <li>체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>
                                        <li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및 공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li>
                                        <li>야외 수영장인 어번 아일랜드는 유료 시설로서 입장 혜택이 포함된 상품 외에는 이용 시 입장료가 추가로 부과되며 사전 예약은 불가합니다. 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수 있습니다.</li>
                                        <li>2023년 어번 아일랜드(야외 수영장) 운영 기간 : 3월 11일 ~ 11월 26일</li>
                                        <li>실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은 성인 보호자의 보호 하에 구명조끼 착용 시에만 이용 가능합니다.</li>
                                        <li>실내 및 야외 수영장에서 다이빙은 금지되어 있습니다.</li>
                                        <li>성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의 안내를 받으시기 바랍니다.</li>
                                        <li>호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, 조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- /유의사항 -->
                    <!-- 환불규정 -->
                    <li class="obt_refund">
                    
                        <div class="box_tit">
                            <p>취소 및 환불 규정</p>
                            <img src="./images/reservation/ico_t.png" alt="위화살표">
                        </div>
                        <div class="box_con">
                            <div class="cancle_con">
                                <h3>[취소/변경 및 노쇼(No-show) 안내]</h3>
                                <p>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.<br>
                                    숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br>
                                    - 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
                                    - 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</p>
                            </div>
                        </div>                        
                    </li>
                    <!-- /환불규정 -->
                    <!-- 리워즈 -->
                    <li class="reward_member">
                        <p class="point_cont">지금 바로, 신라리워즈 가입 후 포인트 적립과 할인 혜택을 받으세요.<br>
                            본 상품을 회원 가입 후 이용하시면 <span>11,400P</span>가 적립됩니다.</p>
                        <a href="#"><img src="./images/reservation/btnRewardsMem.gif" alt=""></a>
                    </li>
                    <ul class="notice carbon_c">
                        <li>상기 포인트는 적립 예상 포인트이며 체크아웃 이후 [마이페이지]에서 확인 가능합니다.</li>
                        <li>일부 프로모션 예약은 신라리워즈 포인트 적립 대상에서 제외될 수 있습니다.</li>
                    </ul>
                    <!-- /리워즈 -->
                </ul>
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
                                        <a href="./reservation1.jsp" class="rsv_rst"><img src="./images/reservation/btn_rsvclear.png" alt="예약초기화"></a>
                                    </div>
                                    <div>
                                        <div class="detail_room">
                                            <div class="detail_room_name">객실 1</div>
                                            <div class="detail_guest">
                                                <p class="total_guest"> 
                                                    ( 성인 2 / 어린이 0 )
                                                </p>
                                            </div>
                                            <div class="detail_sum_price">550,000&nbsp;원</div>
                                        </div>
                                    </div>
                                    <div class="detail_payment">
                                        <ul>
                                            <li>
                                                <ul class="detail_room_price_sec">
                                                    <li class="flex_jc">
                                                        <div class="detail_room_payment_name em">객실 요금</div>
                                                        <div class="detail_room_payment_price em">500,000&nbsp;원</div>
                                                    </li>
                                                    <li class='flex_jc price_per_day'>
                                                        <div class="detail_room_date">2023.12.24(일)</div>
                                                        <div class="detail_room_price">500,000&nbsp;원</div>
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
                                                    <li class="detail_value_tax_num em">50,000&nbsp;원</li>
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
                                    <a href="#"><img src="./images/reservation/btn_est_prev.gif" alt="이전표시"></a>
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
                                            <a href="./login.jsp"><img src="./images/reservation/btn_est_nonmember.gif" alt="비회원예약"></a>
                                            <a href="./login.jsp"><img src="./images/reservation//btn_est_member.gif" alt="회원예약"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
    
                    
                
                </div>
            </div>
            <div class="modal_bg"></div>
        </main>
        <!-- /Contents -->

        <!-- Footer -->
        <footer>
            <jsp:include page="/include/footer.jsp" />
        </footer>
        <!-- /Footer -->
    </div>
<!-- 객실 -->
    <script>
        // 플러스,마이너스 버튼
        $('.bed_pl').click(function(){
            $('.bed_mi').css({color:"#000",backgroundColor:'#fff'});
            $(this).css({color:"#acacac",backgroundColor:'#f7f7f7'});
            $('.room_cnt').jsp('1');
        });
        $('.bed_mi').click(function(){
            $('.bed_pl').css({color:"#000",backgroundColor:'#fff'});
            $(this).css({color:"#acacac",backgroundColor:'#f7f7f7'});
            $('.room_cnt').jsp('0');
        });

        //체크박스, 셀렉트 연결
        $('#apply').change(function() {
            if ($(this).is(':checked')) {
            $('#time-select').prop('disabled', false).css({color:"#000",backgroundColor:'#fff'});
            } else {
            $('#time-select').prop('disabled', true).css({color:"#acacac",backgroundColor:'#f7f7f7'});
            }
        });

        // 페이지 로드 시 초기 상태 설정
        $('#time-select').prop('disabled', !$('#apply').is(':checked'));
        let isDisabled = $('#time-select').prop('disabled');
        if (isDisabled){
            $('#time-select').css({color:"#acacac",backgroundColor:'#f7f7f7'});
        } else {
            $('#time-select').css({color:"#000",backgroundColor:'#fff'});
        }

        //타이틀 토글 
        $('.box_tit').click(function() {
        if ($(this).hasClass('on')) {
            $(this).removeClass('on').addClass('off'); 
            $(this).find('img').prop('src', './images/reservation/ico_t.png');
        } else {
            $(this).removeClass('off').addClass('on'); 
            $(this).find('img').prop('src', './images/reservation/ico_b.png');
        }
        $(this).next().toggle(); // 관련 요소 토글
    });


    </script>

    <!-- 토글 예약바 -->
    <script>
        // 스크롤 위치의 변환 지점을 재계산하는 함수
        function calculateScrollSpot() {
            let document_height = $(document).height();
            let window_height = $(window).height();
            let scroll_range = document_height - window_height;
            return scroll_range * 0.74; // 전체 스크롤 가능 범위의 70.5%
        }
    
        // 스크롤 이벤트
        $(window).scroll(function() {
            let change_scroll_spot = calculateScrollSpot();
            let current_scroll = $(this).scrollTop();

            if (current_scroll > change_scroll_spot) {
                $('.scroll_toggle_position').css({'position': 'absolute'});
            } else {
                $('.scroll_toggle_position').css({'position': 'fixed'});
            }
        });
    
        // 브라우저 크기 변경 시 스크롤 위치 재계산
        $(window).resize(function() {
            calculateScrollSpot();
        });
    </script>
    <!-- 예약바 토글하기 -->
    <script>
        $('.btn_detail').click(function(){
            $('.rsv_detail').slideToggle();
            $('.modal_bg').toggle();

            if ($(this).hasClass('on')) {
                $(this).removeClass('on').addClass('off');
                $(this).css('background', 'url(./images/reservation/btn_estcharge_toggle2.png) 0 0px no-repeat');
            } else {
                $(this).removeClass('off').addClass('on');
                $(this).css('background', 'url(./images/reservation/btn_estcharge_toggle2.png) 0 -32px no-repeat');
            }
        });
        // 예약 초기화
        $('.rsv_rst').click(function(){
            localStorage.clear();
        });
    </script>
    <!-- 로컬 스토리지 예약 연동 -->
    <script>
        var ls_prev_day_num_cal;
        var ls_next_day_num_cal;
        // 전위
        var ls_prevYear = localStorage.getItem('prev_year');
        var ls_prevMonth = localStorage.getItem('prev_month');
        var ls_prev_day_num = localStorage.getItem('prev_day');

        // 후위
        var ls_nextYear = localStorage.getItem('next_year');
        var ls_nextMonth =localStorage.getItem('next_month');
        var ls_next_day_num = localStorage.getItem('next_day');
        
        var ls_reservation_days = localStorage.getItem('reservation_days')
        var ls_lastDayOfCalendar1 = localStorage.getItem('lastDayOfCalendar1');

        if(ls_prev_day_num>ls_lastDayOfCalendar1){
            ls_prev_day_num-=ls_lastDayOfCalendar1
            ls_prev_day_num_cal=ls_prev_day_num
        } else {
            ls_prev_day_num_cal=ls_prev_day_num
        }
        if(ls_next_day_num>ls_lastDayOfCalendar1){
            ls_next_day_num-=ls_lastDayOfCalendar1
            ls_next_day_num_cal=ls_next_day_num
        } else {
            ls_next_day_num_cal=ls_next_day_num
        }
        
        
        var rsv2_days=ls_prevYear+'.'+ls_prevMonth+'.'+ls_prev_day_num_cal+' ~ '+ls_nextYear+'.'+ls_nextMonth+'.'+ls_next_day_num_cal+'('+ls_reservation_days+'박)'
        var detail_room_date = ls_prevYear+'.'+ls_prevMonth+'.'+ls_prev_day_num_cal
        $('.datail_checkin_days').jsp(rsv2_days);
        $('.detail_room_date').jsp(detail_room_date);


        function formatDate(date) {
        const options = { year: 'numeric', month: '2-digit', day: '2-digit', weekday: 'short' };
        return date.toLocaleDateString('ko-KR', options);
        }
        function generateDateList(startDate, endDate) {
        let currentDate = new Date(startDate);
        endDate = new Date(endDate);

        const dateList = [];

        while (currentDate <= endDate) {
            dateList.push(formatDate(currentDate));
            currentDate.setDate(currentDate.getDate() + 1); // 다음 날짜로 이동
        }

        return dateList;
        }

        function formatNumberWithCommas(number) {
            return number.toLocaleString('en-US');
        }



        // 날짜 범위 설정
        const startDate = ls_prevYear+'-'+ls_prevMonth+'-'+ls_prev_day_num_cal;
        const endDate = ls_nextYear+'-'+ls_nextMonth+'-'+ls_next_day_num_cal;
        console.log('start : '+startDate);
        console.log('end : '+endDate);
        // 날짜 목록 생성
        const dateList = generateDateList(startDate, endDate);
        
        // 결과 출력
        $('.detail_room_date').jsp(dateList[0]);
        for(i=1;i<dateList.length;i++){
            var new_price = 
            "<li class='flex_jc price_per_day'>" +
                "<div class='detail_room_date'>"+dateList[i]+"</div>" +
                "<div class='detail_room_price'>500,000&nbsp;원</div>" +
            "</li>";
            $('.detail_room_price_sec').append(new_price);
        }
        var sum_cost = 500000*dateList.length;
        total_sum_cost=sum_cost*1.1
        vat_sum_cost=sum_cost*0.1
        sum_cost=formatNumberWithCommas(sum_cost);
        total_sum_cost=formatNumberWithCommas(total_sum_cost);
        vat_sum_cost=formatNumberWithCommas(vat_sum_cost);
        
        $('.detail_room_payment_price').jsp(sum_cost+'&nbsp;원');
        $('.detail_sum_price').jsp(total_sum_cost+'&nbsp;원');
        $('.detail_value_tax_num ').jsp(vat_sum_cost+'&nbsp;원');
        $('.room_price').jsp(total_sum_cost+'&nbsp;원');
        $('.total_guest').jsp('( 성인 '+ls_current_person+' / 어린이 '+ls_current_child+' )');
    </script>

</body>
</html>

