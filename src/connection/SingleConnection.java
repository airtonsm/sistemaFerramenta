package connection;

import java.sql.Connection;

public class SingleConnection {
	
	private static String url = "";
	private static String user = "";
	private static String password = "";
	private static Connection connection = null;
	
	public SingleConnection() {
		conectar();
	}
	
	static {
		conectar();
	}
	
	private static void conectar() {
		
		if(connection == null) {
			
		}
	}

}
