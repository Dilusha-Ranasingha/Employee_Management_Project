<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style>
	    body {
	        margin: 0;
	        padding: 0;
	        box-sizing: border-box;
	        font-family: 'Montserrat', sans-serif;
	    }
	    
	    header {
	        background-color: #512da8;
	        color: white;
	        padding: 10px 0;
	        text-align: center;
	        position: fixed;
	        top: 0;
	        width: 100%;
	        z-index: 1000; /* Ensure header stays above other content */
	    }
	
	    header nav {
	        display: flex;
	        justify-content: center;
	        align-items: center;
	    }
	
	    header nav a {
	        color: white;
	        text-decoration: none;
	        padding: 10px 40px;
	        font-size: 24px;
	        margin: 0 40px; /* Adding space between navigation items */
	        transition: background-color 0.3s ease;
	    }
	
	    header nav a:hover {
	        background-color: #785eb4;
	        border-radius: 5px;
	    }
		
	    .footer {
	        background-color: #512da8;
	        color: #fff;
	        text-align: center;
	        padding: 10px 0;
	        width: 100%;
	        position: fixed;
	        bottom: 0;
	        left: 0;
	        border-top: 2px solid #fff;
	    }
	
	    .footer p {
	        margin: 0;
	        font-size: 14px;
	        letter-spacing: 0.5px;
	    }
</style>
<link rel="stylesheet" type="text/css" href="CSS/updateemployeeNew.css">
</head>
<body>
	
	<header>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="customerinsert.jsp">Add Admin</a>
            <a href="login.jsp">Add Employee</a>
            <a href="setting-new-admin">Setting</a>
        </nav>
    </header>
    
	<%
		String eid = request.getParameter("eid");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String adres = request.getParameter("adres");
		String slry = request.getParameter("slry");
	%>
	
	<div class="container">
		<div class="form-container">
			<form action="updateemp" method= "post">
				<h1>Update Employee</h1>
				Employee ID: <input type="text" name="eid" value="<%= eid %>" readonly ><br>
				Employee Name: <input type="text" name="name" value="<%= name %>" ><br>
				Employee Age: <input type="text" name="age" value="<%= age %>" ><br>
				Employee Email: <input type="text" name="email" value="<%= email %>" ><br>
				Employee Phone Number: <input type="text" name="phone" value="<%= phone %>" ><br>
				Employee Address: <input type="text" name="adres" value="<%= adres %>" ><br>
				Employee Salary: <input type="text" name="slry" value="<%= slry %>" ><br>
				
				<input type="submit" name="submit" value="Update Employee" >
			</form>
		</div>
	</div>
	<footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>

</body>
</html>