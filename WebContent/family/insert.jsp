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
	FamilyDao  dao = FamilyDao.getInstance();
	String name = request.getParameter("name");
	String pt = request.getParameter("pt");
	FamilyDto dto = new FamilyDto();
	dto.setName(name);
	dto.setPt(pt);
	boolean isInsert = dao.insert(dto);
	System.out.println(isInsert);
	
%>
<body>
	<script>
		alert("추가되었습니다!");
		location.href="list.jsp";
		/* if(isInsert){
			confirm("추가할래?");
			location.href="list.jsp";
		}else{
			alert("실패하였습니다");
			location.href="list.jsp";
		} */
	</script>
</body>
</html>