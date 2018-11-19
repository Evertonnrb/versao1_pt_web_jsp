package br.com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.UsuarioDao;
import br.com.domain.UsuarioBean;

@WebServlet("/cadastrarUsuario")
public class UsuarioServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	UsuarioDao dao;
	
	public UsuarioServlet() {
		dao = new UsuarioDao();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String login = req.getParameter("login");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		UsuarioBean bean = new UsuarioBean();
		bean.setLogin(login);
		bean.setEmail(email);
		bean.setSenha(senha);
		dao.salvar(bean);
		//resp.sendRedirect("login.jsp");
		try {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/sistema/acesso_liberado.jsp");
			req.setAttribute("u",dao.listar());
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

