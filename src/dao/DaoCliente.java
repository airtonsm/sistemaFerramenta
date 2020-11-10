package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.BeanCliente;
import connection.SingleConnection;

public class DaoCliente {
	
	private Connection connection;
	
	public DaoCliente () {
		connection = SingleConnection.getConnection();
	}
	
	public void salvar(BeanCliente cliente) {
		try {
			String sql = "insert into cliente(nome, contato, endereco, cpf) values(?,?,?,?)";
			PreparedStatement insert = connection.prepareStatement(sql);
			insert.setString(1, cliente.getNome());
			insert.setString(2, cliente.getContato());
			insert.setString(3, cliente.getEndereco());
			insert.setString(4, cliente.getCpf());
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
	
	public boolean validarCliente(String cpf) throws Exception {
		
		String sql = "select count(1) as qtd from cliente  where cpf = '" + cpf + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet =  statement.executeQuery();
		
		if(resultSet.next()) {
			return resultSet.getInt("qtd") <= 0;
		}
		
		return false;
	}
	
}
