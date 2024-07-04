package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eid = request.getParameter("eid");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteemployee(eid);
		
		if(isTrue == true) {
			
			List<Employee> empDetails = CustomerDBUtil.getAllEmployee();
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("mianpage.jsp");
			dis.forward(request, response);
		}
		else {
			List<Employee> empDetails = CustomerDBUtil.getAllEmployee();
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("mianpage.jsp");
			dis.forward(request, response);
		}
	}

}
