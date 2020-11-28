package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BeanCliente;
import beans.BeanEquipamento;
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
	
	public List<BeanCliente> buscarUsuario(String nome) throws Exception {
		
		List<BeanCliente> buscarUsuario = new ArrayList<BeanCliente>();
		
		String sql = "select id_cliente, nome from cliente where nome ilike '%" + nome + "%'";
		PreparedStatement st = connection.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			BeanCliente cliente = new BeanEquipamento();
			cliente.setId(rs.getLong("id"));
			cliente.setNome(rs.getString("nome"));
			buscarUsuario.add(cliente);
		}
		
		return buscarUsuario;
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
