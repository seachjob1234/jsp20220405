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
<h1>쿠키, http only</h1>
	
	<%
	Cookie cookie = new Cookie("cookie4", "value4");
	
	// 기본값 : 자바스크립트에서 접근 가능
	cookie.setHttpOnly(true);
	response.addCookie(cookie);
	%>
	
	<div id="cookie">
	
	</div>
	<script>
	const cookies = document.cookie;
	
	document.getElementById("cookie").textContent = "> " + cookies;
	</script>
</body>
</html>