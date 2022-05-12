<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert staff salary</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- css styles -->

<style>	
    body{
    background-image: url('pexels-jess-bailey-designs-743986.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed; 
    background-size: 100% 100%;
        }


.Formcontain {
	margin-right:100px;
	padding: 16px;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 10px;
  margin: 5px  22px ;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  opacity: 0.5;
}



.regbtn {
  background-color:green;
  color: white;
  padding: 20px 10px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.7;
}

.regbtn:hover {
  opacity:1;
}


</style>

</head>
<body>

<!--Insert Form -->

<h1>Insert Salary</h1>
<div class="Formcontain">
    <form action="InsertServlet" method="post">
    
       <label for="staffid"><b>Staff ID</b></label><br>
       <input type="text" name="staffid" required><br>
       
       <label for="name"><b>Name</b></label><br>
       <input type="text" name="name" required><br>
       
       <label for="email"><b>Email</b></label><br>
       <input type="text" name="email" required><br>
       
       <label for="phone"><b>Phone</b></label><br>
       <input type="text" name="phone" required><br>
       
       <label for="username"><b>User Name</b></label><br>
       <input type="text" name="username" required><br>
       
       <label for="password"><b>Password</b></label><br>
       <input type="password" name="password" required><br>
       
       <label for="salary"><b>Salary</b></label><br>
       <input type="text" name="salary" required><br>
      
       
       <input type="submit" name="submit" class="regbtn" value="Add Salary">
       
      </form>
</div>
</body>
</html>