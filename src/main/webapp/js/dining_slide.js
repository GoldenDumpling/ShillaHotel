/* 스택이용 */
class StackDining {
  constructor() {
    this.dining = []; // 배열을 이용하여 스택 구현
  }

  // 스택에 원소 추가
  push(diningNum) {
    this.dining.push(diningNum);
  }

  // 스택에서 가장 최근에 추가된 원소 제거하고 반환
  pop() {
    if (this.isEmpty()) {
      return "Underflow"; // 더이상 제거할 원소가 없는 경우
    }
    return this.dining.pop();
  }

  // 스택이 비어있는지 확인
  isEmpty() {
    return this.dining.length === 0;
  }
  // 스택 비우기
  clear() {
    this.dining = [];
  }
  peek() {
      if (this.isEmpty()) {
        return "Stack is empty";
      }
      return this.dining[this.dining.length - 1];
    }
}

//스택 객체 생성
const lastDining = new StackDining();

var diningIndex = 0;
lastDining.push(0);
function changeDining(num) {
  let check1 = lastDining.peek();
  let check2 = num;
  lastDining.pop();
  lastDining.pop();
  ++diningIndex;

  /* active클래스 변경 */
  let dininglength = $('.dining_tabs').children().length;
  for(let i=0; i<dininglength; i++){
    $('.dining_tabs').children().eq(i).children().removeClass('active');
  }
  $('.dining_tabs').children().eq(num).children().addClass('active');

  //브라우저 최초 실행시 객실 cursor 적용을 위해 실행되는 함수
  if(diningIndex === 1 || diningIndex === 2){
      setTimeout(function(){
          $('.dining_contents').eq(0).children().children().eq(0).css({transition:'all 0.5s',transform:'translateX(-60px)'});
          $('.dining_contents').eq(0).find('.left_contents_bottom>img').css({transition:'all 0.5s',transform:'translateX(-70px)'})
          $('.dining_contents').eq(0).find('.left_contents_bottom>p').css({transition:'all 0.5s',transform:'translateX(30px)'});
          $('.dining_contents').eq(0).children().eq(1).css({transition:'all 0.5s',transform:'translateX(70px)'})
          $('.dining_contents').eq(0).css({transition:'all 0.5s',opacity:'1'});
      },100)
      diningIndex++;
      return;
  }
  /* 슬라이드가 다르면 이전슬라이드의 위치값 초기화 후 안보이게 하기*/  
  if(check1 !== check2){
    console.log("check1 : "+check1);
    console.log("check2 : "+check2);

      /* 슬라이드 z 위치값 */
      $('.dining_contents').eq(check2).css({zIndex:'diningIndex'+10});
      
      $('.dining_contents').eq(check1).children().children().eq(0).css({zIndex:'0'});
      $('.dining_contents').eq(check1).find('.left_contents_bottom>img').css({zIndex:'0'});
      $('.dining_contents').eq(check1).find('.left_contents_bottom>p').css({zIndex:'0'});
      $('.dining_contents').eq(check1).children().eq(1).css({zIndex:'0'});
      $('.dining_contents').eq(check1).css({zIndex:'0'});

      $('.dining_contents').eq(check2).children().children().eq(0).css({transition:'none',zIndex:'2000'});
      $('.dining_contents').eq(check2).find('.left_contents_bottom>img').css({transition:'none',zIndex:'2000'});
      $('.dining_contents').eq(check2).find('.left_contents_bottom>p').css({transition:'none',zIndex:'2000'});
      $('.dining_contents').eq(check2).children().eq(1).css({transition:'none',zIndex:'2000'});
      $('.dining_contents').eq(check2).css({transition:'none',zIndex:'2000'});

      /* 이전 슬라이드와 값이 다를때 현재 슬라이드 트랜지션 적용 */
      $('.dining_contents').eq(check2).children().children().eq(0).css({transition:'all 0.5s ease-out'});
      $('.dining_contents').eq(check2).find('.left_contents_bottom>img').css({transition:'all 0.5s ease-out'});
      $('.dining_contents').eq(check2).find('.left_contents_bottom>p').css({transition:'all 0.5s ease-out'});
      $('.dining_contents').eq(check2).children().eq(1).css({transition:'all 0.5s ease-out'});
      $('.dining_contents').eq(check2).css({transition:'all 0.5s'});

      $('.dining_contents').eq(check2).children().children().eq(0).css({transform:'translateX(-60px)'});
      $('.dining_contents').eq(check2).find('.left_contents_bottom>img').css({transform:'translateX(-70px)'})
      $('.dining_contents').eq(check2).find('.left_contents_bottom>p').css({transform:'translateX(30px)'});
      $('.dining_contents').eq(check2).children().eq(1).css({transform:'translateX(70px)'})
      $('.dining_contents').eq(check2).css({opacity:'1'});


      
      // 값이 달라 일정시간 이후 이전슬라이드의 위치값 초기화
      setTimeout(function(){
        $('.dining_contents').eq(check1).children().children().eq(0).css({transform:'translateX(60px)'});
        $('.dining_contents').eq(check1).find('.left_contents_bottom>img').css({transform:'translateX(70px)'})
        $('.dining_contents').eq(check1).find('.left_contents_bottom>p').css({transform:'translateX(-30px)'});
        $('.dining_contents').eq(check1).children().eq(1).css({transform:'translateX(-70px)'})
        $('.dining_contents').eq(check1).css({opacity:'0'});
      },500)
  }
  lastDining.push(num);
}

