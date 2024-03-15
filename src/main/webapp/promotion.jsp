<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
      객실 패키지 | 회원전용 프로모션 | 신라리워즈 | The Shilla Hotels & Resorts
    </title>
    <link rel="shortcut icon" href="./images/main/app_icon.png" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/header.css" />
    <link rel="stylesheet" href="./css/footer.css" />
    <link rel="stylesheet" href="./css/promotion.css" />
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="./css/jquery.bxslider.css" />
    <script src="./js/jquery.bxslider.js"></script>
    <script>
    </script>
  </head>
  <body>
    <div id="wrap">
      <header>
      	<jsp:include page="/include/header.jsp" />
      </header>
      <main>
        <div class="section_promotion w1200">
          <h1>스페셜&nbsp;오퍼</h1>
          <h3><a href="./ready.jsp">뉴스레터 구독</a></h3>
          <h4>
            <a href="./index.jsp"
              ><img src="./images/promotion/top/free-icon-home-25694 1.png"
            /></a>
            <p>
              &nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;<span
                ><a href="./promotion.jsp">스페셜 오퍼</a></span
              >&nbsp;&nbsp;><span
                >&nbsp;&nbsp;<a href="./ready.jsp">객실&nbsp;패키지</a></span
              >
            </p>
          </h4>
          <p>SPECIAL&nbsp;&nbsp;&nbsp;OFFERS</p>
          <div class="sort_area">
            <div>
              <label class="custom-radio">
                <input
                  type="radio"
                  name="radio"
                  class="radio-button"
                  value="see_all"
                  checked
                />
                <span class="checkmark"></span>
                전체 보기
              </label>
            </div>

            <div>
              <label class="custom-radio">
                <input
                  type="radio"
                  name="radio"
                  class="radio-button"
                  value="package"
                />
                <span class="checkmark"></span>
                객실패키지
              </label>
            </div>

            <div>
              <label class="custom-radio">
                <input
                  type="radio"
                  name="radio"
                  class="radio-button"
                  value="dining"
                />
                <span class="checkmark"></span>
                다이닝 프로모션
              </label>
            </div>

            <div>
              <label class="custom-radio">
                <input
                  type="radio"
                  name="radio"
                  class="radio-button"
                  value="flower"
                />
                <span class="checkmark"></span>
                플라워
              </label>
            </div>

            <div>
              <label class="custom-radio">
                <input
                  type="radio"
                  name="radio"
                  class="radio-button"
                  value="web_benefit"
                />
                <span class="checkmark"></span>
                웹 회원 혜택
              </label>
            </div>
          </div>
          <div class="offer w1200">
            <div class="web_benefit">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer1.png"
                  alt="프로모션01"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>제주신라호텔</p>
                  <h2>Rewards&nbsp;Dear&nbsp;&&nbsp;My&nbsp;Family</h2>
                  <p>THE&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.11.28 ~ 2024.01.12</h3>
                </div>
              </a>
            </div>
            <div class="package">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer2.png"
                  alt="프로모션02"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>서울신라호텔</p>
                  <h2>Rewards&nbsp;Smart&nbsp;Offer</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.01 ~ 2024.01.31</h3>
                </div>
              </a>
            </div>
            <div class="package web_benefit">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer3.png"
                  alt="프로모션03"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>제주신라호텔</p>
                  <h2>Rewards&nbsp;Basic&nbsp;Edition</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.01 ~ 2024.02.28</h3>
                </div>
              </a>
            </div>
            <div class="dining">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer4.png"
                  alt="프로모션02"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>서울신라호텔</p>
                  <h2>Premium Lounge Moment</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.10.30~2024.01.31</h3>
                </div>
              </a>
            </div>
            <div class="dining web_benefit">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer5.png"
                  alt="프로모션02"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>서울신라호텔</p>
                  <h2>Our&nbsp;Memories&nbsp;in&nbsp;Autumn&nbsp;II</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.05~2024.03.01</h3>
                </div>
              </a>
            </div>
            <div class="package web_benefit">
              <a href="./ready.jsp"
                ><img src="./images/promotion/sort_area/offer6.png"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>서울신라호텔</p>
                  <h2>A&nbsp;Delightful&nbsp;Winter&nbsp;Royal&nbsp;Tea</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.01~2024.02.28</h3>
                </div>
              </a>
            </div>

            <div class="dining flower">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer7.png"
                  alt="프로모션07"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>신라스테이&nbsp;광화문</p>
                  <h2>Especially&nbsp;for&nbsp;U</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.06 ~ 2024.12.26</h3>
                </div>
              </a>
            </div>
            <div class="dining web_benefit">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer8.png"
                  alt="프로모션08"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>신라스테이&nbsp;광화문</p>
                  <h2>Wonderful&nbsp;2Nights&nbsp;(1+1)</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.01.07 ~ 2024.11.30</h3>
                </div>
              </a>
            </div>
            <div class="dining">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer9.png"
                  alt="프로모션09"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>제주신라호텔</p>
                  <h2>More&nbsp;than&nbsp;pakage</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.01 ~ 2024.02.28</h3>
                </div>
              </a>
            </div>
            <div class="package web_benefit">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer10.png"
                  alt="프로모션10"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>신라스테이&nbsp;광화문</p>
                  <h2>Romantic&nbsp;Stay&nbsp;in&nbsp;강북</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.09.05~2023.12.31</h3>
                </div>
              </a>
            </div>
            <div class="dining flower">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer11.png"
                  alt="프로모션11"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>신라&nbsp;모노그램</p>
                  <h2>Our&nbsp;Memories&nbsp;in&nbsp;Winter&nbsp;I</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.05 ~ 2024.03.01</h3>
                </div>
              </a>
            </div>
            <div class="package web_benefit flower">
              <a href="./ready.jsp"
                ><img
                  src="./images/promotion/sort_area/offer12.png"
                  alt="프로모션12"
              /></a>
              <a href="./ready.jsp">
                <div class="offer_text">
                  <p>서울신라호텔</p>
                  <h2>Chistmas&nbsp;edition</h2>
                  <p>The&nbsp;SHILLA&nbsp;HOTELS&nbsp;&&nbsp;RESORT</p>
                  <h3>2023.12.01 ~ 2024.02.28</h3>
                </div>
              </a>
            </div>
          </div>
        </div>
      </main>
      <footer>
      	<jsp:include page="/include/footer.jsp" />
      </footer>
      <aside>
        <div><a href="#" class="top">TOP</a></div>
      </aside>
    </div>
    <script>
      $(".radio-button").change(function () {
        var selectedValue = $(this).val();

        // '전체 보기'가 선택된 경우
        if (selectedValue === "see_all") {
          $(".offer > div")
            .fadeOut(400)
            .promise()
            .done(function () {
              $(".offer > div").fadeIn(400);
            });
        }
        // '객실패키지'가 선택된 경우
        else if (selectedValue === "package") {
          $(".offer > div")
            .fadeOut(400)
            .promise()
            .done(function () {
              $(".offer > ." + selectedValue).fadeIn(400);
            });
        }
        // '다이닝 프로모션'이 선택된 경우
        else if (selectedValue === "dining") {
          $(".offer > div")
            .fadeOut(400)
            .promise()
            .done(function () {
              $(".offer > ." + selectedValue).fadeIn(400);
            });
        }
        // '플라워'가 선택된 경우
        else if (selectedValue === "flower") {
          $(".offer > div")
            .fadeOut(400)
            .promise()
            .done(function () {
              $(".offer > ." + selectedValue).fadeIn(400);
            });
        }
        // '웹 회원 혜택'이 선택된 경우
        else if (selectedValue === "web_benefit") {
          $(".offer > div")
            .fadeOut(400)
            .promise()
            .done(function () {
              $(".offer > ." + selectedValue).fadeIn(400);
            });
        }
        $('a[href="#"]').each(function () {
          $(this).click(function (e) {
            e.preventDefault();
          });
        });
      });
    </script>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <script src="./js/scroll.js"></script>
  </body>
</html>
