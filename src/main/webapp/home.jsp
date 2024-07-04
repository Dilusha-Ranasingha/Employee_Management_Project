<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home page</title>
<style>
    body {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
        background-image: url('CSS/V.jpg'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
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

    .content {
        display: flex;
        /*justify-content: center;*/
        margin-left: 50px;
        align-items: center;
        height: calc(100vh - 80px); /* Adjusting for header and footer */
        margin-top: 50px; /* Adjusting for fixed header */
    }

    h1 {
        margin: 0;
        color: white;
        font-size: 8vw; /* Responsive font size based on viewport width */
        line-height: 1.2;
    }

    @media (max-width: 600px) {
        h1 {
            font-size: 10vw; /* Adjust font size for smaller screens */
        }
    }

    @media (min-width: 601px) and (max-width: 1024px) {
        h1 {
            font-size: 6vw; /* Adjust font size for medium screens */
        }
    }

    @media (min-width: 1025px) {
        h1 {
            font-size: 4vw; /* Adjust font size for larger screens */
        }
    }
</style>
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

    <div class="content">
        <h1>Manage Your<br>Company With<br>Us...!</h1>
    </div>
    
    <footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>
</body>
</html>
    