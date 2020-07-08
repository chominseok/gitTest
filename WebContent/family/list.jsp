<%@page import="java.util.List"%>
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
	
	List<FamilyDto> list = dao.getList();
%>
<body>
	<h1>가족 구성원 ㅎㅎ</h1>
	<form action="insert.jsp" method="post">
		<label for="name">이름</label>
		<input type="text" id="name" name="name"/>
		<label for="pt">특징</label>
		<input type="text" id="pt" name="pt"/>
		<button type="submit">추가</button>
	</form>
	<table border='1'>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>특징</th>
				<th>삭제</th>
				<th>수정</th>
			</tr>
		</thead>
		<tbody>
			<%for(FamilyDto tmp : list) {%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getPt() %></td>
					<td><a href="javascript:Delete(<%=tmp.getNum() %>);">삭제</a></td>
					<td><a href="updateForm.jsp?num=<%=tmp.getNum() %>">수정</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	
	<script>
		function Delete(num){
			var isDelete = confirm(num+"번 글을 삭제하시겠습니까?");
			if(isDelete){
				location.href="delete.jsp?num="+num;
			}
		} 
	</script>
</body>
</html>