var ls_day_var;

//날짜 조건 함수
function day_check(ls_day_var){
    if(ls_day_var>ls_lastDayOfCalendar1){
        ls_day_var-=ls_lastDayOfCalendar1
    }
    return ls_day_var;
};

localStorage.setItem('myKey', 'myValue');
var value = localStorage.getItem('myKey');
// 전위
var ls_prevYear = localStorage.getItem('prev_year');
var ls_prevMonth = localStorage.getItem('prev_month');
var ls_prev_day_num = localStorage.getItem('prev_day');
var ls_prev_weekday = localStorage.getItem('prev_weekday');
// 후위
var ls_nextYear = localStorage.getItem('next_year');
var ls_nextMonth =localStorage.getItem('next_month');
var ls_next_day_num = localStorage.getItem('next_day');
var ls_next_weekday = localStorage.getItem('next_weekday');

var ls_current_person = localStorage.getItem('current_person');
var ls_current_child = localStorage.getItem('current_child');
var ls_lastDayOfCalendar1 = localStorage.getItem('lastDayOfCalendar1');
var ls_reservation_days = localStorage.getItem('reservation_days')
console.log(ls_prevYear);
console.log(ls_nextYear);
if(ls_lastDayOfCalendar1!=null){
    // 월
    var ls_prevMonth = Number(ls_prev_day_num <= ls_lastDayOfCalendar1 ? $('#calendar1 .calendar-month').text().match(/\d+/g) : $('#calendar2 .calendar-month').text().match(/\d+/g));
    ls_prevMonth < 10 ? $('.prev_month_month').html('0' + ls_prevMonth + '월&nbsp;') : $('.prev_month_month').html(ls_prevMonth + '월&nbsp;')
    // 날짜
    $('.prev_month_day').html((day_check(ls_prev_day_num)< 10 ? '0' : '') + day_check(ls_prev_day_num) + '일&nbsp;');
    // 요일
    $('.prev_month_weekday').html(ls_prev_weekday);

    // 월
    var ls_nextMonth = Number(ls_next_day_num <= ls_lastDayOfCalendar1 ? $('#calendar1 .calendar-month').text().match(/\d+/g) : $('#calendar2 .calendar-month').text().match(/\d+/g));
    ls_nextMonth < 10 ? $('.next_month_month').html('0' + ls_nextMonth + '월&nbsp;') : $('.next_month_month').html(ls_nextMonth + '월&nbsp;')
    // 날짜
    $('.next_month_day').html((day_check(ls_next_day_num) < 10 ? '0' : '') + day_check(ls_next_day_num) + '일&nbsp;');
    // 요일
    $('.next_month_weekday').html(ls_next_weekday);

    // 몇박 연동
    if(ls_reservation_days>0){
        $('.reservation_days').text(ls_reservation_days+'박');
    };
};
