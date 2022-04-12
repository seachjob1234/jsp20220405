<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL</h1>
<%
pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE1");
request.setAttribute("reqAttr1", "REQUEST ATTRIBUTE1");
session.setAttribute("sesAttr1", "SESSION ATTRIBUTE1");
application.setAttribute("applAttr1", "APPICATION ATTRIBUTE1");
%>

<p>\${pageAttr1 }:{pageAttrl}</p>

<p>\${reqAttr1 }:{reqAttrl}</p>

<p>\${sesAttr1 }:{sesAttrl}</p>

<p>\${applAtty1 }:{applAttrl}</p>
</body>
</html>