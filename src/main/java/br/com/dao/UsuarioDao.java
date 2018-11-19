package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.domain.UsuarioBean;
import br.com.util.SingleConection;

public class UsuarioDao {

	private Connection connection;

	public UsuarioDao() {
		connection = SingleConection.getConexao();
	}

	public void salvar(UsuarioBean bean) {
		String insert = "INSERT INTO usuario (email,login,senha) VALUES (?,?,?)";
		PreparedStatement pst;
		try {
			pst = connection.prepareStatement(insert);
			pst.setString(1, bean.email);
			pst.setString(2, bean.login);
			pst.setString(3, bean.senha);
			pst.execute();
			connection.commit();
		} catch (SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
	}
	
	public List<UsuarioBean> listar() throws SQLException{
		String select = "SELECT * FROM usuario";
		List<UsuarioBean> listar = new ArrayList<>();
		PreparedStatement pst = connection.prepareStatement(select);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			UsuarioBean bean = new UsuarioBean();
			bean.setLogin(rs.getString("login"));
			bean.setEmail(rs.getString("email"));
			bean.setSenha(rs.getString("senha"));
			listar.add(bean);
		}
		return listar;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
