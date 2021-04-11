<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body id="home-version-1" class="home-version-1 sticky-header transparent-header menu-two" data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div id="main_content">
		<section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>회원가입</h2>
                <p>
                    통합회원가입
                </p>
                <P style="font-size: 15px; margin-top: 20px;">통합회원가입을 통해 하나의 아이디로 <br>
                    휘닉스 호텔앤드리조트 사이트 서비스를 모두 이용하실 수 있습니다.</P>
            </div>
        </section>

        <section id="pricing" style="padding-top: 0;">
			<div class="container">
				<div class="row col-md-offset-3">
					<div class="col-md-4">
						<div class="gp-price-table-one clearfix wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="0.3s">
							<div class="price-table-container">
								<div class="price-inner">
									<span class="price" style="font-size: 35px;">HOSPITAL</span>
								</div>
								<h5 class="title">개편한병원</h5>
								<div class="price-table-button">
									<a class="gp-btn" href="#">메인페이지</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gp-price-table-one clearfix wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0.3s">
							<div class="price-table-container">
								<div class="price-inner">
									<span class="price" style="font-size: 35px;">HOTEL</span>
								</div>
								<h5 class="title">개편한호텔</h5>
								<div class="price-table-button">
									<a class="gp-btn" href="#">호텔사이트</a>
								</div>
							</div>
						</div>
					</div>
				</div>
                <div class="cf"></div>
                <div class="text-center mt">
                    <a href="${ pageContext.servletContext.contextPath }/member/regist?step=1" class="gp-btn btn-primary">다음</a>
                </div>
			</div>
			<!-- /.container -->
		</section>
	</div>
</body>
</html>