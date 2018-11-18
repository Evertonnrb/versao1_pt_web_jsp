<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logar no sistema</title>
  <link rel="stylesheet" type="text/css" href="../css/estilo.css">
</head>
<body>
		<div class="frm-login">
			<h2>Login</h2>
			<form action="../LoginService" method="post">
			<input type="text" name="login" id="login" placeholder="login">
			<input type="password" name="senha" id="senha" placeholder="senha">	
			<input type="submit" value="logar" id="bt-logar"> 
			</form>
		</div>

	<div class="roda-pe">
	
	</div>
	
</body>
</html>