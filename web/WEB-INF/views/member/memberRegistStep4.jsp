<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div id="main_content">
		<!-- 회원가입 완료 -->
		<section id="step-title4">
			<div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
				<h2>회원가입 완료</h2>
				<div class="text-center">
				<img src="media/img/checked.png" alt="check" style="width: 100px; height: 100px;">
				</div>
				<p class="mt fm">
					개편한 세상 가입이 완료 되었습니다.
				</p>
			</div>
			<div class="cf"></div>
                <div class="text-center">
                    <a href="index.html" class="gp-btn btn-primary larg">메인페이지 이동</a>
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