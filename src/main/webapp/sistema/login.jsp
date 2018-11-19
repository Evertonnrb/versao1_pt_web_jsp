<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logar no sistema</title>
  <link rel="stylesheet" type="text/css" href="../css/estilo.css">
  <link rel="stylesheet" type="text/css" href="../css/principal.css">
  <script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
	<div class="menu">
		<nav>
			<ul>
				<li><a href="../index.jsp">Home</a></li>
				<li><a href="#">Sobre</a></li>
				<li><a href="contato.jsp">Contato</a></li>
				<li style="float: right;"><a href="#" class="active">Quem sou</a></li>
			</ul>
		</nav>
	</div>
		<div class="frm-login">
			<h2>Login</h2>
			<form action="../LoginService" method="post">
			<input type="text" name="login" id="login" placeholder="login">
			<input type="password" name="senha" id="senha" placeholder="senha">	
			<input type="submit" value="logar" id="bt-logar" onclick="return validarCampoVazio(login,senha)"> 
			</form>
		</div>
		<span id="cadastro">
			<a href="cadastrar-usuario.jsp">Cadastre - se</a>
		</span>
	<div class="roda-pe">
	
	</div>
	<div class="rodape">
		<ul>
			<li> <a href="http://www.twitter.com"><img src="../_img/twitter.png"></a></li>
			<li> <a href="http://www.facebook.com"><img src="../_img/facebook.png"/></a></li>
			<li> <a href="http://www.youtube.com"><img src="../_img/youtube.png"/></a></li>
			<li> <a href="http://www.linkedin.com"><img src="../_img/linkedin.png"/></a></li>
			<li> <a href="http://www.instagram.com"><img src="../_img/instagram.png"/></a></li>
			<li> <a href="http://www.googleplus.com"><img src="../_img/google.png"/></a></li>
		</ul>
	</div>
</body>
</html>