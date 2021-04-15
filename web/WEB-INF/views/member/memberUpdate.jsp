<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<body>

<jsp:include page="../common/header.jsp"/>



        <section class="singUp-sec">
            <div class="container box-line">
                <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
                    <h2>마이페이지</h2>
                </div>
                <div class="row ">
                    <div class="col-md-9 col-md-offset-2">
                        <div class="form-container">
                            <form action="#" method="post" class="vanilla vanilla-form" novalidate=""
                                data-vf-id="76ae1c44-b904-d78a-f1c8-d8d80edead50">
                                <div class="row">
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">아이디</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="id" readonly value="${sessionScope.loginMember.id }">
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">비밀번호</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호">
                                        </div>
                                        <!--/.form-group -->
                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">비밀번호확인</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="password" class="form-control" placeholder="비밀번호확인">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 pr-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">이름</label>
                                        </div>
                                        <div class="form-group col-sm-7">
                                            <input type="text" class="form-control" name="name" readonly value="${sessionScope.loginMember.name }">
                                        </div>

                                    </div>
                                    <div class="col-sm-12 pl-10">
                                        <div class="form-group col-sm-2">
                                            <label for="#">이메일</label>
                                        </div>
                                        <div class="form-group col-sm-3" style="padding-right: 0;">
                                            <input type="text" class="form-control" value="${sessionScope.loginMember.email }">
                                        </div>
                                        <div class="form-group col-sm-1" style="padding-right: 0;">
                                            <div class="input-group-prepend">
                                               
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                          
                                        </div>
                                        <div class="col-md-2">
                                            <a href="info.html#BeautyPrice" class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff;">변경하기</a>
                                        </div>
                                    </div>
                                    <!--/column -->
                                    <div class="col-md-12">
                                        <div class="form-row">
                                            <div class="form-group col-sm-2">
                                                <label for="#">전화번호</label>
                                            </div>
                                            <c:set var="TextValue" value="${sessionScope.loginMember.phone }"/>
                                           

                                            <div class="form-group col-md-3">
                                                <select id="inputState" class="form-control" name="tel1">
                                                    <option selected>010</option>
                                                    <option>011</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" name="tel2" value="${fn:substring(TextValue,2,6) }">
                                            </div>
                                            <div class="form-group col-md-2">
                                                <input type="text" class="form-control" id="tel3" value="${fn:substring(TextValue,6,11) }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group col-sm-2">
                                            <label for="#">주소</label>
                                        </div>
                                        <div class="col-sm-7 pl-10">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="tel" value="${sessionScope.loginMember.address }">
                                            </div>
                                        </div>
                                        <div class="col-md-2 align-self-center">
                                            <a href="info.html#BeautyPrice" class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff;">변경하기</a>
                                        </div>
                                        <div class="col-md-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" name="tel" placeholder="상세주소">
                                            </div>
                                        </div>
                                        <div class="col-sm-7" style="float: right; margin-right: 220px;">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" name="tel" placeholder="상세주소">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="text-center" style="margin-right: -50px;">
                    <a href="info.html#BeautyPrice" class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff;">수정</a>
                    <a href="info.html#BeautyPrice" class="gp-btn btn-dark small" style=" margin-bottom: 5px; color: #fff; background: #FDC647;">탈퇴</a>
                </div>
            </div>
        </section>
</body>
</html>