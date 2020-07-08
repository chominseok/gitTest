<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp 테스트 합니다.</h1>
	
	<%request.setCharacterEncoding("utf-8"); %>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("content");
	%>
	<p><%=num %> : <%=content %></p>
</body>
</html>