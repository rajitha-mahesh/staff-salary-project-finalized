<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Account</title>

<!-- Bootstrap -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style type="text/css">
body {
	font-family: Hind SemiBold;
}

table, th, td {
	border: 1px solid black;
}

.deletebtn{
  background-color:green;
  color: white;
  padding: 20px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.7;
}

.deletebtn:hover{
  opacity:1;
}

.updatebtn{
  background-color:green;
  color: white;
  padding: 20px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.7; 
}

.updatebtn:hover{
  opacity:1;
}


</style>
</head>

<body>

<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="home.html" class="navbar-brand"> Staff Manaagement System </a>
			</div>
<!-- 
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
 -->
	</header>
	
	 
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->
  
		<div class="container">
			<h3 class="text-center">List of Salaries</h3>
			<hr>
			<div class="container text-left">

				<a href="Insert.jsp">Add
					New Salary</a>
			</div>
			<br>
			<!-- //loop creation
				 //what data should be looped -->
			<table class="table table-bordered"> 
		<c:forEach var="stf" items="${staffDetails}">

			<c:set var="staffid" value="${stf.staffid}" />
			<c:set var="name" value="${stf.name}" />
			<c:set var="email" value="${stf.email}" />
			<c:set var="phone" value="${stf.phone}" />
		    <c:set var="username" value="${stf.username}" />
			<c:set var="password" value="${stf.password}" />
			<c:set var="salary" value="${stf.salary}" />
			
		<!-- //access the staff class,it internally call the getmethod -->	
			<tr>
			<th>Staff ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>User name</th>
			<th>Password</th>
			<th>Salary</th>
			</tr>


			<tr>
				
				<td>${stf.staffid}</td>
				
				<td>${stf.name}</td>
				
				<td>${stf.email}</td>
				
				<td>${stf.phone}</td>
				
				<td>${stf.username}</td>
				
				<td>${stf.password}</td>
				
				<td>${stf.salary}</td>
			</tr>

		
		</c:forEach>
					
				</tbody>
				
			</table>
		</div>
	</div>
	
<!-- Connection to UpdateServlet StaffDBUtil DBConnect -->
	<c:url value="Update.jsp" var="staffupdate">
		<c:param name="staffid" value="${staffid}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
	    <c:param name="username" value="${username}" />
		<c:param name="password" value="${password}" />
		<c:param name="salary" value="${salary}" />
		


	</c:url>
    
    <!--Link to another page-->
	<a href="${staffupdate}"> 
	<input type="button" name="update" class="updatebtn" value="Update salary"><br>
	</a>

	<br>
	
	
<!-- Connection to DeleteServlet StaffDBUtil DBConnect -->	
	<c:url value="delete.jsp" var="staffdelete">
		<c:param name="staffid" value="${staffid}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
	    <c:param name="username" value="${username}" />
		<c:param name="password" value="${password}" />
		<c:param name="salary" value="${salary}" />
		

	</c:url>
	<a href="${staffdelete}"> 
	<input type="button" name="delete" class="deletebtn" value="Delete salary">
	</a>
	<br>
	<br>	

</body>
</html>