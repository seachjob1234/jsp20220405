<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie cookie = new Cookie("name",URLEncoder.encode("최범균","utf-8"));
response.addCookie(cookie);

%>
<%=cookie.getName() %>쿠키의 값 = "<%=cookie.getValue() %>"
</body>
</html>