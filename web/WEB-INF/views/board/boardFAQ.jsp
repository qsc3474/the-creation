<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
.title-sec {margin-top: 107.628px; height: 100px; margin-bottom: 0; padding: 30px;}
.section-title {margin-bottom: 10px;}
.notice-sec .container{padding: 100px 0;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<section id="reviewdetail">
         <div class="container">
            <div class="row">
				<div class="bhoechie-tab-content col-md-12">
				   <div align="center">
				      <h2 style="margin-top: 0;color:#F2B138" class="pt pb hide">F&amp;Q</h2>
				      <div class="col-md-12 mb">
				         <div class="choose wow fadeInUp" data-wow-delay="0.5s">
				            <div class="panel-group" id="accordion">
				               <c:set var="rowNum" value="0"/>
				               <c:forEach items="${ HPFAQList }" var="faq">
				               <div class="panel panel-default panel-active">
				                  <div class="panel-heading">
				                  	 <c:set var="rowNum" value="${ pageScope.rowNum + 1 }"/>
				                     <div class="panel-title">
				                     	<a data-toggle="collapse"
				                           class="panel-toggle active" data-parent="#accordion"
				                           href=".collapse${ pageScope.rowNum }">
				                           <c:out value="${ faq.title }"/>
			                           	</a>
		                             </div>
				                  </div>
				                  <div class="panel-collapse collapse in collapse${ pageScope.rowNum }">
				                     <div class="panel-body"><c:out value="${ faq.content }"/></div>
				                  </div>
				               </div>
				               </c:forEach>
				            </div>
				         </div>
				      </div>
				   </div>
				</div>
			</div>
		</div>
	</section>
    <script>
	    var currentPage = 1;
	    
	    $(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
	         getList(currentPage);
	         currentPage++;
	    }); 
	    
		$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	        
		     if($(window).scrollTop() >= $(document).height() - $(window).height()){
		    	 // 처음 request로 넘어온 최대페이지를 넘어가면 더이상 스크롤 이벤트를 진행시키지 않는다.
		    	 if(currentPage <= ${ requestScope.pageInfo.maxPage }){
			          getList(currentPage);
			          currentPage++;
		    	 }
		     }
		});
		 
		function getList(currentPage){
		 
		    $.ajax({
		        type : 'POST',
		        data : {"currentPage" : currentPage},
		        url : '/creation/hp/faq/select/add/list',
		        success : function(returnData) {
		        	var $accordion = $("#accordion");
		        	if (currentPage == 1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
		                  $accordion.html("");
		            }

		        	for(var key in returnData){
	                     console.log(key);
	                  
	                     var $div1 = $("<div>").addClass("panel panel-default panel-active");
	                     var $div2 = $("<div>").addClass("panel-heading");
	                     var $div3 = $("<div>").addClass("panel-title");
	                     
	                     var $accordionTitle2 = "<a data-toggle='collapse' class='panel-toggle active' data-parent='#accordion' href='.collapse" + (currentPage - 1) + key + "'>" + returnData[key].title + "</a>";
	                     var $div4 = $("<div>").addClass("panel-collapse collapse in collapse" + (currentPage - 1) + key);
	                     var $accordionBody = $("<div>").addClass("panel-body").text(returnData[key].content);
	                     
	                     $div3.append($accordionTitle2);
	                     $div2.append($div3);
	                     $div4.append($accordionBody);
	                     $div1.append($div2);
	                     $div1.append($div4);
	                     
	                     $accordion.append($div1);
	                     
		        	}
		            
		       },error: function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
			   }
		    });
		}
	</script>
</body>
</html>