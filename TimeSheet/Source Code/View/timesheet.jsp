<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
input{
padding: 8px;
margin: -2%;

width: auto;
}
.dropdown{
margin: -2%;

text-align: center;
margin-right: -5%;
}

</style>
    <script src="/style.js"></script>
<link rel="stylesheet" type="text/css" href="timestyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Timesheet</title>
</head>


<body>
<div id="head" class="center">
<h1>TimeSheet Entry</h1>
</div>
<div id="nav">
<a href="logout.jsp">logout</a>|
</div>
<hr/> 
<div>
<%
String user=(String)session.getAttribute("name");  
%>
<h1>Welcome ,<%if(user==null){
	response.sendRedirect("index.jsp");
}else{out.print(user); }%></h1>
</div>
<div class="center"> 
<form action="XmlFileWriter" method="get">
<table id="timesheet">
<tr>
   <th>Project</th>
   <td id="inbox">
	   
		<select id="project" class="dropdown" >
	  		<option>94364114 -  ECB Unbillable and Vacation</option>
			<option>94571247 - Xerox Metranet PrePass</option>
			<option>95004511 - PGI Support</option>
			<option>95208624 - Choice - Managed Infrastructure</option>
			<option>95209359 - Choice Hotels Professional Services</option>
			<option>95223047 - ECB 17.0 R&D </option>
			<option>95251364 - I&S Drive Sweden.</option>
			<option>95542661 - Hub One - Realisation</option>
			<option>95608788 - Zain MEW CSI Phase 1 ECB Services</option>
			<option>95612027 - DTCC SOW 12</option>
			<option>95825084 - Global Professional Service - ECB</option>
			<option>95905598 - Port of Ashdod</option>
			<option>96158984 - Achilles MetraNet Support 2018</option>
			<option>96342356 - ETEB UDN</option>
			<option>96445953 - BAE ITSAE</option>
			<option>95209359 - Choice Phase2 dev and test</option>
			<option>4743039 - Choice Phase1 issues</option>
			<option>4743038 - ECB Core issues</option>
			<option>96753392 - Xerox MetraNet PrePass – CO-08</option>
			<option>97149070 - Choice CO-05</option>
		</select>
	</td>
</tr>
<tr>
	<th>Name</th>
      <td>
	   
		<select id="names" class="dropdown">
				<option >Rustam Iminov</option>
				<option>Arthur Koenig</option>
				<option>Chris Parker</option>
				<option>Joe Simmons</option>
				<option>Robert Ward</option>
				<option>Scott Evilsizer</option>
				<option>Sontipong Tangpornsin</option>
				<option>Alekhya Badugu</option>
				<option>Dhanalakshmi Badam</option>
				<option>Felix Arochiaraj</option>
				<option>Harish Mosangi</option>
				<option>Narasaiah Reddy</option>
				<option>Pujitha Yerramsetti</option>
				<option>Rajaram Thatikonda</option>
				<option>Ramesh Madasu</option>
				<option>Sajid Md</option>
				<option>Sowmya Pujari</option>
				<option>Sri Lakshmipathi Rajan</option>
				<option>Srushti Swami</option>
				<option>Swastik Pattnaik</option>
				<option>Yamini Burugupalli</option>
				<option>Gautam putcha </option>
		</select>
	</td>
</tr>

<tr>
	<th>Date</th>
    <td><input type="date" name="dates"></td>
</tr>
<tr>
    <th>Hours</th>
    <td><input type="time" id="appt" name="appt"
       min="00:00" max="08:00" required></td>
</tr>
<tr>
     <th>WBS Dummy</th>
    <td>
	  
		<select id="wbs" class="dropdown">
	  	<option value="ahghas asgfjasf ajgfjasgf ">
	 	 <option value="aghdfghasd ahfds hfadh ahdsf ha">
	  	<option value="gfaskhfa asdfu aukybdsavuk dabkv dva">
	 	 <option value="o;asjd; aioj fd;iahdfaifhuiafh ">
	  	<option value="lasfhud asdffj asdfuas alusbf">
		</select>
	</td>
<tr>
    <th>Network</th>
 	<td>
	   
		<select id="net" class="dropdown">
	  	<option value="ouGD FAUSYDG FSDG AS F">
	 	 <option value="9HJASF ASF DAJS FSGYDSYUDFBVC GSDCV YDS YGAVC">
	  	<option value="JASDV DAYSF ASDH AYUSGHA">
	 	 <option value="HBJVVVVCGYD AYD VYSTAFYVGY">
	  	<option value="ASYFDYF AF GYDFSU">
		</select>
	</td>
</tr>
<tr>
    <th>Receiver Order</th>
    <td>
	  
		<select id="recive" class="dropdown">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Network description</th>
   <td>
	   
		<select id="net-disc" class="dropdown">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Att./abs. type text</th>
  	<td>
	   
		<select id="att">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Reporting Time Type Text</th>
	<td>
	   
		<select id="repotime">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Activity Type</th>
 	<td>

		<select id="activity">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Att./Absence type</th> 
    <td>
	
		<select id="att-type">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
     <th>Operation/Activity</th>
     <td>
	 
		<select id="operate">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Suboperation</th>
    <td>
	   
		<select id="suboperate">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
     <th>Operation short text</th>
     <td>
	  
		<select id="operatext">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>
<tr>
    <th>Short Text</th>
    <td>
	
		<select id="short">
	  	<option value="94364114 -  ECB Unbillable and Vacation">
	 	 <option value="95209359 - Choice Phase2 dev and test">
	  	<option value="97149070 - Choice CO-05">
	 	 <option value="94571247 -Xerox Metranet PrePass">
	  	<option value="Safari">
		</select>
	</td>
</tr>



</table>
<input type="submit" value="Add Details" style="background-color:blue;margin-left:60px;">
</form>
</div>
<br>
<br>
</body>
</html>