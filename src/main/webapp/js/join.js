        /* 이메일 직접입력 */
        $('.email_select').change(function () {
            if ($('.email_select option:selected').val() == '직접입력' || $('.email_select option:selected').val() == 'SELF') {
                $(this)
                    .next('.hidden_input')
                    .show();
                $('#email_domain').val("");
            } else {
                $(this)
                    .next('.hidden_input')
                    .hide();
                $('#email_domain').val($(this).val());
            }
        });


        /* 날짜 */
        $(".month_select").change(function () {
            var selectedMonth = $(".month_select").val();
            var daysDropdown = $(".day_select");

            // Enable all options initially
            daysDropdown.find("option").prop("disabled", false);

            // 날짜 지정
            if (selectedMonth === "04" || selectedMonth === "06" || selectedMonth === "09" || selectedMonth === "11") { // 30일까지
                daysDropdown.find("option[value='29']").css({display:'block'});
                daysDropdown.find("option[value='30']").css({display:'block'});
                daysDropdown.find("option[value='31']").css({display:'none'});
            } else { // 28일까지
                if (selectedMonth === "02") {
                    daysDropdown.find("option[value='29']").css({display:'block'});
                    daysDropdown.find("option[value='30']").css({display:'none'});
                    daysDropdown.find("option[value='31']").css({display:'none'});
                } else { // 31일까지
                    daysDropdown.find("option[value='29']").css({display:'block'});
                    daysDropdown.find("option[value='30']").css({display:'block'});
                    daysDropdown.find("option[value='31']").css({display:'block'});
                }
            }
        });
        
        /* 필수 약관 동의 해제시 전체 동의 해제 */
        $('.terms_agree').click(function () {
            if($('#terms_agree1').prop('checked') == true && $('#terms_agree2').prop('checked') == true && $('#terms_agree3').prop('checked') == true){
                $('#terms_agree_all').prop('checked',true);
            }else if($('#terms_agree1').prop('checked') == false || $('#terms_agree2').prop('checked') == false || $('#terms_agree3').prop('checked') == false){
                $('#terms_agree_all').prop('checked',false);
            }
        });

         /* 필수 약관 동의 해제시 전체 동의 해제 */
        
         $('.terms_agree').click(function (event) {
            // 중단시키기 전에 스크롤 위치를 저장
            var scrollPosition = $(window).scrollTop();
          
            if ($('#terms_agree1').prop('checked') && $('#terms_agree2').prop('checked') && $('#terms_agree3').prop('checked')) {
              $('#terms_agree_all').prop('checked', true);
            } else {
              $('#terms_agree_all').prop('checked', false);
            }
          });

        /* 약관 전체 동의 */
        $('#terms_agree_all').click(function(){
            if($(this).prop('checked') == true){
                $('#terms_agree1').prop('checked',true);
                $('#terms_agree2').prop('checked',true);
                $('#terms_agree3').prop('checked',true);
                $('#terms_agree3_email').prop('checked',true);
                $('#terms_agree3_sms').prop('checked',true);
                $('#terms_agree3_tm').prop('checked',true);
            }else{
                $('#terms_agree1').prop('checked',false);
                $('#terms_agree2').prop('checked',false);
                $('#terms_agree3').prop('checked',false);
                $('#terms_agree3_email').prop('checked',false);
                $('#terms_agree3_sms').prop('checked',false);
                $('#terms_agree3_tm').prop('checked',false);
            }
        });
        /* 선택 약관 동의 (선택하위3가지) */
        $('#terms_agree3').click(function () {
            if($(this).prop('checked') == true){
                $('#terms_agree3_email').prop('checked',true);
                $('#terms_agree3_sms').prop('checked',true);
                $('#terms_agree3_tm').prop('checked',true);
            }else{
                $('#terms_agree3_email').prop('checked',false);
                $('#terms_agree3_sms').prop('checked',false);
                $('#terms_agree3_tm').prop('checked',false);
            }
        });

        /* 선택 약관 내의 선택 2개 */
        $('.choice_select input[type=checkbox]').click(function () {

            //console.log($(this).attr('id'));
            var attrType = $(this).attr('data-type')
            //console.log($(this).attr('id'));

            if ($(this).prop('checked') == true) {

                if ($('.choice_select input[type=checkbox]#terms_agree3_email').prop('checked') == true || $('.choice_select input[type=checkbox]#terms_agree3_sms').prop('checked') == true || $('.choice_select input[type=checkbox]#terms_agree3_tm').prop('checked') == true) {
                    //선택약관 모두 동의
                    $('#terms_agree3').prop('checked',true);
                }

            } else if ($(this).prop('checked') == false) {
                if ($('.choice_select input[type=checkbox]#terms_agree3_email').prop('checked') == false && $('.choice_select input[type=checkbox]#terms_agree3_sms').prop('checked') == false && $('.choice_select input[type=checkbox]#terms_agree3_tm').prop('checked') == false) {
                    //선택약관 모두 비동의
                    $('#terms_agree3').prop('checked',false);
                }
          }
            if ($('#terms_agree1').prop('checked') == true && $('#terms_agree2').prop('checked') == true && $('#terms_agree3').prop('checked') == true) {
                $('#terms_agree_all').prop('checked', true);
            } else {
                $('#terms_agree_all').prop('checked', false);
            }
        });

        // 로그인 페이지 넘어가기
        $('.bottom_btn_area>a').click(function () {
            var inputTypeEmailV = $(".email_val").val();
            var inputTypeEmailS = $('.email_select').val();
            var inputTypePw = $(".pw_val").val();
            var inputTypePwc = $(".pw_check_val").val();
            var inputTypeName = $(".name_val").val();
            var inputTypeYear = $(".year_select").val();
            var inputTypeMonth = $(".month_select").val();
            var inputTypeDay = $(".day_select").val();
            var inputTypePhone1 = $(".phone1_select").val();
            var inputTypePhone2 = $(".phone2_val").val();
            var inputTypePhone3 = $(".phone3_val").val();
            var inputTypeRadio1 = $("#sex_radio1").prop('checked');
            var inputTypeRadio2 = $("#sex_radio2").prop('checked');
            var checkAgree1 = $('#terms_agree1').prop('checked');
            var checkAgree2 = $('#terms_agree2').prop('checked');

            if (inputTypeEmailV == "") {
                alert('이메일을 입력해주세요.');
            } else {
                if (inputTypeEmailS == "") {
                    alert('이메일 형식이 올바르지 않습니다.');
                } else {
                    if (inputTypePw == "" || inputTypePw.length<13) {
                        alert('비밀번호를 입력해주세요.');
                    } else {
                        if (inputTypePwc == "" || inputTypePwc !== inputTypePw) {
                            alert('비밀번호확인을 입력해주세요.');
                        } else {
                            if (inputTypeName == "") {
                                alert('이름을 입력해주세요.');
                            } else {
                                if (inputTypeYear == "") {
                                    alert('년도를 선택해주세요');
                                } else {
                                    if (inputTypeMonth == "") {
                                        alert('월을 선택해주세요');
                                    } else {
                                        if (inputTypeDay == "") {
                                            alert('일을 선택해주세요');
                                        } else {
                                            if (inputTypePhone1 == "") {
                                                alert('앞자리를 선택해주세요');
                                            } else {
                                                if (inputTypePhone2 == "" || inputTypePhone2.length<4) {
                                                    alert('중간자리를 입력해주세요');
                                                } else {
                                                    if (inputTypePhone3 == "" || inputTypePhone3.lengnth<4) {
                                                        alert('마지막자리를 입력해주세요');
                                                    } else {
                                                        if (inputTypeRadio1 == false && inputTypeRadio2 == false) {
                                                            alert('성별을 체크해주세요.');
                                                        } else {
                                                            if (checkAgree1 == false) {
                                                                alert('이용 약관에 동의해주세요.');
                                                            } else {
                                                                if (checkAgree2 == false) {
                                                                    alert('개인정보 수집 및 이용에 동의해주세요.');
                                                                } else {
                                                                    $('.bottom_btn_area>a').attr("href", "login.html");
                                                                    alert('회원가입이 완료되었습니다.');
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });