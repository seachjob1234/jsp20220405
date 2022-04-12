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
<h1>attribute가 자바빈일때</h1>

<%
Car car1 = new Car();
car1.setModel("tesla");
car1.setPrice(3000);

pageContext.setAttribute("myCar", car1);
%> 

<h2>el 안쓸 때(자바코드로 출력) </h2>
<%
Car myCar =(Car) pageContext.getAttribute("myCar");
%>
<p><%=myCar.getModel() %></p>
<p><%=myCar.getPrice() %></p>

<hr/>

<h2> el쓸 때</h2>
<p>${myCar.model }</p>
<p>${myCar.price }</p>
</body>
</html>