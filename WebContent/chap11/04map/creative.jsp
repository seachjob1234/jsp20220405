<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />   
<title>Insert title here</title>
</head>
<body>
<%
Map<String, String> map = new HashMap<>();
List<String> list = new ArrayList<>();

list.add("gundam x");
list.add("gundam doublex");

map.put("universe", "new gundam");
map.put("universe1", "shasabi");

pageContext.setAttribute("mylist", list);
pageContext.setAttribute("map1", map);
%>

<p>${mylist[0] }</p>
<p>${mylist[1] }</p>

<p>${map1["universe"] }</p>
<p>${map1.universe1 }</p>
</body>
</html>