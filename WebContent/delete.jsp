<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>

<!-- css styles -->

<style>
.dform{
		position: relative;
 		left: 180px;
 		top:70px;
}

.deletebtn {
  		background-color:green;
  		color: white;
  		padding: 20px 10px;
  		margin: 8px 0;
  		border: none;
  		cursor: pointer;
  		width: 41%;
  		opacity: 0.7;
			}

.deletebtn:hover {
  		opacity:1;
			}

.container {
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
  		opacity: 0.8;
  		box-shadow: 0 0 20px 8px #d0d0d0;
			}

h1 {
  text-align: center;
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

	<%
		String staffid = request.getParameter("staffid");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String salary = request.getParameter("salary");
       
        
     %>

<h1>Staff salary Delete</h1>

	<div class="container">  
	<form action="DeleteServlet" class="dform" method="post">
	<table>
	
	  <tr>
		<td>Staff ID</td>
		<td><input type="text" name="staffid" value="<%= staffid %>"readonly></td> 
	  </tr>
	  
	  <tr>
		 <td>Name</td>
		 <td><input type="text"name="name" value="<%= name %>" readonly></td>
	  </tr>
	  
	  <tr>
	      <td>Email Address</td>
	      <td><input type="text" name="email" value="<%= email %>" readonly></td>
	  </tr>
	  
	  <tr> 
	      <td>Phone number</td>
	      <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	   </tr>
	 <tr> 
	      <td>User Name</td>
	      <td><input type="text" name="username" value="<%= username %>" readonly></td>
	   </tr>
	   <tr> 
	      <td>Password</td>
	      <td><input type="text" name="password" value="<%= password %>" readonly></td>
	   </tr>
	
	  <tr>
		  <td>Salary</td>
		  <td><input type="text" name="salary" value="<%= salary %>" readonly></td>
	  </tr>
	  
	  

    </table>

		<input type="submit" name="submit" class="deletebtn" value="Delete salary"><br>
	</form>
	</div>
</body>
</html>