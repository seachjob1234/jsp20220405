<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
%>   
<%@ page import = "chap07.*" %>
<%

Car c1 = new Car();
Car c2 = new Car();

c1.setName("tesla");
c1.setPrice(300);

c2.setName("kia");
c2.setPrice(10);
request.setAttribute("myCar", c1);
request.setAttribute("yourCar", c2);
%>
c










<jsp:forward page="ex09to.jsp"/>