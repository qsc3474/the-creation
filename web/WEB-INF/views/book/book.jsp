<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Dependency Styles -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/gp-icons.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/gp-icons/style.css" type="text/css">
    <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/css/swiper.min.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/animate.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/css/settings.css" type="text/css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/magnific-popup.css" type="text/css">

    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/css/app.css" type="text/css">

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
<body>
      <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>호텔예약</h2>
            </div>
        </section>
        <!-- title -->

        <section id="booking" class="bk-sec bg-white">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-11 col-sm-10 col-md-10 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="msform">
                                <!-- progressbar -->
                                <ul id="progressbar">
                                    <li class="active" id="account"><strong>개인정보입력</strong></li>
                                    <li id="personal"><strong>Pet 정보입력</strong></li>
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
                                                <h2 class="fs-title">개인정보입력</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 1 - 4</h2>
                                            </div>
                                        </div> 
                                            <label class="fieldlabels">아이디 <span class="text-danger">*</span></label>
                                            <input type="text" name="userId" placeholder="아이디" /> 
                                            <label class="fieldlabels">비밀번호 <span class="text-danger">*</span></label> 
                                            <input type="password" name="pwd" placeholder="비밀번호" />
                                            <label class="fieldlabels">비밀번호 확인 <span class="text-danger">*</span></label> 
                                            <input type="password" name="pwd" placeholder="비밀번호확인" />  
                                            <label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                            <input type="text" name="uname" placeholder="이름" /> 
                                            <label class="fieldlabels">이메일 <span class="text-danger">*</span></label> 
                                            <input type="email" name="email" placeholder="Email" /> 
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Pet 정보</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 2 - 4</h2>
                                            </div>
                                        </div> 
                                        <label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                        <input type="text" name="uname" placeholder="이름" />
                                            <label class="fieldlabels">강아지 품종<span class="text-danger">*</span></label>
                                            <select name="pets">
                                                <optgroup label="소형견">
                                                  <option value="dog">Dog</option>
                                                  <option value="cat">Cat</option>
                                                  <option value="hamster" disabled>Hamster</option>
                                                </optgroup>
                                                <optgroup label="중형견">
                                                  <option value="parrot">Parrot</option>
                                                  <option value="macaw">Macaw</option>
                                                  <option value="albatross">Albatross</option>
                                                </optgroup>
                                              </select> 
                                              <label class="fieldlabels">고양이 품종<span class="text-danger">*</span></label>
                                            <select>
                                                <option>나비</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                              </select>
                                              <label class="fieldlabels">투숙 pet<span class="text-danger">*</span></label>
                                              <select name="pets">
                                                <optgroup label=" 강아지">
                                                  <option value="dog">1마리</option>
                                                  <option value="cat">2두리</option>
                                                  <option value="hamster">3마리</option>
                                                </optgroup>
                                                <optgroup label="고양이">
                                                  <option value="parrot">1마리</option>
                                                  <option value="macaw">2두리</option>
                                                  <option value="albatross">3마리</option>
                                                </optgroup>
                                              </select> 
                                              <label for="exampleFormControlTextarea1">특이사항</label>
                                              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
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
                                                            <span class="currency">￦</span>
                                                            <span class="price">200,000</span>
                                                        </div>
                                                        <h5 class="title">실속패키지</h5>
                                                        <ul class="description">
                                                            <li></li>
                                                            <li>스파</li>
                                                            <li>호텔1박</li>
                                                            <li>Annual Purchase</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.col-md-4 -->
                                        </div>    
                                    </div> 
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                    <input type="button" name="next" class="next action-button" value="next" />
                                </fieldset>
                                <!-- <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Image Upload:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 3 - 4</h2>
                                            </div>
                                        </div> <label class="fieldlabels">Upload Your Photo:</label> <input type="file"
                                            name="pic" accept="image/*"> <label class="fieldlabels">Upload Signature
                                            Photo:</label> <input type="file" name="pic" accept="image/*">
                                    </div> <input type="button" name="next" class="next action-button" value="Submit" />
                                    <input type="button" name="previous" class="previous action-button-previous"
                                        value="Previous" />
                                </fieldset> -->
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
   <!-- Dependency Scripts -->
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery/jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/jquery-ui.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/js/swiper.jquery.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/swiperRunner/js/swiperRunner.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.appear.bas2k/jquery.appear.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.revolution.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/jquery.themepunch.tools.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.parallax-scroll/jquery.parallax-scroll.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/js/wow.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery.spinner/js/jquery.spinner.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/gmap3/gmap3.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/js/star-rating.min.js"></script>

    <!-- Revolution Slider Plugin -->

    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/js/extensions/revolution.extension.parallax.min.js"></script>

    <!-- Site Scripts -->
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/js/smooth_scroll.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/assets/js/app.js"></script>



</body>
</html>