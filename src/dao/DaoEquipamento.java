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
		String sql = "insert into equipamento(os, descricao, tecnico, data, codCliente) values (?, ?, ?, ?, ?)";
		PreparedStatement insert = connection.prepareStatement(sql);
		insert.setString(1, equip.getOs());
		insert.setString(2, equip.getDescricao());
		insert.setString(3, equip.getTecnico());
		insert.setString(4, equip.getData());
		insert.setString(5, equip.getCodCliente());
		insert.execute();
		connection.commit();
		}catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	public List<BeanEquipamento> consultar(String os) throws Exception{	
		
		List<BeanEquipamento> list = new ArrayList<BeanEquipamento>();
		
		String sql = "select * from equipamento where = '" + os + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		
		while(resultSet.next()) {				
			BeanEquipamento equip = new BeanEquipamento();
			equip.setOs(resultSet.getString("os"));
			equip.setDescricao(resultSet.getNString("descricao"));
			equip.setTecnico(resultSet.getString("tecnico"));
			equip.setData(resultSet.getString("data"));
			equip.setCodCliente(resultSet.getString("codCliente"));
			
			
			list.add(equip);
		}
		
		return list;
		
	}

}
