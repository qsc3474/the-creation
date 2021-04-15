<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<script>
		(function() {
			const successCode = "${ requestScope.successCode }";
			
			var successMessage = "";
			var movePath = "";
			/* 공지사항 */
			switch(successCode){
			case "thInsertNotice" :
				successMessage = "공지사항 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/list";
				break;
			case "htUpdateNotice" :
				successMessage = "공지사항 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/list";
				break;
			case "thDeleteNotice" :
				successMessage = "공지사항 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/NTC/notice/list";
				break;
				
		    /* FAQ */	
			case "thInsertFAQ" :
				successMessage = "공지사항 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/FAQ/list";
				break;
			case "htUpdateFAQ" :
				successMessage = "공지사항 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/FAQ/list";
				break;
			case "thDeleteFAQ" :
				successMessage = "공지사항 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/ht/FAQ/list";
				break;
			}
			
			alert(successMessage);
			
			location.replace(movePath);
			
		})();
	</script>
</body>
</html>