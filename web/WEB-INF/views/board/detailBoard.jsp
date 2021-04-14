<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body id="home-version-1"
	class="home-version-1 sticky-header transparent-header menu-two"
	data-style="default">
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	
	<section class="step-title">
		<div class="section-title text-center" data-wow-duration="1000ms"
			data-wow-delay="0.3s">
			<h2>게시글 조회</h2>
			<p>개시글 조회</p>
		</div>
	</section>
	
	<section class="bg-light">
		<div class="container">
			<!-- 게시글상세조회 -->
			<div class="row coments-row">
				<table class="table table-bordered">
					<colgroup>게시글 상세조회
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">제목</th>
							<td colspan="5">${ requestScope.board.title }</td>
						</tr>
						<tr>
							<th scope="row">등록자</th>
							<td>${ requestScope.board.writer.name }</td>
							<td>등록일</td>
							<td>${ requestScope.board.drawupDate }</td>
							<td>조회수</td>
							<td>${ requestScope.board.watched }</td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td colspan="5">${ requestScope.board.content }</td>
						</tr>
						<tr>
							<th scope="row">게시기간</th>
							<td colspan="5">2021-04-12 ~ 2021-04-12</td>
						</tr>
					</tbody>
				</table>
				<div class="button-group" style="float: right;">
					<button type="button" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-primary">삭제</button>
					<button type="button" class="btn btn-primary">답글</button>
					<button type="button" class="btn btn-primary">목록</button>
					<button type="button" class="btn btn-primary">스크랩</button>
				</div>
			</div>
			<!-- 게시글상세조회 -->
			<!-- 댓글등록 -->
			<div class="row coments-row ">
				<table class="table table-bordered">
					<div id="comments">
						<div class="gp-form-heading text-center">There are ${ requestScope.board.cmtCount }
							comments</div>
						<ol class="commentlist">
						</ol>
					</div>
					<tbody>
						<tr>
							<th rowpan="2">댓글내용</th>
							<td><textarea class="form-control" rows="5" name="content"
									id="content" placeholder="내용을 입력해 주세요"></textarea></td>
							<td style="width: 20%;">
								<div class="text-center" style="margin-top: 100px;">
									<a href="step2.html" class="gp-btn btn-primary">댓글등록</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="mb-12"></div>
				<div class="button-group" style="float: right;">
					<button type="button" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-primary">삭제</button>
					<button type="button" class="btn btn-primary">목록</button>
					<button type="button" class="btn btn-primary">스크랩</button>
				</div>
			</div>
			<!-- 댓글등록 -->
		</div>
	</section>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

<script>
$(function(){  //페이지가 로드되면 댓글 데이터를 가져온다.
	getCommentList(${ requestScope.board.no },"${ requestScope.board.categoryNo }");
});

function getCommentList(currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/select/comment",
	    data:{currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	       console.log(data);
	       
	       var $commentlist = $(".commentlist");
	       $commentlist.html('');
	       
	       for(var key in data){
	          console.log(data[key].replyNo);
	       
	          var $li = $("<li>").addClass("comment");
	          var $divClearfix = $("<div>").addClass("clearfix");
	          var $profilePicture = $("<figure>").addClass("avatar-box");
	          var $commentContent = $("<div>").addClass("comment-content");
	          var $replyAuthorInfo = $("<header>").addClass("comment-author");
	          var $hiddenReplyNo = "<div class='commentNo' style='hidden;'>" + data[key].no + "</div>"
	          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].writer.name);
	          var $replyOfReply = $("<div>").addClass("reply");
	          var $replyButton = "<a class='comment-reply-link' href='#'><i class='fa fa-reply-all'></i> <span>Leave reply</span></a>"
	          var $replyWriteTime = $("<div>").addClass("entry-meta");
	          var $writeTime = "<i class='fa fa-clock-o'></i>" + data[key].writeTime;
	          var $contentDiv = $("<div>").addClass("ovh");
	          var $contentText = $("<p>").text(data[key].content);
	          var $end = $("<div>").addClass("clear");
	          
	          $li.append($divClearfix);
	          $divClearfix.append($profilePicture);
	          $divClearfix.append($commentContent);
	          $commentContent.append($replyAuthorInfo);
	          $replyAuthorInfo.append($hiddenReplyNo);
	          $replyAuthorInfo.append($replyAuthorName);
	          $replyAuthorInfo.append($replyOfReply);
	          $replyOfReply.append($replyButton);
	          $replyAuthorInfo.append($replyWriteTime);
	          $replyWriteTime.append($writeTime);
	          $commentContent.append($contentDiv);
	          $contentDiv.append($contentText);
	          $commentContent.append($end);
	          
	          $commentlist.append($li);
	          
	       }
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}

