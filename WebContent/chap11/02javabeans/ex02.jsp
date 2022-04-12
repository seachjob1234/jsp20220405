<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>

<%
pageContext.setAttribute("attr1", "page attribute1");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>만약 attribute가 없으면.</h1>
<p>${myCar.model }</p>
<%
Car myCar =(Car) pageContext.getAttribute("myCar");
%>
<p><%=myCar.getModel() %></p>
</body>
</html>