<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import = "chap11.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>pageScore,requestScope,sessionScope,applicationScope : el 객체</h1>
<h1>Map&lt;String,Object&gt; 타입</h1>

<h1>각 영역의 attribute를 맵의 엔트리로 가지고 있음</h1>

<%
pageContext.setAttribute("pageattr1", "pageValue1");
pageContext.setAttribute("pageattr2", new Car("volvo",7000));
pageContext.setAttribute("my car", new Car("benz",8000));
%>

<p>${pageattr1 }</p>
<p>${pageScope.pageAttr1 }</p>
<p>${pageattr2.model }</p>
<p>${pageattr2.price }</p>
<p>${pageScope.pageAttr.model }</p>
<p>${pageScope.pageAttr.price }</p>
<%--<p>${my car}</p> --%><%--이거안됨. --%>
<p>${pageScope["my car"].model }</p>
<p>${pageScope["my car"].price }</p>

</body>
</html>