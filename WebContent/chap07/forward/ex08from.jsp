<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
%> 
<%@ page import="chap07.*" %>  
<%
Car car = new Car();
car.setName("kia");
car.setPrice(500);

request.setAttribute("myCar", car);
%>











<jsp:forward page="ex08to.jsp"/>