package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BeanEquipamento;
import connection.SingleConnection;

public class DaoEquipamento {

	BeanEquipamento beanEquipamento = new BeanEquipamento();

	private Connection connection;

	public DaoEquipamento() {
		connection = SingleConnection.getConnection();
	}

	public void salvar(BeanEquipamento equip) {
		try {
			String sql = "insert into equipamento(id_cliente, os,descricao, status) values (?, ?, ?, ?)";
			PreparedStatement insert = connection.prepareStatement(sql);
			insert.setInt(1, equip.getId_cliente());
			insert.setString(2, equip.getOs());
			insert.setString(3, equip.getDescricao());
			insert.setString(4, beanEquipamento.status_equip(1));

			insert.execute();
			connection.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public List<BeanEquipamento> consultar(String os) throws Exception {

		List<BeanEquipamento> consultar = new ArrayList<BeanEquipamento>();

		String sql = "select cliente.nome, equipamento.os, equipamento.descricao" + " from equipamento"
				+ " inner join cliente" + " ON equipamento.id_cliente = cliente.id_cliente"
				+ " where equipamento.os = '" + os + "'";

		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();

		while (resultSet.next()) {
			BeanEquipamento beanEquipamento = new BeanEquipamento();
			beanEquipamento.setOs(resultSet.getString("os"));
			beanEquipamento.setNome(resultSet.getString("nome"));
			beanEquipamento.setDescricao(resultSet.getString("descricao"));

			consultar.add(beanEquipamento);
		}

		return consultar;
	}

	public boolean validarEquipamento(String os) throws Exception {
		String sql = "select count(1) as qtd from equipamento where os = '" + os + "'";
		PreparedStatement statement = connection.prepareStatement(sql);

		ResultSet resultSet = statement.executeQuery();

		if (resultSet.next()) {
			return resultSet.getInt("qtd") <= 1;
		}
		return false;
	}

	public List<BeanEquipamento> consultar() throws Exception
	{

		List<BeanEquipamento> consultarTodos = new ArrayList<BeanEquipamento>();

		String sql = "select cliente.nome, equipamento.os, equipamento.descricao" 
				+ " from equipamento"
				+ " inner join cliente" 
				+ " ON equipamento.id_cliente = cliente.id_cliente";

		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();

		while (resultSet.next()) {
			BeanEquipamento beanEquipamento = new BeanEquipamento();
			beanEquipamento.setOs(resultSet.getString("os"));
			beanEquipamento.setNome(resultSet.getString("nome"));
			beanEquipamento.setDescricao(resultSet.getString("descricao"));

			consultarTodos.add(beanEquipamento);
		}

		return consultarTodos;
	}

}
