<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp 테스트 페이지 입니다.</h1>
	<%for(int i = 1; i < 11; i++){ %>
		<p><%=i %></p>
	<%} %>
</body>
</html>