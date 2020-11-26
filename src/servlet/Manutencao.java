package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoEquipamento;

@WebServlet("/Manutencao")
public class Manutencao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoEquipamento daoEquipamento = new DaoEquipamento();

	public Manutencao() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		try {

			String acao = request.getParameter("acao");
			String user = request.getParameter("user");
			String os = request.getParameter("os");

			if (acao.equalsIgnoreCase("delete")) {
				daoEquipamento.delete(user);
				RequestDispatcher view = request.getRequestDispatcher("/servicoFerramenta.jsp");
				request.setAttribute("equipamento", daoEquipamento.consultar(os));
				request.setAttribute("msg", "Usuário deletado com sucesso!!!");
				view.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		String acao = request.getParameter("acao");

		String os = request.getParameter("os");

		DaoEquipamento equipamento = new DaoEquipamento();

			try {

				RequestDispatcher view = request.getRequestDispatcher("/servicoFerramenta.jsp");
				request.setAttribute("equipamento", equipamento.consultar(os));
				view.forward(request, response);

			} catch (Exception e) {

				e.printStackTrace();

			}

	}

}
