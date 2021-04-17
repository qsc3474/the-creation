<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약화인</title>

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
<jsp:include page="../common/header.jsp"></jsp:include>

 <section class="step-title">
            <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                <h2>예약 확인</h2>
            </div>
        </section>

 <section id="booking" class="bk-sec bg-white">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-11 col-sm-10 col-md-10 col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="msform" action="${pageContext.request.contextPath}/hp/book/selectt" method="post">
<fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">진료 예약 확인</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps"></h2>
                                            </div>
                                        </div> 
                                       			
                                    <label class="fieldlabels">이름<span class="text-danger">*</span></label>
                                        	<input type="text" name="petName" placeholder="이름" />
                                            <label class="fieldlabels">분류 (종)<span class="text-danger">*</span></label>
											<input type="text" value="종"> 
                                            <label class="fieldlabels">성별 <span class="text-danger">*</span></label> 
                                              <input type="text" value="성별"> 
                                               <label class="fieldlabels">나이<span class="text-danger">*</span></label>
												 <input type="text" value="연령"> 
                                            <label class="fieldlabels">중성화여부<span class="text-danger">*</span></label>
												<input type="text" value="중성화"> 
												 <label class="fieldlabels">예약시간<span class="text-danger">*</span></label>
												<input type="text" value="예약시간"> 
                                            <label for="exampleFormControlTextarea1">특이사항</label>
                                              <textarea class="form-control" id="exampleFormControlTextarea1" name="message" rows="5"></textarea>
                                    		
                                    
                                    
                                    </div> 
                                    
                                    <input type="button" name="previous" class="previous action-button-previous"
                                        value="돌아가긴" />
                                    <input type="button" name="next" class="next action-button" value="예약수정" />
                                </fieldset>
</section>


</body>
</html>