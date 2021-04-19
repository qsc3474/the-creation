<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <!-- Meta Data -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/resources/assets/img/apple-touch-icon.png">
   <link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-32x32.png">
   <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-16x16.png">
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
   <link rel="stylesheet" href="assets/css/app.css" type="text/css">
   
   <!-- 추가 -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <style>
        div.bhoechie-tab-menu div.list-group>a.active:after {display: none;}
        div.bhoechie-tab-menu div.list-group>a .fa {color: #ccc;}
        div.bhoechie-tab-menu div.list-group>a.active,
        div.bhoechie-tab-menu div.list-group>a.active .fa {background-color: #ccc; background-image: #ccc; color: #ffffff; border: #ccc;}

.notice-sec {padding: 0 70px;}
    </style>

</head>
<body>

<jsp:include page="../common/header.jsp"></jsp:include>
<section class="step-title pt-null">
         <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
            <h2>공지사항</h2>
         </div>
      </section>

      <section id="reviewdetail">
         <div class="notice-sec">
            <div class="row">
               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu">
                  <div class="list-group">
                     <a href="#" class="list-group-item active text-center">
                        <h4 class="glyphicon glyphicon"></h4><br />회원관리
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon"></h4><br />관리자 게시판 관리
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon"></h4><br />Q&A 관리
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon"></h4><br />리뷰 관리
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon "></h4><br />예약관리
                     </a>
                  </div>
               </div>
               <div class="col-md-9 bhoechie-tab-container mt-null">
                  <div class="col-md-12 bhoechie-tab">
                     <!-- flight section -->
                     <div class="bhoechie-tab-content active col-md-12">
                        <div>
                           <h2 style="margin-top: 0;color:#F2B138" class="hide">공지사항</h2>
                           <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h3 class="card-title hide">회원 정보</h3>
                                                <div class="card-options">
                                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                                    <a href="#" class="card-options-fullscreen" data-toggle="card-fullscreen"><i class="fe fe-maximize"></i></a>
                                                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                                    <div class="item-action dropdown ml-2">
                                                        <a href="javascript:void(0)" data-toggle="dropdown"><i class="fe fe-more-vertical"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-right vivify popIn">
                                                            <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-tag"></i> Action </a>
                                                            <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-edit-2"></i> Another action </a>
                                                            <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-message-square"></i> Something else here</a>
                                                            <div class="dropdown-divider"></div>
                                                            <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fe fe-link"></i> Separated link</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="table-responsive table_e2">
                                                    <table class="table table-hover table-vcenter text-nowrap mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th>
                                                                    <label class="custom-control custom-checkbox mb-0">
                                                                        <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                        <span class="custom-control-label">&nbsp;</span>
                                                                    </label>
                                                                </th>
                                                                <th>회원번호</th>                                    
                                                                <th>이름</th>
                                                                <th>아이디</th>
                                                                <th>회원그룹</th>                                    
                                                                <th>이메일</th>                                    
                                                                <th>전화번호</th>                                    
                                                                <th>지역</th>
                                                                <th>가입일</th>
                                                                <th>탈퇴일</th>
                                                                <th>수정/삭제</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="width45">
                                                                    <label class="custom-control custom-checkbox mb-0">
                                                                        <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                        <span class="custom-control-label">&nbsp;</span>
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    1
                                                                </td>
                                                                <td>
                                                                    user1
                                                                </td>
                                                                <td>
                                                                    <img src="../assets/images/xs/avatar1.jpg" class="rounded" alt="">
                                                                    <span class="c_name">홍길동</span>
                                                                </td>
                                                                <td>
                                                                    <select id="select">
                                                                        <option value="">일반회원</option>
                                                                          <option value="">우수회원</option>
                                                                          <option value="">블랙리스트</option>
                                                                      </select>
                                                                </td>
                                                                <td>
                                                                    123@123
                                                                </td>
                                                                <td>
                                                                    <span class="phone"><i class="fa fa-phone mr-2"></i>264-625-2583</span>
                                                                </td>                                   
                                                                <td>
                                                                    <span><i class="fa fa-map-marker"></i>서울</span>
                                                                </td>
                                                                <td>
                                                                    19/02/21
                                                                </td>
                                                                <td>
                                                                    *
                                                                </td>
                                                                <td>                                            
                                                                    <button type="button" class="btn btn-primary btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                                                    <button type="button" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash-o"></i></button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="custom-control custom-checkbox mb-0">
                                                                        <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                        <span class="custom-control-label">&nbsp;</span>
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    2
                                                                </td>
                                                                <td>
                                                                    user2
                                                                </td>
                                                                <td>
                                                                    <img src="../assets/images/xs/avatar3.jpg" class="rounded" alt="">
                                                                    <span class="c_name">유관순</span>
                                                                </td>
                                                                <td>
                                                                    <select id="select">
                                                                        <option value="">일반회원</option>
                                                                          <option value="">우수회원</option>
                                                                          <option value="">블랙리스트</option>
                                                                      </select>
                                                                </td>
                                                                <td>
                                                                    123@123
                                                                </td>
                                                                <td>
                                                                    <span class="phone"><i class="fa fa-phone mr-2"></i>264-625-5689</span>
                                                                </td>                                    
                                                                <td>
                                                                    <address><i class="fa fa-map-marker"></i>서울</address>
                                                                </td>
                                                                <td>
                                                                    19/02/21
                                                                </td>
                                                                <td>
                                                                    *
                                                                </td>
                                                                <td>
                                                                    <button type="button" class="btn btn-primary btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                                                    <button type="button" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash-o"></i></button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="custom-control custom-checkbox mb-0">
                                                                        <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                        <span class="custom-control-label">&nbsp;</span>
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    3
                                                                </td>
                                                                <td>
                                                                    user3
                                                                </td>
                                                                <td>
                                                                    <img src="../assets/images/xs/avatar9.jpg" class="rounded" alt="">
                                                                    <span class="c_name">이순신</span>
                                                                </td>
                                                                <td>
                                                                    <select id="select">
                                                                        <option value="">일반회원</option>
                                                                          <option value="">우수회원</option>
                                                                          <option value="">블랙리스트</option>
                                                                      </select>
                                                                </td>
                                                                <td>
                                                                    123@123
                                                                </td>
                                                                <td>
                                                                    <span class="phone"><i class="fa fa-phone mr-2"></i>264-625-9999</span>
                                                                </td>
                                                                <td>
                                                                    <address><i class="fa fa-map-marker"></i>서울</address>
                                                                </td>
                                                                <td>
                                                                    19/02/21
                                                                </td>
                                                                <td>
                                                                    *
                                                                </td>
                                                                <td>
                                                                    <button type="button" class="btn btn-primary btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                                                    <button type="button" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash-o"></i></button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <label class="custom-control custom-checkbox mb-0">
                                                                        <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                        <span class="custom-control-label">&nbsp;</span>
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    4
                                                                </td>
                                                                <td>
                                                                    user4
                                                                </td>
                                                                <td>
                                                                    <img src="../assets/images/xs/avatar10.jpg" class="rounded" alt="">
                                                                    <span class="c_name">윤봉길</span>
                                                                </td>
                                                                <td>
                                                                    <select id="select">
                                                                        <option value="">일반회원</option>
                                                                          <option value="">우수회원</option>
                                                                          <option value="">블랙리스트</option>
                                                                      </select>
                                                                </td>
                                                                <td>
                                                                    123@123
                                                                </td>
                                                                <td>
                                                                    <span class="phone"><i class="fa fa-phone mr-2"></i>264-625-1212</span>
                                                                </td>
                                                                <td>
                                                                    <address><i class="fa fa-map-marker"></i>서울</address>
                                                                </td>
                                                                <td>
                                                                    19/02/21
                                                                </td>
                                                                <td>
                                                                    *
                                                                </td>
                                                                <td>
                                                                    <button type="button" class="btn btn-primary btn-sm" title="Edit"><i class="fa fa-edit"></i></button>
                                                                    <button type="button" class="btn btn-danger btn-sm" title="Delete"><i class="fa fa-trash-o"></i></button>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        </div>
                     </div>
                     <!-- train section -->
                     <div class="bhoechie-tab-content col-md-12">
                        <div>
                           <h2 style="margin-top: 0;color:#F2B138" class="pt pb hide">F&amp;Q</h2>
                           <div class="col-md-12 mb">
                              <div class="card-body">
                                            <div class="table-responsive table_e2">
                                                <table class="table table-hover table-vcenter text-nowrap mb-0">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </th>
                                                            <th>번호</th>                                    
                                                            <th>게시판</th>
                                                            <th>제목</th>
                                                            <th>본문</th>                                    
                                                            <th>댓글</th>                                    
                                                            <th>작성자</th>                                    
                                                            <th>작성일시</th>                                    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="width45">
                                                                <label class="custom-control custom-checkbox mb-0">
                                                                    <input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1" checked="">
                                                                    <span class="custom-control-label">&nbsp;</span>
                                                                </label>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                            <td>
                                                                F&Q
                                                            </td>
                                                            <td>
                                                                회원가입은 어떻게 하나요?
                                                            </td>
                                                            <td>
                                                                file
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                            <td>
                                                                운영자
                                                            </td>                                   
                                                            <td>
                                                                19/02/21 15:23:42
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                           </div>
                        </div>
                     </div>
                     <!-- hotel search -->
                     <div class="bhoechie-tab-content col-md-12">
                        <div>
                           <h2 style="margin-top: 0;color:#F2B138" class="pt pb">F&amp;Q</h2>
                           <div class="col-md-12 mb">
                              <div class="choose wow fadeInUp col-md-12 mb" data-wow-delay="0.5s">
                                 <div class="panel-group" id="accordion">
                                    <div class="panel panel-default panel-active">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle active" data-parent="#accordion"
                                                href="#collapseOne">수술 후 실밥(봉합사) 제거는 언제 하나요?</a></div>
                                       </div>
                                       <div id="collapseOne" class="panel-collapse collapse in">
                                          <div class="panel-body">피부 겉면에 있는 봉합사는 녹는 실이 아니므로 꼭 실밥제거날에 봉합사를
                                             제거하시면 됩니다.
                                             수술후에 퇴원할때 수의사 선생님이나 간호사 분이 실밥 제거일을 정해주면 집에서 소독관리를 잘해주시다가,
                                             해당날짜에 수술한 해당 병원에 가셔서 실밥제거를 하시는 것이 좋습니다. 수술부위마다 다르지만 보통 2주일
                                             후,
                                             실밥제거를 하게 됩니다. 수술부위 상태 확인과 소독 처치를 하고 집으로 오시면 됩니다.
                                          </div>
                                       </div>
                                    </div>
                                    <div class="panel panel-default">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle" data-parent="#accordion"
                                                href="#collapseTwo">수술 후.수술부위가 빨갛고 간지러워 해요~따로 약을 발라야
                                                하나요?</a></div>
                                       </div>
                                       <div id="collapseTwo" class="panel-collapse collapse">
                                          <div class="panel-body">수술부위의 발적 (빨갛게 부어오름) 및 소양감 (간지러움)은 수술 후
                                             정상적으로 나타날 수 있는 모습입니다.
                                             다만 보호자분이 보시기에 그 정도가 심하다고 생각되신다면 수술부위 염증이 진행되는 상황일 수 있습니다.
                                             수술받으신 병원이 아이의 상태를 가장 잘 알기 때문에 가능하시다면 집에서 멀더라도 수술 받으신 병원에서
                                             처치를 받으시는 것이 좋습니다. </div>
                                       </div>
                                    </div>
                                    <div class="panel panel-default">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle" data-parent="#accordion"
                                                href="#collapseThree">우리 강아지가 갑자기 호흡곤란을 일으켰어요! 어떻게
                                                해야되나요??</a></div>
                                       </div>
                                       <div id="collapseThree" class="panel-collapse collapse">
                                          <div class="panel-body"> 증상으로 보자면 자궁쪽에 문제가 생겻을 가능성이 큽니다.
                                             나이가 좀 있는 노령견이고 생리기간이 아닌데 외음부에서 분비물이 나온다면 생식기나 비뇨기에
                                             질환이 발생한 것일 수 있습니다. 생리기간인건 아닌지 확인하시고 소변 색깔은 괜찮은지 확인하시고
                                             빠른 시일내에 동물병원에 내원하시어 혈액검사상 염증 수치와 초음파를 통한 자궁 상태 확인을 하실
                                             것을 권해드립니다. 자궁축농증으로 확진되면 빠른 시일내에 수술하여야 합니다. 강아지 자궁축농증은
                                             개방형과 폐쇄형으로 나뉘는 데 개방형은 자궁에서 만들어진 염증물이 외음부로 흘러나가는 것이고,
                                             폐쇄형은 염증물이 자궁에 갇혀 있는 경우입니다. 자궁축농증으로 인한 다양한 증상은 폐쇄형인 경우가
                                             더 심하게 나타납니다. 폐쇄형의 경우 자궁에 축적되는 염증물이 늘어날수록 배가 불러지기 시작하며
                                             상태가 심해지면 자궁 내의 염증물이 과다하게 몸으로 흡수되면서 체온도 높아지고 패혈증 증상이
                                             나타내게 됩니다. 그리고 이러한 상태가 더 진행되면 결국 목숨을 잃을 수도 있습니다

                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <!-- /.choose -->
                           </div>
                        </div>
                     </div>
                     <div class="bhoechie-tab-content col-md-12">
                        <div>
                           <h2 style="margin-top: 0;color:#F2B138" class="pt pb">1:1 문의</h2>
                           <div class="col-md-12 mb">
                              <div class="container">
                                 <div class="page_section section_qna">
                                    <div class="xans-board-write col-md-8">
                                       <form name="fm" id="fm" method="post" action="/shop/mypage/indb.php"
                                          enctype="multipart/form-data" onsubmit="return chkForm(this)"
                                          style="height: 100%;">
                                          <input type="hidden" name="mode" value="add_qna">
                                          <input type="hidden" name="itemcd" value="">
                                          <input type="hidden" name="sno" value="0">
                                          <table id="table_after" class="boardWrite2" width="100%">
                                             <colgroup>
                                                <col width="14%" align="right">
                                             </colgroup>
                                             <tbody>
                                                <tr>
                                                   <th class="input_txt">제목</th>
                                                   <td><select name="itemcd" required=""
                                                         fld_esssential="" label="질문유형"
                                                         class="select">
                                                         <option value="">선택해주세요.</option>
                                                         <option value="01">치료사례</option>
                                                         <option value="11">방문후기</option>
                                                         <option value="02">가격문의</option>
                                                      </select><br>
                                                      <input type="text" name="subject"
                                                         style="width:100%" required=""
                                                         fld_esssential="" label="제목" value="">
                                                   </td>
                                                </tr>
                                                <tr>
                                                   <th class="input_txt">주문번호</th>
                                                   <td>
                                                      <input type="text" name="ordno"
                                                         style="width:25%" value=""
                                                         readonly="readonly" onclick="$(this).blur()"
                                                         onfocus="$(this).blur()">
                                                      <input onclick="order_open()" type="button"
                                                         class="bhs_button yb" value="주문조회"
                                                         style="float:none; line-height:27px; width:100px;">
                                                      <div style="position:relative;z-index:1">
                                                         <iframe id="ifm_order" frameborder="0"
                                                            scrolling="no"
                                                            style="display:none;position:absolute;width:560px;height:380px;background-color:#fff;position:absolute;left:0;top:0;border:1px solid #000"></iframe>
                                                      </div>
                                                   </td>
                                                </tr>
                                                <tr>
                                                   <th class="input_txt">이메일</th>
                                                   <td>
                                                      <input type="text" name="email"
                                                         value="stickstoff@naver.com" size="26"
                                                         readonly="readonly" class="read_only">
                                                      <span class="noline smalle"
                                                         style="padding-left:10px"><input
                                                            type="checkbox" name="mailling"><span
                                                            style="font-size:8pt;">답변수신을 이메일로
                                                            받겠습니다.</span></span>
                                                   </td>
                                                </tr>
                                                <tr>
                                                   <th class="input_txt">문자메시지</th>
                                                   <td>
                                                      <input type="text" name="mobile[]"
                                                         value="010-9289-9363" readonly="readonly"
                                                         class="read_only">
                                                      <span class="noline smalle"
                                                         style="padding-left:10px"><input
                                                            type="checkbox" name="sms"><span
                                                            style="font-size:8pt;">답변수신을 문자메시지로
                                                            받겠습니다.</span></span>
                                                   </td>
                                                </tr>
                                                <tr>
                                                   <th class="input_txt">내용</th>
                                                   <td class="edit_area" style="position: relative;">

                                                      <style>
                                                         #qnaNotice .qna_goods {
                                                            display: none
                                                         }
                                                      </style>
                                                      <div id="qnaNotice">
                                                         <div class="inner_qnaNotice">
                                                            <div class="notice_qna">
                                                               <strong class="tit qna_public">1:1
                                                                  문의 작성 전 확인해주세요!</strong>
                                                               <strong class="tit qna_goods">상품문의
                                                                  작성 전 확인해 주세요!</strong>

                                                               <dl class="list qna_goods">
                                                                  <dd>
                                                                     <span>답변은 영업일 기준 2~3일
                                                                        소요됩니다.</span>
                                                                     <span>해당 게시판의 성격과 다른 글은 사전동의
                                                                        없이 담당 게시판으로 이동될 수
                                                                        있습니다.</span>
                                                                     <span>배송관련, 주문(취소/교환/환불)관련
                                                                        문의 및 요청사항은 마이컬리 내 1:1
                                                                        문의에
                                                                        남겨주세요.</span>
                                                                  </dd>
                                                               </dl>

                                                               <dl class="list qna_goods">
                                                                  <dt>제품</dt>
                                                                  <dd>
                                                                     <span>입고일: 품절 상품 입고 일이 확정된
                                                                        경우, 섬네일에 기재되어 있습니다.(종
                                                                        모양을
                                                                        클릭하여, 재입고 알람 설정
                                                                        가능)</span>
                                                                     <span>제품 상세정보: 영양성분 및 함량,
                                                                        용량, 보관 및 취급 방법 등 제품 정보는
                                                                        상세 이미지
                                                                        또는 상세정보에서 확인
                                                                        가능합니다.</span>
                                                                  </dd>
                                                               </dl>

                                                               <dl class="list qna_public">
                                                                  <dt>반품 / 환불</dt>
                                                                  <dd>
                                                                     <span>제품 하자 혹은 이상으로 반품 (환불)이
                                                                        필요한 경우 사진과 함께 구체적인 내용을
                                                                        남겨주세요.</span>
                                                                  </dd>
                                                               </dl>
                                                               <dl class="list">
                                                                  <dt>배송</dt>
                                                                  <dd>
                                                                     <span>주문 완료 후 배송 방법(샛별 /
                                                                        택배)은 변경이 불가능합니다.</span>
                                                                     <span>배송일 및 배송시간 지정은 불가능합니다.
                                                                        (예약배송 포함)</span>
                                                                     <p class="info">※ 전화번호, 이메일,
                                                                        주소, 계좌번호 등의 상세 개인정보가 문의
                                                                        내용에
                                                                        저장되지 않도록 주의해 주시기 바랍니다.
                                                                     </p>
                                                                  </dd>
                                                               </dl>
                                                            </div>
                                                         </div>
                                                      </div>
                                                      <script>
                                                         var qnaNotice = new Vue({
                                                            el: '#qnaNotice',
                                                            data: {
                                                               getData: null,
                                                               layerOn: true
                                                            },
                                                            methods: {
                                                               update: function () {
                                                                  var $self = this;
                                                                  $.ajax({
                                                                     type: 'GET',
                                                                     url: campaginUrl +
                                                                        'pc/notice/qna_info.html',
                                                                     datatype: 'html',
                                                                     async: true,
                                                                  }).done(function (result) {
                                                                     $self.getData = result;
                                                                  });
                                                               }
                                                            }
                                                         });
                                                         $(document).ready(function () {
                                                            qnaNotice.update();
                                                         });
                                                      </script>

                                                      <textarea name="contents"
                                                         style="width:100%;height:250px;"
                                                         class="editing_area" required=""
                                                         fld_esssential="" label="내용"></textarea>
                                                   </td>
                                                </tr>
                                                <tr>
                                                   <th class="input_txt">이미지</th>
                                                   <td>
                                                      <table width="95%" id="table" cellpadding="0"
                                                         cellspacing="0" border="0"
                                                         style="border:solid 1px #f4f4f4; border-collapse:collapse;">
                                                         <tbody>
                                                            <tr id="tr_0">
                                                               <td width="20" nowrap=""
                                                                  align="center">1</td>
                                                               <td width="100%">
                                                                  <input type="file" name="file[]"
                                                                     style="width:50%"
                                                                     class="linebg">
                                                                  <a href="javascript:add()">
                                                                     <img src="/media/img/upload05.png" align="absmiddle">
                                                                  </a>
                                                               </td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                      <table>
                                                         <tbody>
                                                            <tr>
                                                               <td height="2"></td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                      <div width="100%" style="padding:5px;"
                                                         class="stxt">
                                                         - 파일은 최대 5개까지 업로드가 지원됩니다.<br>
                                                      </div>
                                                   </td>
                                                </tr>
                                             </tbody>
                                          </table>

                                          <table width="100%">
                                             <tbody>
                                                <tr>
                                                   <td align="right"
                                                      style="padding-top:5px; border:none;"
                                                      id="avoidDbl">
                                                      <input type="submit" class="bhs_button yb"
                                                         value="저장" style="float:none;">
                                                   </td>
                                                </tr>
                                             </tbody>
                                          </table>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="bhoechie-tab-content col-md-12">
                        <div>
                           <h2 style="margin-top: 0;color:#F2B138" class="pt pb">F&amp;Q</h2>
                           <div class="col-md-12 mb">
                              <div class="choose wow fadeInUp" data-wow-delay="0.5s">
                                 <div class="panel-group" id="accordion">
                                    <div class="panel panel-default panel-active">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle active" data-parent="#accordion"
                                                href="#collapseOne">수술 후 실밥(봉합사) 제거는 언제 하나요?</a></div>
                                       </div>
                                       <div id="collapseOne" class="panel-collapse collapse in">
                                          <div class="panel-body">피부 겉면에 있는 봉합사는 녹는 실이 아니므로 꼭 실밥제거날에 봉합사를
                                             제거하시면 됩니다.
                                             수술후에 퇴원할때 수의사 선생님이나 간호사 분이 실밥 제거일을 정해주면 집에서 소독관리를 잘해주시다가,
                                             해당날짜에 수술한 해당 병원에 가셔서 실밥제거를 하시는 것이 좋습니다. 수술부위마다 다르지만 보통 2주일
                                             후,
                                             실밥제거를 하게 됩니다. 수술부위 상태 확인과 소독 처치를 하고 집으로 오시면 됩니다.
                                          </div>
                                       </div>
                                    </div>
                                    <div class="panel panel-default">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle" data-parent="#accordion"
                                                href="#collapseTwo">수술 후.수술부위가 빨갛고 간지러워 해요~따로 약을 발라야
                                                하나요?</a></div>
                                       </div>
                                       <div id="collapseTwo" class="panel-collapse collapse">
                                          <div class="panel-body">수술부위의 발적 (빨갛게 부어오름) 및 소양감 (간지러움)은 수술 후
                                             정상적으로 나타날 수 있는 모습입니다.
                                             다만 보호자분이 보시기에 그 정도가 심하다고 생각되신다면 수술부위 염증이 진행되는 상황일 수 있습니다.
                                             수술받으신 병원이 아이의 상태를 가장 잘 알기 때문에 가능하시다면 집에서 멀더라도 수술 받으신 병원에서
                                             처치를 받으시는 것이 좋습니다. </div>
                                       </div>
                                    </div>
                                    <div class="panel panel-default">
                                       <div class="panel-heading">
                                          <div class="panel-title"><a data-toggle="collapse"
                                                class="panel-toggle" data-parent="#accordion"
                                                href="#collapseThree">우리 강아지가 갑자기 호흡곤란을 일으켰어요! 어떻게
                                                해야되나요??</a></div>
                                       </div>
                                       <div id="collapseThree" class="panel-collapse collapse">
                                          <div class="panel-body"> 증상으로 보자면 자궁쪽에 문제가 생겻을 가능성이 큽니다.
                                             나이가 좀 있는 노령견이고 생리기간이 아닌데 외음부에서 분비물이 나온다면 생식기나 비뇨기에
                                             질환이 발생한 것일 수 있습니다. 생리기간인건 아닌지 확인하시고 소변 색깔은 괜찮은지 확인하시고
                                             빠른 시일내에 동물병원에 내원하시어 혈액검사상 염증 수치와 초음파를 통한 자궁 상태 확인을 하실
                                             것을 권해드립니다. 자궁축농증으로 확진되면 빠른 시일내에 수술하여야 합니다. 강아지 자궁축농증은
                                             개방형과 폐쇄형으로 나뉘는 데 개방형은 자궁에서 만들어진 염증물이 외음부로 흘러나가는 것이고,
                                             폐쇄형은 염증물이 자궁에 갇혀 있는 경우입니다. 자궁축농증으로 인한 다양한 증상은 폐쇄형인 경우가
                                             더 심하게 나타납니다. 폐쇄형의 경우 자궁에 축적되는 염증물이 늘어날수록 배가 불러지기 시작하며
                                             상태가 심해지면 자궁 내의 염증물이 과다하게 몸으로 흡수되면서 체온도 높아지고 패혈증 증상이
                                             나타내게 됩니다. 그리고 이러한 상태가 더 진행되면 결국 목숨을 잃을 수도 있습니다

                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <!-- /.choose -->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <script>
            $(document).ready(function () {
               $("div.bhoechie-tab-menu>div.list-group>a").click(function (e) {
                  e.preventDefault();
                  $(this).siblings('a.active').removeClass("active");
                  $(this).addClass("active");
                  var index = $(this).index();
                  $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                  $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
               });
            });
         </script>
      </section>

</body>
</html>