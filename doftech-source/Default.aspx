

<!DOCTYPE html>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
	DOFTECH - Dream of Future Technology
</title><meta name="description" content="플랜트IT를 선두하는 기술집약중심 소프트웨어 개발회사입니다" /><meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /><meta name="format-detection" content="telephone=no" />
    <!--OpenGraph-->
    <meta property="og:type" content="website" /><meta property="og:image" content="img/logo.png" /><meta property="og:site_name" content="DOFTECH" /><meta property="og:title" content="DOFTECH" /><meta property="og:description" content="플랜트IT를 선두하는 기술집약중심 소프트웨어 개발회사입니다" /><meta property="og:url" content="http://www.doftech.co.kr/" /><link rel="canonical" href="http://www.doftech.co.kr/" /><link rel="shortlink" href="http://www.doftech.co.kr/" />
    <!--  Default favicon  -->
    <link href="./img/favicon.png" rel="shortcut icon" type="image/x-icon" /><link href="./img/favicon.png" rel="icon" type="image/png" sizes="32x32" /><link href="./img/favicon.png" rel="icon" type="image/png" sizes="16x16" />
    <!--  Custom favicon  -->
    <link href="./img/favicon.png" rel="apple-touch-icon" /><meta content="./img/favicon.png" name="msapplication-TileImage" /><meta content="./img/favicon.png" name="msapplication-config" /><meta content="#ffffff" name="msapplication-TileColor" /><meta content="#ffffff" name="theme-color" /><meta content="DOFTECH" name="apple-mobile-web-app-title" /><meta content="DOFTECH" name="application-name" />
    <!--Link Nomalizing CSS-->
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <!--Link Style CSS-->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
    <!--Link jQuery-->
    <script src="js/jquery-1.12.4.js"></script>
    <!--Script-->
    <script type="text/javascript">        
        $(document).ready(function () {
            //gnb 탐색시 그림자작동
            /*190403미팅 하위메뉴 삭제*/
            //$("#scrim").hide();
            //$("#nav").on("mouseover focusin", function () {
            //    $("#scrim").stop().fadeIn();
            //});
            //$("#nav").on("mouseout focusout", function () {
            //    $("#scrim").stop().fadeOut();
            //});
            if (window.innerWidth > 767) {
                close_mobMenu();

                $('.nav_menu h3 a').click(function () {
                    $('.nav_menu_list_wrapper').hide();
                });
                $('.nav_menu h3 a').on('mouseover focusin', function () {
                    $(this).parent().parent().siblings().children().children().removeClass('on');
                    $(this).addClass('on');
                });
                $('.nav_menu h3 a').on('mouseout blur', function () {
                    $(this).removeClass('on');
                });

            } else {

                //모바일
                var x = 0;
                $('.btn_mob_menu').click(function () {
                    if (x == 0) {
                        open_mobMenu();
                        x = 1;
                    } else {
                        close_mobMenu();
                        $('.nav_menu_list_wrapper').slideUp('1000');
                        x = 0;
                    }
                });

                //모바일 사이드 아코디언 메뉴
                $('.nav_menu h3 a').click(function () {
                    $(this).parent().parent().siblings().children('.nav_menu_list_wrapper').slideUp('1000');
                    $(this).parent().next().slideDown('1000');
                });

                for (i = 0; i < document.querySelectorAll('.nav_menu_list_wrapper').length; i++) {
                    document.querySelectorAll('.nav_menu_list_wrapper')[i].classList.remove('on');
                    document.querySelectorAll('.nav_menu h3 a')[i].removeAttribute('href');
                };



            }
        });
        window.addEventListener('resize', function () {
            if (window.innerWidth > 767) {
                close_mobMenu();
                document.querySelectorAll('.nav_menu h3 a')[0].setAttribute('href', 'aplus.aspx');
                document.querySelectorAll('.nav_menu h3 a')[1].setAttribute('href', 'si.aspx');
                document.querySelectorAll('.nav_menu h3 a')[2].setAttribute('href', 'careers.aspx');
                document.querySelectorAll('.nav_menu h3 a')[3].setAttribute('href', 'ceo.aspx');

                $('.nav_menu_list_wrapper').css({ 'display': 'none' });
                $('.nav_menu h3 a').click(function () {
                    $('.nav_menu_list_wrapper').css({ 'display': 'none' });
                });
                return false;
            }
            if (window.innerWidth <= 767) {
                //모바일
                var x = 0;
                $('.btn_mob_menu').click(function () {
                    if (x == 0) {
                        open_mobMenu();
                        x = 1;
                    } else {
                        close_mobMenu();
                        $('.nav_menu_list_wrapper').slideUp('1000');
                        x = 0;
                    }
                });

                for (i = 0; i < document.querySelectorAll('.nav_menu_list_wrapper').length; i++) {
                    document.querySelectorAll('.nav_menu_list_wrapper')[i].classList.remove('on');
                    document.querySelectorAll('.nav_menu h3 a')[i].removeAttribute('href');
                };
                $('.nav_menu h3 a').click(function () {
                    $(this).parent().parent().siblings().children('.nav_menu_list_wrapper').slideUp('1000');
                    $(this).parent().next().slideDown('1000');
                });

            }
        })
        function checkBroswer() {

            var agent = navigator.userAgent.toLowerCase(),
                name = navigator.appName,
                browser = '';

            // MS 계열 브라우저를 구분
            if (name === 'Microsoft Internet Explorer' || agent.indexOf('trident') > -1 || agent.indexOf('edge/') > -1) {
                browser = 'ie';
                if (name === 'Microsoft Internet Explorer') { // IE old version (IE 10 or Lower)
                    agent = /msie ([0-9]{1,}[\.0-9]{0,})/.exec(agent);
                    browser += parseInt(agent[1]);
                } else { // IE 11+
                    if (agent.indexOf('trident') > -1) { // IE 11
                        browser += 11;
                    } else if (agent.indexOf('edge/') > -1) { // Edge
                        browser = 'edge';
                    }
                }
            } else if (agent.indexOf('safari') > -1) { // Chrome or Safari
                if (agent.indexOf('opr') > -1) { // Opera
                    browser = 'opera';
                } else if (agent.indexOf('chrome') > -1) { // Chrome
                    browser = 'chrome';
                } else { // Safari
                    browser = 'safari';
                }
            } else if (agent.indexOf('firefox') > -1) { // Firefox
                browser = 'firefox';
            }

            return browser;
        }
        function open_mobMenu() {
            $('.nav_wrapper').addClass('on');
            white_header();
            cross_btnMobMenu();
        }
        function close_mobMenu() {
            $('.nav_wrapper').removeClass('on');
            init_header();
            init_btnMobMenu();
        }
        function white_header() {
            $('.swiper-container .header').css({ 'background': '#fff', 'borderBottom': '1px solid #eee' });
            $('.btn_mob_menu_line').css({ 'background': '#333' });
            $('.swiper-container .header .img_logo_w').hide();
            $('.swiper-container .header .img_logo').show();
            $('.fixed_header').css({ 'top': '0px' });
        }
        function init_header() {
            $('.swiper-container .header').css({ 'background': '', 'borderBottom': '' });
            $('.btn_mob_menu_line').css({ 'background': '' });
            $('.swiper-container .header .img_logo_w').css({ 'display': '' });
            $('.swiper-container .header .img_logo').css({ 'display': '' });
            $('.fixed_header').css({ 'top': '-70px' });
        }
        function init_btnMobMenu() {
            $('.btn_mob_menu_line_01').css({ 'transform': 'none' });
            $('.btn_mob_menu_line_02').css({ 'visibility': 'visible' });
            $('.btn_mob_menu_line_02').css({ 'opacity': '1' });
            $('.btn_mob_menu_line_03').css({ 'transform': 'none' });
        }
        function cross_btnMobMenu() {
            $('.btn_mob_menu_line_01').css({ 'transform': 'matrix(0.7071, 0.7071, -0.7071, 0.7071, 0, 7)' });
            $('.btn_mob_menu_line_02').css({ 'visibility': 'hidden' });
            $('.btn_mob_menu_line_02').css({ 'opacity': '0' });
            $('.btn_mob_menu_line_03').css({ 'transform': 'matrix(0.7071, -0.7071, 0.7071, 0.7071, 0, -7)' });
        }
        function init_navMenu() {
            $('.nav .nav_menu h3 a').css({ 'color': '#044C8B' });
            $('.nav .nav_menu h3 a .bar').css({ 'transform': 'scaleX(1)', 'background': '#044C8B' });
        }
        function init_navMenu(el) {
            el.css({ 'color': '' });
            el.children('.bar').css({ 'transform': 'scaleX(0)' });
        }
        function grow_navMenu() {
            el.css({ 'color': '#044C8B' });
            el.children('.bar').css({ 'transform': 'scaleX(1)' });
        }
        function removeClass_On(el) {
            el.classList.remove('on');
        }
        function addClass_On(el) {
            el.classList.add('on');
        }
    </script>
    
    </head>
