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

		String sql = "select cliente.nome, equipamento.os, equipamento.descricao, equipamento.status"
				+ " from equipamento" 
				+ " inner join cliente" 
				+ " ON equipamento.id_cliente = cliente.id_cliente"
				+ " where equipamento.os = '" + os + "'";

		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();

		while (resultSet.next()) {
			BeanEquipamento beanEquipamento = new BeanEquipamento();
			beanEquipamento.setOs(resultSet.getString("os"));
			beanEquipamento.setNome(resultSet.getString("nome"));
			beanEquipamento.setDescricao(resultSet.getString("descricao"));
			beanEquipamento.setStatus(resultSet.getString("status"));

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
	
	/*public void alterarStatus(String os) {
			
			int valor = 0;
			
			if(valor <= 3) {
				valor ++;
				beanEquipamento.status_equip(valor);
			}
			

		
		try {
			String sql = "update equipamento set = '"+ beanEquipamento.status_equip(valor)  + "' status where os = '" + os + "'";
			PreparedStatement st = connection.prepareStatement(sql);
			st.executeUpdate();
			connection.commit();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/


	public void deletar(String os) {
		
		try {
		String sql = "delete from equipamento where os = '" +  os + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.execute();
		connection.commit();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}


