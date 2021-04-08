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
                                                            	<c:if test="${ requestScope.pageInfo.limit eq 10 }">
																	<option value="10" selected>10</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit ne 10 }">
																	<option value="10">10</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit eq 25 }">
																	<option value="25" selected>25</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit ne 25 }">
																	<option value="25">25</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit eq 50 }">
																	<option value="50" selected>50</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit ne 50 }">
																	<option value="50">50</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit eq 100 }">
																	<option value="100" selected>100</option>
																</c:if>
																<c:if test="${ requestScope.pageInfo.limit ne 100 }">
																	<option value="100">100</option>
																</c:if>
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
			                                                        <td class=" "><c:out value="${ faq.writer.memName }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdDrawupDate }"/></td>
			                                                        <td class="center "><c:out value="${ faq.hpBdWatched }"/></td>
			                                                    </tr>
															</c:when>
															<c:when test="${ rowNum % 2 eq 0 }">
																<tr class="gradeA even">
			                                                        <td class="sorting_1"><c:out value="${ faq.hpBdNo }"/></td>
			                                                        <td class=" "><c:out value="${ faq.hpBdTitle }"/></td>
			                                                        <td class=" "><c:out value="${ faq.memName }"/></td>
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