// 첫 로딩시 객실 cursor를 적용시키기 위해 추가된 구문
changeDining(0);
if(diningIndex == 2){
  changeDining(0);
}



/* const tabs = document.querySelectorAll(".dining_tab");
const contents = document.querySelectorAll(".dining_contents");

// 로드시 첫 번째 탭 컨텐츠 슬라이딩되게 표시
function onLoad() {
  document.querySelector(`.dining_left_contents >img `).style.transform = "translateX(0px)";
  document.querySelector(`.left_contents_bottom img`).style.transform = "translateX(0px)";
  document.querySelector(`.left_contents_bottom .dining_main_text`).style.transform = "translateX(0px)";
  document.querySelector(`.dining_contents > img`).style.transform = "translateX(0px)"; 
}
onLoad();

// 탭 전환
function switchContents(idx) {
  const currentContent = document.querySelector(`.dining_contents${idx}`);
  const rightImg = document.querySelector(`.dining_contents${idx} > img`);
  const [leftTop, leftBottom] = Array.from(document.querySelector(`.dining_left${idx}`).children);
  const [bottomImg, bottomText] = leftBottom.children;
  const prevLeft = Array.from(document.querySelectorAll(".dining_left_contents"));
  const prevRight = Array.from(document.querySelectorAll(".dining_contents > img"));
  const transformPositive = "transform: translateX(30px); transition: all 0.5s";
  const transformNegative = "transform: translateX(-30px); transition: all 0.5s";
  
  
  contents.forEach((content) => content.style.zIndex = 0);
  currentContent.style.zIndex = 99;

  prevLeft.forEach((prev, index) => {
    const [top, bottom] = prev.children;
    const [img, text] = bottom.children;

    if(idx !== index + 1) {
      top.style.cssText = transformPositive;
      img.style.cssText = transformPositive;
      text.style.cssText = transformNegative;
    }
  });
  prevRight.forEach((prev, index) => {
    if(idx !== index + 1)
    prev.style.cssText = transformNegative;
  });

  const reset = "transform: translateX(0px); transition: all 0.5s";
  rightImg.style.cssText = reset;
  leftTop.style.cssText = reset;
  bottomImg.style.cssText = reset;
  bottomText.style.cssText = reset;
}

tabs.forEach(tab => tab.addEventListener("click", function (e) {
  // 탭 메뉴 호버 효과
  tabs.forEach((tab) => tab.classList.remove("active"));
  const clicked = e.target;
  clicked.classList.add("active");

  switchContents(tab.dataset.idx);
}));

 */

