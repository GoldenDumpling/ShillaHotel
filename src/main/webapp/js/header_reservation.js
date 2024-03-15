$(function () {
  function confirm_bar_hide() {
    $(".confirm").hide();
    $(".confirm_bar").removeClass("on");
    $(".confirm_bar").css({ backgroundColor: "#F1E3C4", color: "black" });
    $(".confirm_bar .arrow_icon").prop("src", "./images/include/Vector.png");
  }

  function lang_bar_hide() {
    $(".lang").hide();
    $(".lang_bar").removeClass("on");
    $(".lang_bar").css({ backgroundColor: "#F1E3C4", color: "black" });
    $(".lang_bar .lang_icon").prop("src", "./images/include/language icon.png");
    $(".lang_bar .arrow_icon").prop("src", "./images/include/Vector.png");
  }

  function confirm_bar_show() {
    $(".confirm").show();
    $(".confirm_bar").css({ backgroundColor: "#bfaf9d", color: "white" });
    $(".confirm_bar").addClass("on");
    $(".confirm").css({ backgroundColor: "#bfaf9d", color: "white" });
    $(".confirm li").css({ padding: "7px 20px", width: "86.45px" });
    $(".confirm_bar .arrow_icon").prop("src", "./images/include/up_vector.png");
  }

  function lang_bar_show() {
    $(".lang").show();
    $(".lang_bar").css({ backgroundColor: "#bfaf9d", color: "white" });
    $(".lang_bar").addClass("on");
    $(".lang").css({ backgroundColor: "#bfaf9d", color: "white" });
    $(".lang li").css({ padding: "7px 10px 7px 20px", width: "90.48px" });
    $(".lang_bar .lang_icon").prop(
      "src",
      "./images/include/language icon_white.png"
    );
    $(".lang_bar .arrow_icon").prop("src", "./images/include/up_vector.png");
  }

  $(".confirm_bar").click(function (e) {
    e.preventDefault();
    if ($(".confirm_bar").hasClass("on")) {
      confirm_bar_hide();
    } else {
      lang_bar_hide();
      confirm_bar_show();
    }
  });

  $(".lang_bar").click(function (e) {
    e.preventDefault();
    if ($(".lang_bar").hasClass("on")) {
      lang_bar_hide();
    } else {
      confirm_bar_hide();
      lang_bar_show();
    }
  });
});

function confirm_bar_hide() {
  $(".confirm").hide();
  $(".confirm_bar").removeClass("on");
  $(".confirm_bar").css({ backgroundColor: "#F1E3C4", color: "black" });
  $(".confirm_bar .arrow_icon").prop("src", "./images/include/Vector.png");
}

function lang_bar_hide() {
  $(".lang").hide();
  $(".lang_bar").removeClass("on");
  $(".lang_bar").css({ backgroundColor: "#F1E3C4", color: "black" });
  $(".lang_bar .lang_icon").prop("src", "./images/include/language icon.png");
  $(".lang_bar .arrow_icon").prop("src", "./images/include/Vector.png");
}

function confirm_bar_show() {
  $(".confirm").show();
  $(".confirm_bar").css({ backgroundColor: "#bfaf9d", color: "white" });
  $(".confirm_bar").addClass("on");
  $(".confirm").css({ backgroundColor: "#bfaf9d", color: "white" });
  $(".confirm li").css({ padding: "7px 20px", width: "86.45px" });
  $(".confirm_bar .arrow_icon").prop("src", "./images/include/up_vector.png");
}

function lang_bar_show() {
  $(".lang").show();
  $(".lang_bar").css({ backgroundColor: "#bfaf9d", color: "white" });
  $(".lang_bar").addClass("on");
  $(".lang").css({ backgroundColor: "#bfaf9d", color: "white" });
  $(".lang li").css({ padding: "7px 10px 7px 20px", width: "90.48px" });
  $(".lang_bar .lang_icon").prop(
    "src",
    "./images/include/language icon_white.png"
  );
  $(".lang_bar .arrow_icon").prop("src", "./images/include/up_vector.png");
}

