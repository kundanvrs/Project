<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>process</title>
</head>
<body>
<%@page import="java.io.*"%>
<%@page import="javax.xml.*"%>
<%@page import="org.w3c.*"%>
<%@ page errorPage="error.jsp" %>  
<%
String project=request.getParameter("project");
String dates=request.getParameter("dates");
String names=request.getParameter("names");
String name2=request.getParameter("name2");
String appt=request.getParameter("appt");
String wbs=request.getParameter("wbs");
String net=request.getParameter("net");
String recive=request.getParameter("recive");
String disc=request.getParameter("disc");
String att=request.getParameter("att");
String repotime=request.getParameter("repotime");
String activity=request.getParameter("activity");
String attype=request.getParameter("attype");
String operate=request.getParameter("operate");
String suboperate=request.getParameter("suboperate");
String operatext=request.getParameter("operatext");
String shortxt=request.getParameter("shortxt");

DocumentBuilderFactory dbFactory =
DocumentBuilderFactory.newInstance();
DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
Document doc = dBuilder.newDocument();

Element rootElement = doc.createElement("timesheet");
doc.appendChild(rootElement);

Element empname = doc.createElement("empname");
rootElement.appendChild(empname);
Attr attr = doc.createAttribute("name");
attr.setValue("Md Sajid");
empname.setAttributeNode(attr);

Element project = doc.createElement("project");
project.appendChild(doc.createTextNode("jjjjjjjjjjjjjjjjjjjjjjjjjjjjj"));
empname.appendChild(project);


TransformerFactory transformerFactory = TransformerFactory.newInstance();
Transformer transformer = transformerFactory.newTransformer();
DOMSource source = new DOMSource(doc);
StreamResult result = new StreamResult(new File("D:\\TimeSheet\\test.xml"));
transformer.transform(source, result);
%>
<%
StreamResult consoleResult = new StreamResult(System.out);
transformer.transform(source, consoleResult);
      
%>
</body>
</html>