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
<h1>서버에서 쿠기 읽기</h1>
<h1>서버에서 쿠키 읽기</h1>
	<%
	Cookie[] cookies = request.getCookies();
	
	for (Cookie cookie : cookies) {
		out.print("<p>");
		
		out.print(cookie.getName());
		out.print(":");
		out.print(cookie.getValue());
		
		out.print("</p>");
	}
	%>
</body>
</html>