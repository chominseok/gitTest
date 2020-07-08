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
	String name = request.getParameter("name");
	String pt = request.getParameter("pt");
	FamilyDto dto = new FamilyDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setPt(pt);
	dao.update(dto);
%>
<body>
	<script>
		alert("수정되었습니다!");
		location.href="list.jsp";
	</script>
</body>
</html>