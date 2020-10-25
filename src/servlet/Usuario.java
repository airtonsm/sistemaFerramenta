package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanFerramenta;
import dao.DaoUsuario;



@WebServlet("/salvarUsuario")
public class Usuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DaoUsuario daoUsuario = new DaoUsuario();
   
    public Usuario() {
        super();       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		String id = request.getParameter("id");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		BeanFerramenta usuario = new BeanFerramenta();
		
		usuario.setId(!id.isEmpty() ? Long.parseLong(id) : 0);
		usuario.setLogin(login);
		usuario.setSenha(senha);
		
		try {

			if (id == null || id.isEmpty() && !daoUsuario.validarLogin(login)) {
				request.setAttribute("msg", "Login já cadastradato!!");
 
			}
			if (id == null || id.isEmpty() && daoUsuario.validarLogin(login)) {
				daoUsuario.salvar(usuario);
				request.setAttribute("msg", "Usuário cadastrado com sucesso!!!");
			}
		
		daoUsuario.salvar(usuario);

		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroUsuario.jsp");
		dispatcher.forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
