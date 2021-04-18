<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404</title>
<style>
        .body {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .errorWrap {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -180px 0 0 -180px;
        }

        .errorWrap img {
            max-width: 100%;
            max-height: 100%;
        }
        .ht-title {margin-top: 30px;}
        .bt{margin-top: 330px;}
    </style>
</head>
<body>
	<!-- get post 잘못처리 했을떄 -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<div id="main_content">
		<section>
	            <div class="section-title ht-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
	                <h2>404 ERROR</h2>
	                <p>
	                    페이지가 존재하지 않거나 사용할 수 없는 페이지 입니다.<br>
	                    입력하신 주소가 정확한지 다시 한번 확인해 주세요
	                </p>
	                <div class="errorWrap">
	                    <img src="${ pageContext.servletContext.contextPath }/resources/media/img/errorPage404.png" alt="404">
	                </div>
	                <div class="bt">
	                    <a href="${ pageContext.servletContext.contextPath }" target="_self" class="gp-btn color-two medium btn-bradius">메인이동</a>
	                </div>
	        </section>
	</div>
	        <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
</body>
</html>