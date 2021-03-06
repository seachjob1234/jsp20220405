<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
<%-- List 타입의 객체를 page영역에 attribute로 넣고
	c:forEach 사용해서 아래와 같이 출력되도록 코드 작성 
 --%>
<%
List<String> list = new ArrayList<>();
list.add("keyboard");
list.add("computer");
list.add("ram");
list.add("ssd");
list.add("monitor");

pageContext.setAttribute("parts", list);

%>

<ul>
	<c:forEach items="${parts }" var="part">
		<li>${part }</li>
	</c:forEach>
</ul>
<hr />
<ul>
	<li>keyboard</li>
	<li>computer</li>
	<li>ram</li>
	<li>ssd</li>
	<li>monitor</li>
</ul>
</body>
</html>