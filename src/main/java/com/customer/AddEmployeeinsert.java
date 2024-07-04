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

@WebServlet("/AddEmployeeinsert")
public class AddEmployeeinsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String adres = request.getParameter("adres");
        String slry = request.getParameter("slry");

        boolean isTrue;
        isTrue = CustomerDBUtil.insertemployee(name, age, email, phone, adres, slry);

        if (isTrue) {
        	List<Employee> empDetails = CustomerDBUtil.getAllEmployee(); // Fetch the updated list of employees
            request.setAttribute("empDetails", empDetails); // Set the updated list as a request attribute
            RequestDispatcher dis = request.getRequestDispatcher("mianpage.jsp");
            dis.forward(request, response);
        } else {
            out.print("<script type='text/javascript'>");
            out.print("alert('Employee insert is unsuccessful');");
            out.print("location='mianpage.jsp';");
            out.print("</script>");
        }
    }
}
