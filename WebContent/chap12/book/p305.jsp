<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%HashMap<String,Object> mapData = new HashMap<String,Object>();
	mapData.put("name", "최범균");
	mapData.put("today", new java.util.Date());
	
%>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5} %>"/>
<c:set var="map" value="<%=mapData %>"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<
	<p>테그들은 다 쿼리를 받는건가.</p>
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+i }" />
	</c:forEach>
	결과 =${sum}

	<h4>구구단:4단</h4>
	<ul>
		<c:forEach begin="1" end="9" var="i">
			<li>4 *${i } = ${4*i }
		</c:forEach>
	</ul>

	<h4>int형 배열</h4>
	<c:forEach var="i" items="${intArray }" begin="2" end="4"
		varStatus="status">
${status.index }-${status.count}-[${i}]<br />
	</c:forEach>

	<h4>map</h4>
	<c:forEach var="i" items="${map }">
${i.key}=${i.value }<br>
	</c:forEach>
</body>
</html>