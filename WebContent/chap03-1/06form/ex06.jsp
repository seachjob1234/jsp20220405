<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

String agree = request.getParameter("agree");
String ad = request.getParameter("accept");

String messege1 = "";
String messege2 = "";
if(agree != null){
	messege1 = "개인정보 수집에 동의하셨습니다.";
}else{
	messege1 = "개인정보 수집에 동의하지않으셨습니다";
}
if(ad != null){
	messege2 = "광고수신 동의 하였습니다.";
}else{
	messege2 = "광고수신 동의하지않으셨습니다.";
}


%>
<h1><%= message1 %></h1>
<h1><%= message2 %></h1>
</body>
</html>