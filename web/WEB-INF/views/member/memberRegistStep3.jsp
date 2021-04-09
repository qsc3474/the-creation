<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<div id="main_content">
		<!-- title -->
        <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>회원가입</h2>
                <p>
                    이용약관동의
                </p>
            </div>
        </section>

        <!-- 회원가입 -->
        <section id="sign-up">
            <div class="container box-line">
                    <div class="col-md-8 col-md-offset-2" >
                        <div class="form-container">
                            <form action="#" method="post" class="vanilla vanilla-form" novalidate=""
                                data-vf-id="76ae1c44-b904-d78a-f1c8-d8d80edead50">
                                <div class="row">
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">아이디</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="id" class="form-control" name="name" placeholder="이름"
                                                required="required">
                                        </div>
                                        <div class="col-md-2">
                                            <a href="#" class="gp-btn btn-primary small"
                                                style="padding: 10px 15px;">중복확인</a>
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">비밀번호</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호">
                                        </div>
                                        <!--/.form-group -->
                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">비밀번호확인</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호확인">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">이름</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="name" placeholder="이름"
                                                required="required">
                                        </div>

                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-3">
                                            <label for="#">이메일</label>
                                        </div>
                                        <div class="form-group col-sm-3" style="padding-right: 0;">
                                            <input type="password" class="form-control" placeholder="이메일">
                                        </div>
                                        <div class="form-group col-sm-1" style="padding-right: 0;">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="inputGroupPrepend2"
                                                    style="padding-left: 10px;">@</span>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <select id="inputState" class="form-control">
                                                <option selected>naver.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                                <option>gmail.com</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-md-12">
                                        <div class="form-row">
                                            <div class="form-group col-sm-3">
                                                <label for="#">전화번호</label>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <select id="inputState" class="form-control">
                                                    <option selected>010</option>
                                                    <option>011</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" id="inputCity">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" id="inputZip">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group col-sm-3">
                                            <label for="#">주소</label>
                                        </div>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                                <input type="adress" class="form-control" name="tel" placeholder="1111">
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-self-center">
                                            <a href="#" class="gp-btn btn-primary small"
                                                style="padding: 10px 15px;">중복확인</a>
                                        </div>
                                        <div class="col-md-7" style="float: right; margin-right: 130px;">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" name="tel" placeholder="상세주소">
                                            </div>
                                        </div>
                                        <div class="col-sm-7" style="float: right; margin-right: 130px;">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" name="tel" placeholder="상세주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 text-center">
                                        <label>
                                            <input type="radio" name="subject" value="General">
                                            </span> 사실에 근거하여 허위로 작성 하지 않았습니다</label>
                                        <label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                <!-- /.row -->
                <div class="cf"></div>
                <div class="text-center mt">
                    <a href="step4.html" class="gp-btn btn-primary larg">회원가입</a>
                </div>
            </div>
        </section>
        <!-- 회원가입 -->
	</div>
	<!-- Dependency Scripts -->
	<script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery/jquery.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/jquery-ui.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/js/bootstrap.min.js"></script>

	<!-- Site Scripts -->
	<script src="${ pageContext.servletContext.contextPath }/resources/assets/js/smooth_scroll.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/assets/js/app.js"></script>
</body>
</html>