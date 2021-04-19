<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>개편한 호텔 - 예약확인</title>
    <!-- 기기(디바이스)별 크기를 인식 하고 1.0으로 확대 및 축소 없이해서 보여줌 -->
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    
    <link  rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap">
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
     <!--폰트어썸 웹 아이콘-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- 커스텀 스타일시트 -->
    <script src="/creation/resources/js/event.js"></script>
    <link rel="stylesheet" href="/creation/resources/css/common2.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="/creation/resources/js/event.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/hotel/common/header.jsp"/>
 <section class="title-sec">
    <div class="row">
        <h2 class="section-title section-title-upper section-title-line text-center">
            예약확인
        </h2>
    </div>
 </section>
<section class="notice-sec">
    <div class="container">
        <div class="col-lg-12">
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default panel-wrap">
                            <table class="table table-hover table-bordered" id="dataTables-example" aria-describedby="dataTables-example_info">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column ascending" style="width: 50px;">
                                            No.
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 335px;" >
                                            서비스
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 50px;">
                                            룸
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 50px;">
                                            체크인
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 10px;">
                                            체크아웃
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>	
					                 <c:forEach items="${ requestScope.roomList }" var="htRoom">
										<tr>
											<td><c:out value="${ htRoom.no }"/></td>
											<td><c:out value="${ htRoom.type }"/></td>
											<td><c:out value="${ htRoom.roomNo }"/></td>
											<td><c:out value="${ htRoom.checkIn }"/></td>						
											<td><c:out value="${ htRoom.checkOut }"/></td>
										</tr>
									</c:forEach>
                                </tbody>
                            </table>                            
                        </div>  <!-- table-area end -->
	                </div>
	             </div>
	           </div>
	        </div>
	    </div> <!-- pagingArea end --> 
	    </div>
</section>

 <section id="user-info">
            <div class="container">
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
        </section>

<script>
const link = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/list";

		if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for(var i = 0 ; i < $tds.length ; i++) {
				$tds[i].onclick = function() {
					const no = this.parentNode.children[0].innerText;
					/* location.href = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/detail?no=" + no; */   
				}
			}
		}
</script>

</body>
</html>



