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
	<h1>el 문법 (대괄호)</h1>
	<%
	Car car = new Car();
	car.setModel("hyundai");
	car.setPrice(500);
	
	pageContext.setAttribute("car1", car);
	pageContext.setAttribute("prop1", "model");
	%>
	
	<p>${car1["model"]}</p>
	<p>${car1[model]}</p><%--스트링안썼을 때 4개의 어트리뷰트의 영역에서 이놈 찾는다 근데 없어서 안됨. --%>
	<p>${car1[prop1] }</p><%--얘는 어트리뷰트에 있으니까 스트링 안붙혀도 나옴 19줄에 적혀있지. --%>

</body>
</html>