<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="timestyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body>
<div id="nav">
<a href="register.jsp">Register</a>|  
<a href="admin.jsp">Admin</a>  
  </div>

<hr/>  
<div id="top" class="center">
  <form action="dashboard.jsp">
    <label for="user">Username :</label>
    <input type="text" id="uname" name="uname" placeholder="Username..">
<br>
    <label for="passwd">Password :</label>
    <input type="text" id="pass" name="pass" placeholder="password..">

  <br>
    <input type="submit" value="login">
  </form>
</div>
</body>
</html>