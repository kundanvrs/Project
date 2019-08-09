<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="timestyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Yourself</title>
</head>
<body>
<div id="nav">
<a href="login.jsp">login</a>|   
<a href="admin.jsp">Admin</a>  
  </div>
<hr/> 
<div class="show">
<h1>Register Yourself</h1>
</div> 
<div id="top" class="center">
  <form action="dashboard.jsp">
    <label for="user">Employee Id :</label>
    <input type="text" id="uname" name="uname" placeholder="Username..">
<br>
	<label for="user">Project :</label>
    <input type="text" id="proj" name="proj" placeholder="Project Name ..">
 
 <br>
    <label for="passwd">Password :</label>
    <input type="text" id="pass" name="pass" placeholder="password..">
 <br>
    <label for="passwd">Confirm  :</label>
    <input type="text" id="pass" name="pass1" placeholder="Confirm password..">

  <br>
    <input type="submit" value="Register">
  </form>
</div>

</body>
</html>