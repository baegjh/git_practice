

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
                document.querySelectorAll('.nav_menu h3 a')[0].setAttribute('href', 'ars.aspx');
                document.querySelectorAll('.nav_menu h3 a')[1].setAttribute('href', 'engineering.aspx');
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
    <form name="aspnetForm" method="post" action="./markus.aspx" id="aspnetForm">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjhkZMor6MJTX0F42awUlgPsKnZ1dyfPxhEqDesZoXiQA5bV" />

<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E5E0BAC2" />
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
                                <h3><a href="ars.aspx">SOLUTION<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="ars.aspx">ARS (Pipe Auto Routing System for EPC)</a></h4>
                                    <h4 class="nav_menu_list"><a href="id2.aspx">ID2</a></h4>
                                    <h4 class="nav_menu_list"><a href="markus.aspx">MARKUS</a></h4>
                                    <h4 class="nav_menu_list"><a href="issue_i.aspx">ISSUE-I</a></h4>
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="engineering.aspx">SERVICE<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="engineering.aspx">Plant &amp; Engineering IT</a></h4>
                                    <h4 class="nav_menu_list"><a href="si.aspx">SI (System Integration)</a></h4>
                                </div>
                            </div>
                            <div class="nav_menu">
                                <h3><a href="feed.aspx">R&amp;D<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="feed.aspx">SmartFEED</a></h4>
                                    <h4 class="nav_menu_list"><a href="ai.aspx">AI-based Drawing Recognition Technology</a></h4>
                                    
                                </div>
                            </div>

                            <div class="nav_menu">
                                <h3><a href="ceo.aspx">COMPANY<span class="bar"></span></a></h3>
                                <div class="nav_menu_list_wrapper" role="group">
                                    <h4 class="nav_menu_list"><a href="ceo.aspx">CEO Messages</a></h4>
                                    <h4 class="nav_menu_list"><a href="history.aspx">History</a></h4>
                                    <h4 class="nav_menu_list"><a href="portfolio.aspx">Client</a></h4>
                                    <h4 class="nav_menu_list"><a href="organization.aspx">Organization</a></h4>
                                    <h4 class="nav_menu_list"><a href="location.aspx">Direction</a></h4>
                                </div>
                            </div>
                            <div class="nav_background"></div>
                        </div>
                        <div class="btn_mob_language_wrapper">
                            <p><a href="../en/default.aspx" class="on">ENG</a><span>|</span><a href="../default.aspx">KOR</a></p>
                        </div>
                    </div>
                    <div class="header_div language_wrapper">
                        <p><a href="../en/default.aspx" class="on">ENG</a><span>|</span><a href="../default.aspx">KOR</a></p>
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
                <div class="background_img" style="background-image: url('./img/visual_img_0.png')"></div>
            </div>
            
            <div class="tab_wrapper">
                <div class="tab_wrapper_div_empty"></div>
                <div class="tab_wrapper_div" role="group">
                    
                    <a class="tab" href="ars.aspx">ARS (Pipe Auto Routing System for EPC)</a>
                    
                    <a class="tab" href="id2.aspx">ID2</a>
                    
                    <a class="tab on" href="markus.aspx">MARKUS</a>
                    
                    <a class="tab" href="issue_i.aspx">ISSUE-I</a>
                    
                </div>
                <div class="tab_wrapper_div_empty"></div>
            </div>
            
    <style type="text/css">
        .nav .nav_menu:nth-child(1) h3 a {
            color: #044C8B !important;
            font-weight: 800;
        }

        .nav .nav_menu:nth-child(1) h3 a .bar {
            transform: scaleX(1);
            background: #044C8B;
        }      

        b {
            font-weight: 600;
        }


        @media all and (max-width:767px) {
            .nav_wrapper.on .nav_menu h3 a {
                color: #333 !important;
                font-weight: 600;
            }

            .nav .nav_menu:nth-child(1) h3 a .bar {
                transform: scaleX(0);
                background: none;
            }
        }
    </style>
    <div id="container" class="container_markus">
        <div class="container_div">
            <div class="content">
                <div class="content_title_wrapper">
                    <p class="content_title">Main Function</p>
                    <p class="content_div_title_desc">
                        The <b>Comment-Sharing Tool</b> to make multi-disciplines and stakeholders work on engineering deliverables and vendor documents at the same time.</p>
                </div>
                <div class="content_div">
                    <div class="img_wrapper">
                        <i>
                            <img src="img/markus_img_0.png" />
                        </i>
                    </div>
                    <div class="text_wrapper">
                        <ul>
                            <li>User Friendly Function
                                <p>A user can choose <b>a color for his/her comments</b>. Then comments can be classified by colors (or users). </p>
                                <p>Comparing documents with their previous version (<b>Cloud marks</b> automatically added <b>to changes</b> from the previous)</p>
                                <p>Providing <b>favorite search functions</b> </p>
                                <p>Registering <b>frequently used symbols</b> as default</p>
                            </li>
                            <li>Converting to Auto CAD files
                                <p>Comments can be saved and converted to Auto CAD file automatically</p>
                            </li>
                            <li>Communication
                                <p><b>Messenger Function ("M-Talk")</b> provided for easy communication between reviewers</p>
                                <p><b>Comment Manager Function</b> to record reviewer's checkup points</p>
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
                            Head Office :
                            401, 86, Tongil-ro, Jung-gu, Seoul
                        </address>
                        <address>
                            Jongno Office :
                            8F, 134, Tongil-ro, Jongno-gu, Seoul
                        </address>
                    </div>
                    <div class="footer_div contact_desc_wrapper"><span>Telephone : +82-2-6354-9985</span><span>Fax : 82-2-6733-1060</span><span>sales@doftech.co.kr</span><span><a href="terms.html" target="_blank" style="color:#666;">Terms of Service</a></span></div>
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
