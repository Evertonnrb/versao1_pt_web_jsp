package br.com.domain;

public class UsuarioBean {

	private int id;
	private String login;
	private String email;
	private String senha;

//	public boolean login(String login, String senha) {
//		if (login.equalsIgnoreCase("admin") && senha.equalsIgnoreCase("admin")) {
//			return true;
//		} else {
//			return false;
//		}
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
