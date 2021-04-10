<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
	<title>index</title>

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
<title>Insert title here</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div id="main_content">
	<section class="login-sec">
		<div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
			<h2>로그인</h2>
			<p>
				로그인 후 사용 하실 수 있습니다.
			</p>
		</div>
		<div class="login-box">
			<form id="loginForm" action="${ pageContext.servletContext.contextPath }/member/login"method="post">
				<div class="form-group">
					<label for="exampleInputName1">아이디</label>
					<input type="text" class="form-control" id="memberId" name="memberId" placeholder="아이디입력">
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<label for="exampleInputEmail1">비밀번호</label>
					<input type="password" class="form-control" id="memberPwd" name="memberPwd" placeholder="영문숫자특수문자포함">
				</div>
				<!-- /.form-group -->
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input type="checkbox">
							<span></span>
							<span class="wrapped-label">아이디 저장</span>
						</label>
						<a href="idFind.html"><span class="pwd_find">&nbsp; 비밀번호찾기</span></a>
						<a href="idFind.html"><span class="pwd_find">아이디찾기&nbsp; | </span></a>
					</div>

				</div>
				<!-- /.form-group -->
				<input type="submit" class="gp-btn btn-primary larg">로그인
				<a href="sing-up.html" class="gp-btn btn-border larg">회원가입</a>
			</form>
		</div>
	</section>
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