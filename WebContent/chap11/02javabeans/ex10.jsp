<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import = "chap11.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />   
<title>Insert title here</title>
</head>
<body>
<%
Car c1 = new Car();
Car c2 = new Car();

List<String> list1 = new ArrayList<>();
list1.add("park");
list1.add("son");

c1.setOwners(list1);

List<String> list2 = new ArrayList<>();
list2.add("cha");

c2.setOwners(list2);


pageContext.setAttribute("aCar", c1);
pageContext.setAttribute("bCar", c2);
%>

<p>${aCar.owners[1] }</p>
<p>${bCar.owners[0] }</p>
</body>
</html>