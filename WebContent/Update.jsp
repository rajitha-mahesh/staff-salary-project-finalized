<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--Update Styles-->	
	<meta charset="ISO-8859-1">
	<title>update salary</title>
	<style type="text/css">

	.uform{
		position: relative;
 		left: 180px;
 		top:70px;
			}
	
	.updatebtn {
  		background-color:green;
  		color: white;
  		padding: 20px 10px;
  		margin: 8px 0;
  		border: none;
  		cursor: pointer;
  		width: 41%;
  		opacity: 0.7;
			}

	.updatebtn:hover {
  		opacity:1;
			}
		
	table {
  			border-collapse: collapse;
		}

	table, th, td {
		  border: 1px solid black;
		}
	
	h1 {
  	text-align: center;
		}
	
	.container 
	{
  	
  		position: absolute;
  		left: 50%;
  		top: 50%;
  		transform: translate(-50%, -50%);
  		height: 400px;
  		width: 600px;
  		background: #f2f2f2;
  		overflow: hidden;
  		border-radius: 20px;
  		cursor: pointer;
  		box-shadow: 0 0 20px 8px #d0d0d0;
  		opacity: 0.8;
	}
	
	body
        {
        background-image: url('61769.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-size: 100% 100%;
        }
	
	</style>
</head>
<body>

<h1>Update Salary</h1>

	<%
		String staffid = request.getParameter("staffid");		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password"); 
		String salary = request.getParameter("salary");
	%>
	<!-- Update form -->
	<div class="container">  
	<form action="UpdateServlet" class="uform" method="post">
	<table>
		<tr>
			<td>Staff ID</td>
			<!-- Frontend validation -->
			<td><input type="text" name="staffid" value="<%= staffid %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
	<td>User name</td>
		<td><input type="text" name="username" value="<%= username %>" readonly></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" value="<%= password %>" readonly></td>
	</tr>
	
	<tr>
		<td>Salary</td>
		<td><input type="text" name="salary" value="<%= salary %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" class="updatebtn" value="Update salary">
	</form>
	</div>
</body>
</html>