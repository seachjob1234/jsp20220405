<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "chap11.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%
String inStr = request.getParameter("id");
int id = Integer.parseInt(inStr);
List<Car> list = (List<Car>) application.getAttribute("cars");

list.remove(id);
//리무브는 인티저만 받음.
response.sendRedirect("ex18carForm.jsp");

%>
