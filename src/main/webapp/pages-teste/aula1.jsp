<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="usu" class="br.com.domain.UsuarioBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="pega.jsp" method="POST">
	<% session.setAttribute("user", "Everton Ribeiro"); %>
		Nome:<input type="text" name="nome" id="nome">
		<br>
		Email:<input type="text" name="email" id="email"> 
		<br>
		Senha:<input type="password" name="senha" id="senha">   
		<input type="submit" value="SEND"> 
	</form>
</body>
</html>