<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin insert</title>
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
<link rel="stylesheet" type="text/css" href="CSS/customerinsertNew.css">
</head>
<body>
	
	<header>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="login.jsp">Add Admin</a>
            <a href="login.jsp">Add Employee</a>
            <a href="#">Setting</a>
        </nav>
    </header>
	
	<div class="container">
		<div class="form-container">

			<form action="insert" method = "post">
				<h1>Add Admin</h1>
					<input type="text" name="name" placeholder="Name"><br>
					<input type="text" name="email" placeholder="Email"><br>
					<input type="text" name="phone" placeholder="Phone Number"><br>
				 	<input type="text" name="uid" placeholder="User Name"><br>
					<input type="text" name="psw" placeholder="Password"><br>
				
				<input type="submit" name="submit" value="Create Admin">	
			</form>
	
		</div>	
	</div>
	<footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>

</body>
</html>