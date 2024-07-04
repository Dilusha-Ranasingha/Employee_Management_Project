package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MainPageServlet")
public class MainPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;

		isTrue = CustomerDBUtil.validateLogin(username, password);

		if (isTrue == true) {
			List<Employee> empDetails = CustomerDBUtil.getAllEmployee();
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("mianpage.jsp");
			dis.forward(request, response);

		} else {
			out.print("<script type= 'text/javascript'>");
			out.print("alert('All Employees are not rirtive');");
			out.print("location='login.jsp'");
			out.print("</script>");

		}
	}

}
