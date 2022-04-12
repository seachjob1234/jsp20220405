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
<h1>쿠기값변경</h1>
<%
	Cookie[] cookies = request.getCookies();
	
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("cookie4")) {
			cookie.setValue("new-value4");
			response.addCookie(cookie);
		}
	}
	
	%>
	
	<a href="ex05.jsp">쿠키 값 보기</a>

</body>
</html>