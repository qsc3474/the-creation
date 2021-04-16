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
			
			switch(successCode){
			case "insertMember" :
				successMessage = "회원 가입에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "updateMember" :
				successMessage = "회원 정보 변경에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "withdrawMember" :
				successMessage = "회원 탈퇴에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "insertNotice" :
				successMessage = "공지사항 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/notice/list";
				break;
			case "updateNotice" :
				successMessage = "공지사항 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/notice/list";
				break;
			case "insertboard" :
				successMessage = "게시글 작성에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			case "deleteBoard" :
				successMessage = "게시글 삭제에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "insertRVBoard" :
				successMessage = "후기 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/review/list";
				break;
			case "insertQNABoard" :
				successMessage = "QNA 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/qna/list";
				break;
			case "insertFAQBoard" :
				successMessage = "FAQ 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "insertINFOBoard" :
				successMessage = "정보게시판 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/infomation/list";
				break;
			case "insertNTCBoard" :
				successMessage = "공지사항 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/notice/list";
				break;
			case "updateRVBoard" :
				successMessage = "후기 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/review/list";
				break;
			case "updateQNABoard" :
				successMessage = "QNA 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/qna/list";
				break;
			case "updateFAQBoard" :
				successMessage = "FAQ 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/hp/faq/select/list";
				break;
			case "updateINFOBoard" :
				successMessage = "정보게시판 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/infomation/list";
				break;
			case "updateNTCBoard" :
				successMessage = "공지사항 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/notice/list";
				break;
			}
			
			alert(successMessage);
			
			location.replace(movePath);
			
		})();
	</script>
</body>
</html>