package br.com.testes;

import java.sql.SQLException;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;

import br.com.dao.UsuarioDao;
import br.com.domain.UsuarioBean;

public class TesteUsuario {

	UsuarioDao dao = new UsuarioDao();
	
	@Test
	@Ignore
	public void deveListar() throws SQLException {
		for(UsuarioBean d : dao.listar()) {
			System.out.println(d.getLogin());
			System.out.println(d.getEmail());
			System.out.println(d.getSenha());
		}
	}
	
	@Test
	@Ignore
	public void deveDeletar() {
		String login = "cris";
		Assert.assertTrue(dao.delete(login));
	}
}
