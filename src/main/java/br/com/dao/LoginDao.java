package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.util.SingleConection;
/**
 * Classe para fazer autenticação ao sistema
 * @author everton
 *
 */
public class LoginDao {
	
	private Connection connection;
	
	public LoginDao() {
		connection = SingleConection.getConexao();
	}
	
	/**
	 * Metodo para autenticar usuário cadastrado no sistema
	 * @param login String de login
	 * @param senha String de senha
	 * @return retorna um usuário cadastrado
	 * @throws Exception
	 */
	public boolean logar(String login, String senha) throws Exception{
		String sql = "select * from usuario where login = ? and senha = ?";
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setString(1, login);
		pst.setString(2, senha);
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			return true;
		}else {
			return false;
		}
	}
}
