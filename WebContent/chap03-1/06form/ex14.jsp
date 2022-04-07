<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String desc = request.getParameter("desc");
%>

<h1><%= name %></h1>
<p><%= desc %></p>
<hr/>
<textarea name="" id="" cols="30" rows="10"></textarea>
<br/>
<input type="submit" value = "전송"/>
</body>
</html>