<body>
    <form name="aspnetForm" method="post" action="./default.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjhkZAmUGXMJpf9yrlseWaodo5liu4dO3OjcbqkNt/Us/BSg" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
        <div id="scrim" onclick="outScrim();"></div>
        <a href="#container" id="skipnav">본문 바로가기</a>
        <div id="wrap">
            <header class="header header_type_default">
                <div class="header_div_wrapper">
                    <div class="header_div logo_wrapper">
                        <h1 class="blind">안녕하세요. 도프텍입니다.</h1>
                        <a class="logo" href="Default.aspx" title="DOFTECH">
                            <img src="img/logo_w.png" alt="DOFTECH LOGO" class="img_logo_w" />
                            <img src="img/logo.png" alt="DOFTECH LOGO" class="img_logo" />
                            <img src="img/logo_color.png" alt="DOFTECH LOGO" class="img_logo_color" />
                        </a>
                    </div>
                    <div class="header_div nav_wrapper">
                        <h2 class="blind">도프텍 메뉴</h2>
                        <div class="nav">
                            <div class="nav_menu">
                                <h3><a href="aplus.aspx">SOLUTION<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="aplus.aspx">APLUS</a></h4>
                                    <h4 class="nav_menu_list"><a href="id2.aspx">ID2</a></h4>
                                    <h4 class="nav_menu_list"><a href="markus.aspx">MARKUS</a></h4>
                                    <h4 class="nav_menu_list"><a href="dxus.aspx">DXUS</a></h4>
                                    <h4 class="nav_menu_list"><a href="commentUS.aspx">CommentUS</a></h4>
                                    <h4 class="nav_menu_list"><a href="issue_i.aspx">ISSUE-I</a></h4>
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="si.aspx">SERVICE<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="si.aspx">SI</a></h4>
                                    <h4 class="nav_menu_list"><a href="engineering.aspx">Plant IT</a></h4>
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="feed.aspx">R&amp;D<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="feed.aspx">SmartFEED</a></h4>
                                    <h4 class="nav_menu_list"><a href="ai.aspx">AI 기반 도면 인식</a></h4>
                                    
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="careers.aspx">CAREERS<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="careers.aspx">인사제도</a></h4>
                                    <h4 class="nav_menu_list"><a href="benefit.aspx">교육·복리후생</a></h4>
                                    <h4 class="nav_menu_list"><a href="task.aspx">직무소개</a></h4>
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="ceo.aspx">COMPANY<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="ceo.aspx">CEO 인사말</a></h4>
                                    <h4 class="nav_menu_list"><a href="history.aspx">연혁</a></h4>
                                    <h4 class="nav_menu_list"><a href="patent.aspx">특허</a></h4>
                                    <h4 class="nav_menu_list"><a href="portfolio.aspx">고객사</a></h4>
                                    <h4 class="nav_menu_list"><a href="organization.aspx">조직도</a></h4>
                                    <h4 class="nav_menu_list"><a href="location.aspx">오시는길</a></h4>
                                </div>
                            </div>
                            <div class="nav_background"></div>
                        </div>
                        <div class="btn_mob_language_wrapper">
                            <p><a href="../en/default.aspx">ENG</a><span>|</span><a href="../default.aspx" class="on">KOR</a></p>
                        </div>
                    </div>
                    <div class="header_div language_wrapper">
                        <p><a href="../en/default.aspx">ENG</a><span>|</span><a href="../default.aspx" class="on">KOR</a></p>
                    </div>
                    <div class="btn_mob_menu_wrapper">
                        <p class="btn_mob_menu">
                            <span class="btn_mob_menu_line_wrap">
                                <span class="btn_mob_menu_line btn_mob_menu_line_01" style="transform: matrix(1, 0, 0, 1, 0, 0);"></span>
                                <span class="btn_mob_menu_line btn_mob_menu_line_02" style="visibility: inherit; opacity: 1;"></span>
                                <span class="btn_mob_menu_line btn_mob_menu_line_03" style="transform: matrix(1, 0, 0, 1, 0, 0);"></span>
                            </span>
                        </p>
                    </div>
                </div>
            </header>

            
            
            <div id="visual" role="banner">
                <h2 class="blind">도프텍 슬로건</h2>
                <!-- Swiper -->
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide light_slide" style="background-image: url(./img/swiper_img_0.jpg)">
                            <div class="slogan_wrapper">
                                <h3 class="slogan">
                                    <span class="slogan_title">NEEDS</span>
                                    <span class="line"></span>
                                    <span class="slogan_desc">고객의 <b>NEEDS</b>에 <b>최적화</b>된
                                        <br />
                                        AI 기반 Solution & Service를 제공합니다.</span>
                                </h3>
                            </div>
                        </div>
                        <div class="swiper-slide" style="background-image: url(./img/swiper_img_1.jpg)">
                            <div class="slogan_wrapper">
                                <h3 class="slogan">
                                    <span class="slogan_title">NEEDS</span>
                                    <span class="line"></span>
                                    <span class="slogan_desc">고객의 <b>NEEDS</b>에 <b>최적화</b>된
                                        <br />
                                        AI 기반 Solution & Service를 제공합니다.</span>
                                </h3>
                            </div>
                        </div>
                        <div class="swiper-slide light_slide" style="background-image: url(./img/swiper_img_2.jpg)">
                            <div class="slogan_wrapper">
                                <h3 class="slogan">
                                    <span class="slogan_title">NEEDS</span>
                                    <span class="line"></span>
                                    <span class="slogan_desc">고객의 <b>NEEDS</b>에 <b>최적화</b>된
                                        <br />
                                        AI 기반 Solution & Service를 제공합니다.</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next swiper-button-white"></div>
                    <div class="swiper-button-prev swiper-button-white"></div>
                </div>

                <!-- Swiper JS -->
                <script src="js/swiper.js"></script>

                <!-- Initialize Swiper -->
                <script>
                    var swiper = new Swiper('.swiper-container', {
                        on: {
                            slideChangeTransitionStart: function () {
                                //slide가 바뀔때마다 해당 페이지 번호
                                activeIndex = this.activeIndex
                                checkSlideBrightnessToChangeHeader();

                            },
                        },
                        spaceBetween: 0,
                        effect: 'fade',
                        speed: 1000,
                        autoplay: {
                            delay: 3500,
                            disableOnInteraction: false,
                        },
                        pagination: {
                            el: '.swiper-pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: '.swiper-button-next',
                            prevEl: '.swiper-button-prev',
                        },
                    });
                    // ■■■ 페이지가 로드됐을 때
                    var activeIndex = swiper.activeIndex;
                    document.addEventListener('DOMContentLoaded', function () {
                        checkSlideBrightnessToChangeHeader();
                        checkScrollTopToChangeHeader();
                    })

                    //header에 hover
                    $('.header').on('mouseover', function () {
                        if (checkMobileDevice() == false) {
                            $('.header').removeClass('header_type_dark header_type_light');
                            $('.header').addClass('header_type_default');
                        }
                    });
                    $('.header').on('mouseout', function () {
                        if (!$('.nav_wrapper').hasClass('on')) {
                            if ($(window).scrollTop() < 10) {
                                $('.header').removeClass('header_type_default');
                                checkSlideBrightnessToChangeHeader();
                            }
                        }
                    });

                    //모바일버튼 클릭이벤트
                    var x = 0;
                    $('.btn_mob_menu').click(function () {
                        if (x == 0) {
                            $('.header').removeClass('header_type_dark header_type_light');
                            $('.header').addClass('header_type_default');
                            x = 1;
                        } else {
                            $('.header').removeClass('header_type_default');
                            x = 0;
                        }
                    })
                    //스크롤 이벤트
                    window.addEventListener('scroll', function () {
                        checkScrollTopToChangeHeader();
                    });

                    function checkMobileDevice() {
                        var mobileKeyWords = new Array('Android', 'iPhone', 'iPod', 'BlackBerry', 'Windows CE', 'SAMSUNG', 'LG', 'MOT', 'SonyEricsson');
                        for (var info in mobileKeyWords) {
                            if (navigator.userAgent.match(mobileKeyWords[info]) != null) {
                                //모바일이면 true 리턴
                                return true;

                            }
                        }
                        return false;
                    }
                    function checkSlideBrightnessToChangeHeader() {
                        if (!$('.nav_wrapper').hasClass('on')) {
                            if (activeIndex == 0) {
                                $('.header').removeClass('header_type_dark');
                                $('.header').addClass('header_type_light');

                                $('.swiper-pagination-bullet').css({ 'background': '#000' });
                                $('.swiper-pagination-bullet-active').css({ 'background': '#044C8B' });

                                $('.affordance_scroll img').attr('src', 'img/ico_scroll_arrow.png').css({ 'opacity': '1' });
                                
                                $('.header.header_type_light .language_wrapper a.on, .header.header_type_dark .language_wrapper a.on').css({ 'color': '#044C8B' });
                            }

                            if (activeIndex == 1) {
                                $('.header').removeClass('header_type_light');
                                $('.header').addClass('header_type_dark');

                                $('.swiper-pagination-bullet').css({ 'background': '#fff' });
                                $('.swiper-pagination-bullet-active').css({ 'background': '#044C8B' });

                                $('.affordance_scroll img').attr('src', 'img/ico_scroll_arrow.png').css({ 'opacity': '.5' });

                                $('.header.header_type_light .language_wrapper a.on, .header.header_type_dark .language_wrapper a.on').css({ 'color':'rgb(0, 241, 255)'});
                            }

                            if (activeIndex == 2) {
                                $('.header').removeClass('header_type_dark');
                                $('.header').addClass('header_type_light');

                                $('.swiper-pagination-bullet').css({ 'background': '#000' });
                                $('.swiper-pagination-bullet-active').css({ 'background': '#044C8B' });

                                $('.affordance_scroll img').attr('src', 'img/ico_scroll_arrow_b.png').css({ 'opacity': '.7' });

                                $('.header.header_type_light .language_wrapper a.on, .header.header_type_dark .language_wrapper a.on').css({ 'color': '#044C8B' });
                            }
                        }
                    }
                    function checkScrollTopToChangeHeader() {
                        if (!$('.nav_wrapper').hasClass('on')) {
                            if ($(this).scrollTop() >= 10) {
                                $('.header').removeClass('header_type_dark header_type_light');
                                $('.header').addClass('header_type_default');
                            }
                            if ($(this).scrollTop() < 10) {
                                $('.header').removeClass('header_type_default');
                                checkSlideBrightnessToChangeHeader();
                            }
                        }
                    }


                </script>
                <i class="affordance_scroll">
                    <img src="img/ico_scroll_arrow.png" /></i>
            </div>
            
    <style type="text/css">
        .text {
            margin-bottom:0;
        }
        html, body, form, #wrap {
            position: relative;
            height: 100%;
        }
        
        #visual {
            /*height: calc(100% - 70px);    
            padding-top: 70px;*/

            height:100%;
            
        }
        .swiper-container {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            background-color:#eee;
            background-position: center;
            background-size: cover;
        }

        .swiper-pagination-bullet {
            background:#fff;
            /*display: none;*/
        }

        .swiper-pagination-bullet-active {
            opacity: 1;
            background: #044C8B;
        }

        #container.container_default {
            padding: 100px 0;
        }
        .container_default .content li a{
            height:auto;
        }
        /*content*/
        .content {
            max-width: 1200px;
            margin: 0 auto;
        }

            .content ul {
                display: flex;
            display: -ms-flexbox;
             width:100%;
            }

            .content li {
                flex: 1;
                -ms-flex: 1;
                margin: 7px;    border-radius: 3px;
    overflow: hidden;
            }

                .content li a {
                    display: block;
                    height: 550px;
                    color: #fff;
                }


        .banner_menu_p.background_img {
            transition: all .2s ease-in-out;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 368px;
                box-shadow: 0 10px 10px rgba(0,0,0,0.3);
        }

        .banner_menu_p.text {
            height: 140px;
            background:#333;
            position: relative;
            padding: 19px;
            padding-bottom:0;
            text-align: left;
        }
        .banner_menu_title:after {
            content:"";
            display:block;
            width:33px;
            height:2px;
            background:#044C8B;
            margin:17.5px 0;

        }

            .banner_menu_p.text span {
                display: block;
            }

        .banner_menu_title {
            font-size: 30px;
            font-weight: 500;
            font-family:NanumSquare;
        }

        .banner_menu_title_desc {
            font-size: 20px;
            font-weight: 200;
        }
        @media all and (max-width:1200px) {
            .container_default .content {
                margin:0 5%;
            }
            .container_default ul {
                flex-direction:column;
                -ms-flex-direction:column;
            }
        }

        .swiper-button-next, .swiper-button-prev {
            position: absolute;
            top: 0;
            bottom: 0;
            width: 5%;
            margin: 0;
            height: 100%;
        }

        .swiper-button-next {
            right: 0;
        }

        .swiper-button-prev {
            left: 0;
        }

            .swiper-button-next:hover, .swiper-button-prev:hover {
                background-color: rgba(0,0,0,0.05);
            }

            .swiper-button-next.swiper-button-white, .swiper-container-rtl .swiper-button-prev.swiper-button-white, .swiper-button-prev.swiper-button-white, .swiper-container-rtl .swiper-button-next.swiper-button-white {
                background-image: none;
            }

        .swiper-container-horizontal > .swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction {
            bottom:70px;
        }
                .slogan_title {
                    font-size: 30px;
                    font-weight: 600;
                    display: block;
                    font-family: NanumSquare;
                    color: #fff;
                }

                .line {
                    width: 25px;
                    height: 2px;
                    display: block;
                    margin: 8px 0 40px;
                    background: #fff;
                }


                .swiper-slide.light_slide .slogan_title {
                    color: #044c8b;
                }

                .swiper-slide.light_slide .line {
                    background: #044c8b;
                }

                .swiper-slide.light_slide .slogan_desc {
                    color: #333;
                }

        @media all and (max-width:1200px) {
            .content li {
                -ms-flex: 1 1 auto;
            }
        }
    </style>
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {

            //네비게이션 스크롤
            function scrollTo(element, to, duration) {
                var start = element.scrollTop,
                    change = to - start,
                    currentTime = 0,
                    increment = 20;

                var animateScroll = function () {
                    currentTime += increment;
                    var val = Math.easeInOutQuad(currentTime, start, change, duration);
                    element.scrollTop = val;
                    if (currentTime < duration) {
                        setTimeout(animateScroll, increment);
                    }
                };
                animateScroll();
            }

            Math.easeInOutQuad = function (t, b, c, d) {
                t /= d / 2;
                if (t < 1) return c / 2 * t * t + b;
                t--;
                return -c / 2 * (t * (t - 2) - 1) + b;
            };
            var browser = checkBroswer();
            if (browser == 'edge' || browser == 'safari') {
                document.querySelector('.affordance_scroll').addEventListener('click', function () {
                    scrollTo(document.querySelector('body'), document.getElementById('container').offsetTop, 500)
                });
            }
            document.querySelector('.affordance_scroll').addEventListener('click', function () {
                scrollTo(document.documentElement, document.getElementById('container').offsetTop, 500)
            });
            window.addEventListener('scroll', function () {
                if ($(this).scrollTop() > 100) {
                    document.querySelector('.affordance_scroll').classList.add('off');
                } else {
                    document.querySelector('.affordance_scroll').classList.remove('off');
                }
            })
        });
    </script>
    <div id="container" class="container_default" role="main">
        <h2 class="blind">도프텍 주요 메뉴</h2>
        <div class="content" role="contentinfo">
            <ul>
                <li class="banner_menu">
                    <a href="aplus.aspx" title="">
                        <p class="banner_menu_p background_img" style="background-image: url(./img/default_banner_0.png)"></p>
                        <p class="banner_menu_p text">
                            <span class="banner_menu_title">AI SOLUTION PACKAGE</span>
                            <span class="banner_menu_title_desc">Engineering IT 관련 AI Solution Package</span>
                        </p>
                    </a>
                </li>
                <li class="banner_menu">
                    <a href="si.aspx" title="">
                        <p class="banner_menu_p background_img" style="background-image: url(./img/default_banner_1.png)"></p>
                        <p class="banner_menu_p text">
                            <span class="banner_menu_title">SERVICE</span>
                            <span class="banner_menu_title_desc">SI Service, Plant &amp; Engineering IT</span>
                        </p>
                    </a>
                </li>
                <li class="banner_menu">
                    <a href="feed.aspx" title="">
                        <p class="banner_menu_p background_img" style="background-image: url(./img/default_banner_2.png)"></p>
                        <p class="banner_menu_p text">
                            <span class="banner_menu_title">R&amp;D</span>
                            <span class="banner_menu_title_desc">R&amp;D Technology</span>
                        </p>
                    </a>
                </li>
            </ul>
        </div>
    </div>


            <footer id="footer">
                <div class="footer_div_wrapper">
                    <div class="footer_div address_wrapper">
                        <address>
                            본사 :
                            서울특별시 중구 통일로 86, 바비엥3주상복합, 401호
                        </address>
                        <address>
                            마곡 사무소 :
                            서울특별시 강서구 마곡중앙로 111, 롯데캐슬 르웨스트 102동 223호
                        </address>
                    </div>
                    <div class="footer_div contact_desc_wrapper"><span>대표전화 : 02) 6354-9985</span><span>Fax : 02 )6733-1060</span><span>sales@doftech.co.kr</span><span><a href="terms.html" target="_blank" style="color:#666;">개인정보취급방침</a></span></div>
                    <div class="footer_div copy_wrapper">
                        <p>
                            Copyrights ⓒ DOFTECH. All Rights Reserved.
                        </p>
                    </div>
                    <div class="logo_foot_wrapper">
                        <i class="logo_foot">
                            <img src="img/footer_logo.png" title="DOFTECH" />
                        </i>
                    </div>
                </div>
            </footer>

           <div class=btn_pageUp onclick="window.scrollTo(0,100);">
               <img src="img/top_img.png" />
           </div>
        </div>
        <!--[if lt IE 10]>
        <div id="legacy_browser">
            <div class="legacy_pad">
                <p>
                    사용중인 브라우저는 지원이 중단되었습니다.<br>
                    <a href="http://windows.microsoft.com/ko-kr/internet-explorer/ie-11-worldwide-languages" target="_blank">최신 버전</a>으로 업그레이드하시거나
                    <a href="https://www.google.com/intl/ko/chrome/browser/" target="_blank">크롬(Chrome)</a>과 같은 최신 브라우저를 이용해 주세요.
                </p>
            </div>
            <span id="btn_close" class="btn_close" onclick="closePop();">닫기</span>
        </div>
        <div id="scrim" onclick="outScrim();"></div>
        <script>
            openPop();
            function onScrim() {
                document.getElementById('scrim').style.display = 'block';
            }
            function outScrim() {
                document.getElementById('scrim').style.display = 'none';
                document.getElementById('legacy_browser').style.display = 'none';
            }
            function openPop() {
                document.getElementById('legacy_browser').style.display = 'block';
                onScrim();
            }
            function closePop() {
                document.getElementById('legacy_browser').style.display = 'none';
                outScrim();
            }
            

        </script>
        <![endif]-->
    </form>
</body>
</html>
