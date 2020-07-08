package test.Util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class dbbean {
	private Connection conn;
	
	
	public dbbean() {	
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			Connection conn = ds.getConnection();
			//etc.
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public Connection getConn() {
		return conn;
	}
}
