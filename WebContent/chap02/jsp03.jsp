<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Lorem.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo suscipit quae molestiae enim in hic quasi error repellendus tempore minima mollitia consequatur distinctio quibusdam minus eius sed porro cupiditate sapiente.</p>

	<input type="text" /><input type="text" />
	
	<input type="text" /><input type="text" />
	
	<input type="text" /><input type="text" />
	
	<c:if test="true" >
	<p>hello</p>
	</c:if>
	<c:url value = "/board">
	<c:param name="id" value="1"/>
	</c:url>
</body>
</html>