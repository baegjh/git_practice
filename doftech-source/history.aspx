

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
    <form name="aspnetForm" method="post" action="./history.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjhkZLTVsLhH5Q15SHqVMzHQGKmBRLYIKSKSjBdcumpG5QsQ" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2068001F" />
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

            
            
            
            <style type="text/css">
                #visual {
                    height: 330px;
                    padding-top: 70px;
                }

                    #visual .background_img {
                        height: 100%;
                        background-repeat: no-repeat;
                        background-position-y: 50%;
                        background-position-x: 50%;
                        background-size: cover;
                    }

                @media all and (max-width:767px) {
                    .tab_wrapper {
                        margin-top: 50px;
                    }

                    #visual {
                        display: none;
                    }
                }
            </style>
            <script type="text/javascript">
                document.addEventListener('DOMContentLoaded', function () {
                    $('.fixed_header').css({ 'top': '0px' });
                })
                $('document').resize(function () {
                    $('.fixed_header').css({ 'top': '0px' });
                })
            </script>
            <div id="visual">
                <div class="background_img" style="background-image: url('./img/visual_img_4.png')"></div>
            </div>
            
            <div class="tab_wrapper">
                <div class="tab_wrapper_div_empty"></div>
                <div class="tab_wrapper_div" role="group">
                    
                    <a class="tab" href="ceo.aspx">CEO 인사말</a>
                    
                    <a class="tab on" href="history.aspx">연혁</a>
                    
                    <a class="tab" href="patent.aspx">특허</a>
                    
                    <a class="tab" href="portfolio.aspx">고객사</a>
                    
                    <a class="tab" href="organization.aspx">조직도</a>
                    
                    <a class="tab" href="location.aspx">오시는 길</a>
                    
                </div>
                <div class="tab_wrapper_div_empty"></div>
            </div>
            
    <style type="text/css">
        .nav .nav_menu:nth-child(5) h3 a {
            color: #044C8B !important;
            font-weight: 800;
        }

            .nav .nav_menu:nth-child(5) h3 a .bar {
                transform: scaleX(1);
                background: #044C8B;
            }

        @media all and (max-width:767px) {
            .nav_wrapper.on .nav_menu h3 a {
                color: #333 !important;
                font-weight: 600;
            }

            .nav .nav_menu:nth-child(5) h3 a .bar {
                transform: scaleX(0);
                background: none;
            }
        }

        #visual .background_img {
            background-position-x: 30%;
        }


    </style>
    <script type="text/javascript">
        document.addEventListener('scroll', function () {
            scroll();
        });
        function scroll() {
            document.querySelector('.line').style.height = ((window.pageYOffset / 10) > 100 ? 100 : (window.pageYOffset / 10)) + '%';
            if (window.pageYOffset > 1400) {
                document.getElementById('contact_wrapper').style.opacity = '1';
            }
        }
    </script>
    <div id="container" class="container_history">
        <div class="container_div">
            <div class="content">
                <div class="wpb_wrapper">
                    <div class=" process-1">
                        <div class="line"></div>

                        <div class="process__item">
                            <h4>국가과제수주(5년:참여기업)제조업 경쟁력 향상을 위해 방산 항공용 언어모델 구축 및 
                                <br />
                                표준부품설계 속도가 2배 빠른 한국형 설계 자동화 모델 기술 개발 -2025</h4>
                        </div>

                        <div class="process__item">
                            <h4>국가과제수주(5년:주관기업)디지털전환 기술 기반 <br />플랜트 건설 사업관리 기술 개발(AWP) -2025</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성 E&A 2D 3D 정합성 확인 시스템 개발(Web) - 2025</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성 E&A 실시간 P&ID 협업을 위한 엔지니어 업무 플랫폼 개발(Web P&ID) - 2025</h4>
                        </div>

                        <div class="process__item">
                            <h4>현대엔지니어링 Loading Inform 시스템 확대 개발 - 2024</h4>
                        </div>

                        <div class="process__item">
                            <h4>OTEKO Ammonia EP Proposal Auto Routing - 2024</h4>
                        </div>

                        <div class="process__item">
                            <h4>도시유전 : 제주 RGO 프로젝트 Auto Routing - 2024</h4>
                        </div>

                         <div class="process__item">
                            <h4>PWC GS칼텍스 설비정보 모수 데이터 추출 용역 - 2024</h4>
                        </div>

                        <div class="process__item">
                            <h4>현대엔지니어링 Piperack 설계 자동화를 위한 Inform. 추출 프로그램 개발 - 2023</h4>
                        </div>
                        
                        <div class="process__item">
                            <h4>삼성전자 : digital twin을 위한 일반도면(2D)의 지능형 도면 전환 - 2023</h4>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C S3D 기계 모델링 자동화 시스템 개발 - 2022</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 소방 P&ID 자동화(SP P&ID) 시스템 개발 - 2022</h4>
                        </div>
                        <div class="process__item">
                            <h4>삼성엔지니어링 S3D Block Pattern Routing Module 개발 - 2022</h4>
                        </div>

                        <div class="process__item">
                            <h4>국가과제 수주(3년:참여기업) 상용 3D CAD 연계 국산 호환 소프트웨어 개발 - 2022</h4>
                        </div>

                        <div class="process__item">
                            <h4>국가과제 수주(3년:주관기업) 탄소저감모델 연계 배관-케이블 경로설계 최적화 기술개발 - 2022</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 Auto Dimension of UPV 시스템 개발 - 2022</h4>
                            <p>(Universal Plant Viewer)</p>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 E3D 기반 UDD Inform 자동화 개발 - 2022</h4>
                            <p>(Utility Distribute Diagram)</p>
                        </div>

                        <div class="process__item">
                            <h4>Piping Auto Routing 시스템 개발 - 2022</h4>
                        </div>

                        <div class="process__item">
                            <h4>국가과제 수주(3년:참여기업) 엔지니어링 SW 컨설팅 및 클라우드 활용지원 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C S3D 토목 비정형 Foundation 자동 모델링 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C S3D Compress 장치 모델링 자동화 시스템 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 SP P&ID Auto Correction 시스템 개발 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C ITB 설계 문서 Data 전산화 시스템 개발 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C E&I 3D Cable Modeling 시스템 개발 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 S3D Cable Design Automation 시스템 개발 - 2021</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 S3D Direct WeldMap 시스템 개발 - 2020</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 S3D 기반 UDD Inform 자동화 개발 - 2020</h4>
                            <p>(Utility Distribute Diagram)</p>
                        </div>

                        <div class="process__item">
                            <h4>DL E&C S3D 토목 정형 Foundation 자동 모델링 - 2020</h4>
                        </div>

                        <div class="process__item">
                            <h4>삼성엔지니어링 공정 설계 자동화 플랫폼 개발 - 2020</h4>
                            <p>(Process Automation Platform)</p>
                        </div>
                        
                        <div class="process__item">
                            <h4>CommentUS for Naviswors & SPR 개발 / 판매 - 2020</h4>
                            <p>(3D Model Review Comment Tool)</p>
                        </div>


                        <div class="process__item">
                            <h4>삼성엔지니어링 Hydraulic Calculation 시스템 개발 - 2019</h4>
                            <p>
                            </p>
                        </div>
						<div class="process__item">
                            <h4>서울산업진흥원 AI 기술 사업화 과제  - 2019</h4>
                            <p>
                            </p>
                        </div>
						<div class="process__item">
                            <h4>삼성엔지니어링 SP P&ID Auto Check 프로그램 개발 - 2019</h4>
                            <p>
                            </p>
                        </div>
						<div class="process__item">
                            <h4>ID2(Image Drawing to Intelligent Drawing) 개발/판매 -2019</h4>
                            <p>
								Image, PDF 로 된 P&ID 도면 인식 후 Intelligent Drawing으로 자동 변환 프로그램
                            </p>
                        </div>
						<div class="process__item">
                            <h4>삼성엔지니어링 SP P&ID 용 공사용 도면 제작 프로그램 개발<br>
								(System , Test PKG Marking) - 2018</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>MARKUS Renewal (Markup 협업 Tool) 개발/판매— 2018</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>국가과제 수주(3년:주관기업) 기본설계 및 FEED 자동화<br>
                                업무지원 시스템 개발— 2017</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>3D CATA DB 구축(SP3D, PDS,PDMS) , APP 모꼬지 개발/운영— 2016</h4>
                            <p>
                                None Standard : 기 수행 프로젝트 기계/장치/발전 형상 DB 관리 시스템<br>
                                Standard : Discipline 별 Detail 형상 구축
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>공사용 도면 제작프로그램 개발<br>
                                (ISO, System PKG Marking)— 2015</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>Engineering DB 개발<br />
                                (HMB / Equipment List / Line List / Inst.list)— 2013</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>Project Portal 개발 및 용역<br>
                                (VPCS,EDCS,CCS 및 기타 모듈)— 2012</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>Smart Plant P&amp;ID Utility 개발(Advanced)— 2012
                            </h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>Design Review Utility 개발<br>
                                (Clash/Equip.nozzle check/search 등)— 2011</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>공사용 도면(ISO Welding map/Hydro PKG)<br>
                                용역 시작&nbsp;— 2010</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>Dummy AutoCAD to Intelligent P&amp;ID<br>
                                변환 용역(대우조선/현대중공업) — 2009</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>현대중공업 설치 도면 및<br>
                                Ladder/Stair Utility 개발 용역&nbsp;— 2008</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>9SQ(주) 도면 자동화 프로그램(PlantWAVE)<br>
                                공동개발(PDS/PDMS) — 2006</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>PDMS 배관/장치/토목 분야<br>
                                Modeling Utility 개발 — 2005</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>배관 ISO 도면 관리시스템 개발(IDCS)<br>
                                PDS / PDMS — 2003</h4>
                            <p>
                            </p>
                        </div>
                        <div class="process__item">
                            <h4>도프텍(주) 설립, 대림산업 3D CAD 및<br>
                                설계 IT 개발 용역 수행&nbsp;— 2000</h4>
                            <p>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="wpb_wrapper" id="contact_wrapper">
                    <h2 style="text-align: center;">보다 많은 수행 내역이 궁금하세요?</h2>
                    <p class="lead" style="text-align: center;">
                        고객사의 요청에 의해 숨겨진 도프텍의 멋진 업무 수행내역과 프로젝트 개발 내용이 빠져있습니다.<br />
                        보다 자세한 정보가 필요하다면 연락하세요!
                    </p>
                    <p style="text-align: center;">
                        <a class="btn btn--primary type--uppercase" href="location.aspx"><span class="btn__text">CONTACT US</span></a>
                    </span>
                </div>
            </div>
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
