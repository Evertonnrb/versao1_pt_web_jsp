<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:import url="https://www.google.com.br" var="data"/>
	<c:out value="${data}"/>
	<hr>
	<h2 style="color:red;">Acesso negado</h2>
</body>
</html>