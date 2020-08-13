package connection;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.management.RuntimeErrorException;

public class SingleConnection {
	
	private static String url = "jdbc:postgresql://localhost:5432/sistemaFerramenta?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection = null;
	
	public SingleConnection() {
		conectar();
	}
	
	static {
		conectar();
	}
	
	private static void conectar() {
		
		try {
			if(connection == null) {
			
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(url, user, password);
				connection.setAutoCommit(false);
				
			}
			} catch (Exception e) {				
				throw new RuntimeException("Erro ao conectar ao banco de dados");
			}
			
			
			
	}

}
