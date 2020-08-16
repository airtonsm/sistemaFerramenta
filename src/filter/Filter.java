package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import connection.SingleConnection;

@WebFilter(urlPatterns = {"/*"})
public class Filter implements javax.servlet.Filter {
	
	private static Connection connection;
	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)			
			throws IOException, ServletException {
		
		try {
		SingleConnection.getConnection();
		chain.doFilter(request, response);		
		connection.commit();
		}catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		connection = SingleConnection.getConnection();
	}

}
