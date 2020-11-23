package servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanEquipamento;
import dao.DaoEquipamento;



@WebServlet("/salvarEquipamento")
public class Equipamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BeanEquipamento beanEquipamento = new BeanEquipamento();
      
	private DaoEquipamento daoEquipamento = new DaoEquipamento();
    
    public Equipamento() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);		
		
		
		
		String id_cliente = request.getParameter("id_cliente");
		String os = request.getParameter("os");
		String descricao = request.getParameter("descricao");
		String status = request.getParameter("status");

		
		BeanEquipamento equipamento = new BeanEquipamento();
		
		equipamento.setId_cliente(Integer.valueOf(id_cliente));;
		equipamento.setOs(os);
		equipamento.setDescricao(descricao);
		equipamento.setStatus(status);
		
		try {
		if(!daoEquipamento.validarEquipamento(os)) {
			request.setAttribute("msg", "Ordem de serviço já cadastra no sistema!!!");
		}
		if(daoEquipamento.validarEquipamento(os)) {
			request.setAttribute("msg", "Ordem de serviço cadastrada com sucesso!");
			daoEquipamento.salvar(equipamento);
		}		
		
		RequestDispatcher view = request.getRequestDispatcher("cadastroFerramenta.jsp");		
		view.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
