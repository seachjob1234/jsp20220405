<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>로그인화면</h1>
	<%
		String messege = (String) session.getAttribute("errorMessege");
	if (messege != null) {
		out.print("<p>");
		out.print(messege);
		out.print("</p>");
		session.removeAttribute("errorMessege");
	}
	
	//이전에 작성한 id 활용
	
	String id = (String)session.getAttribute("id");
	session.removeAttribute("id");
	
	if(id == null){
		id = "";
	}
	
	
	%>
	<form action="ex16loginProcess.jsp" method="post">
		아이디 :
		<input type="text" name="id" value="<%=id %>" />
		<br />
		비밀번호 :
		<input type="password" name="pw" />
		<br />

		<input type="submit" value="로그인" />
	</form>
</body>
</html>