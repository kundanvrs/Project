<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="timestyle.css">
<title>Dashboard</title>
</head>
<body>
<div id="nav">
  
<a href="timesheet.jsp">TimeSheet</a>|  
<a href="logout.jsp">Logout</a>  
  </div>
  
  <%
  String[] userid={"tcs","kundan","kumar","singh"};
  String[] passid={"123","124","125","126"};
  
  String user=request.getParameter("uname");
  String passwd=request.getParameter("pass");
  session.setAttribute("name",user); 
  int count=0;
for(int i=0;i<userid.length;i++){
	
 if(user.equals(userid[i]) && passwd.equals(passid[i])){
	%>
<div>
<h1>Welcome , <%out.print(user); count++; %></h1>
</div>
	<%}
 
 }if(count==0){
		 response.sendRedirect("miss.jsp");
	 
 }
	%>
 
 
 
</body>
</html>