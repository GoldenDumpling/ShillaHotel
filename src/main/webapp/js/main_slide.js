$(document).ready(function(){
    onHover01(event);
    onHover11(event);
    $('.main_special_offer2').css('display','none');
    $('.event_offer').on('click',function(){
        $('.main_special_offer2').stop().show();
        $('.main_special_offer').stop().hide();
    })
    $('.guest_room_offer').on('click',function(){
        $('guest_room_offer').css({color:'black',fontWeight:'bold'});
        $('.main_special_offer').stop().show();
        $('.main_special_offer2').stop().hide();
    })
})
// 마우스 오버 시 이미지 변경
function onHover01(event) {
    $('.main_offer_left img').eq(0).stop().fadeIn();
    $('.main_offer_top li:nth-child(1)').addClass('main_offer_first');
}
// 마우스 아웃 시 이미지 변경
function onOut01(event) {
    $('.main_offer_left img').eq(0).stop().fadeOut();
    $('.main_offer_left img').eq(0).stop().fadeIn();
    $('.main_offer_top li:nth-child(1)').removeClass('main_offer_first');
}
// 마우스 오버 시 이미지 변경
function onHover02(event) {
    $('.main_offer_left img').eq(1).stop().fadeIn();
    $('.main_offer_top li:nth-child(1)').removeClass('main_offer_first');
}
// 마우스 아웃 시 이미지 변경
function onOut02(event) {
    $('.main_offer_left img').eq(1).stop().fadeOut();
    $('.main_offer_left img').eq(0).stop().fadeIn();
}
// 마우스 오버 시 이미지 변경
function onHover03(event) {
    $('.main_offer_left img').eq(2).stop().fadeIn();
    $('.main_offer_top li:nth-child(1)').removeClass('main_offer_first');
}
// 마우스 아웃 시 이미지 변경
function onOut03(event) {
    $('.main_offer_left img').eq(2).stop().fadeOut();
    $('.main_offer_left img').eq(0).stop().fadeIn();
}
// 마우스 오버 시 이미지 변경
function onHover04(event) {
    $('.main_offer_left img').eq(3).stop().fadeIn();
    $('.main_offer_top li:nth-child(1)').removeClass('main_offer_first');
}
// 마우스 아웃 시 이미지 변경
function onOut04(event) {
    $('.main_offer_left img').eq(3).stop().fadeOut();
    $('.main_offer_left img').eq(0).stop().fadeIn();
}
function mouseleave01(event) {
    $('.main_offer_top li:nth-child(1)').addClass('main_offer_first');
}
// 마우스 오버 이벤트 등록
document.querySelector(".main_offer_top li:nth-child(1)").addEventListener("mouseover", onHover01);
document.querySelector(".main_offer_top li:nth-child(2)").addEventListener("mouseover", onHover02);
document.querySelector(".main_offer_bottom li:nth-child(1)").addEventListener("mouseover", onHover03);
document.querySelector(".main_offer_bottom li:nth-child(2)").addEventListener("mouseover", onHover04);
// 마우스 아웃 이벤트 등록
document.querySelector(".main_offer_top li:nth-child(1)").addEventListener("mouseout", onOut01);
document.querySelector(".main_offer_top li:nth-child(2)").addEventListener("mouseout", onOut02);
document.querySelector(".main_offer_bottom li:nth-child(1)").addEventListener("mouseout", onOut03);
document.querySelector(".main_offer_bottom li:nth-child(2)").addEventListener("mouseout", onOut04);

