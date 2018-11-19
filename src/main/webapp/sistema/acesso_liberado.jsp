<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${'Welcome to the club'}" />
	<hr />
	<h2 style="color: blue">Acesso liberado</h2>
	<br>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:out value="${i}" />
		<br>
	</c:forEach>

	<table>
		<c:forEach items="${u}" var="user"></c:forEach>
		<tr>
			<td><c:out value="${user.login}"></c:out></td>
			<td><c:out value="${user.email}"></c:out></td>
			<td><c:out value="${user.senha}"></c:out></td>
		</tr>
	</table>
</body>
</html>