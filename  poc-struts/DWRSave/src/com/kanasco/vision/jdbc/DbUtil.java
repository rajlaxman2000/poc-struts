package com.kanasco.vision.jdbc;

 import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

	public class DbUtil {

	    private static Connection connection = null;

	    public static Connection getConnection() throws FileNotFoundException {
	        if (connection != null)
	            return connection;
	        else {
	            try {
	                
	            	ResourceBundle bundle=ResourceBundle.getBundle("Db");
	            	String driver=bundle.getString("driver");
	            	String url=bundle.getString("url");
	            	String user=bundle.getString("user");
	            	String password=bundle.getString("password");
	              
	                Class.forName(driver);
	                connection = DriverManager.getConnection(url, user, password);
	            } catch (ClassNotFoundException e) {
	                e.printStackTrace();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	            return connection;
	        }

	    }

		
	}


