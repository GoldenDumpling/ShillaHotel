<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <script>
                $('a[href="#"]').each(function() {
        $(this).click(function(e) {
            e.preventDefault();
        })
    });
        </script>
        <div class="footer_imgs">
            <ul>
                <li class="no_ml"><a href="./ready.html"><img src="./images/includes/20190307_203847.png" alt=""></a></li>
                <li><a href="./ready.html"><img src="./images/includes/ZuilWay44aYMPGt4Ek5VXOPmel-GyQeK2maKRcopQs4Wm7vqzqIMZJt8WoCpK3FdSX9pfdEWMnXcUjWyKoRwSQ.gif" alt=""></a></li>
                <li><a href="./ready.html"><img src="./images/includes/shilla_stay.PNG" alt=""></a></li>
            </ul>
        </div>
        <div class="footer_list_border">
            <div class="footer_list w1200">
                <nav>
                    <ul>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#"><span>개인정보처리방침</span></a></li>
                        <li><a href="#"><span>영상정보처리기기 운영·관리 방침</span></a></li>
                        <li><a href="#">이메일 무단수집금지</a></li>
                        <li><a href="#">채용정보</a></li>
                    </ul>
                </nav>
                <ul>
                    <li><a target="_blank" href="https://facebook.com/p/The-Shilla-Seoul-%EC%84%9C%EC%9A%B8%EC%8B%A0%EB%9D%BC%ED%98%B8%ED%85%94-100063755614791/"><img src="./images/includes/fb.png" alt=""></a></li>
                    <li><a target="_blank" href="https://www.instagram.com/shillahotels/"><img src="./images/includes/ins.png" alt=""></a></li>
                </ul>
            </div>
        </div>
        <div class="footer_address_wrap">
            <div class="footer_address w1200">
                <ul>
                    <li class="no_ml">서울특별시 중구 동호로 249 (우 :04605)</li>
                    <li>신라호텔 02-2233-3131</li>
                    <li>신라리워즈 02-2230-5528</li>
                    <li>Copyright (C) HOTEL SHILLA CO.,LTD, ALL Rights Reserved.</li>
                    <button>
                        <ul>
                            <li class="btn1"><span><a target="_blank" href="https://www.shilla.net/seoul/index.do">서울신라호텔</a></span></li>
                            <li class="btn1"><span><a target="_blank" href="https://www.shilla.net/jeju/index.do">제주신라호텔</a></span></li>
                            <li class="btn1"><span><a target="_blank" href="https://www.shillamonogram.com/mghub/index.do?lang=ko">신라모노그램</a></span></li>
                            <li class="btn1"><span><a target="_blank" href="https://www.shillastay.com/stayhub/index.do">신라스테이</a></span></li>
                            <li class="btn2"><span>Family Site&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><img src="./images/includes/Polygon 1.png" alt=""></li>
                        </ul>
                    </button>
                </ul>
            </div>
        </div>
        <script>
            let check = 0;
            $('.btn2').click(function(){
                $('.btn1').css({'border-bottom':'1px solid #000'})
                $('.btn1').stop().slideToggle(150);
                if( check % 2 == 0 ){
                    $(this).parent().parent().parent().addClass('bdt');
                    setTimeout(function(){
                        $('button').removeClass('bdt');
                    },70)
                }
                if( check % 2 == 1 ){
                    $('.btn1').css({'border-bottom':'none'})
                }
                check++;
            })
        </script>