document.querySelector(".main_offer_top li:nth-child(1)").addEventListener("mouseleave", onHover01);
document.querySelector(".main_offer_top li:nth-child(2)").addEventListener("mouseleave", onHover01);
document.querySelector(".main_offer_bottom li:nth-child(1)").addEventListener("mouseleave", onHover01);
document.querySelector(".main_offer_bottom li:nth-child(2)").addEventListener("mouseleave", onHover01);
function onHover11(event) {
    $('.main_offer_left2 img').eq(0).stop().fadeIn();
    $('.main_offer_top2 li:nth-child(1)').addClass('main_offer_first2');
}
// 마우스 아웃 시 이미지 변경
function onOut11(event) {
    $('.main_offer_left2 img').eq(0).stop().fadeOut();
    $('.main_offer_left2 img').eq(0).stop().fadeIn();
    $('.main_offer_top2 li:nth-child(1)').removeClass('main_offer_first2');
}
// 마우스 오버 시 이미지 변경
function onHover12(event) {
    $('.main_offer_left2 img').eq(1).stop().fadeIn();
    $('.main_offer_top2 li:nth-child(1)').removeClass('main_offer_first2');
}
// 마우스 아웃 시 이미지 변경
function onOut12(event) {
    $('.main_offer_left2 img').eq(1).stop().fadeOut();
    $('.main_offer_left2 img').eq(0).stop().fadeIn();
}
// 마우스 오버 시 이미지 변경
function onHover13(event) {
    $('.main_offer_left2 img').eq(2).stop().fadeIn();
    $('.main_offer_top2 li:nth-child(1)').removeClass('main_offer_first2');
}
// 마우스 아웃 시 이미지 변경
function onOut13(event) {
    $('.main_offer_left2 img').eq(2).stop().fadeOut();
    $('.main_offer_left2 img').eq(0).stop().fadeIn();
}
// 마우스 오버 시 이미지 변경
function onHover14(event) {
    $('.main_offer_left2 img').eq(3).stop().fadeIn();
    $('.main_offer_top2 li:nth-child(1)').removeClass('main_offer_first2');
}
// 마우스 아웃 시 이미지 변경
function onOut14(event) {
    $('.main_offer_left2 img').eq(3).stop().fadeOut();
    $('.main_offer_left2 img').eq(0).stop().fadeIn();
}
function mouseleave11(event) {
    $('.main_offer_top2 li:nth-child(1)').addClass('main_offer_first2');
}
// 마우스 오버 이벤트 등록
document.querySelector(".main_offer_top2 li:nth-child(1)").addEventListener("mouseover", onHover11);
document.querySelector(".main_offer_top2 li:nth-child(2)").addEventListener("mouseover", onHover12);
document.querySelector(".main_offer_bottom2 li:nth-child(1)").addEventListener("mouseover", onHover13);
document.querySelector(".main_offer_bottom2 li:nth-child(2)").addEventListener("mouseover", onHover14);
// 마우스 아웃 이벤트 등록
document.querySelector(".main_offer_top2 li:nth-child(1)").addEventListener("mouseout", onOut11);
document.querySelector(".main_offer_top2 li:nth-child(2)").addEventListener("mouseout", onOut12);
document.querySelector(".main_offer_bottom2 li:nth-child(1)").addEventListener("mouseout", onOut13);
document.querySelector(".main_offer_bottom2 li:nth-child(2)").addEventListener("mouseout", onOut14);

document.querySelector(".main_offer_top2 li:nth-child(1)").addEventListener("mouseleave", onHover11);
document.querySelector(".main_offer_top2 li:nth-child(2)").addEventListener("mouseleave", onHover11);
document.querySelector(".main_offer_bottom2 li:nth-child(1)").addEventListener("mouseleave", onHover11);
document.querySelector(".main_offer_bottom2 li:nth-child(2)").addEventListener("mouseleave", onHover11);
$('a[href="#"]').each(function() {
    $(this).click(function(e) {
        e.preventDefault();
    })
});

const offerTabs = document.querySelectorAll('.offer_tab > a');

document.querySelector('.main_offer_left > .offer_tab > a').classList.add('active');
offerTabs.forEach(tab => tab.addEventListener('click', function() {
    offerTabs.forEach(tab => tab.classList.remove('active'))
    tab.classList.add('active');
}))


// 메인 이미지 슬라이더 
let bx_tmp = 0;
$('#main_gallery_wrap li').css({opacity: 0});
$('#main_gallery_wrap li').eq(bx_tmp).css({transition: '0.5s all', opacity: 1});

let bxlength = $('#main_gallery_wrap li').length;

// 이미지 전환 로직을 함수로 정의
function changeImage() {
    bx_tmp++;
    if (bx_tmp > 2) { bx_tmp = 0; }
    $('#main_gallery_wrap li').stop().css({transition: '0.5s all', opacity: 0});
    $('#main_gallery_wrap li').eq(bx_tmp).stop().css({transition: '0.5s all', opacity: 1});
}

// setInterval을 시작하고, 변수에 할당
let interval = setInterval(changeImage, 8000);

// 페이지 로드 시 이미지 슬라이더 시작
interval = setInterval(changeImage, 8000);

// 마우스가 요소 위에 있을 때 setInterval을 정지
$('#main_gallery_wrap').mouseenter(function() {
    clearInterval(interval);
});

// 마우스가 요소를 벗어날 때 setInterval을 다시 시작
$('#main_gallery_wrap').mouseleave(function() {
    interval = setInterval(changeImage, 8000);
});

// 기타 버튼 클릭 이벤트 로직...
$('.bx_slide img').eq(0).click(function(){
    bx_tmp--
    if (bx_tmp<0){bx_tmp=2};
    $('#main_gallery_wrap li').stop().css({transition:'0.5s all',opacity:0}); 
    $('#main_gallery_wrap li').eq(bx_tmp).stop().css({transition:'0.5s all',opacity:1});
});
$('.bx_slide img').eq(1).click(function(){
    bx_tmp++
    if (bx_tmp>2){bx_tmp=0};
    $('#main_gallery_wrap li').stop().css({transition:'0.5s all',opacity:0}); 
    $('#main_gallery_wrap li').eq(bx_tmp).stop().css({transition:'0.5s all',opacity:1});
});