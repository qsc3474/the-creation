<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <!-- Meta Data -->
  
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
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    
    <section class="step-title pt-null">
         <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
            <h2>공지사항</h2>
         </div>
      </section>

      <section id="reviewdetail">
         <div class="container">
            <div class="row">
               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu">
                  <div class="list-group">
                     <a href="#" class="list-group-item active text-center">
                        <h4 class="glyphicon glyphicon glyphicon-pencil"></h4><br />공지사항
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon glyphicon-question-sign"></h4><br />FAQ
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon glyphicon-question-sign"></h4><br />Q&A
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon-cutlery"></h4><br />1:1문의
                     </a>
                     <a href="#" class="list-group-item text-center">
                        <h4 class="glyphicon glyphicon-credit-card"></h4><br />유의사항
                     </a>
                  </div>
               </div>
               <div class="col-md-9 bhoechie-tab-container mt-null">
                  <div class="col-md-12 bhoechie-tab">
                     <!-- flight section -->
                     <div class="bhoechie-tab-content active col-md-12">
                        <div>
                           <h2 style="margin-top: 0; color:#F2B138" class="pt pb hide">공지사항</h2>
                           <table class="table">
                              <thead class="thead-light">
                                 <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">작성자</th>
                                    <th scope="col">작성일</th>
                                    <th scope="col">조회</th>
                                 </tr>
                              </thead>
                                      <c:forEach var="ntc" items="${HPNCTList }">
                              
                              <tbody>
                                 <tr>
             						<td><c:out value="${ ntc.no }" /></td>
            						<td><c:out value="${ ntc.title }" /></td>
           							 <td><c:out value="${ ntc.writer.name }" /></td>
           							  <td><c:out value="${ ntc.drawupDate }" /></td>
         						    <td><c:out value="${ ntc.watched }" /></td>
                                 </tr>
                                        </c:forEach>
                                
                              </tbody>
                           </table>
                        </div>
                     </div>
                     <!-- train section -->
                    
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
  
    <form id="searchForm" action="${ pageContext.servletContext.contextPath }/hp/notice/search" method="get">
        <br>
        <div class="search-area" style="text-align:center" >
            <c:choose>
                <c:when test="${ !empty requestScope.searchValue }">
                    <select id="searchCondition" name="searchCondition" style="width:120px" >
                        <option value="writer" <c:if test="${requestScope.searchCondition eq 'writer' }">selected</c:if>>작성자</option>
                        <option value="title" <c:if test="${requestScope.searchCondition eq 'title' }">selected</c:if>>제목</option>
                        <option value="content" <c:if test="${requestScope.searchCondition eq 'content' }">selected</c:if>>내용</option>
                    </select>
                    <input type="search" id="searchValue" name="searchValue"  value="${requestScope.searchValue}" }>
                </c:when>
                <c:otherwise>
                    <select id="searchCondition" name="searchCondition" style="width:120px" >
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input type="search" id="searchValue" name="searchValue" >
                </c:otherwise>
            </c:choose>
                        <button type="submit">검색하기</button>
                        <c:if test="${ !empty sessionScope.loginMember }">
                <button type="button" id="insertHPBoard" style="text-align: right " >작성하기</button>
            </c:if>
            </form>	
            </div>
            </div>
        </div>
    </div>
    </section>
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
                    location.href = "${ pageContext.servletContext.contextPath }/hp/notice/detail?no=" + no;   
                }
            }
        }
            </script>
                    
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
      
    
</body>
</html>