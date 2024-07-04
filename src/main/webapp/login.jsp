<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" type="text/css" href="CSS/login.css">

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
	
	 <div class="container" id="container">
	 	<div class="form-container A-login">
	 	
			<form action="log" method="post">
				<h1>Admin Login</h1>
				<input type="text" name="uid" placeholder="User Name">
				<input type="password" name="pass" placeholder="Password">
				<input type="submit" name="submit" value="Login">
			</form>
		</div>
		
		<div class="form-container p-login">
			<form action="logtoedit" method="post">
				<h1>Edit Profile</h1>
				<input type="text" name="uid" placeholder="User Name ">
				<input type="password" name="pass" placeholder="Password">				
				<input type="submit" name="submit" value="Login">
			</form>
		</div>
		
		<div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Manage Profile!</h1>
                    <p>You can manage your personal details from here</p>
                    <button class="hidden" id="EditeProfile">Edit Profile</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Admin!</h1>
                    <p>Login with your credentials to manage the employee</p>
                    <button class="hidden" id="AdminLogin">Admin Login</button>
                </div>
            </div>
        </div>
        
	</div>
	<footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>
	
	
	<script src="CSS/script.js"></script>


</body>
</html>