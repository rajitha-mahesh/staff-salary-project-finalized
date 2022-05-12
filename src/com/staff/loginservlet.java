package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//controller class
//pass the data to the database/model
//get the relevant values from the staff class through the object
//return back data after data validation
//when the user enters username and password enters to this.

@WebServlet("/loginservlet")
//Inheritance 
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//catch username and password from the login jsp
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try { // exception handling
		    List<Staff> staffDetails = StaffDBUtil.validate(username, password);
		    request.setAttribute("staffDetails", staffDetails);
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("StaffAcc.jsp");
		dis.forward(request, response);

	}

}
