<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/principal.css">
</head>
<body>
	<div class="menu">
		<nav>
			<ul>
				<li><a href="../index.jsp">Home</a></li>
				<li><a href="#">Sobre</a></li>
				<li><a href="contato.jsp">Contato</a></li>
				<li><a href="login.jsp">Login</a></li>
				<li style="float: right;"><a href="#" class="active">Next</a></li>
			</ul>
		</nav>
	</div>
	<div class="busca">
		<input type="text" placeholder="Buscar">
	</div>
	<div id="tag-form">
		<form method="POST" action="#">
			<h1>Cadastre - se</h1>
			<p>Registre-se para obter acesso a todo o conteúdo da plataforma e castra se para obter nossas novas postagens e atualizações.</p>
			<input type="text" id="login" name="login" placeholder="Login de usuário" required x-moz-errormessage="Ops não esqueça desse campo">
			<input type="email" id="email" name="email" placeholder="Seu melhor email" required>
			<input type="password" id="senha" name="senha" placeholder="Senha de usuário" required> 
			<input type="date" id="dataNascimento" name="dataNascimento" placeholder="Data de nascimento" required>
			<input type="submit" value="Cadastrar">
			<div id="contrato">
				<label for="contrato">Li e declaro que aceito os termos
					<input type="radio" id="contrato" name="contrato">
				</label>
			</div>
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