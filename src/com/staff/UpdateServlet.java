package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
//Inheritance
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String staffid = request.getParameter("staffid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String salary = request.getParameter("salary");
		
		
		boolean isTrue;
		//isTrue = StaffDBUtil.update(staffid, name, email, phone, username, password, salary);
		isTrue = StaffDBUtil.update(staffid, name, email, phone, username, password, salary);		
		if(isTrue == true) {
			
			List<Staff> staffDetails = StaffDBUtil.getstaffDetails(staffid);
			request.setAttribute("staffDetails", staffDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("StaffAcc.jsp");
			dis.forward(request, response);
		}
		else {
			List<Staff> staffDetails = StaffDBUtil.getstaffDetails(staffid);
			request.setAttribute("staffDetails", staffDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("StaffAcc.jsp");
			dis.forward(request, response);
			
		}
	}

}
