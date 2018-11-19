/**
 * @author Everton Ribeiro
 */
function validarCampoVazio(login,senha){
	if(login.value.length < 1 && senha.value.length < 1){
		alert("Informe seu usuário e a sua senha");
		return false;
	}
	if(login.value == ""){
		alert("Inform seu login");
		login.value.focus;
		return false;
	}
	if(senha.value == "" || senha.value.length < 8){
		alert("Senha inválida");
		senha.focus;
		return false;
	}
	return true;
};

function validarContato(){
	var formulario = document.forms['frm'];
	var nome = formulario.nome.value;
	var email = formulario.email.value;
	var msg = formulario.msg.value;
	var erro = true;
	if(nome.length < 1){
		alert("Preencha seu nome");
		erro = false;
	}
	if(email.length<1){
		alert("Email inválido");
		erro = false;
	}
	if(msg.length < 5){
		alert("A mensagem deve ter pelo menos 6 caracteres");
		erro = false;
	}
	return erro;
}

function digaNomeCompleto(){
	var nome = document.getElementById("nome").value;
	if(nome.indexOf(" ") == -1){
		alert("Me informe ao seu nome completo ");
	}
}