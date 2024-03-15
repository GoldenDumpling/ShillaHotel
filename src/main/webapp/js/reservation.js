$('.keyword_btn').click(function(){
    $('.room_box').hide();
    if($('input[id="breakfast_included"]').is(":checked")==true){
        $('.room_mor').show();
    }
    if($('input[id="lounge_benefits"]').is(":checked")==true){
        $('.room_ben').show();
    }
    if($('input[id="winery_access"]').is(":checked")==true){
        $('.room_win').show();
    }
    if($('input[id="outdoor_pool"]').is(":checked")==true){
        $('.room_poo').show();
    }
    if($('input[id="extra_bed_available"]').is(":checked")==true){
        $('.room_ext').show();
    }
    if($('input[id="breakfast_included"]').is(":checked")==false && 
    $('input[id="lounge_benefits"]').is(":checked")==false && 
    $('input[id="winery_access"]').is(":checked")==false &&
    $('input[id="outdoor_pool"]').is(":checked")==false &&
    $('input[id="extra_bed_available"]').is(":checked")==false 
    ){
        $('.room_box').show();
    }
})

