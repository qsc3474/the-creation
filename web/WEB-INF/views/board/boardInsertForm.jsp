<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">       
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    <section>
        <div class="container">
        <h1 align="center">글쓰기</h1>
        <div class="container"  role="main">
                <form name="form" id="form" role="form" method="post"
                    action="${pageContext.request.contextPath}/hp/board/insert">
                    <div class="mb-12">
	                    <label for="title">선택</label>
	                    <select class="custom-select mr-sm-2" name="boardCategory" id="boardCategory">
							<option value="def" selected>게시글</option>
							<option value="RV">후기게시판</option>
							<option value="QNA">QnA</option>
							<option value="FAQ">자주묻는질문</option>
							<option value="INFO">정보게시판</option>
	                   		<option value="NTC">공지사항</option>
	                      <%-- <c:if test="${ sessionScope.loginMember.memKind == 'M' }">
	                      	<option value="FAQ">자주묻는질문</option>
	                     	<option value="INFO">정보게시판</option>
	                     	<option value="NTC">공지사항</option>
	                      </c:if> --%>
	                    </select>
                    </div>
                    <div class="mb-12">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
                    </div>
                    <div class="mb-12">
                        <label for="reg_id">작성자</label>
                        <%-- <input type="text" class="form-control" name="writer" id="writer" value="${ sessionScope.loginMember.memName }" readonly> --%>
                        <input type="hidden" name="memberNo" value="${sessionScope.loginMember.memNo }">
                        <input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="mb-12">
                        <label for="content">내용</label>
                        <textarea class="form-control" rows="5" name="content" id="content"
                            placeholder="내용을 입력해 주세요"></textarea>
                    </div>
                    <div class="mb-12">
                        <label for="content">업로드</label>
                    <div class="input-group" style="margin-top: 20px;">
                        <label for="tag" class="input-group-text" for="inputGroupFile02">Upload</label>
                        <input type="file" class="form-control" id="inputGroupFile02">
                      </div>
                    </div>
                <div class="text-center" style="margin-top: 20px;">
                    <button type="submit" class="btn btn-primary btn-lg" id="btnSave">저장</button>
                    <button type="button" class="btn btn-secondary btn-lg" id="btnList">목록</button>
                </div>
              	 </form>
        </div>
        <script>
            $(document).on('click', '#btnList', function (e) {

                e.preventDefault();
                location.href = "${pageContext.request.contextPath}/board/getBoardList";

            });
        </script>
        </div>
    </section>
</body>
</html>