<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#dash:hover {
	color: ghostwhite;
	font-size: 30px;
}

#dash {
	text-align: left;
	font-size: 20px;
}

#admin {
	text-align: left;
}

#dept {
	width: 100%;
	display: inline-block;
}

#dept aside {
	display: inline-block;
	border: solid black 1px;
	height: 120px;
	margin: 0px 30px 0px 30px;
}

#dept1 {
	padding: 0px 60px 0px 60px;
}
</style>
</head>


<body style="background-color: #d9d7de; height: 500px">
	<form action="viewappointment" method="post">
		<div style="width: 100%; height: auto">
			<header
				style="width:100%;height:50px;background-color:#6308bf;color:#FFFAF0;font-size:42px;padding-left:10px">
			<a>Habibi Saloon</a> <a href="Login.html"
				style="text-decoration: none; padding-left: 930px; font-size: 25px; color: white">
				<img src="logout-512.png" style="width: 18px; height: 18px">&nbsp
				Sign Out
			</a> </header>
			<section style="width:100%;height:500px;"> <aside
				style="float:left;width:226px;height:600px;background-color:#1b1c1c">
			<div id="admin" style="background-color: #070808; height: 90px">
				<img src="admin.jpg"
					style="width: 30px; hieght: 40px; padding: 20px 1px 1px 10px;"><b
					style="color: #F0FFF0; margin: 0px 10px 30px 10px; font-size: 20px">&nbsp
					Administrator</b>
			</div>
			<br>
			<div style="height: 465px">
				<h3 id="dash">
					<img src="dashboard-512.png" style="width: 18px; height: 18px"><a
						href="viewappointment.jsp"
						style="text-decoration: none; color: white">&nbsp Appointment</a>
				</h3>
				<br>
				<h3 id="dash">
					<img src="lo1.png" style="with: 18px; height: 18px"><a
						href="viewappointment.jsp" style="text-decoration: none; color: white">&nbsp
						Services</a>
				</h3>
				<br>
				<h3 id="dash">
					<img src="Stafs.png" style="width: 18px; height: 18px"><a
						href="Staff.jsp" style="text-decoration: none; color: white">&nbsp
						Customres</a>
				</h3>
				<br>
				<h3 id="dash">
					<img src="rupee-512.png" style="width: 18px; height: 18px"><a
						href="Salary.jsp" style="text-decoration: none; color: white">&nbsp
						Employee</a>
				</h3>
				<br>
				<h3 id="dash">
					<img src="" style="width: 18px; height: 18px"><a
						href="Leave.jsp" style="text-decoration: none; color: white">&nbsp
						Salary</a>
				</h3>
				<br>
			</div>
			</aside>
</head>
<body>
<center><table border=1><tr><td><h1 style=color:red>CustomerName</td>
<td><h1 style=color:red>MobileNumber</td>
<td><h1 style=color:red>Email</td>
<td><h1 style=color:red>Location</td>
<td><h1 style=color:red>Gender</td>
<td><h1 style=color:red>Servicetype</td>
<td><h1 style=color:red>Timing Slot</td>
			</tr>
			</table>			
</body>
</html>