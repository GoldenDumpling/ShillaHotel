            // 패널 보이고 감추기
            $(document).click(function(event) {
              // .reservation_panel, .search_book, .search_person 요소 또는 그 자식 요소가 클릭된 경우는 무시
              if (!$(event.target).closest('.reservation_panel, .search_book, .search_person').length) {
                  // 이들 요소 외부를 클릭한 경우, .reservation_panel을 fade out
                  $('.reservation_panel').fadeOut(200);
              }
          });
          $('.reservation_panel').hide();
          $('.search_book').click(function(){
              $('.reservation_panel').fadeToggle(200);
          });
          $('.search_person').click(function(){
              $('.reservation_panel').fadeToggle(200);
          });


          //호텔방 수량
          $('.add_room_row').hide();
          $('.add_room_row').eq(0).show();
          var room_amount=1

          // 선택완료
          $('.select_complete').click(function(){
              $('.reservation_panel').fadeOut(200);
          });


          //사람추가
          var row_persons = {
              row_person0: null,
              row_person1: 2,
              row_person2: 2,
              row_person3: 2
          };
          var row_childs = {
              row_child0: null,
              row_child1: 0,
              row_child2: 0,
              row_child3: 0
          }; 
          var current_person=2;
          var current_child=0;

  
          //플러스 버튼 
          $('.person_pl').click(function(){
              
                  // 현재 클릭된 요소를 기준으로 키를 생성
                  var dynamicPersonKey = 'row_person' + $(this).parent().parent().index();
                  var dynamicChildKey = 'row_child' + $(this).parent().parent().index();
                  // 객체에서 값을 가져옵니다.

          
              
              console.log('row_persons[dynamicPersonKey]:'+row_persons[dynamicPersonKey]);
              console.log('row_childs[dynamicChildKey]:'+row_childs[dynamicChildKey]);
              if(row_persons[dynamicPersonKey]+row_childs[dynamicChildKey]<3){
                  // 현재 요소의 이전 요소의 텍스트를 가져옵니다.
                  var text = $(this).prev().text();

                  // 정규 표현식을 사용하여 텍스트에서 모든 숫자를 찾습니다.
                  var numbers = text.match(/\d+/g);

                  if (numbers && numbers.length > 0) {
                      // 첫 번째 숫자를 찾았다면, 이를 정수로 변환합니다.
                      var number = parseInt(numbers[0]);

                      // 숫자를 증가시키거나 변경합니다.
                      var newNumber = number + 1; // 예시: 숫자를 1 증가시킵니다.

                      // 새 숫자로 텍스트를 업데이트합니다.
                      var newText = text.replace(number, newNumber);
                      $(this).prev().text(newText);
                  }

                  // 성인 판별 조건식
                  if($(this).prev().hasClass('grown')){
                      row_persons[dynamicPersonKey]++
                      current_person+=1
                      $('.person_amount').text(current_person);
     
                  } else {
                      row_childs[dynamicChildKey]++
                      current_child+=1
                      $('.child_amount').text(current_child);

                  }
                  if(row_persons[dynamicPersonKey]+row_childs[dynamicChildKey]>=3){
                      $(this).parent().parent().find('.person_pl').css({color:"#acacac",backgroundColor:'#f7f7f7'})
                      $(this).prev().prev().css({color:"#000",backgroundColor:'#fff'});
                  };

  
                  
                  

                  //버튼 비활성화
                  if(
                  row_persons[dynamicPersonKey]>=1
                  ||
                  row_childs[dynamicChildKey]>=0
                  ){
                      $(this).prev().prev().css({color:"#000",backgroundColor:'#fff'});
                  }
              };
              
              
          });

          // 마이너스 버튼
          $('.person_mi').click(function(){
              
                  // 현재 클릭된 요소를 기준으로 키를 생성
                  var dynamicPersonKey = 'row_person' + $(this).parent().parent().index();
                  var dynamicChildKey = 'row_child' + $(this).parent().parent().index();
                  // 객체에서 값을 가져옵니다.

                  
                  
              
                  if(
                  row_persons[dynamicPersonKey]+row_childs[dynamicChildKey]>1
                  &&row_childs[dynamicChildKey]>0 
                  ||
                  row_persons[dynamicPersonKey]+row_childs[dynamicChildKey]>1
                  &&row_persons[dynamicPersonKey]>=1
                  ){
                      
                      if($(this).next().hasClass('grown')){
                         
                          if(row_persons[dynamicPersonKey]<=1){return;};
                      }else{
                          if(row_childs[dynamicChildKey]<=0){return;};
                      };
                      // 현재 요소의 이전 요소의 텍스트를 가져옵니다.
                      var text = $(this).next().text();

                      // 정규 표현식을 사용하여 텍스트에서 모든 숫자를 찾습니다.
                      var numbers = text.match(/\d+/g);

                      if (numbers && numbers.length > 0) {
                          // 첫 번째 숫자를 찾았다면, 이를 정수로 변환합니다.
                          var number = parseInt(numbers[0]);

      
                          var newNumber = number - 1; 

                          // 새 숫자로 텍스트를 업데이트합니다.
                          var newText = text.replace(number, newNumber);
                          $(this).next().text(newText);
                      }

                      //성인 판별 조건식
                      if($(this).next().hasClass('grown')){
                          row_persons[dynamicPersonKey]--
                          current_person-=1
                          $('.person_amount').text(current_person);
                          
                      } else {
                          row_childs[dynamicChildKey]--
                          current_child-=1
                          $('.child_amount').text(current_child);
                      }
                      //플러스 정상화
                      $(this).parent().parent().find('.person_pl').css({color:"#000",backgroundColor:'#fff'});
                      //마이너스 비활성
                      if($(this).next().hasClass('grown')){
                          if(row_persons[dynamicPersonKey]<=1){
                              $(this).css({color:"#acacac",backgroundColor:'#f7f7f7'});
                          };
                      } else {
                          if(row_childs[dynamicChildKey]<=0){
                              $(this).css({color:"#acacac",backgroundColor:'#f7f7f7'});
                          };
                      }
                  };
           
        

              
          });
          
          
          //객실 추가
          let room_Sw=0;
          $('.add_room_btn_wrap').click(function(event){
              event.stopPropagation(); // 이벤트 버블링 중단
                  
              if(room_amount<3){
                  //객실 화면 구현
                  if($('.add_room_row').eq(0).is(':visible')&&$('.add_room_row').eq(2).is(':visible')){
                      room_amount=1;
                      room_Sw=1;
                  };
                  $('.add_room_row').eq(room_amount).show();
                  
                  room_amount++
                  if(room_amount>=3){
                      $('.add_room_btn_wrap').text('객실은 3개까지만 가능합니다.').css({color:'#4e4c48',fontSize:12,cursor:'default'});
                      room_amount=3
                  };

                  //book_wrap 연동
                  var dynamicPersonKey = 'row_person' + room_amount
                  var dynamicChildKey = 'row_child' + room_amount
                  current_person+=row_persons[dynamicPersonKey]
                  $('.person_amount').text(current_person);
                  current_child+=row_childs[dynamicChildKey]
                  $('.child_amount').text(current_child);
                  
                  //스위치 조건
                  if(room_Sw){
                      room_amount++
                      room_Sw=0;
                  };

              }
              $('.room_amount').text(room_amount)

          });
          //객실 제거
          $('.x_mark').click(function(){
              $(this).parent().hide();

              $('.add_room_btn_wrap').html("<span>객실추가</span><div class='add_room_btn'>+</div>").css({color:'black',fontSize:16,cursor:'cursor'});

              //book_wrap 연동
              if($('.add_room_row').eq(0).is(':visible')&&$('.add_room_row').eq(2).is(':visible')){
                      room_amount=2;
                      room_Sw=1;
                  };
              
              

              var dynamicPersonKey = 'row_person' + room_amount
              var dynamicChildKey = 'row_child' + room_amount
              current_person-=row_persons[dynamicPersonKey]
              $('.person_amount').text(current_person);
              current_child-=row_childs[dynamicChildKey]
              $('.child_amount').text(current_child);
              room_amount--
              
              //스위치조건
              if(room_Sw){
                  room_amount++
                  room_Sw=0;
              };

              $('.room_amount').text(room_amount)
          })
