<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Main page</title>
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
	<link rel="stylesheet" type="text/css" href="CSS/mainpageNew.css">
	<script type="text/javascript">
		function goToAddEmployee() {
			window.location.href = 'addEmployee.jsp';
		}
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
		<h1>Manage Employees</h1>
		
		<table class="employee-table">
		<tr>
			<th>Employee ID</th>
			<th>Customer Name</th>
			<th>Employee Age</th>
			<th>Employee Email</th>
			<th>Employee Phone</th>
			<th>Employee Address</th>
			<th>Employee Salary</th>
			<th>Employee Action</th>
		</tr>
		
		<c:forEach var="emp" items="${empDetails}">
		
		<c:set var="eid" value="${emp.eid}" />
		<c:set var="name" value="${emp.name}" />
		<c:set var="age" value="${emp.age}" />
		<c:set var="email" value="${emp.email}" />
		<c:set var="phone" value="${emp.phone}" />
		<c:set var="adres" value="${emp.adres}" />
		<c:set var="slry" value="${emp.slry}" />
		
		<tr>
			<td>${emp.eid}</td>
			<td>${emp.name}</td>
			<td>${emp.age}</td>
			<td>${emp.email}</td>
			<td>${emp.phone}</td>
			<td>${emp.adres}</td>
			<td>${emp.slry}</td>
			<td>
				<c:url value="updateemployee.jsp" var="empupdate">
				<c:param name="eid" value="${eid}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="age" value="${age}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="adres" value="${adres}"/>
				<c:param name="slry" value="${slry}"/>
				</c:url>
				<a href="${empupdate}"> <input class="update-btn" type="button" name="update" value="Update"></a>
		
		
				<c:url value="deleteemployee.jsp" var="empdelete">
				<c:param name="eid" value="${eid}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="age" value="${age}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="adres" value="${adres}"/>
				<c:param name="slry" value="${slry}"/>
				</c:url>
				<a href="${empdelete}"><input class="delete-btn" type="button" name="delete" value="Delete"></a>
				
			</td>
		</tr>
			
		</c:forEach>
		</table>
		
		<div class="button-container">
			<button class="action-btn" onclick="goToAddEmployee()">Add Employee</button><br>
			<button class="action-btn" onclick="goToLogin()">Go Back</button>
		</div>
	
	</div>
	
	<footer class="footer">
        <p>&copy; 2022 This is the Employee Management Website</p>
    </footer>

</body>
</html>