$(".confirm_bar").click(function (e) {
  e.preventDefault();
  if ($(".confirm_bar").hasClass("on")) {
    confirm_bar_hide();
  } else {
    lang_bar_hide();
    confirm_bar_show();
  }
});

$(".lang_bar").click(function (e) {
  e.preventDefault();
  if ($(".lang_bar").hasClass("on")) {
    lang_bar_hide();
  } else {
    confirm_bar_hide();
    lang_bar_show();
  }
});

var year, month;
var monthOffset = 0;
var lastDayOfPrevMonth = 0; // 달력 1의 마지막 날짜를 저장할 변수
var lastDayOfCalendar1 = 0;
var day_class;
function createCalendar(calendarId, year, month) {
    var daysInMonth = new Date(year, month, 0).getDate();
    var firstDay = new Date(year, month - 1, 1).getDay();
    var monthNames = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];

    // 연도와 월을 별도의 div로 분리
    var calendarTitle = '<div class="calendar-header">' +
                            '<div class="calendar-year">' + year + '년&nbsp;</div>' +
                            '<div class="calendar-month">' + monthNames[month - 1] + '</div>' +
                        '</div>';

    var calendarHtml = calendarTitle + '<table><tr>';

    // 요일 헤더
    var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
    var daysOfWeekClasses = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
    
    for (let i = 0; i < daysOfWeek.length; i++) {
        calendarHtml += '<td>' + daysOfWeek[i] + '</td>';
    }
    calendarHtml += '</tr><tr>';

    // 빈 칸 채우기
    for (let i = 0; i < firstDay; i++) {
        calendarHtml += '<td></td>';
    }

    // 날짜 채우기
    for (var day = 1; day <= daysInMonth; day++) {
        var currentDayOfWeek = (day + firstDay - 1) % 7;
        if (currentDayOfWeek === 0) {
            calendarHtml += '</tr><tr>';
        }
        day_class = 'day' + (day + lastDayOfPrevMonth) + ' ' + daysOfWeekClasses[currentDayOfWeek];

        calendarHtml += '<td class="' + day_class + '">' + day + '</td>';
    }

    calendarHtml += '</tr></table>';


    if (calendarId == 'calendar1') {
        lastDayOfPrevMonth += daysInMonth; // 달력 1의 마지막 날짜 업데이트
        lastDayOfCalendar1 = lastDayOfPrevMonth; // 달력 1의 마지막 날짜를 복사
    } else {
        lastDayOfPrevMonth = 0;
    }

    $('#' + calendarId).html(calendarHtml);
}

function updateCalendars() {
    var date = new Date();
    date.setMonth(date.getMonth() + monthOffset);
    year = date.getFullYear();
    month = date.getMonth(); // 0에서 시작하는 월

    

    createCalendar('calendar1', year, month + 1); // 현재 월

    
    // 다음 달을 계산하고, 필요한 경우 연도 증가
    var nextMonth = month + 1;
    var nextYear = year;
    if (nextMonth > 11) { // 11은 12월을 나타냄 (0부터 시작)
        nextMonth = 0; // 1월로 리셋
        nextYear++; // 다음 해로 증가
    }

    createCalendar('calendar2', nextYear, nextMonth + 1); // 다음 월

}

$('#prevMonth').click(function() {
monthOffset -= 1;
updateCalendars();
});

$('#nextMonth').click(function() {
monthOffset += 1;
updateCalendars();
});



