<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ requestScope.board.hpBdNo }<br>
	${ requestScope.board.hpBdTitle }<br>
	${ requestScope.board.hpBdContent }<br>
	${ requestScope.board.hpBdDrawupDate }<br>
	${ requestScope.board.hpBdWatched }<br>
	${ requestScope.board.writer.name }<br>
</body>
</html>