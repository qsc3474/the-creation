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
    <head>
        <!-- Meta Data -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/resourcesassets/img/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/resourcesassets/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resourcesassets/img/favicon-16x16.png">
        <title>index</title>
     
        <!-- Dependency Styles -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/font-awesome/css/gp-icons.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/gp-icons/style.css" type="text/css">
        <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/swiper/css/swiper.min.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/wow/animate.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/jquery-ui/css/jquery-ui.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/revslider/css/settings.css" type="text/css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesdependencies/magnific-popup/magnific-popup.css" type="text/css">
     
        <!-- Site Stylesheet -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resourcesassets/css/app.css" type="text/css">
        
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
    <div>
    <h2 style="margin-top: 0;color:#F2B138" class="pt pb hide">공지사항</h2>
    <table class="table">
       <thead class="thead-light">
          <tr>
             <th scope="col">번호</th>
             <th scope="col">제목</th>
             <th scope="col">작성자</th>
             <th scope="col">작성일</th>
             <th scope="col">조회수</th>
          </tr>
       </thead>
       <tbody>
        <c:forEach var="ntc" items="${HPNCTList }">
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
 </div>
</body>
</html>

