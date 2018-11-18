package br.com.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import br.com.util.SingleConection;
/**
 * Classe para interceptar todas as url's
 * Gerenciar a instacia de conexao com banco 
 * @author everton
 *
 */
@WebFilter(urlPatterns= {"/*"})
public class Filter implements javax.servlet.Filter {

	private static Connection con;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		con = SingleConection.getConexao();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		try {
			chain.doFilter(request, response);
			con.commit();
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	@Override
	public void destroy() {

	}

}
