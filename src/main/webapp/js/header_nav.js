// 공통 이벤트 핸들러 함수
function toggleSlide(elementSelector, action) {
  $(elementSelector).stop()[action](200);
}

// 네비게이션 항목에 대한 이벤트 핸들러 설정
function setupNavHandlers(navSelector, subMenuSelector) {
  $(navSelector).on({
    mouseenter: function () {
      toggleSlide(subMenuSelector, 'slideDown');
    },
    mouseleave: function () {
      toggleSlide(subMenuSelector, 'slideUp');
    }
  });
}

// 이벤트 핸들러 적용
setupNavHandlers(".top_right_nav_03", ".confirm");
setupNavHandlers(".top_right_nav_04", ".lang");
setupNavHandlers(".bot_left_nav_01", ".header_nav_01_sub");
setupNavHandlers(".bot_left_nav_02", ".header_nav_02_sub");
setupNavHandlers(".bot_right_nav_01", ".header_nav_r01_sub");
setupNavHandlers(".bot_right_nav_02", ".header_nav_r02_sub");
setupNavHandlers(".bot_right_nav_03", ".header_nav_r03_sub");
setupNavHandlers(".header_nav_01_sub", ".header_nav_01_sub");
setupNavHandlers(".header_nav_02_sub", ".header_nav_02_sub");
setupNavHandlers(".header_nav_r01_sub", ".header_nav_r01_sub");
setupNavHandlers(".header_nav_r02_sub", ".header_nav_r02_sub");
setupNavHandlers(".header_nav_r03_sub", ".header_nav_r03_sub");

// 링크 클릭 방지
$('a[href="#"]').click(function (e) {
  e.preventDefault();
});
$('a[href="#"]').each(function () {
  $(this).click(function (e) {
    e.preventDefault();
  });
});

const nav = document.querySelector('.header_wrap');