function insertComment(currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/comment",
	    data:{writer:${ sessionScope.loginMember.no }, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	       console.log(data);
	       var $commentlist = $(".commentlist");
	       
	       for(var key in data){
	          console.log(key);
	       
	          var $li = $("<li>").addClass("comment");
	          var $divClearfix = $("<div>").addClass("clearfix");
	          var $profilePicture = $("<figure>").addClass("avatar-box");
	          var $commentContent = $("<div>").addClass("comment-content");
	          var $replyAuthorInfo = $("<header>").addClass("comment-author");
	          var $hiddenAuthorNo = "<div class='commentAutherNo' style='hidden;'>" + data[key].replyAuthorNo + "</div>";
	          var $hiddenReplyNo = "<div class='commentNo' style='hidden;'>" + data[key].replyNo + "</div>"
	          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].replyAuthorName);
	          var $replyOfReply = $("<div>").addClass("reply");
	          var $replyButton = "<a class='comment-reply-link' href='#'><i class='fa fa-reply-all'></i> <span>Leave reply</span></a>"
	          var $replyWriteTime = $("<div>").addClass("entry-meta");
	          var $writeTime = "<i class='fa fa-clock-o'></i>" + data[key].replyTime;
	          var $contentDiv = $("<div>").addClass("ovh");
	          var $contentText = $("<p>").text(data[key].replyContent);
	          var $end = $("<div>").addClass("clear");
	          
	          $li.append($divClearfix);
	          $divClearfix.append($profilePicture);
	          $divClearfix.append($commentContent);
	          $commentContent.append($replyAuthorInfo);
	          $replyAuthorInfo.append($hiddenReplyNo);
	          $replyAuthorInfo.append($replyAuthorName);
	          $replyAuthorInfo.append($replyOfReply);
	          $replyOfReply.append($replyButton);
	          $replyAuthorInfo.append($replyWriteTime);
	          $replyWriteTime.append($writeTime);
	          $commentContent.append($contentDiv);
	          $contentDiv.append($contentText);
	          $commentContent.append($end);
	          
	       }
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}

