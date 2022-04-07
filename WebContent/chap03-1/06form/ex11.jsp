<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>계산기</h1>

<form action="ex12.jsp">

<input type="text" name="num1"/>
<select name="op" id="">
	<option value="plus">+</option>
	<option value="minus">-</option>
	<option value="times">*</option>
	<option value="divide">/</option>
	<option value="sum">Sum</option>
</select>

<input type="text" name = "num2"/>
<input type="submit" value="계산기" />




</form>
</body>
</html>