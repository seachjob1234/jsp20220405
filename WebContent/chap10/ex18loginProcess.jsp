<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<%
String id =(String) request.getParameter("id");
String pw =(String) request.getParameter("pw");

session.setAttribute("messege", "로그인 성공하셨습니다. 반갑습니다"+ id +"님 반갑습니다.");
session.setAttribute("id", id);
response.sendRedirect("ex17loginForm.jsp");
%>