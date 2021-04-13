<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
 
    <title>Document</title>
    <!-- 기기(디바이스)별 크기를 인식 하고 1.0으로 확대 및 축소 없이해서 보여줌 -->
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 -->
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<style>
.title-sec {margin-top: 107.628px; height: 100px; margin-bottom: 0; padding: 30px;}
.section-title {margin-bottom: 10px;}
.notice-sec .container{padding: 100px 0;}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<%-- <section id="reviewdetail">
         <div class="container">
            <div class="row">
				<div class="bhoechie-tab-content col-md-12">
				   <center>
				      <h2 style="margin-top: 0;color:#F2B138" class="pt pb hide">F&amp;Q</h2>
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
				         /.choose
				      </div>
				   </center>
				</div>
			</div>
		</div>
	</section> --%>
    <section class="notice-sec">
        <div class="container">
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <!-- 게시판 카테고리 -->
                        <div class="col-md-12">
                            <h1 class="page-header">
                                FAQ <small>자주 묻는 질문들</small>
                            </h1>
                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Advanced Tables
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                            <div class="row">
                                                <!-- 한 페이지에 보여줄 게시글의 갯수 -->
                                                <div class="col-sm-6">
                                                    <div class="dataTables_length" id="dataTables-example_length">
                                                        <label>
                                                            <select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm" onchange="recordsPerPageChangeAction();" id="selectOption">
																<option value="10" <c:if test="${ requestScope.pageInfo.limit eq 10 }">selected</c:if>>10</option>
																<option value="25" <c:if test="${ requestScope.pageInfo.limit eq 25 }">selected</c:if>>25</option>
																<option value="50" <c:if test="${ requestScope.pageInfo.limit eq 50 }">selected</c:if>>50</option>
																<option value="100" <c:if test="${ requestScope.pageInfo.limit eq 100 }">selected</c:if>>100</option>
                                                            </select>
                                                            records per page
                                                        </label>
                                                    </div>
                                                </div>
                                                <!-- 검색 -->
                                                <div class="col-sm-6">
                                                    <div id="dataTables-example_filter" class="dataTables_filter">
                                                        <label>Search:
                                                            <input type="search" class="form-control input-sm" aria-controls="dataTables-example">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 테이블 시작 -->
                                            <table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" aria-describedby="dataTables-example_info">
                                                <thead>
                                                    <tr role="row">
                                                        <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column ascending" style="width: 180px;">
                                                            글 번호
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 330px;">
                                                            제목
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 315px;">
                                                            작성자
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 170px;">
                                                            작성일
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 120px;">
                                                            조회수
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:set var="rowNum" value="0"/>
	                                                <c:forEach items="${ HPFAQList }" var="faq">
	                                                	<c:set var="rowNum" value="${ sessionScope.rowNum + 1 }"/>
	                                                	<c:choose>
															<c:when test="${ rowNum % 2 == 1 }">
																<tr class="gradeA odd">
			                                                        <td class="sorting_1"><c:out value="${ faq.hpBdNo }"/></td>
			                                                        <td class=" "><c:out value="${ faq.hpBdTitle }"/></td>
			                                                        <td class=" "><c:out value="${ faq.writer.name }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdDrawupDate }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdWatched }"/></td>
			                                                    </tr>
															</c:when>
															<c:when test="${ rowNum % 2 eq 0 }">
																<tr class="gradeA even">
			                                                        <td class="sorting_1"><c:out value="${ faq.hpBdNo }"/></td>
			                                                        <td class=" "><c:out value="${ faq.hpBdTitle }"/></td>
			                                                        <td class=" "><c:out value="${ faq.name }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdDrawupDate }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdWatched }"/></td>
			                                                    </tr>
															</c:when>
														</c:choose>
													</c:forEach>
                                                </tbody>
                                            </table>
                                            <!-- 테이블 종료 -->
                                            <div class="row">
                                                <!-- 총 게시글 중 몇개가 출력되고 있는지 안내 -->
                                                <div class="col-sm-6">
                                                    <div class="dataTables_info" id="dataTables-example_info" role="alert" aria-live="polite" aria-relevant="all">
                                                        Showing ${ requestScope.pageInfo.startRow } to ${ requestScope.pageInfo.endRow } of ${ requestScope.pageInfo.totalCount } entries
                                                    </div>
                                                </div>
                                                <!-- 게시판 페이징 시작 -->
                                                <div class="col-sm-8">
                                                    <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                                        <div class="pagination">
                                                        	<c:if test="${ requestScope.pageInfo.pageNo eq 1 }">
																<button id="searchStartPage" style="visibility: hidden;">
	                                    							<<
	                                                            </button>
															</c:if>
                                                        	<c:if test="${ requestScope.pageInfo.pageNo ne 1 }">
																<button id="searchStartPage">
	                                    							<<
	                                                            </button>
															</c:if>
                                                        	<c:if test="${ requestScope.pageInfo.pageNo eq 1 }">
																<button id="searchPrevPage" style="visibility: hidden;">
	                                    							<
	                                                            </button>
															</c:if>
                                                        	<c:if test="${ requestScope.pageInfo.pageNo ne 1 }">
																<button id="searchPrevPage">
	                                    							<
	                                                            </button>
															</c:if>
                                                            <c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
                                                            	<c:if test="${ requestScope.pageInfo.pageNo eq p }">
																	<button disabled>
	                                                                	<c:out value="${ p }"/>
	                                                            	</button>
																</c:if>
																<c:if test="${ requestScope.pageInfo.pageNo ne p }">
																	<button onclick="pageButtonAction(this.innerText);">
	                                                                	<c:out value="${ p }"/>
	                                                            	</button>
																</c:if>	
                                                            </c:forEach>
                                                            <c:if test="${ requestScope.pageInfo.pageNo eq requestScope.pageInfo.maxPage }">
																<button id="searchNextPage" style="visibility: hidden;">
	                                                                >
	                                                            </button>
															</c:if>
                                                        	<c:if test="${ requestScope.pageInfo.pageNo ne requestScope.pageInfo.maxPage }">
																<button id="searchNextPage">
	                                                                >
	                                                            </button>
															</c:if>
                                                            <c:if test="${ requestScope.pageInfo.pageNo eq requestScope.pageInfo.maxPage }">
																<button id="searchMaxPage" style="visibility: hidden;">
	                                                                >>
	                                                            </button>
															</c:if>
                                                        	<c:if test="${ requestScope.pageInfo.pageNo ne requestScope.pageInfo.maxPage }">
																<button id="searchMaxPage">
	                                                                >>
	                                                            </button>
															</c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                                <button class="pagination" type="button" id="writeBoard" style="margin-left:20%;">작성하기</button>
                                                <!-- 게시판 페이징 종료 -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div> 
                    <!-- End Row -->
                </div>
            </div>
        </div>
        <footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p></footer>   
    </section>
    <script>
	    const link = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text + "&recordsPerPage=${ requestScope.pageInfo.limit }";
		}
		
		function recordsPerPageChangeAction() {
			const selectValue = document.getElementById("selectOption").value;
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo }&recordsPerPage=" + selectValue;
		}
		
		if(document.getElementById("searchStartPage")){
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function(){
				location.href = link + "?currentPage=1&recordsPerPage=${ requestScope.pageInfo.limit }";
			}
		}
		
		if(document.getElementById("searchMaxPage")){
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function(){
				location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }&recordsPerPage=${ requestScope.pageInfo.limit }";
			}
		}
		
		if(document.getElementById("searchPrevPage")){
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function(){
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&recordsPerPage=${ requestScope.pageInfo.limit }";
			}
		}
		
		if(document.getElementById("searchNextPage")){
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function(){
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&recordsPerPage=${ requestScope.pageInfo.limit }";
			}
		}
		
		if(document.getElementById("writeBoard")){
			const $writeBoard = document.getElementById("writeBoard");
			$writeBoard.onclick = function(){
				location.href = "${ pageContext.servletContext.contextPath }/hp/board/insert";
			}
		}
		
		/* 게시글 관련 css 및 이벤트 처리(마우스 호버 및 클릭) */
		if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for(var i = 0 ; i < $tds.length ; i++) {
				
				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onmouseout = function() {}
				
				$tds[i].onclick = function() {
					const no = this.parentNode.children[0].innerText;
					location.href = "${ pageContext.servletContext.contextPath }/hp/faq/detail?hpBdNo=" + no;   
				}
			}
		}
    </script>
</body>
</html>