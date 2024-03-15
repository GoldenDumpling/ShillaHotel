$('.room_tab_r li:nth-child(1)').click(function(){
    $(this).find('img').eq(0).toggle();
    $(this).find('img').eq(1).toggle();
    $('.keyword_search').slideToggle('fast')
})

$('.room_modal .room_modal_head img').click(function(){
    $('.room_modal').css({display:'none'});
})
// 체크박스 체크시 css추가
$('.custom-checkbox input[type="checkbox"]').change(function() {
    if ($(this).is(':checked')) {
    
        $(this).parent().next().css({fontWeight:700,color:'#856f56'})
    } else {
        $(this).parent().next().css({fontWeight:400,color:'#727272'})
    }
});

/* 회원전용 패키지 객실 선택 */
function roomActive(num) {
    for(let i=0; i<3; i++){
        $('.room_tab_l').children().eq(i).removeClass('room_tab_active');
    }
    $('.room_tab_l').children().eq(num).addClass('room_tab_active');

    for(let i=0; i<3 ; i++){
        $('.room_tab_l').children().eq(i).css({color:'#999',fontWeight:'400'})
    }
    $('.room_tab_l').children().eq(num).css({color:'brown',fontWeight:'700'})

    /* 회원전용 */
    if(num == 0){
        for(let i=0; i<3; i++){
            $('.room_box').hide();
        }
        selectedMember.each(function(){
            $(this).show();
            
            selectedMember.eq(-1).css({borderBottom:'none'});
            
        })
    }
    /* 패키지 */
    if(num == 1){
        for(let i=0; i<3; i++){
            $('.room_box').hide();
        }
        selectedPackage.each(function(){
            $(this).show();
            
            selectedPackage.eq(-1).css({borderBottom:'none'});
        })
    }
    /* 객실 */
    if(num == 2){
        for(let i=0; i<3; i++){
            $('.room_box').hide();
        }
        selectedRoom.each(function(){
            $(this).show();
            selectedRoom.eq(-1).css({borderBottom:'none'});
        })
    }
}

$('label input[name=subject]').change(function(){
    $('.room_select_content').css({display:'none'})
    $('.room_select_top').css({border:'1px solid #dcdcdc'});
    $(this).parent().parent().parent().parent().next().css({display:'block'})
    $(this).parent().parent().parent().parent().css({border:'3px solid #856f56'})
    $('.scroll_toggle_position').show();
    var selectedIndex = $('#select_reservation input:checked').index('#select_reservation input');
    


    var $checkedInput = $('.room_box input:checked');
    var indexInRoomBox = $checkedInput.closest('.room_box').find('input').index($checkedInput);
    if(indexInRoomBox==0){
        $('.room_price').html('550,000'+'&nbsp;원')
    } else {
        $('.room_price').html('440,000'+'&nbsp;원')
    }
    
})


// 예약버튼 
$('.room_box>li:nth-child(4)>img').click(function(){
    $(this).parent().siblings('.room_select').toggle();
    var currentSrc = $(this).prop('src');
    if (currentSrc.includes('reserve_step1_rsvopen.gif')) {
        $(this).prop('src', './images/reservation/reserve_step1_rsvclose.gif');
    } else {
        $(this).prop('src', './images/reservation/reserve_step1_rsvopen.gif');
    }

})

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

$('.btn_login_rsv').click(function(){
    window.location.href = 'reservation2.html';
})

let selectedRoom = $('.selectRoom');
let selectedPackage = $('.selectPackage');
let selectedMember = $('.selectMember');

$('.room_tab_l').children().eq(0).html('회원전용('+selectedMember.length+')');
$('.room_tab_l').children().eq(1).html('패키지('+selectedPackage.length+')');
$('.room_tab_l').children().eq(2).html('객실('+selectedRoom.length+')');

$('.keyword_head img').eq(1).click(function(){
    $('.keyword_check ul li label input').prop('checked',false);
    $('.room_list li ul').show();
    $(this).css({cursor:'pointer'});
})

// 모달창 닫고 열기
$(document).click(function(event) {
    // .reservation_panel, .search_book, .search_person 요소 또는 그 자식 요소가 클릭된 경우는 무시
    if (!$(event.target).closest('.room_modal, .room_box>li:nth-child(1), .room_box>li:nth-child(2)>h3+p+p').length) {
        // 이들 요소 외부를 클릭한 경우, .reservation_panel을 fade out
        $('.room_modal').hide();
    }
});

// 모달창 연결
$('.room_box>li:nth-child(1), .room_box>li:nth-child(2)>h3+p+p').click(function(){
    var box_index=$(this).closest('.room_box').parent().index();
    console.log(box_index);
    $('.room_modal').show();
    $('.room_modal_head').hide();
    $('.modal_cont').hide();
    $('.room_modal_head').eq(box_index).show();
    $('.modal_cont').eq(box_index).show();
});


// 정렬 구현
$('#sort_by').change(function() {
    var sortMethod = $(this).val(); 
    var $list = $('.room_list');
    var $items = $list.children('li');

    $items.sort(function(a, b) {
        if (sortMethod === 'low_price' || sortMethod === 'high_price') {
            var valueA = parseInt($(a).attr('value'));
            var valueB = parseInt($(b).attr('value'));

            return sortMethod === 'low_price' ? valueA - valueB : valueB - valueA;
        } else if (sortMethod === 'hot') {
            var popularityA = parseInt($(a).data('popularity'));
            var popularityB = parseInt($(b).data('popularity'));

            return popularityB - popularityA; 
            // 인기도 내림차순으로 정렬
        } else if (sortMethod === 'newest') {
            var dateA = new Date($(a).data('date'));
            var dateB = new Date($(b).data('date'));

            return dateA - dateB; 
            // 최신순으로 정렬
        }
    }).appendTo($list);
});

