<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="../js/script.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/principal.css">
</head>
<body>
	<div class="menu">
		<nav>
			<ul>
				<li> <a href="../index.jsp">Home</a> </li>
				<li> <a href="cadastrar-usuario.jsp">Cadastre-se</a> </li>
				<li> <a href="login.jsp">Login</a> </li>
				<li style="float: right;"> <a href="#" class="active">Quem sou</a> </li>
			</ul>
		</nav>
	</div>
	<div class="busca">
		<input type="text" placeholder="Buscar">
	</div>
	<div id="contato">
		<form action="#" method="POST" name="frm" onsubmit="return validarContato()">
			<h2>Contato</h2>
			<p>Me mande uma mensagem, em breve entrarei em contato</p>
			<input type="text" id="nome" name="nome" placeholder="Seu nome" required onchange="digaNomeCompleto()">
			<input type="email" id="email" name="email" placeholder="email" required>
			<textarea cols="" rows="" id="msg" name="msg" placeholder="Sua mensagem aqui" required></textarea>
			<input type="submit" value="Envair">
		</form>
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

