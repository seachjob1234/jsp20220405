<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합구하기</title>
</head>
<body>
<%
int sum = 0;
for(int i = 0; i<=10 ; i++){
	sum =sum +=i;
}
%>
1부터 10까지의 합은 <%=sum %>입니다
<br/>
<hr/>
<%
int sum2 = 0;
for(int i = 0; i<=20 ; i++){
	sum2 =sum2 +=i;
}
%>
1부터 20까지의 합은 <%=sum2 %>입니다
</body>
</html>