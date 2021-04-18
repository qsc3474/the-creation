<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

<head>
    <!-- Meta Data -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
    <title>index</title>

    <!-- Dependency Styles -->
    <link rel="stylesheet" href="dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/font-awesome/css/gp-icons.css" type="text/css">
    <link rel="stylesheet" href="dependencies/gp-icons/style.css" type="text/css">
    <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
    <link rel="stylesheet" href="dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/swiper/css/swiper.min.css" type="text/css">
    <link rel="stylesheet" href="dependencies/wow/animate.css" type="text/css">
    <link rel="stylesheet" href="dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="dependencies/revslider/css/settings.css" type="text/css">
    <link rel="stylesheet" href="dependencies/magnific-popup/magnific-popup.css" type="text/css">

    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="assets/css/app.css" type="text/css">

    <!-- 추가 -->
    <link rel="apple-touch-icon" type="image/png"
        href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
    <meta name="apple-mobile-web-app-title" content="CodePen">

    <link rel="shortcut icon" type="image/x-icon"
        href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
    <link rel="mask-icon" type=""
        href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
        color="#111" />
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>


</head>

<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    <div id="main_content">

        <!-- title -->
        <section class="step-title">
            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>호텔예약</h2>
            </div>
        </section>
        <!-- title -->
        <section id="booking" class="bk-sec bg-white">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-11 col-sm-10 col-md-10 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="msform" action="${pageContext.request.contextPath}/ht/event/Insert" method="post">
                                <!-- progressbar -->
                                <ul id="progressbar">
                                    <li class="active" id="account"><strong>동물정보입력</strong></li>
                                    <li id="personal"><strong>이벤트 선택</strong></li>
                                    <li id="payment"><strong>예약정보</strong></li>
                                    <li id="confirm"><strong>완료</strong></li>
                                </ul>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated"
                                        role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div> <br> <!-- fieldsets -->
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">동물정보입력</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 1 - 4</h2>
                                            </div>
                                        </div> 
                                        	 <label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                        	<input type="text" name="petName" placeholder="이름" />
                                            <label class="fieldlabels">분류 (종)<span class="text-danger">*</span></label>
                                            <select name="kind">
                                                  <option value="D">Dog</option>
                                                  <option value="C">Cat</option>
                                              </select> 
                                            <label class="fieldlabels">성별 <span class="text-danger">*</span></label> 
                                              <select name="gender">
                                                  <option value="M">남</option>
                                                  <option value="F">여</option>
                                              </select> 
                                               <label class="fieldlabels">나이<span class="text-danger">*</span></label>
												 <select name="age">
                                                  <option value="baby">1년 이하</option>
                                                  <option value="adult">성견/성묘</option>
                                                   <option value="old">노견/노묘</option>
                                              </select>  
                                            <label class="fieldlabels">중성화여부<span class="text-danger">*</span></label>
												 <select name="neut">
                                                  <option value="Y">O</option>
                                                  <option value="N">X</option>
                                                 <option value=" ">모름</option>
                                                  
                                              </select> 
                                            <label for="exampleFormControlTextarea1">특이사항</label>
                                              <textarea class="form-control" id="exampleFormControlTextarea1" name="message" rows="5"></textarea>
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">이벤트 선택</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 2 - 4</h2>
                                            </div>
                                        </div> 
                                        
                                            <label class="fieldlabels">이벤트 종류<span class="text-danger">*</span></label>
                                            <select name="eventType">
                                                <optgroup label="잔치룸">
                                                  <option value="생일파티룸">생일파티룸</option>
                                                  <option value="돌잔치룸">돌잔치룸</option>
                                                  <option value="수영장룸">수영장룸</option>
                                                </optgroup>
                                              </select> 
                                              
                                              <label class="fieldlabels">투숙 pet<span class="text-danger">*</span></label>
                                              <select name="pets">
                                                <optgroup label=" 강아지">
                                                  <option value="dog1">1마리</option>
                                                  <option value="dog2">2두리</option>
                                                  <option value="dog3">3마리</option>
                                                </optgroup>
                                                <optgroup label="고양이">
                                                  <option value="cat1">1마리</option>
                                                  <option value="cat2">2두리</option>
                                                  <option value="cat3">3마리</option>
                                                </optgroup>
                                              </select> 
                                              
                                              <label class="fieldlabels">예약 시간<span class="text-danger">*</span></label>
                                              <input type="date" name ="date">
                                              <input type="time" name ="time">
                                              <input type="time" name ="timeOUT">
                                            
                                    </div> 
                                    <input type="button" name="previous" class="previous action-button-previous"
                                        value="Previous" />
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                               <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">예약내역 확인</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 3 - 4</h2>
                                            </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-md-12 text-center">
                                                <div class="gp-price-table-one clearfix wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="0.3s">
                                                    <div class="price-table-container">
                                                        <div class="price-inner">
                                                            <span class="currency"></span>
                                                            <span class="price">예약 확인</span>
                                                        </div>
                                                        <h5 class="eventType">예약내용</h5>
                                                        <ul class="description">
                                                            <li>
                                                            
                                                            </li>
                                                        </ul>
                                                        <input type="text" readonly name="TotalPrice">
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                            <!-- /.col-md-4 -->
                                        </div>    
                                    </div> 
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                    <input type="submit" name="complete" class="next action-button" value="예약하기" />
                               
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Finish:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 4 - 4</h2>
                                            </div>
                                        </div> <br><br>
                                        <h2 class="purple-text text-center"><strong>SUCCESS !</strong></h2> <br>
                                        <div class="row justify-content-center">
                                            <div class="col-3"> <img src="https://i.imgur.com/GwStPmg.png"
                                                    class="fit-image"> </div>
                                        </div> <br><br>
                                        <div class="row justify-content-center">
                                            <div class="col-7 text-center">
                                                <h5 class="purple-text text-center">You Have Successfully Signed Up</h5>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <script
                src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js">
            </script>

            <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
            <script id="rendered-js">
                $(document).ready(function () {

                    var current_fs, next_fs, previous_fs; //fieldsets
                    var opacity;
                    var current = 1;
                    var steps = $("fieldset").length;

                    setProgressBar(current);

                    $(".next").click(function () {

                        current_fs = $(this).parent();
                        next_fs = $(this).parent().next();

                        //Add Class Active
                        $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                        //show the next fieldset
                        next_fs.show();
                        //hide the current fieldset with style
                        current_fs.animate({
                            opacity: 0
                        }, {
                            step: function (now) {
                                // for making fielset appear animation
                                opacity = 1 - now;

                                current_fs.css({
                                    'display': 'none',
                                    'position': 'relative'
                                });

                                next_fs.css({
                                    'opacity': opacity
                                });
                            },
                            duration: 500
                        });

                        setProgressBar(++current);
                    });

                    $(".previous").click(function () {

                        current_fs = $(this).parent();
                        previous_fs = $(this).parent().prev();

                        //Remove class active
                        $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

                        //show the previous fieldset
                        previous_fs.show();

                        //hide the current fieldset with style
                        current_fs.animate({
                            opacity: 0
                        }, {
                            step: function (now) {
                                // for making fielset appear animation
                                opacity = 1 - now;

                                current_fs.css({
                                    'display': 'none',
                                    'position': 'relative'
                                });

                                previous_fs.css({
                                    'opacity': opacity
                                });
                            },
                            duration: 500
                        });

                        setProgressBar(--current);
                    });

                    function setProgressBar(curStep) {
                        var percent = parseFloat(100 / steps) * curStep;
                        percent = percent.toFixed();
                        $(".progress-bar").
                        css("width", percent + "%");
                    }

                    $(".submit").click(function () {
                        return false;
                    });

                });
                //# sourceURL=pen.js
            </script>

        </section>


    </div>
    <!-- /.main_content -->

    <!-- Dependency Scripts -->
    <script src="dependencies/jquery/jquery.min.js"></script>
    <script src="dependencies/jquery-ui/jquery-ui.min.js"></script>
    <script src="dependencies/bootstrap/js/bootstrap.min.js"></script>
    <script src="dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="dependencies/swiper/js/swiper.jquery.min.js"></script>
    <script src="dependencies/swiperRunner/js/swiperRunner.min.js"></script>
    <script src="dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="dependencies/jquery.appear.bas2k/jquery.appear.js"></script>
    <script src="dependencies/revslider/js/jquery.themepunch.revolution.min.js"></script>
    <script src="dependencies/revslider/js/jquery.themepunch.tools.min.js"></script>
    <script src="dependencies/jquery.parallax-scroll/jquery.parallax-scroll.js"></script>
    <script src="dependencies/wow/js/wow.min.js"></script>
    <script src="dependencies/jquery.spinner/js/jquery.spinner.min.js"></script>
    <script src="dependencies/gmap3/gmap3.min.js"></script>
    <script src="dependencies/bootstrap-star-rating/js/star-rating.min.js"></script>

    <!-- Revolution Slider Plugin -->

    <script src="dependencies/revslider/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="dependencies/revslider/js/extensions/revolution.extension.parallax.min.js"></script>

    <!-- Site Scripts -->
    <script src="assets/js/smooth_scroll.min.js"></script>
    <script src="assets/js/app.js"></script>

</body>

</html>