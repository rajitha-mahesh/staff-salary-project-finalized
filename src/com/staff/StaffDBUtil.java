package com.staff;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


//call to the database
//model-normal java class
//validate the user input data/validation part is done here



public class StaffDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null ;
	private static Statement stmt = null;
	private static ResultSet rs =null;
	
	
	
	//static is used to access only by using the class name and return all data of user all the data by making a list
	//login validate
	public static List<Staff> validate(String username, String password){
		//method
		//pass as a list,create as an object
		
		ArrayList<Staff> stf = new ArrayList<>();
		

		//exception handling
	try {
			//make the datbase connection and assign the valuws in staff.java
			//validate part
		
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection con = DriverManager.getConnection(url, user, pass);
			//Statement stmt = con.createStatement();
		    //ResultSet rs = stmt.executeQuery(sql);
		    //String sql = "select * from salary where username='"+username+"' and password ='"+password+"'";
		    con = DBConnect.getConnection();
		    stmt = con.createStatement();
		    String sql = "select * from salary where username='"+username+"' and password ='"+password+"'";
		    //check whether the username and password is available in the database and return the other values of the user.
		    rs = stmt.executeQuery(sql);
			
		    //if the result set is true username and password is availabale in the database
			if(rs.next()) {
				
				
			    int staffid = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String salary = rs.getString(7);
					
				//make an  object from staff class
				
				Staff s = new Staff(staffid,name,email,phone,userU,passU,salary);
				
				//pass the staff array list object
				
				stf.add(s);
			 
			}
			
					
		}
		catch(Exception e) {
			e.printStackTrace(); //print the type of errror
		}
		
		return stf;  //return the object/aaray list
		
	}

	//insert
	public static boolean insertstaff( String staffid, String name, String email,String phone, String username,String password, String salary){
		
		boolean isSuccess = false;
		
		//create databse connection
				//String url = "jdbc:mysql://localhost:3306/staffrecruitment";
				//String user = "root";
				//String pass = "123rajitha";
				
		try{
           // Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con = DriverManager.getConnection(url, user, pass);
			//Statement stmt = con.createStatement();
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//'"+username+"', '"+password+"' ,
			String sql = "insert into salary values('"+staffid+"', '"+name+"','"+email+"', '"+phone+"' ,'"+username+"', '"+password+"' , '"+salary+"')";
		    int rs = stmt.executeUpdate(sql);
		    
		    //if the result set is true username and password is availabale in the database
		    
		    if(rs > 0) {
		    	isSuccess = true;
		    }else {
		    	isSuccess = false;
		    }
		}
		catch(Exception e) {
			e.printStackTrace(); //Exception Handling
		}
		
		return isSuccess;
	}

	
	//update
	public static boolean update( String staffid, String name, String email,String phone,String username,String password, String salary){
		
	{
		try {
			/*,username='"+username+"',password='"+password+"'*/
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update salary set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"',salary='"+salary+"'where staffid='"+staffid+"'";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	}
	
	//retrieve data 
	public static  List<Staff> getstaffDetails(String staffid){
		

		int convertedID = Integer.parseInt(staffid);
		
		ArrayList<Staff> stf = new ArrayList<>();
		
		try {
			/*where staffid='"+staffid+"'"*/
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from salary where staffid='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int staffid1= rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				String salary = rs.getString(7);
				
				
				Staff s = new Staff(staffid1,name,email,phone,username,password,salary);
				stf.add(s);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return stf;
	}
	
	
	//delete
	public static boolean delete(String staffid) {
		
		int convId = Integer.parseInt(staffid); 
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from salary where staffid='"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	// last login.
		public static boolean validate1(String username, String password) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from salary where username='"+username+"' and password='"+password+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					isSuccess = true;
					
				}else {
					isSuccess = false;
				}
			}
			catch(Exception e){
				e.printStackTrace();
				
			}
			
			return isSuccess;
		}
		
		public static List<Staff>getstaff(String username){
			ArrayList<Staff> staff =new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from salary where username='"+username+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int staffid = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String username1 = rs.getString(5);
					String password = rs.getString(6);
					String salary = rs.getString(7);

					Staff stf = new Staff(staffid,name,email,phone,username1,password,salary);
				    staff.add(stf);
				}	
				
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
			return staff;
		}

		public static List<Staff> getstaffDetails(int staffid) {
			// TODO Auto-generated method stub
			return null;
		}


	
}


