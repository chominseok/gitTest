<%@page import="test.familyDao.FamilyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	FamilyDao dao = FamilyDao.getInstance();
	dao.delete(num);
	
	//String cPath = request.getContextPath();
	
	//response.sendRedirect(cPath+"/family/list.jsp");
%>
<body>
	<script>
		alert("<%=num%>번이 삭제되었습니다!");
		location.href="list.jsp";
	</script>
</body>
</html>