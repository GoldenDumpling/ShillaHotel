$(document).ready(function () {
  /* scrollTo plug in 사용 */
  $(".top ").click(function (e) {
    e.preventDefault();

    // scrollTo(링크 || Y축 픽셀값, 애니메이션 시간)
    $(window).scrollTo(this.hash || 0, 500);
  });

  $(window).on("scroll", function () {
    var scroll = $(this).scrollTop();
    scroll >= 100 ? $("aside>div").stop().fadeIn() : $("aside>div").stop().fadeOut();
  });

  /* animate 이용, 부드럽게 화면 상단으로 이동 */

  $('.top').on('click', function(e) {
    e.preventDefault();
    $('html, body').stop().animate({scrollTop: 0}, 1000, 'swing');
  });   
});
