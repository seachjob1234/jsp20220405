<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> \쿠키 경로</h1>
	
	<h1>쿠키 경로</h1>
	
	<%
	
	Cookie cookie = new Cookie("my-cookie3", "my-value3");
	// 기본 경로 : 현재 경로
	
	
	response.addCookie(cookie);
	%>
	
	<a href="ex04.jsp">같은 경로</a>  <br />
	
	<a href="../chap07/ex01.jsp">다른 경로</a>
	
	

</body>
</html>