updateCalendars();
let tagSw = 0;
let c_tag = 0;
let prev_day_class, prev_day_num;
let next_day_class, next_day_num;
let tmp;
$(document).on('click', 'td', function() {
if ($(this).is(':visible') && $(this).attr('class').match(/day\d+/)) {
       
    if (tagSw) {
        //후위 선택
        next_day_class = $(this).prop('className');
        next_day_num = next_day_class.match(/\d+/g);
        next_day_num = parseInt(next_day_num[0], 10); // 문자열을 숫자로 변환



        if (next_day_num > prev_day_num) {
            for (let i = prev_day_num; i <= next_day_num-1; i++) {
                $('.day' + i).css({ backgroundColor: '#FFCA64',color: '#fff'});
                tmp=i;
            }
            tmp++
            $('.day' + tmp).css({ backgroundColor: '#FFCA64',color:'#fff' ,borderBottomRightRadius:'15px',borderTopRightRadius:'15px'})
        }
        tagSw = 0;
        c_tag = 1;
        
        //몇박 연동
        reservation_days=next_day_num-prev_day_num
        if(reservation_days>0){
            $('.reservation_days').text(reservation_days+'박');
        };
        // 날짜 연동
        var dayClasses, dayOfWeekKorean,day_var;
        //요일 연동 함수
        function week_fn(day_num,classOfWeekday){
            dayClasses = $('.day' + day_num).attr('class').split(/\s+/);
            dayOfWeekKorean = '';
            // 클래스명을 기반으로 한글 요일을 결정합니다.
            switch (dayClasses[1]) {
                case 'sunday':
                    dayOfWeekKorean = '(일)';
                    break;
                case 'monday':
                    dayOfWeekKorean = '(월)';
                    break;
                case 'tuesday':
                    dayOfWeekKorean = '(화)';
                    break;
                case 'wednesday':
                    dayOfWeekKorean = '(수)';
                    break;
                case 'thursday':
                    dayOfWeekKorean = '(목)';
                    break;
                case 'friday':
                    dayOfWeekKorean = '(금)';
                    break;
                case 'saturday':
                    dayOfWeekKorean = '(토)';
                    break;
                default:
                    dayOfWeekKorean = ''; // 요일 클래스가 없을 경우
                    break;
                    
            }
            $('.'+classOfWeekday).html(dayOfWeekKorean);
            return(dayOfWeekKorean);
        };
        //날짜 조건 함수
        function day_check(day_var){
            if(day_var>lastDayOfCalendar1){
                day_var-=lastDayOfCalendar1
            }
            return day_var;
        };
        if (next_day_num > prev_day_num){
          //전위 선택한 날짜 정보
          // 월
          var prevMonth = Number(prev_day_num <= lastDayOfCalendar1 ? $('#calendar1 .calendar-month').text().match(/\d+/g) : $('#calendar2 .calendar-month').text().match(/\d+/g));
          prevMonth < 10 ? $('.prev_month_month').html('0' + prevMonth + '월&nbsp;') : $('.prev_month_month').html(prevMonth + '월&nbsp;')
          // 날짜
          $('.prev_month_day').html((day_check(prev_day_num)< 10 ? '0' : '') + day_check(prev_day_num) + '일&nbsp;');
          // 요일
          var prev_weekday = week_fn(prev_day_num,'prev_month_weekday');
          // 연도
          var prevYear = prev_day_num <= lastDayOfCalendar1 ? 
          Number($('#calendar1 .calendar-year').text().match(/\d+/)[0]) : 
          Number($('#calendar2 .calendar-year').text().match(/\d+/)[0]);
          

          // 후위 선택한 날짜 정보
          // 월

          var nextMonth = Number(next_day_num <= lastDayOfCalendar1 ? $('#calendar1 .calendar-month').text().match(/\d+/g) : $('#calendar2 .calendar-month').text().match(/\d+/g));
          nextMonth < 10 ? $('.next_month_month').html('0' + nextMonth + '월&nbsp;') : $('.next_month_month').html(nextMonth + '월&nbsp;')
          // 날짜
          $('.next_month_day').html((day_check(next_day_num) < 10 ? '0' : '') + day_check(next_day_num) + '일&nbsp;');
          // 요일
          var next_weekday = week_fn(next_day_num,'next_month_weekday')
          //  연도
          var nextYear = next_day_num <= lastDayOfCalendar1 ? 
          Number($('#calendar1 .calendar-year').text().match(/\d+/)[0]) : 
          Number($('#calendar2 .calendar-year').text().match(/\d+/)[0]);

          // 전위
          localStorage.setItem('prev_year', prevYear);
          localStorage.setItem('prev_month', prevMonth);
          localStorage.setItem('prev_day', prev_day_num);
          localStorage.setItem('prev_weekday', prev_weekday);
          // 후위
          localStorage.setItem('next_year', nextYear);
          localStorage.setItem('next_month', nextMonth);
          localStorage.setItem('next_day', next_day_num);
          localStorage.setItem('next_weekday', next_weekday);

          localStorage.setItem('lastDayOfCalendar1',lastDayOfCalendar1)
          localStorage.setItem('reservation_days',reservation_days)
          console.log('storage Saved.');
        }
        


        
    } else {

        //전위 선택 
        if(c_tag){
            $('#calendars table td').removeAttr('style');
        };
        $(this).css({ backgroundColor: '#FFCA64',color:'#fff' ,borderBottomLeftRadius:'15px',borderTopLeftRadius:'15px'});
        
        prev_day_class = $(this).prop('className');
        prev_day_num = prev_day_class.match(/\d+/g);
        prev_day_num = parseInt(prev_day_num[0], 10); // 문자열을 숫자로 변환

        tagSw = 1;
        
        
    }
    // 여기에 클릭 이벤트에 대한 로직을 구현합니다.
    // 이 부분은 오직 'day1', 'day2', ... 클래스를 가진 td에 대해서만 실행됩니다.
}
});
//달력 예약바 연동
// 월 이름과 숫자를 매핑 (한국어 버전)
var monthMapping = {
'1월': 1, '2월': 2, '3월': 3, '4월': 4,
'5월': 5, '6월': 6, '7월': 7, '8월': 8,
'9월': 9, '10월': 10, '11월': 11, '12월': 12
};



