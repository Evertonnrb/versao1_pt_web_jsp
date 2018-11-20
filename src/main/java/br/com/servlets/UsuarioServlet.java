package br.com.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.UsuarioDao;
import br.com.domain.UsuarioBean;

@WebServlet("/cadastrarUsuario")
public class UsuarioServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UsuarioDao dao;

	public UsuarioServlet() {
		dao = new UsuarioDao();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String acao = req.getParameter("acao");
		String login = req.getParameter("user");
		System.out.println(acao +" "+ login);
		if(acao.equalsIgnoreCase("delete")) {
			dao.delete(login);
			RequestDispatcher dispatcher = req.getRequestDispatcher("sistema/acesso_liberado.jsp");
			try {
				req.setAttribute("usuarios", dao.listar());
			} catch (SQLException e) {
				e.printStackTrace();
			}
			dispatcher.forward(req, resp);
		}
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
		// resp.sendRedirect("login.jsp");
		try {
				RequestDispatcher view = req.getRequestDispatcher("sistema/cadastrar-usuario.jsp");
				req.setAttribute("usuarios",dao.listar());
				view.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
