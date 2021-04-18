<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>개편한 병원 게시글</title>
<!-- Meta Data -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.coments-row {
	margin-bottom: 30px;
}

.coments-row table tr>th {
	background: #f6f6f6;
}

.coments-row td {
	padding: 15px !important;
	font-size: 15px;
}

.coments-row table tr:nth-of-type(2) td:nth-child(odd) {
	background: #f6f6f6;
}

.coments-row tbody {
	border-top: 2px solid #007bff;
}

.modal-button button {
    outline: none;
 	border: 0;
}

.close-button {
    transition: all 0.5s ease;
    position: absolute;
    background-color: #000;
    padding: 1.5px 7px;
    left: 0;
    margin-left: -10px;
    margin-top: -9px;
    border-radius: 50%;
    border: 2px solid #fff;
    color: white;
    z-index: 1;
}

/* modal */
#pop-up {
    width: 500px;
}

.pop {
    display: none;
    position: fixed;
    top: 20%;
    left: 40%;
    width: 400px;
    height: 300px;
    background: #ffffff;
    background-color: whitesmoke;
    text-align: center;
}

.pop h3 {
    text-align: center;
    padding-top: 15px;
    padding-bottom: 15px;
    color: #fff;
    background-color: #FDC647;
}

.pop p {
    padding: 20px 65px 20px 65px;
    color: dimgray;
    font-size: 16px;
}
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script	src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
</head>

<body id="home-version-1"
	class="home-version-1 sticky-header transparent-header menu-two"
	data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>


	<!-- 섹션타이틀 -->
	<section class="step-title">
		<div class="section-title text-center" data-wow-duration="1000ms"
			data-wow-delay="0.3s">
			<c:choose>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_NTC' }">
					<h2>공지사항detail</h2>
				</c:when>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_INFO' }">
					<h2>정보게시판detail</h2>
				</c:when>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_RV' }">
					<h2>후기게시판detail</h2>
				</c:when>
				<c:when test="${ requestScope.board.categoryNo eq 'HP_QNA' }">
					<h2>Q&amp;Adetail</h2>
				</c:when>
			</c:choose>
		</div>
	</section>
	<!-- 섹션타이틀 -->
	
	

	<!-- 이용 후기 -->
	<section class="blog-single bg-white">
		<div class="container">
			<div class="row">
				<h2 class="hide">후기 디테일</h2>
				<p>
					${ requestScope.board.title }
				</p>
				<p>
					<span><i class="glyphicon glyphicon-user"><strong>&nbsp;${ requestScope.board.writer.name }</strong></i></span>
					<span><i class="glyphicon glyphicon glyphicon-time"></i><strong>&nbsp;날짜</strong>
						: ${ requestScope.board.drawupDate }</span> <span><strong>조회</strong> : ${ requestScope.board.watched }</span>
				</p>
				<div class="col-md-12" style="margin-bottom: 5px;">
					<div class="col-md-6">
						<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="" style="width: 100%;">
					</div>
					<div class="col-md-6">
						<img src="${ pageContext.servletContext.contextPath }/resources/media/img/cat01.jpg" alt="" style="width: 100%;">
					</div>
				</div>
				<c:if test="${ sessionScope.loginMember.kind eq 'M' }">
					<div>
						<input type='hidden' value="${ requestScope.board.no }" >
						<button type='button' id='updateBoard'>수정하기</button>
						<button type='button' id='deleteBoard'>삭제하기</button>
					</div>
				</c:if>
			</div>
			<!-- /.row -->

			<div class="row">
				<div id="comments">
					<div class="releted-post">
						<h3 class="related-post-title">댓글</h3>
						<div class="row coments-row">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<th rowspan="2">댓글내용</th>
										<td><textarea class="form-control" rows="5"
												name="content" id="content" placeholder="내용을 입력해 주세요"></textarea></td>
										<td style="width: 20%;">
											<div class="text-center" style="margin-top: 100px;">
												<button type="button" id="commentSubmitButton" class="gp-btn btn-primary">댓글등록</button>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<ul class="commentlist">
					</ul>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- 팝업창 -->
	<div id="pop-up">
        <div class="pop">
            <div class="pop-up-box small-6 large-centered">
                <a href="#" class="close-button">&#10006;</a>
                <h2>댓글내용</h2>
                <table class="table table-bordered">
					<tbody>
						<tr>
							<td><textarea class="form-control" rows="5"
									name="content" id="replyContent" placeholder="내용을 입력해 주세요"></textarea></td>
							<td style="width: 20%;">
								<div class="text-center" style="margin-top: 100px;">
									<button type="button" id="replySubmitButton" class="gp-btn btn-primary">댓글등록</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
	<!-- 팝업창 -->

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

