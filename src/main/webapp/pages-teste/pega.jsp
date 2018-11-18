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
	<jsp:getProperty property="nome" name="usu"/>
	<jsp:getProperty property="email" name="usu"/>
<%-- 	<jsp:setProperty property="*" name="usu"/> --%>
 	<hr>
 	<h2>${sessionScope.user}</h2>
	<h3>Paremeters</h3>
	Nome = ${param.nome}
	<br>
	Email = ${param.email}	
	<br>
	Senha = ${param.senha}
</body>
</html>