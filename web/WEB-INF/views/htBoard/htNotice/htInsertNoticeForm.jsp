<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <script src="/creation/resources/js/event.js"></script>
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<%-- <div class="outer outer-notice-insert">
		<br>
		<h2 align="center">공지 사항 작성</h2>
		<div class="table-area">
			<form action="${ pageContext.servletContext.contextPath }/notice/insert" method="post">
				<table>
					<tr>
						<td>제목</td>
						<td><input type="text" size="50" name="title"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>
							<input type="text" value="${ sessionScope.loginMember.nickname }" name="writer" readonly>
						</td>
					</tr>
					<tr>
						<td>내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content" cols="60" rows="15" style="resize:none;" required></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset" id="cancleNotice">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
		</div>
		
	</div> --%>
	<section>
        <div class="container">
        <h1 align="center">글쓰기</h1>
        <div class="container"  role="main">
                <form name="form" id="form" role="form" method="post"
                    action="${ pageContext.servletContext.contextPath }/ht/NTC/notice/insert">
                    <div class="mb-12">
                            <label for="title">공지사항</label>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                              <option selected>NTC</option>
                            </select>

                    </div>

                    <div class="mb-12">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
                    </div>

                    <div class="mb-12">
                        <label for="reg_id">작성자</label>
                        <input type="text" class="form-control" name="writer" id="reg_id" value="${  sessionScope.loginMember.name }" readonly>
                        
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
                </form>
                <div class="text-center" style="margin-top: 20px;">
                    <button type="button" class="btn btn-primary btn-lg" id="btnSave">저장</button>
                    <button type="button" class="btn btn-secondary btn-lg" id="btnList">목록</button>
                </div>
        </div>

        <script>
            $(document).on('click', '#btnSave', function (e) {
                e.preventDefault();
                $("#form").submit();
            });
            $(document).on('click', '#btnList', function (e) {
                e.preventDefault();
                location.href = "${ pageContext.request.contextPath}/ht/NTC/notice/list";
            });
        </script>
        </div>
    </section>
</body>
</html>
