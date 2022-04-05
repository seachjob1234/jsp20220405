<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>스크립트립(scriptlet)</h1>
<p>자바 코드 작성요소</p>

<%
System.out.println("jsp의 스크립트릿에 작성한 자바 코드!");
%>

<h1>두 번째 제목</h1>

<%
System.out.println("두번 째 자바 명령문");

out.write("<h1>세번째 제목</h1>");
%>
</body>
</html>

