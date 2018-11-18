package br.com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.LoginDao;
import br.com.domain.UsuarioBean;

@WebServlet("/LoginService")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginDao loginDao = new LoginDao();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		UsuarioBean usuarioBean = new UsuarioBean();
		usuarioBean.setLogin(login);
		usuarioBean.setSenha(senha);

		try {
			if (loginDao.logar(login, senha)) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("sistema/acesso_liberado.jsp");
				dispatcher.forward(req, resp);
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher("sistema/acesso_negado.jsp");
				dispatcher.forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
