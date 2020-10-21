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
	
	private Connection connection;
	
	public DaoEquipamento() {
		connection = SingleConnection.getConnection();
	}
	
	public void salvar(BeanEquipamento equip) {
		try {
		String sql = "insert into equipamento(id_cliente, os,descricao) values (?, ?, ?)";
		PreparedStatement insert = connection.prepareStatement(sql);
		insert.setInt(1, equip.getId_cliente());
		insert.setString(2, equip.getOs());
		insert.setString(3, equip.getDescricao());
		insert.execute();
		connection.commit();
		}catch (Exception e) {
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
		
		String sql = "select * from equipamento where os = '" +  os + "'";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		
		while(resultSet.next()) {
			BeanEquipamento beanEquipamento = new BeanEquipamento();
			beanEquipamento.setOs(resultSet.getString("os"));
			beanEquipamento.setId_cliente(resultSet.getInt("id_cliente"));
			beanEquipamento.setDescricao(resultSet.getString("descricao"));
			
			consultar.add(beanEquipamento);			
		}
		
		return consultar;
		
		
		
	}


}
