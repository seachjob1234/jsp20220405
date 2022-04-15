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
<form>
나이:<input type ="number" name = "age" id = ""/>

<input type= "submit" value = "영화 추천받기" />


</form>


	
	<c:choose>
		<c:when test="${param.age >= 20 }">
			<h1>데드풀입니다.</h1>
		</c:when>
		<c:when test="${param.age >= 12 }">
			<h1>어벤져스입니다.</h1>
		</c:when>
		<c:when test="${param.age >= 7 }">
			<h1>토이스토리입니다.</h1>
		</c:when>
		<c:otherwise>
			<%-- otherwise 생략 가능 --%>
			<h1>적절한 나이를 입력해입니다.</h1>
		</c:otherwise>
	</c:choose>
</body>
</html>