function insertReplyOfReply(currentBoardNo, currentBoardCategoryNo){
	
	$.ajax({
	    url:"${ pageContext.servletContext.contextPath }/insert/reply/reply",
	    data:{writer:${ sessionScope.loginMember.no }, content:content, currentBoardNo:currentBoardNo, currentBoardCategoryNo:currentBoardCategoryNo},
	    type:'POST',
	    success:function(data){
	       console.log(data);
	       var $commentlist = $(".commentlist");
	       
	       for(var key in data){
	          console.log(key);
	       
	          var $li = $("<li>").addClass("comment" + data[key].replyNo);
	          var $divClearfix = $("<div>").addClass("clearfix");
	          var $profilePicture = $("<figure>").addClass("avatar-box");
	          var $commentContent = $("<div>").addClass("comment-content");
	          var $replyAuthorInfo = $("<header>").addClass("comment-author");
	          var $hiddenReplyNo = "<div class='commentNo' style='hidden;'>" + data[key].replyNo + "</div>"
	          var $replyAuthorName = $("<div>").addClass("author gp-content-title-big").text(data[key].replyAuthorName);
	          var $replyOfReply = $("<div>").addClass("reply");
	          var $replyButton = "<a class='comment-reply-link' href='#'><i class='fa fa-reply-all'></i> <span>Leave reply</span></a>"
	          var $replyWriteTime = $("<div>").addClass("entry-meta");
	          var $writeTime = "<i class='fa fa-clock-o'></i>" + data[key].replyTime;
	          var $contentDiv = $("<div>").addClass("ovh");
	          var $contentText = $("<p>").text(data[key].replyContent);
	          var $end = $("<div>").addClass("clear");
	          
	          $li.append($divClearfix);
	          $divClearfix.append($profilePicture);
	          $divClearfix.append($commentContent);
	          $commentContent.append($replyAuthorInfo);
	          $replyAuthorInfo.append($hiddenReplyNo);
	          $replyAuthorInfo.append($replyAuthorName);
	          $replyAuthorInfo.append($replyOfReply);
	          $replyOfReply.append($replyButton);
	          $replyAuthorInfo.append($replyWriteTime);
	          $replyWriteTime.append($writeTime);
	          $commentContent.append($contentDiv);
	          $contentDiv.append($contentText);
	          $commentContent.append($end);
	          
	       }
	       
	    },
	    error:function(request, status, error){
	       
	    	alert("code:" + request.status + "\n" + "message:" + request.responseTest + "\n" + "error:" + error);
	    	
	    }
	    
	});
	
}
</script>
<%-- <li class="comment">
	<div class="clearfix">
		<figure class="avatar-box">
			<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/img/dog_icon01.png" class="avatar"
				style="width:">
		</figure>
		<div class="comment-content">
			<header class="comment-author">
				<div class="author gp-content-title-big">노성준</div>
				<div class="reply">
					<a class="comment-reply-link" href="#"> <i
						class="fa fa-reply-all"></i> <span>댓글작성</span>
					</a>
				</div>
				<div class="entry-meta">
					<i class="fa fa-clock-o"></i> 2021-04-13
				</div>
			</header>
			<div class="ovh">
				<p>휴가 때 강아지를 맡길려고 하는데 혹시 따로 DM 보내서 여쭤봐도 될까요?</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<ul class="children">
		<li	class="comment byuser comment-author-melissa-fox odd alt depth-2">
			<div class="clearfix">
				<figure class="avatar-box">
					<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/testimonial/3.jpg" class="avatar">
				</figure>
				<div class="comment-content">
					<header class="comment-author">
						<div class="commentAutherNo" style="hidden;">${ requestScope.writer.no }</div>
						<div class="author gp-content-title-big">최혁진</div>
						<div class="reply">
							<a class="comment-reply-link" href="#"> <i
								class="fa fa-reply-all"></i> <span>Leave reply</span>
							</a>
						</div>
						<div class="entry-meta">
							<i class="fa fa-clock-o"></i> 2021-04-13
						</div>
					</header>
					<div class="ovh">
						<p>저도 궁금한게 많습니다.</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<ul class="children">
				<li	class="comment byuser comment-author-melissa-fox odd alt depth-2">
					<div class="clearfix">
						<figure class="avatar-box">
							<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/testimonial/3.jpg" class="avatar">
						</figure>
						<div class="comment-content">
							<header class="comment-author">
								<div class="author gp-content-title-big">최혁진</div>
								<div class="reply">
									<a class="comment-reply-link" href="#"> <i
										class="fa fa-reply-all"></i> <span>Leave reply</span>
									</a>
								</div>
								<div class="entry-meta">
									<i class="fa fa-clock-o"></i> 2021-04-13
								</div>
							</header>
							<div class="ovh">
								<p>저도 궁금한게 많습니다.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<ul class="children">
						<li	class="comment byuser comment-author-melissa-fox odd alt depth-2">
							<div class="clearfix">
								<figure class="avatar-box">
									<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/testimonial/3.jpg" class="avatar">
								</figure>
								<div class="comment-content">
									<header class="comment-author">
										<div class="author gp-content-title-big">최혁진</div>
										<div class="reply">
											<a class="comment-reply-link" href="#"> <i
												class="fa fa-reply-all"></i> <span>Leave reply</span>
											</a>
										</div>
										<div class="entry-meta">
											<i class="fa fa-clock-o"></i> 2021-04-13
										</div>
									</header>
									<div class="ovh">
										<p>저도 궁금한게 많습니다.</p>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</li>
<li class="comment">
	<div class="clearfix">
		<figure class="avatar-box">
			<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/testimonial/4.jpg" class="avatar">
		</figure>
		<div class="comment-content">
			<header class="comment-author">
				<div class="author gp-content-title-big">김성배</div>
				<div class="reply">
					<a class="comment-reply-link" href="#"> <i
						class="fa fa-reply-all"></i> <span>Leave reply</span>
					</a>
				</div>
				<div class="entry-meta">
					<i class="fa fa-clock-o"></i>2021-04-13
				</div>
			</header>
			<div class="ovh">
				<p>스파 시설이 있던데...이용 할 만 한가요?</p>
			</div>
			<div class="clear"></div>
			<footer></footer>
		</div>
	</div>
</li>
<li class="comment">
	<div class="clearfix">
		<figure class="avatar-box">
			<img alt="" src="${ pageContext.servletContext.contextPath }/resources/media/testimonial/1.jpg" class="avatar">
		</figure>
		<div class="comment-content">
			<header class="comment-author">
				<div class="author gp-content-title-big">전인애</div>
				<div class="reply">
					<a class="comment-reply-link" href="#"> <i
						class="fa fa-reply-all"></i> <span>Leave reply</span></a>
				</div>
				<div class="entry-meta">
					<i class="fa fa-clock-o"></i>2021-04-13
				</div>
			</header>
			<div class="ovh">
				<p>개 스파 좋네요 ㅋㅋㅋㅋㅋㅋ</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</li> --%>
</body>
</html>
