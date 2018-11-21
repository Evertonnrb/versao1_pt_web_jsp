<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="br.com.dao.UsuarioDao"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.tabela{
		position: absolute;
		top: 20%;
		left: 30%;
		transform:transition(-50%,-50%);
	}
</style>
</head>
<body>
	<c:out value="${'Welcome to the club'}" />
	<hr />
	<h2 style="color: blue">Painel admin</h2>
	<hr>
	<br>

	<table border="1" class="tabela">
		<tr bgcolor="#cacaca">
			<td>ID</td>
			<td>Login</td>
			<td>Email</td>
			<td>Senha</td>
			<td colspan="2">Ação</td>
			
		</tr>
		<c:forEach items="${dao.listar()}" var="u">
		<tr>
			<td> <c:out value="${u.id}"/> </td>
			<td> <c:out value="${u.login}"/> </td>
			<td> <c:out value="${u.email}"/> </td>
			<td> <c:out value="${u.senha}"/> </td>
			<td> <a href="cadastrarUsuario?acao=delete&user=${u.login}">Excluir</a> </td>
			<td> <a href="#">Editar</a> </td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>