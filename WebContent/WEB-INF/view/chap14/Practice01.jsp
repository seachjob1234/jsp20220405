<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>직원목록</h1>
				<table class="table">
					<thead>
						<tr>
							<th>CustomerID</th>
							<th>CustomerName</th>
							<th>Address</th>
							<th>City</th>
							<th>PostalCode</th>
							<th>Country</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerList}" var="cs">
							<tr>
								<td>${cs.id }</td>
								<td>${cs.name }</td>
								<td>${cs.address }</td>
								<td>${cs.city }</td>
								<td>${cs.postCode }</td>
								<td>${cs.country }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		<nav>
			<ul class="pagination">
				<li class="page-item">
					<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
							<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
								<a href="ServletPractice01?page=${pageNum }" 
								class="page-link">${pageNum }</a>
							</li>
						</c:forEach>				
				</li>
			</ul>
		</nav>
			</div>
		</div>
	</div>
</body>
</html>