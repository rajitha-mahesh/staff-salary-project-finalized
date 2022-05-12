package com.staff;


//connect all the classes to the database in one file
import java.sql.Connection;
import java.sql.DriverManager;
//database connection of crud
public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/Staff_salary";
    private static String user ="root";
    private static String pass="123rajitha";
    private static Connection con;
    
    public static Connection getConnection() {
    	
    	try {
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		con=DriverManager.getConnection(url, user, pass);
    		
    	}
    	catch(Exception e){
    		System.out.println("Database connection is not successful!!!");   		
    	}
    	
    	return con;
    }
    
}