// 월 추출 및 숫자로 변환
var monthText1 = $('#calendar1 .calendar-month').text();
var monthNumber1 = monthMapping[monthText1];
var monthText2 = $('#calendar2 .calendar-month').text();
var monthNumber2 = monthMapping[monthText2];


// 초기 연동
// 현재 날짜와 요일 가져오기
var currentDate = new Date();
var currentDay = currentDate.getDate(); // 일
var dayOfWeekIndex = currentDate.getDay(); // 요일 인덱스
var daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
var dayOfWeek = daysOfWeek[dayOfWeekIndex]; // 요일 이름

// 현재 날짜와 요일을 HTML 요소에 적용
$('.prev_month_day').html((currentDay < 10 ? '0' : '') + currentDay + '일&nbsp;');
$('.prev_month_weekday').html('(' + dayOfWeek + ')');

// 현재 달을 HTML 요소에 적용
var currentMonth = currentDate.getMonth() + 1; // 월 (1부터 시작)
$('.prev_month_month').html((currentMonth < 10 ? '0' : '') + currentMonth + '월&nbsp;');

// 다음 날짜 계산
currentDate.setDate(currentDate.getDate() + 1);
var nextDay = currentDate.getDate();
var nextDayOfWeekIndex = currentDate.getDay();
var nextDayOfWeek = daysOfWeek[nextDayOfWeekIndex];
var nextMonth = currentDate.getMonth() + 1;

// 다음 날짜와 요일을 HTML 요소에 적용
$('.next_month_day').html((nextDay < 10 ? '0' : '') + nextDay + '일&nbsp;');
$('.next_month_weekday').html('(' + nextDayOfWeek + ')');

// 다음 달을 HTML 요소에 적용
$('.next_month_month').html((nextMonth < 10 ? '0' : '') + nextMonth + '월&nbsp;');



