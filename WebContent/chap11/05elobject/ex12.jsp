<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("attr1", "value1");
request.setAttribute("attr2", "value2");
session.setAttribute("attr3", "value3");
application.setAttribute("attr4", "value4");

pageContext.setAttribute("attr5", "page Value5");
request.setAttribute("attr5", "request Value5");
session.setAttribute("attr5", "session Value5");
application.setAttribute("attr5", "app Value5");


%>


<p>${attr1 }</p>
<p>${pageScope.attr1 }</p>
<p>${attr2 }</p>
<p>${requestScope.attr2 }</p>
<p>${attr3 }</p>
<p>${sessionScope.attr3 }</p>
<p>${attr4 }</p>
<p>${applicationScope.attr4 }</p>

<hr/>
<p>${attr5}</p><%--page Value --%>
<p>${requestScope.attr5 }</p>
<p>${sessionScope.attr5 }</p>
<p>${applicationScope.attr5 }</p>

</body>
</html>