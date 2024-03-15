/* $('.room_contents').css({display:'none'}); 

/* 스택이용 */
class StackRoom {
  constructor() {
    this.room = []; // 배열을 이용하여 스택 구현
  }

  // 스택에 원소 추가
  push(roomNum) {
    this.room.push(roomNum);
  }

  // 스택에서 가장 최근에 추가된 원소 제거하고 반환
  pop() {
    if (this.isEmpty()) {
      return "Underflow"; // 더이상 제거할 원소가 없는 경우
    }
    return this.room.pop();
  }

  // 스택이 비어있는지 확인
  isEmpty() {
    return this.room.length === 0;
  }
  // 스택 비우기
  clear() {
    this.room = [];
  }
  peek() {
      if (this.isEmpty()) {
        return "Stack is empty";
      }
      return this.room[this.room.length - 1];
    }
}

//스택 객체 생성
const lastRoom = new StackRoom();

/* 링크 이동 방지 */
$('.room_gnb_menu ul li a').click(function(event){
  event.preventDefault();
})


var roomIndex = 0;
lastRoom.push(0);

function changeRoom(num) {
  let check1 = lastRoom.peek();
  let check2 = num;
  lastRoom.pop();
  lastRoom.pop();
  ++roomIndex;


  //브라우저 최초 실행시 객실 cursor 적용을 위해 실행되는 함수
  if(roomIndex === 1 || roomIndex === 2){
      setTimeout(function(){
          $('.room_contents').eq(0).children().eq(0).css({transition:'all 0.5s',transform:'translateX(-100px)'});
          $('.room_contents').eq(0).find('.right_contents>img').css({transition:'all 0.5s',transform:'translateX(60px)'});
          $('.room_contents').eq(0).find('.right_contents_bottom .room_main_text').css({transition:'all 0.5s',transform:'translateX(-100px)'});
          $('.room_contents').eq(0).find('.right_contents_bottom>img').css({transition:'all 0.5s',transform:'translateX(100px)'});
          $('.room_contents').eq(0).css({transition:'all 0.5s',opacity:'1'});
      },100)
      roomIndex++;
      return;
  }
  /* 슬라이드가 다르면 이전슬라이드의 위치값 초기화 후 안보이게 하기*/  
  if(check1 !== check2){
      /* 슬라이드 z 위치값 */
      $('.room_contents').eq(check2).css({zIndex:'roomIndex+10'});
      
      $('.room_contents').eq(check1).children().eq(0).css({zIndex:'0'});
      $('.room_contents').eq(check1).find('.right_contents>img').css({zIndex:'0'});
      $('.room_contents').eq(check1).find('.right_contents_bottom .room_main_text').css({zIndex:'0'});
      $('.room_contents').eq(check1).find('.right_contents_bottom>img').css({zIndex:'0'});
      $('.room_contents').eq(check1).css({zIndex:'0'});

      $('.room_contents').eq(check2).children().eq(0).css({transition:'none',zIndex:'2000'});
      $('.room_contents').eq(check2).find('.right_contents>img').css({transition:'none',zIndex:'2000'});
      $('.room_contents').eq(check2).find('.right_contents_bottom .room_main_text').css({transition:'none',zIndex:'2000'});
      $('.room_contents').eq(check2).find('.right_contents_bottom>img').css({transition:'none',zIndex:'2000'});
      $('.room_contents').eq(check2).css({transition:'none',zIndex:'2000'});

      /* 이전 슬라이드와 값이 다를때 현재 슬라이드 트랜지션 적용 */
      $('.room_contents').eq(check2).children().eq(0).css({transition:'all 0.5s ease-out'});
      $('.room_contents').eq(check2).find('.right_contents>img').css({transition:'all 0.5s ease-out'});
      $('.room_contents').eq(check2).find('.right_contents_bottom .room_main_text').css({transition:'all 0.5s ease-out'});
      $('.room_contents').eq(check2).find('.right_contents_bottom>img').css({transition:'all 0.5s ease-out'});
      $('.room_contents').eq(check2).css({transition:'all 0.5s'});

      $('.room_contents').eq(check2).children().eq(0).css({transform:'translateX(-100px)'});
      $('.room_contents').eq(check2).find('.right_contents>img').css({transform:'translateX(60px)'});
      $('.room_contents').eq(check2).find('.right_contents_bottom .room_main_text').css({transform:'translateX(-100px)'});
      $('.room_contents').eq(check2).find('.right_contents_bottom>img').css({transform:'translateX(100px)'});
      $('.room_contents').eq(check2).css({opacity:'1'});



      
      // 값이 달라 일정시간 이후 이전슬라이드의 위치값 초기화
      setTimeout(function(){
          $('.room_contents').eq(check1).children().eq(0).css({transition:'none',transform:'translateX(100px)'});
          $('.room_contents').eq(check1).find('.right_contents>img').css({transition:'none',transform:'translateX(-100px)'});
          $('.room_contents').eq(check1).find('.right_contents_bottom .room_main_text').css({transition:'none',transform:'translateX(100px)'});
          $('.room_contents').eq(check1).find('.right_contents_bottom>img').css({transition:'none',transform:'translateX(-100px)'});
          $('.room_contents').eq(check1).css({transition:'none',opacity:'0'});
      },500)
  }
  lastRoom.push(num);
}

// 첫 로딩시 객실 cursor를 적용시키기 위해 추가된 구문
changeRoom(0);
if(roomIndex == 2){
  changeRoom(0);
}

/* 객실 호버효과 */

var roomLength = $('.room_gnb_menu ul li').length;
$('.room_line').prev().on('mouseenter',function(){
  $(this).next().css({transition:'all 0.3s',transform:'scaleX(40)',backgroundColor:'black'});
}).on('mouseleave',function(){
  $(this).next().css({transform:'scaleX(0.01)',backgroundColor:'black'});
}).on('click',function(){
  for(let i=0; i<roomLength; i++){
      $('.room_line').prev().css({transition:'none',opacity:'0.4'});    
  }
  $(this).css({opacity:'1'});
});