

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
    <form name="aspnetForm" method="post" action="./si.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjhkZJ04DMEc5IUcbhl3ZgJxDzaIZPbaTYvXam2/d3zuQao8" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="729F1561" />
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
                <div class="background_img" style="background-image: url('./img/visual_img_1.png')"></div>
            </div>
            
            <div class="tab_wrapper">
                <div class="tab_wrapper_div_empty"></div>
                <div class="tab_wrapper_div" role="group">
                    
                    <a class="tab on" href="si.aspx">SI (System Integration)</a>
                    
                    <a class="tab" href="engineering.aspx">Plant & Engineering IT</a>
                    
                </div>
                <div class="tab_wrapper_div_empty"></div>
            </div>
            
    <style type="text/css">
        b {
            font-weight: 600;
        }
        .container_div {
            scroll-margin: 70px;
        }

        .nav .nav_menu:nth-child(2) h3 a {
            color: #044C8B !important;
            font-weight: 800;
        }

        .container_si .content_div  {
            flex-wrap: wrap;
            gap: 1.5em;
        }

        .flex_wrapper {
            width: 100%;
            display:flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.5em;
        }

        .flex_item {
            padding: 16px;
            box-sizing: border-box;
            min-width: 200px;
       
            flex-grow: 1;
            width : 16%;
            height : 200px;
            background-color : #fff;
            border: 5px solid #A5A8DB;
            border-radius: 1em;            
            
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
        }

        .flex_item > a {
            width: 100%;
            height: 100%;
        }

        .flex_item:nth-child(2), .flex_item:nth-child(9) {    border-color: #99C9DE;  }
        .flex_item:nth-child(3), .flex_item:nth-child(8){    border-color: #6184B8;  }
        .flex_item:nth-child(4), .flex_item:nth-child(7){    border-color: #67BFAF;  }
        .flex_item:nth-child(5), .flex_item:nth-child(6){    border-color: #BAE3D7;  }

        .flex_item .flex_text {
            text-align: center;
        }

        .flex_title {
            font-weight: 600;
            font-size: 1.2em;
        }

        .flex_title_sm {
                font-size: 0.85em;
            }

        .flex_detail {
            margin-top: 8px;
            font-weight: 400;
            font-size: 0.9em;
            color: #777777;
        }

        .flex_detail:before{
            display: block;
            content: "";
            border-top: 2px solid #d5d5d5;
            width: 16px;
            margin: 20px auto;
        }
        
        .flex_detail > p {
            height: 50px;
        }

            .nav .nav_menu:nth-child(2) h3 a .bar {
                transform: scaleX(1);
                background: #044C8B;
            }

        @media all and (max-width:767px) {
            .nav_wrapper.on .nav_menu h3 a {
                color: #333 !important;
                font-weight: 600;
            }

            .nav .nav_menu:nth-child(2) h3 a .bar {
                transform: scaleX(0);
                background: none;
            }

             .flex_wrapper {
                justify-content: center;
            }

            .flex_item {
                width: 45%;
                height: 200px;
            }
            
            .flex_title {
                font-size: 1em;
            }
            
            .flex_detail {
                font-size: 0.8em;
            }
        }

    </style>
    <div id="container" class="container_si">


        <div class="container_div">
            <div class="content">
                <div class="content_div">
                     <div class="flex_wrapper">

                         <div class="flex_item" onclick="location.href='#sec_cars'">
                            <div class="flex_text">
                                <div class="flex_title">CARS</div>
                                <div class="flex_detail">
                                    <p>Cable 자동배치 솔루션</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_elas'">
                            <div class="flex_text">
                                <div class="flex_title flex_title_sm">Equipment Layout Automation System</div>
                                <div class="flex_detail">
                                    <p>기기 자동배치 솔루션</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_stmas'">
                            <div class="flex_text">
                                <div class="flex_title flex_title_sm">S3D Static Modeling<br />Automation System </div>
                                <div class="flex_detail">
                                    <p>S3D Equipment<br />Modeling 자동화</p>
                                </div>
                            </div>
                        </div>

                        <div class="flex_item" onclick="location.href='#sec_romas'">
                            <div class="flex_text">
                                <div class="flex_title flex_title_sm">Rotating Equipment <br />Modeling Automation System </div>
                                <div class="flex_detail">
                                    <p>S3D Parametric<br />Modeling 자동화 </p>
                                </div>
                            </div>
                        </div>

                        <div class="flex_item" onclick="location.href='#sec_sppid'">
                            <div class="flex_text">
                                <div class="flex_title">SPPID Auto Check</div>
                                <div class="flex_detail">
                                    <p>SP P&ID<br />자동 품질관리 시스템</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_eq'">
                            <div class="flex_text">
                                <div class="flex_title flex_title_sm">S3D 비정형 EQ. Foundation<br />자동 모델링 개발</div>
                                <div class="flex_detail">
                                    <p>비정형 구조물 <br /> S3D 자동 Modeling 시스템 </p>
                                </div>
                            </div>
                        </div>

                        <div class="flex_item" onclick="location.href='#sec_edb'">
                            <div class="flex_text">
                                <div class="flex_title">EDB </div>
                                <div class="flex_detail">
                                    <p>엑셀 데이터 DB화 및<br />타 시스템 연동</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_issueR'">
                            <div class="flex_text">
                                <div class="flex_title">ISSUE –R</div>
                                <div class="flex_detail">
                                    <p>ISO Drawing Revision<br />관리 시스템</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_eload'">
                            <div class="flex_text">
                                <div class="flex_title">E-LOAD</div>
                                <div class="flex_detail">
                                    <p>Electrical Load 관련<br />Data 통합 관리</p>
                                </div>
                            </div>
                        </div>

                         <div class="flex_item" onclick="location.href='#sec_psjg'">
                            <div class="flex_text">
                                <div class="flex_title">PSJG</div>
                                <div class="flex_detail">
                                    <p>플랜트 현장<br />종합 관리 시스템</p>
                                </div>
                            </div>
                        </div>

                     </div>
                </div>
            </div>
        </div>



        <div class="container_div" id="sec_cars">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">CARS</p>
                    <p class="content_div_title_desc">
                        Cable 자동배치 솔루션
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/cars_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>S3D Data & Cable Schedule Import</b>
                                <p>형상 정보 (Equipment, Structure 등)</p>
                                <p>Tray routing 정보 (Cable Tray / Cableway 등)</p>
                                <p>정형화된 Cable Schedule Import (전기/계장)</p>
                                <p>Cable Schedule Revision 데이터 관리</p>
                            </li>
                            <li>
                                <b>Cable Tray Auto Connection & Cable Auto Routing </b>
                                <p>상세 조건 별 Cable Tray Auto Connection 구현</p>
                                <p>최단 거리 최적화 Logic 구현</p>
                                <p>Routing 시 특정 Tray 경유 필수 / 회피 기능</p> 
                            </li>
                            <li>
                                <b>Tray Fill Ratio Check </b>
                                <p>개별 Tray 별 Fill Ratio Check & Report 하여 Cable 3D Modeling 최적화 </p>
                            </li>
                            <li>
                                <b>Report & Output </b>
                                <p>Cable Length 를 산출하여 Cable Schedule Update 및 Report 생성 (Excel Export)</p>
                                <p>완료된 Cable을 S3D 에 자동 Modeling </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="container_div" id="sec_elas">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">Equipment Layout Automation System</p>
                    <p class="content_div_title_desc">
                        기기 자동배치 솔루션
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/aelus_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>기기배치에 필요한 데이터 입력 및 편의 기능 제공</b>
                                <p>Process Data (PFD) Input 및 From / To 데이터 생성</p>
                                <p>AutoCAD Data Input (On/Off PlotPlan)</p>
                                <p>Constraint 정보 입력 (Battery Limit, Special Spacing등)</p>
                            </li>
                            <li>
                                <b>GD 데이터를 활용한 Design Data 자동 생성</b>
                                <p>GD (Generative Design)평가 분포도</p>
                                <p>Export to 2D Review </p>
                            </li>
                            <li>
                                <b>Case별 2D, 3D Review 기능</b>
                                <p>기기별 Information 확인</p>
                                <p>기기 XY이동 및 Elevation 변경</p>
                            </li>
                            <li>
                                <b>Revision 및 Symbol 관리 기능</b>
                                <p>이전 버전 Case와 비교</p>
                             </li>
                            <li>
                                <b>AR 연계 기능 </b>
                                <p>Export to AR, DWG</p>
                                <p>AR 비교 Table 제공</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_stmas">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">S3D Static Modeling Automation System</p>
                    <p class="content_div_title_desc">
                        Compress data를 연계하여 S3D Equipment Modeling 자동화
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/stmas_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>GUI</b>
                                <p>시스템을 통해 생성된 3D Model Data Loading</p>
                                <p>Position 지정</p>
                                <p>System Hierarchy 지정</p>
                                <p>Attachment Item (Lifting Lug, Trunnion, …)</p>
                                <p>User가 설정한 Unit으로 변환</p>
                                <p> (Pressure, Temperature, Weight, Distance, …)</p>
                            </li>
                            <li>
                                <b>환경 설정</b>
                                <p>Import Compress xml  </p>
                                <p>시스템 Catalog Symbol 구축</p>
                            </li>
                            <li>
                                <b>Report</b>
                                <p>data를 통한 S3D Modeling 자동 생성</p>
                                <p>간섭 체크 및 물량 산출 가능</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_romas">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">Rotating Equipment Modeling Automation System</p>
                    <p class="content_div_title_desc">
                        기기 정보를 관리하고 S3D에서 이를 활용한 Parametric Modeling 자동화
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/romas_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>S3D Equipment Catalog 표준화</b>
                            </li>
                            <li>
                                <b>Excel Import/ Export 기능</b>
                                <p>대량의 Model Dimension (Parameter)값을 일괄 입력/Update 기능 제공</p>
                            </li>
                            <li>
                                <b>Load Equipment 기능</b>
                                <p>ECS Equip. List DB와 연계하여 정확한 기기 List와 모델링 status를 관리</p>
                            </li>
                            <li>
                                <b>Search reference Data</b>
                                <p>시스템 전체 DB에서 기기 Type별 Design spec을 검색하여 유사 기기를 조회하고,<br />현 Project에 모델링 재사용</p>
                            </li>
                            <li>
                                <b>Dimension Preview</b>
                                <p>정확한 Parameter값을 입력하고, 확인하기 위한 Preview 기능 제공</p>
                                <p>Type 별로 Hierarchy를 구성하여 검색 용이</p>
                            </li>
                            <li>
                                <b>History of Equipment Data 기능</b>
                                <p>현재 ECS의 데이터의 이전 값을 비교하여 Update 내용을 확인 또는 재사용</p>
                            </li>
                            <li>
                                <b>Create/ Update</b>
                                <p>기입한 Dimension 값을 이용한 Modeling Automation 구현</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_sppid">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">SPPID Auto Check</p>
                    <p class="content_div_title_desc">
                        HEXAGON SP P&ID 자동 품질관리 시스템 (오류 감소 및 잘못된 프로세스 엔지니어링 설계 감지)
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/sppid_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>환경 설정</b>
                                <p>SPPID 연계하여 장치 및 파이프 속성 설정</p>
                            </li>
                            <li>
                                <b>P&ID 설계 규칙 또는 매뉴얼별 P&ID Dwg 자동 확인</b>
                                <p>30개 이상의 다양한 검사 규칙 (장비, 계기 등)
                                    <span>ex. 라인 넘버(사이즈-유체코드-넘버링-재질-보온재 등) 데이터 정합성 검사</span>
                                    <span>ex. 계기 타입 별 코드(FT = Flow Transmitter 등) 데이터 정합성 검사</span>
                                </p>
                                <p>사용 가능한 규칙 사용자 지정(사용자 정의 규칙)</p>
                                <p>시스템 또는 파일로 Q/C 결과 보고</p>
                            </li>
                            <li>
                                <b>P&ID Viewer</b>
                                <p>PDF 파일로 검증 결과 확인</p>
                            </li>
                            <li>
                                <b>리포트</b>
                                <p>이전 버전 Case와 비교</p>
                                <p>선택한 규칙, 도면 별로 PDF 파일 생성</p>
                             </li>
                            <li>
                                <b>비용 절감</b>
                                <p>Q/C에 SP P&ID 라이센스 불필요</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_eq">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">S3D 비정형 EQ. Foundation 자동 모델링</p>
                    <p class="content_div_title_desc">
                        복잡한 형상의 비정형 구조물 자동 3D Modeling 시스템
                    </p>

                </div>
                <div class="content_div">
                    <div class="img_wrapper" style="max-width: 550px;">
                        <i>
                            <img src="img/s3deq_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li><b>복잡한 형상의 비정형 구조물들을 S3D에서 한 번에 자동으로 3D Modeling</b></li>
                            <li>
                                <b>주요 구조물</b>
                                <p>Footing</p>
                                <p>Pedestal</p>
                                <p>Wall</p>
                                <p>Opening</p>
                                <p>Beam</p>
                                <p>Slab</p>
                                <p>Pile</p>
                                <p>Excavation</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_edb">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">EDB <span>(Engineering Database)</span><br /></p>
                    <p class="content_div_title_desc">
                        엑셀 시트로 관리 되던 데이터를 데이터베이스화 하여 다른 시스템 연동을 통한 업무 능률 향상
                    </p>
                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/si_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>실시간 데이터 공유 및 부서별 독립 저장</li>
                            <li>고객사 문서시스템과의 연동 및 history 조회</li>
                            <li>EDB 축적 데이터 검색을 통한 효율적인 입찰 및 Project 수행</li>
                            <li>정확한 설계 Data 구축 (각 시스템과의 Item tag validation 및 Data publish) </li>
                            <li>공정 업무 전산화 (H&B list, Equipment list, line list 등 연계)</li>
                            <li>3D Model 및 P&ID 연동</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_issueR">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">ISSUE –R<br /></p>
                        <p class="content_div_title_desc">
                            ISO Drawing의 Revision 발생 시 최소 M/H 로
                            Revision을 처리하여 관리하는 시스템
                        </p>
                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/si_img_1.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>도면 수정 사항 자동 파악</li>
                            <li>자동 Marking으로 작업 시간 절감</li>
                            <li>도면 시점 별로 수정사항 비교</li>
                            <li>CAD 지식이 없어도 작업 가능</li>
                            <li>수정 사항에 대한 표기 누락 방지</li>
                            <li>수정 사항 정보 제공 (Report)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_eload">
            <div class="content">
                <div class="content_title_wrapper">
                   <p class="content_title">E-LOAD<br /></p>
                        <p class="content_div_title_desc">
                            Electrical Load 관련 Data 통합 관리로
                            산출물의 자동화 구현을 통한 M/H 절감 및 산출물 정확도 향상
                        </p>
                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/si_img_2.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>LOAD Summary 계산</b>
                                <p>Load Summary Excel Import</p>
                                <p>Assign Load Bus</p>
                                <p>Virtual Load Summary</p>
                            </li>
                            <li>
                                <b>Cable Schedule 계산</b>
                                <p>Cable Schedule Import</p>
                                <p>Cable BOM Summary</p>
                            </li>
                            <li>
                                <b>Drum Schedule 계산</b>
                                <p>Drum Naming Rule Setting</p>
                                <p>Drum Schedule Creation</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="container_div" id="sec_psjg">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">PSJG<span>(Piping Spool Joint Generator System)</span><br /></p>
                    <p class="content_div_title_desc">
                        플랜트 현장의 공사물량/작업 관리 및 품질/안전/자원을 관리하는 시스템
                    </p>
                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/si_img_3.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>
                                <b>Joint Control 기능</b>
                                <p>반복작업에 대한 단축키 기능</p>
                                <p>Joint 현황 실시간 Monitoring 확인</p>
                            </li>
                            <li>
                                <b>Spool Control 기능</b>
                                <p>Joint 현황 실시간 Monitoring 확인</p>
                            </li>
                            <li>
                                <b>Revision 기능</b>
                                <p>변경된 정보 구 버전 비교가능 · 자동연결</p>
                            </li>
                        </ul>
                    </div>
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
