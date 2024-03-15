<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Overview | About The Shilla | The Shilla Hotels & Resorts</title>
    <link rel="shortcut icon" href="./images/main/app_icon.png">
    <!-- 기본 Reset CSS -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 페이지 관련 CSS -->
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/brand.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- prefix js파일 -->
    <script src="./js/prefixfree.min.js"></script>
    <script>
        $(function(){
            $('a[href="#"]').each(function() {
        $(this).click(function(e) {
            e.preventDefault();
        })
    });
        });
    </script>   
</head>
<body>
    <div id="wrap">
        <header>
			<jsp:include page="/include/header.jsp" />
        </header><!-- Brand Title -->
        <section class="brand_title">
          <h1>호텔 신라 소개</h1>
          <p>‘삼성을 대표하는 얼굴’ 신라 호텔을 소개합니다.</p>
          <div class="location">
            <ul>
                <li><a href="./index.jsp"><img src="./images/brand/home.png"></a>&nbsp;&nbsp;&nbsp;>&nbsp;</li>
                <li><span><a href="./ready.jsp">호텔신라</a></span>&nbsp;&nbsp;&nbsp;>&nbsp;</li>
                <li class="current"><span>호텔 신라 소개</span></li>
            </ul>
        </div>
        </section>
        <!-- /Brand Title -->
        <!-- Brand About us -->
        <section class="brand_about_us w1200">
            <h2 class="about_us">
              한국의 대표<br />
              글로벌 럭셔리 호텔
            </h2>
           <div class="about_us_txt">
              <h2 class="about_us_title">
                서울의 중심에 위치한 더 신라 호텔 서울은 유니크 & 스타일리시한
                인테리어와<br />개인 맞춤 서비스를 통해 고객에게 완벽한 하루를
                선사합니다.
              </h2>
            <hr class="seperator" />
            <p class="about_us_explain">
              호텔신라는 국내외에서 높은 평가를 받으며 수많은 국빈 방문과 국제
              행사를 성공적으로 치르고 있습니다.<br />
              삼성 그룹의 대표적인 얼굴로 자리매김하며 한국을 대표하는 호텔로
              자부심과 책임감을 가지고 있습니다.<br />
              호텔신라의 역사는 천년 동안 빛나는 문화와 예술을 즐겼던 신라 왕조에서
              착안되었으며, <br />1979년 3월에는 삼성그룹의 이병철 초대 회장의 의지에 따라
              개관되었습니다.<br />
              이를 통해 호텔신라는 뛰어난 서비스와 역사적인 유산을 기반으로 한
              현대적이고 고급스러운 휴식 공간을 제공하며 꾸준한 성장을 이루어내고
              있습니다. 고객들에게 더욱 특별하고 편안한 경험을 제공하여 한국의 호텔
              산업을 더욱 발전시키고 있습니다.
            </p>
           </div>
        </section>
        <!-- /Brand About us -->
        <!-- Brand Autograph -->
        <section class="brand_autograph">
          <div class="brand_autograph_box">
            <div class="autograph_image">
              <img
                src="./images/brand/brand_logo_autograph_collection.jpg"
                alt="autograph collection logo image"
              />
              <img
                src="./images/brand/brand_logo_marriott_rewards.jpg"
                alt="marriott rewards image"
              />
            </div>
            <hr class="seperator" />
            <div class="autograph_text">
              <h3>
                신라호텔은 자체적인 호텔 브랜드로서 '오토그래프 컬렉션'을 선보이고
                있습니다.
              </h3>
              <p>
                이 컬렉션은 메리어트 인터내셔널이 보유한 럭셔리 라이프 스타일
                브랜드로, 각 호텔이 위치한 지역의 문화, 예술, 디자인 등을 주제로 한
                독특한 경험을 제공합니다. 오토그래프 컬렉션은 전 세계적으로 100여 개
                이상의 호텔이 참여하고 있으며, 이 중 한국에서는 신라호텔을 비롯한
                몇몇 호텔에서 이 브랜드를 만날 수 있습니다. 신라호텔의 오토그래프
                컬렉션은 고객들에게 독특하고 개성 넘치는 호텔 경험을 선사하여 기존
                호텔과는 차별화된 즐거움을 제공하고 있습니다.
              </p>
            </div>
          </div>
        </section>
        <!-- /Brand Autograph -->
  
        <!-- Brand Design -->
        <section id="brand_design">
            <!-- Img Area -->
            <div class="brand_design_img">
                <h2>
                    <a href="#">
                        <img src="./images/brand/brand_design.png" alt="브랜드디자인이미지">
                    </a>
                </h2>
            </div>
            <!-- /Img Area -->
            <!-- Contents -->
            <div class="brand_design_content w1200">
                <h2>
                    한국에서 가장 <br>
                    세련된 호텔 디자인
                </h2>
                <article class="brand_design_content_text">
                    <div class="brand_design_content_text01">
                        <p>
                            서울신라호텔은 완벽을 향한 전력투구를 내세우며, 최고의 아이콘을 만들기 위해 노력합니다. <br>
                            더욱 세련되고 새로운 경험을 추구하며 디테일에 신경 쓰는 서울신라호텔은 "또 다른 집" 같은 느낌을 고객들에게 제공합니다. <br>
                            특히 객실과 레스토랑은 고객들에게 특별한 매력을 전달하기 위해 노력하고 있습니다.
                        </p>
                        <p>
                            Designer / Peter M. Remedios
                        </p>
                    </div>

                    <hr> 

                    <div class="brand_design_content_text02">
                        <h3>
                            신라호텔 레노베이션
                        </h3>
                        <p>
                            신라 호텔은 한국 호텔 업계에서 도전적인 위치를 차지하며, 그간의 대대적인 레노베이션을 통해 세계 일류 호텔로의 도약을 목표로 하고 있습니다. <br>
                            이번 프로젝트에는 세계적인 호텔 디자이너 피터 리미디오스가 참여하여 고급 요트의 프라이빗 바와 세심한 디테일을 갖춘 객실, <br>
                            통유리로 된 이그제큐티브 라운지, 그리고 한국적 요소를 살린 한식당 '라연' 등을 통해 한국적 아름다움과 현대적 고급스러움을 동시에 표현했습니다. <br>
                            또한, 어반 아일랜드라 명명된 야외 수영장은 도심 속 휴식 공간으로서의 역할을 하며, 비즈니스 마이스 공간으로의 활용 가능성을 보여줍니다.
                        </p>
                    </div>
                </article>
            </div>
            <!-- /contents -->
        </section>
        <!-- /Brand Design -->
        <!-- Brand HotelDevelopInfo -->
        <section class="brand_hoteldevelopinfo w1200">
            <h2>호텔 개발</h2>
            <div class="line"></div>
            <p>H O T E L&nbsp;&nbsp;&nbsp;D E V E L O P M E N T</p>
            <!-- Barnd Hospitality -->
            <div class="barnd_hospitality">
                <h3>Assurance of the Best in Hospitality</h3>
                <p>호텔신라는 한국을 대표하는 호텔로서 자부심과 책임감을 가지고 국내 서비스 산업을 선도하고 있습니다. <br>
                    '최고의 호스피탈리티 기업'을 목표로 오랫동안 품위와 전통을 유지하며 고객의 마음을 사로잡아왔습니다. <br>
                    독보적인 브랜드 가치와 운영 노하우를 바탕으로 차별화된 공간에서 최고 수준의 서비스를 제공하는 데 호텔신라가 함께 하겠습니다.</p>
                </div>
            <!-- /Barnd Hospitality -->
            <!-- Barnd Global -->
            <div class="barnd_global">
                <h3>Global Presence</h3>
                <p>호텔신라는 국내 17개 호텔을 포함하여 전세계 총 35개 호텔 및 리조트 프로퍼티를 운영 ∙ 개발 중에 있으며, <br>
                    동남아, 중국, 일본, 미국, 영국, 독일 등에 12개 사업 지점을 보유하며 탄탄한 글로벌 네트워크를 구축하고 있습니다.</p>
                </div>
            <!-- /Barnd_Global -->
        </section>
        <!-- /Brand HotelDevelopInfo -->
        <!-- Brand Maps -->
        <div class="barnd_maps">
            <img src="./images/brand/brand_map.jpg" alt="지도이미지"></div>
        </div>
        <!-- /Brand Maps -->
        <!-- Brand List -->
        <section class="brand_list w1200">
            <h3>Your Reputable Partner, Hotel Shilla</h3>
            <p>호텔신라는 프리미엄 라이프스타일 전문가로서 높은 품격과 신뢰를 바탕으로 차별화된 가치를 선사합니다.</p>
            <div class="brand_listbox">
                <dl class="no_ml">
                    <dt>브랜드</dt>
                    <div class="line"></div>
                    <dd>
                        신뢰와 품격을 상징하는 이름, ‘신라’는 <br>
                        브랜드 파워에 걸맞은 우호적인 <br>
                        사업 환경과 최적의 파트너십을 <br>
                        선사하며 대한민국 호텔 산업을 <br>
                        선도하고 있습니다.
                    </dd>
                </dl>
                <dl>
                    <dt>품질</dt>
                    <div class="line"></div>
                    <dd>
                        최고 수준의 퀄리티를 <br>
                        자랑하는 신라의 표준 서비스는 <br>
                        고객의 디테일한 부분까지 살피며 <br>
                        품격 있고 차별화된 <br>
                        라이프 스타일을 제공합니다.
                    </dd>
                </dl>
                <dl>
                    <dt>디자인</dt>
                    <div class="line"></div>
                    <dd>
                        Peter Remedious, Piero Lissoni, <br>
                        박선기 등 세기의 건축가 및 <br>
                        디자이너가 구현한 감각적이고 <br>
                        정제된 라이프스타일을 ‘신라’의 <br>
                        공간에 담아냅니다.
                    </dd>
                </dl>
                <dl class="no_ml no_mb">
                    <dt>인재</dt>
                    <div class="line"></div>
                    <dd>오랜 기간 동안 최고의 <br>
                        호텔리어를 양성해온 <br>
                        풍부한 경험을 바탕으로 <br>
                        ‘신라’만의 운영 노하우와 <br>
                        서비스 DNA를 전달합니다.</dd>
                </dl>
                <dl class="no_mb">
                    <dt>시스템</dt>
                    <div class="line"></div>
                    <dd>국내 호텔 시장을 이끌어온 <br>
                        경험을 살린 체계적인 노하우와 <br>
                        신라리워즈 등 자체 관리 <br>
                        프로그램을 이용하여 <br>
                        안정적 수익구조를 실현합니다.
                    </dd>
                </dl>
                <dl class="no_mb">
                    <dt>시너지</dt>
                    <div class="line"></div>
                    <dd>신라면세점의 면세유통 <br>
                        네트워크를 비롯하여 기업 출장 <br>
                        관리 및 헬스케어 서비스, <br>
                        삼성 관계사 연계 수요 등으로 <br>
                        풍부한 시너지를 만들어 냅니다.
                    </dd>
                </dl>
            </div>
        </section>
        <!-- /Brand List -->
        <footer>
			<jsp:include page="/include/footer.jsp" />
        </footer>
        <aside>
            <div><a href="#" class="top">TOP</a></div>
        </aside>
    </div>
    <script src="./js/jquery.scrollTo.min.js"></script>
    <script src="./js/scroll.js"></script>
    <script>
        var storedData = localStorage.getItem('next_weekday');
        console.log(storedData);
    </script>
</body>
</html>