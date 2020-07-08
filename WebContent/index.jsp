<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>웹 페이지를 생성했습니다.</p>
	<a href="https://github.com/chominseok/gitTest">gitTest 사이트로 이동</a>
	<a href="https://github.com/chominseok/gitTest">gitTest 사이트로 이동22222</a>
	
	<ul>
		<li><a href="test1">get방식 서블릿으로 만들기1</a></li>
		<li><a href="test1.jsp">get방식 jsp로 만들기1</a></li>
	</ul>
	
	<h1>post방식 서블릿으로 만들기1</h1>
	<form action="test1_1" method="post">
		<label for="num">숫자를 입력하세요</label>
		<input type="text" id="num" name="num"/><br>
		
		<label for="content">아무거나 입력하세요</label>
		<input type="text" id="content" name="content"/>
		
		<button type="submit">전송</button>
	</form>
	
	<h1>post방식 jsp로 만들기1</h1>
	<form action="test1_1.jsp" method="post">
		<label for="num">숫자를 입력하세요</label>
		<input type="text" id="num" name="num"/><br>
		
		<label for="content">아무거나 입력하세요</label>
		<input type="text" id="content" name="content"/>
		
		<button type="submit">전송</button>
	</form>
	<br><br><br>
	
	<a href="family/list.jsp">가족 구성원 보러가기</a>
</body>
</html>