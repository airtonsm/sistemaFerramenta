package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanCliente;
import dao.DaoCliente;


@WebServlet("/Cliente")
public class Cliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DaoCliente daoCliente = new DaoCliente();

    public Cliente() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String contato =  request.getParameter("contato");
		String endereco = request.getParameter("endereco");
		String cpf = request.getParameter("cpf");
		
		BeanCliente cliente = new BeanCliente();
		
		cliente.setNome(nome);
		cliente.setContato(contato);
		cliente.setEndereco(endereco);
		cliente.setCpf(cpf);
		
		try {
		if(!daoCliente.validarCliente(cpf)) {
			request.setAttribute("msg", "Cliente já está cadastrado!!!");
		}
		if(daoCliente.validarCliente(cpf)) {
			request.setAttribute("msg", "Cliente cadastrado com sucesso");
			daoCliente.salvar(cliente);
		}				
		
		RequestDispatcher view = request.getRequestDispatcher("cadastroCliente.jsp");
		view.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
