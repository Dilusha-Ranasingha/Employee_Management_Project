<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
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
<link rel="stylesheet" type="text/css" href="CSS/useraccountNew.css">
	<script type="text/javascript">
		function goToLogin() {
			window.location.href = 'login.jsp';
		}
	</script>
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
	
	<div class="container">
		<!-- loop_the_data_set_from_the_list_where_data_store_from_the_database%> -->
		<table class="employee-table">
		<h1>Admin details</h1>
		<c:forEach var="cus" items="${cusDetails}">
		
		<c:set var="id" value="${cus.id}" />
		<c:set var="name" value="${cus.name}" />
		<c:set var="email" value="${cus.email}" />
		<c:set var="phone" value="${cus.phone}" />
		<c:set var="username" value="${cus.userName}" />
		<c:set var="password" value="${cus.password}" />
		
		<tr>
			<td>Customer ID :</td>
			<td>${cus.id}</td>
		</tr>
		<tr>
			<td>Customer Name:</td>
			<td>${cus.name}</td>
		</tr>
		<tr>
			<td>Customer Email:</td>
			<td>${cus.email}</td>
		</tr>
		<tr>
			<td>Customer Phone:</td>
			<td>${cus.phone}</td>
		</tr>
		<tr>
			<td>Customer UserName:</td>
			<td>${cus.userName}</td>
		</tr>
		<tr>
			<td>Customer Password:</td>
			<td>${cus.password}</td>
		</tr>
			
		</c:forEach>
		</table>
		
		<c:url value="updatecustomer.jsp" var="cusupdate">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="uname" value="${username}"/>
			<c:param name="pass" value="${password}"/>
		</c:url>
		<a href="${cusupdate}"> 
		<input class="update-btn" type="button" name="update" value="Update My Data">
		</a>
		
		
		<c:url value="deletecustomer.jsp" var="cusdelete">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="uname" value="${username}"/>
			<c:param name="pass" value="${password}"/>
		</c:url>
		<a href="${cusdelete}">
		<input class="delete-btn" type="button" name="delete" value="delete My Account">
		</a><br>
		
		<div class="button-container">
			<button class="action-btn" onclick="goToLogin()">Go Back</button>
		</div>
	</div>
	<footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>

</body>
</html>