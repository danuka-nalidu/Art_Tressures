package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	private static Connection conn = null;
	private static String url ="jdbc:mysql://localhost:3306/oop";
	private static String Username = "root";
	private static String Password ="champaku10";
	public static Connection getDBConnection(){
		try {
			//check where there are any connection in connection variabble
			if(conn == null || conn.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
				//Class.forName("com.mysql.jdbc.Driver"); //enable live connection mysql database
				conn = DriverManager.getConnection(url, Username, Password);  //Connect to database
			}
		}//if there any sql error
		catch(SQLException e) {
			System.out.println("Database Connection is not successful!!!...");
			System.out.println("Error occur in com.oop.util DBConnecion.java");
		}//if there any class error
		catch(ClassNotFoundException e) {
			System.out.println("You Database connection class is not found....");
			System.out.println("Error occur in com.oop.util DBConnecion.java");
		}
		
		return conn;
	}
	}
 

