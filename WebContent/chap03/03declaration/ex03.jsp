<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>   
<!DOCTYPE html>
<%!
//선언부 declaration
private int multiply(int a , int b){
	return a * b;
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>구구단 3단</h1>
<%
for(int i = 1; i<=9; i++){
%>	
	<%= 3 + "x" + i + "="+ multiply(3,i) %>
	<br/>
<%	
}
%>
</body>
</html>