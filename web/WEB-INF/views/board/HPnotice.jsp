<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Document</title>
<!-- 기기(디바이스)별 크기를 인식 하고 1.0으로 확대 및 축소 없이해서 보여줌 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 부트스트랩 -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

<style>
.title-sec {
	margin-top: 107.628px;
	height: 100px;
	margin-bottom: 0;
	padding: 30px;
}

.section-title {
	margin-bottom: 10px;
}

.notice-sec .container {
	padding: 100px 0;
}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<section class="title-sec">
		<div class="row"></div>
	</section>


	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-header">
						공지사항 <small>Notice</small>
					</h1>
				</div>
			</div>
			<!-- /. ROW  -->
			<div class="row">
				<div class="col-md-12">
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading"></div>

						<div class="panel-body">

							<div id="dataTables-example_wrapper"
								class="dataTables_wrapper form-inline" role="grid">
								<div class="row">
									<div class="col-sm-6"></div>
									<table
										class="table table-striped table-bordered table-hover dataTable no-footer"
										id="dataTables-example"
										aria-describedby="dataTables-example_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column ascending"
													style="width: 80px;">글 번호</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 600px;">제목</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 250px;">작성자</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 191px;">작성일</th>
												<th class="sorting" tabindex="0"
													aria-controls="dataTables-example" rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 138px;">조회수</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="ntc" items="${HPNCTList }">
												<tr class="gradeA odd">
													<td class="sorting_1"><c:out value="${ ntc.no }" /></td>
													<td class=" "><c:out value="${ ntc.title }" /></td>
													<td class=" "><c:out value="${ ntc.writer.name }" /></td>
													<td class="center "><c:out value="${ ntc.drawupDate }" /></td>
													<td class="center "><c:out value="${ ntc.watched }" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="row">
										<div class="col-sm-6"></div>
									</div>

									<div class="dataTables_paginate paging_simple_numbers"
										id="dataTables-example_paginate" style="text-align: center;">
										
										<!--페이지 처리  -->
										<div class="pageingArea" align="center">
											<button id="searchStartPage"><<</button>

											<c:if test="${requestScope.pageInfo.pageNo == 1 }">
												<button disabled><</button>
											</c:if>
											<c:if test="${requestScope.pageInfo.pageNo > 1 }">
												<button id="searchPrevPage"><</button>

											</c:if>

											<c:forEach var="p"
												begin="${requestScope.pageInfo.startPage }"
												end="${requestScope.pageInfo.endPage }" step="1">
												<c:if test="${requestScope.pageInfo.pageNo eq p }">
													<button disabled>
														<c:out value="${p }" />
													</button>
												</c:if>
												<c:if test="${requestScope.pageInfo.pageNo ne p }">

													<button onclick="pageButtonAction(this.innerText);">
														<c:out value="${p }" />
													</button>
												</c:if>

											</c:forEach>

											<c:if
												test="${requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
												<button disabled>></button>
											</c:if>
											<c:if
												test="${requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
												<button id="searchNextPage">></button>

											</c:if>

											<button id="searchMaxPage">>></button>

										</div>
										<br><br>
										<div id="dataTables-example_filter" class="dataTables_filter"
											>
					
				<form id="searchForm" action="${ pageContext.servletContext.contextPath }/hp/notice/search" method="get">
			<div class="search-area" align="center">
				<c:choose>
					<c:when test="${ !empty requestScope.searchValue }">
						<select id="searchCondition" name="searchCondition">
							<option value="writer" <c:if test="${requestScope.searchCondition eq 'writer' }">selected</c:if>>작성자</option>
							<option value="title" <c:if test="${requestScope.searchCondition eq 'title' }">selected</c:if>>제목</option>
							<option value="content" <c:if test="${requestScope.searchCondition eq 'content' }">selected</c:if>>내용</option>
						</select>
						<input type="search" id="searchValue" name="searchValue" value="${requestScope.searchValue}" }>
					</c:when>
					<c:otherwise>
						<select id="searchCondition" name="searchCondition">
							<option value="writer">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="search" id="searchValue" name="searchValue">
					</c:otherwise>
				</c:choose>
							<button type="submit">검색하기</button>
							<c:if test="${ !empty sessionScope.loginMember }">
					<button type="button" id="writeBoard" style="text-align: right " >작성하기</button>
				</c:if>
			</div>
		</form>		
												
					
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!--End Advanced Tables -->
		</div>
	</div>
	<!-- /. ROW  -->
	
	<script>
	const link = "${pageContext.servletContext.contextPath}/hp/notice/select/list"
	/* 페이지 번호 클릭시 실행되는 함수 */
	function pageButtonAction(text) {
		location.href= link+"?currentPage="+text;
	}
	
	
	if(document.getElementById("searchStartPage")){
		const $searchStartPage =document.getElementById("searchStartPage");
		$searchStartPage.onclick =function(){
			location.href=link+"?currentPage=1"
		}
	}
	if(document.getElementById("searchMaxPage")){
		const $searchMaxPage =document.getElementById("searchMaxPage");
		$searchMaxPage.onclick =function(){
			location.href=link+"?currentPage=${requestScope.pageInfo.maxPage}";
		}
	}
	
	if(document.getElementById("searchPrevPage")){
		const $searchPrevPage =document.getElementById("searchPrevPage");
		$searchPrevPage.onclick =function(){
			location.href=link+"?currentPage=${requestScope.pageInfo.pageNo-1}";
		}
	}
	if(document.getElementById("searchNextPage")){
		const $searchNextPage =document.getElementById("searchNextPage");
		$searchNextPage.onclick =function(){
			location.href=link+"?currentPage=${requestScope.pageInfo.pageNo+1}";
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
				location.href = "${ pageContext.servletContext.contextPath }/hp/notice/detail?hpBdNo=" + no;   
			}
		}
	}
		</script>
		
		</body>
		</html>
	