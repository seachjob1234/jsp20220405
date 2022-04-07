<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap07.*"%>
<%request.setCharacterEncoding("utf-8");%>

<%
///상대경로
String location = "ex06to.jsp";

//절대경로
String location2 = "/jsp20220405.chap03/07response/ex06.jsp";

//contest path(contect root)는 바뀔 수 있으니
//request.getcontextpath()메소드사용
String location3 = request.getContextPath()+"/chap03/07response/ex06to.jsp";
response.sendRedirect(location3);
%>