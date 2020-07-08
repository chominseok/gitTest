<%@page import="test.familyDto.FamilyDto"%>
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
	FamilyDao dao = FamilyDao.getInstance();
	int num = Integer.parseInt(request.getParameter("num"));
	
	FamilyDto dto = dao.getEachList(num); 
%>
<body>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" id="num" value="<%=dto.getNum()%>"/>
		<label for="num">번호</label>
		<input type="text" id="num" value="<%=dto.getNum()%> "disabled/><br>
		
		<label for="name">번호</label>
		<input type="text" id="name" name="name" value="<%=dto.getName()%> "/><br>
		
		<label for="pt">특징</label>
		<input type="text" id="pt" name="pt" value="<%=dto.getPt()%>"/><br>
		
		<button type="submit">전송</button>
	</form>
</body>
</html>