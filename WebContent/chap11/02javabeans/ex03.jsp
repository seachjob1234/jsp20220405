<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Car car = new Car();
car.setModel("kia");
car.setPrice(300);
pageContext.setAttribute("car1", car);

%>
<h1>el문법(대활호 사용)</h1>
<p>${car1.model }</p>
<p>${car1.price }</p>

<hr/>
<p>${car1["model"] }</p> 
<p>${car1["price"] }</p> 












</body>
</html>