<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ requestScope.board.no }<br>
	${ requestScope.board.title }<br>
	${ requestScope.board.content }<br>
	${ requestScope.board.drawupDate }<br>
	${ requestScope.board.watched }<br>
	${ requestScope.board.writer.name }<br>
</body>
</html>