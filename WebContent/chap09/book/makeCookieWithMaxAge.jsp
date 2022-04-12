<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%
Cookie cookie = new Cookie("oneh","1time");
cookie.setMaxAge(60*60);//60초에서 60초 곱한거 1시간
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키유효시간설정</title>
</head>
<body>
유효시간이 1시간인 oneh쿠키 생성
</body>
</html>