<script>

var insertCount = 0;

$(function(){  //페이지가 로드되면 댓글 데이터를 가져온다.
	deleteAndUpdateButtonAction();
	getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	if("${ requestScope.board.categoryNo }" == "HP_NTC" || "${ requestScope.board.categoryNo }" == "HP_INFO"){ // info, ntc게시판은 댓글 불가능
		
		var comments = document.getElementById("comments");
		comments.style.display = "none";
		
	}
});

function deleteAndUpdateButtonAction(){
	
	var no = 0;
	
	$("#updateBoard").click(function() {
	    var $parent = this.parentNode;
	    var getNo = $parent.children[0];
	    no = getNo.value;
	    location.href = "${pageContext.servletContext.contextPath}/hp/board/update?no=" + no + "&categoryNo=${ requestScope.board.categoryNo }";
    });

    $("#deleteBoard").click(function () {
    	var $parent = this.parentNode;
	    var getNo = $parent.children[0];
	    no = getNo.value;
	    location.href = "${pageContext.servletContext.contextPath}/hp/board/delete?no=" + no + "&categoryNo=${ requestScope.board.categoryNo }";
    });
	
}

if(document.getElementById("commentSubmitButton")){
	const $commentSubmitButton = document.getElementById("commentSubmitButton");
	$commentSubmitButton.onclick = function(){
		var content = document.getElementById("content");
		insertComment(content.value,${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	}
}

function replyOfReply(clickParentCommentNo){
	
		var replyContent = document.getElementById("replyContent");
		
		console.log(clickParentCommentNo);
		console.log(replyContent.value);
		
		insertReplyOfReply(clickParentCommentNo, replyContent.value, ${ requestScope.board.no }, "${ requestScope.board.categoryNo }");
		
}

function getCommentList(currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/select/comment",
	    data:{currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	       console.log(data);
	       
	       var $commentlist = $(".commentlist");
	       $commentlist.html('');
	       var $currentCommentCount = $("<h5 class='gp-form-heading text-center'>There are " + (${ requestScope.board.cmtCount } + insertCount) + "comments</h5>");
	       $commentlist.append($currentCommentCount);
	  	   var commentCount = 0;
	       while(commentCount != (${requestScope.board.cmtCount} + insertCount)){
	       	   
	    	   commentCount = 0;
	    	   
	    	   for(var i = 0 ; i < (${requestScope.board.cmtCount} + insertCount) ; i++){
	    		   
	    		   commentCount += $("#commentNo" + data[i].no).length;
	    		   
	    	   }	    	   
	    	   
		       for(var key in data){
		       	  
		          if(data[key].parentCmtNo == 0 && $("#commentNo" + data[key].no).length != 1){
		        	  
		        	  var $li = $("<li class='comment' id='commentNo" + data[key].no + "'>");
			          var $divClearfix = $("<div>").addClass("clearfix");
			          var $profilePicture = $("<figure>").addClass("avatar-box");
			          var $picture = $("<img src='${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png' class='avatar' style='padding-right: 10px'>");
			          var $commentContent = $("<div>").addClass("comment-content");
			          var $replyAuthorInfo = $("<header>").addClass("comment-author");
			          var $hiddenReplyNo = $("<div id='hiddenCommentNo" + data[key].no + "' style='display:none;'>" + data[key].no + "</div>");
			          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].writer.name);
			          var $replyOfReply = $("<div>").addClass("modal-button");
			          var $replyButton = $("<button type='button' class='comment-reply-link btn btn-dark button' style='padding: 5px 10px;'><i class='fa fa-reply-all'></i><span>댓글작성</span></button>");
			          var $replyWriteTime = $("<div class='entry-meta'><i class='fa fa-clock-o'></i>" + data[key].writeTime + "</div>");
			          var $contentDiv = $("<div>").addClass("ovh");
			          var $contentText = $("<p>").text(data[key].content);
			          var $end = $("<div>").addClass("clear");
			          
			          $li.append($divClearfix);
			          $divClearfix.append($profilePicture);
			          $profilePicture.append($picture);
			          $divClearfix.append($commentContent);
			          $commentContent.append($replyAuthorInfo);
			          $replyAuthorInfo.append($hiddenReplyNo);
			          $replyAuthorInfo.append($replyAuthorName);
			          $replyAuthorInfo.append($replyOfReply);
			          $replyOfReply.append($replyButton);
			          $replyAuthorInfo.append($replyWriteTime);
			          $commentContent.append($contentDiv);
			          $contentDiv.append($contentText);
			          $commentContent.append($end);
			          
			          $commentlist.append($li);
		          }
			       	  
		          if(data[key].parentCmtNo != 0 && $("#commentNo" + data[key].parentCmtNo).length != 0 && $("#commentNo" + data[key].no).length != 1){
		        	  
		        	  var $parentComment = $("#commentNo" + data[key].parentCmtNo);

		        	  var $ul = $("<ul class='children' id='commentNo" + data[key].no + "'>");
		        	  var $li = $("<li>").addClass("comment byuser comment-author-melissa-fox odd alt depth-2");
			          var $divClearfix = $("<div>").addClass("clearfix");
			          var $profilePicture = $("<figure>").addClass("avatar-box");
			          var $picture = $("<img src='${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png' class='avatar' style='padding-right: 10px'>");
			          var $commentContent = $("<div>").addClass("comment-content");
			          var $replyAuthorInfo = $("<header>").addClass("comment-author");
			          var $hiddenReplyNo = $("<div id='hiddenCommentNo" + data[key].no + "' style='display:none;'>" + data[key].no + "</div>");
			          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].writer.name);
			          var $replyOfReply = $("<div>").addClass("modal-button");
			          var $replyButton = $("<button type='button' class='comment-reply-link btn btn-dark button' style='padding: 5px 10px;'><i class='fa fa-reply-all'></i><span>댓글작성</span></button>");
			          var $replyWriteTime = $("<div class='entry-meta'><i class='fa fa-clock-o'></i>" + data[key].writeTime + "</div>");
			          var $contentDiv = $("<div>").addClass("ovh");
			          var $contentText = $("<p>").text(data[key].content);
			          var $end = $("<div>").addClass("clear");
			          
			          $ul.append($li);
			          $li.append($divClearfix);
			          $divClearfix.append($profilePicture);
			          $profilePicture.append($picture);
			          $divClearfix.append($commentContent);
			          $commentContent.append($replyAuthorInfo);
			          $replyAuthorInfo.append($hiddenReplyNo);
			          $replyAuthorInfo.append($replyAuthorName);
			          $replyAuthorInfo.append($replyOfReply);
			          $replyOfReply.append($replyButton);
			          $replyAuthorInfo.append($replyWriteTime);
			          $commentContent.append($contentDiv);
			          $contentDiv.append($contentText);
			          $commentContent.append($end);
			          
			          $parentComment.append($ul);
		          }
		          
		       }
		       
	       }
	       $(".button").off('click');
	       $("#replySubmitButton").off('click');
	       $(".close-button").off('click');

	       replyCommentButtonAction();
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}

