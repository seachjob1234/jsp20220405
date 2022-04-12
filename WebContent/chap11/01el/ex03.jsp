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
<h1>attribute속성이 존재하지 않을 때  : 표시 안됨 .</h1>
<%
pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE");


 %>
 <p>${pageAttr1 }</p>
 <p>${pageAttr2 }</p>
 <p><%=pageContext.getAttribute("pageAttr2") %></p>
</body>
</html>