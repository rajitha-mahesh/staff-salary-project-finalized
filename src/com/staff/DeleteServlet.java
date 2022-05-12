package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")

//Inheritance
//HttpServlet inherit from DeleteServlet
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String staffid =request.getParameter("staffid");
		boolean isTrue;
		
		isTrue = StaffDBUtil.delete(staffid);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("StaffAcc.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Staff> staffDetails = StaffDBUtil.getstaffDetails(staffid);
			request.setAttribute("staffDetails", staffDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("StaffAcc.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	

}