function insertComment(content, currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/comment",
	    data:{writerNo:${ sessionScope.loginMember.no }, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	      console.log(data);
	      if(data == 2){
	    	  
	    	  insertCount++;
	    	  getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	    	  
	      } else {
	    	  
	    	  alert("댓글 작성에 실패하셨습니다.");
	    	  
	      }
          
          document.getElementById("content").value='';
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}

function insertReplyOfReply(parentCommentNo, content, currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/reply",
	    data:{writerNo:${ sessionScope.loginMember.no }, parentCommentNo:parentCommentNo, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	      console.log(data);
		  if(data == 2){
	    	  
			  insertCount++;
	    	  getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
	    	  
	      } else {
	    	  
	    	  alert("댓글 작성에 실패하셨습니다.");
	    	  
	      }
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}
</script>

<!-- modal -->
<script id="rendered-js">
function replyCommentButtonAction() {

	var no = 0;
	
	$(".button").click(function() {
		    var $parent = this.parentNode;
		    var getNo = $parent.parentNode.children[0];
		    no = getNo.innerText;
	        $(".pop").fadeIn(300);
    });

    $("#replySubmitButton").click(function () {
        $(".pop").fadeOut(300);
        replyOfReply(no);
        document.getElementById("replyContent").value='';
    });
    
    $(".close-button").click(function () {
        $(".pop").fadeOut(300);
        document.getElementById("replyContent").value='';
    });
}
//# sourceURL=pen.js
</script>

</body>
</html>
