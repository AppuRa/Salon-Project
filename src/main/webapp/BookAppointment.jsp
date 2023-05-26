<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOKING</title>
<style>
input {
	height: 25px;
	background-color: #cfcbc0;
	color: #080808;
	font-size: 20px;
}

h2 {
	color: #6ff268;
}

select {
	width: 250px;
	height: 30px;
	background-color: #cfcbc0;
	font-size: 20px;
}
</style>
</head>
<body
	style="background: rgba(0, 0, 0, 0.5) url('image1.jpg'); background-blend-mode: darken">
	<form action="Bookappoint" method="post">
		<center>
			<h1 style="color: white; font-size: 40px">
				Let's not wait for the "Perfect Look"<br> Book An Appointment
				Now!
			</h1>
		</center>

		<table align="center">
			<tr>
				<td><h2>Customer Name :</h2></td>
				<td><input type="text" name="username"></td>
				<td></td>
				<td></td>
				<td><h2>Contact :</h2></td>
				<td><input type="text" name="mobilenumber"></td>
			</tr>

			<tr>
				<td><h2>Email :</h2></td>
				<td><input type="Email" name="email"></td>
				<td></td>
				<td></td>
				<td><h2>Location :</h2></td>
				<td><input type="text" name="Location">
				<td></td>
				<td></td>		
				</select></td>
			</tr>

			<tr>
				<td><h2>Gender :</h2></td>
				<td><select name="gender">
						<option hidden>SELECT</option>
						<option>MALE</option>
						<option>FEMALE</option>
				</select></td>
				<td></td>
				<td></td>
				<td><h2>Service Type :</h2></td>
				<td><select name="servicetype">
						<option hidden>SELECT</option>
						<option>HAIR CUT&FINISH</option>
						<option>HAIR COLOUR</option>
						<option>HAIR TEXTURE</option>
						<option>HAIR TREATMENT</option>
						<option>SKIN CARE</option>
						<option>BEARD GROOMING</option>
				</select></td>
			</tr>
			<td><h2>Timing Slot :</h2></td>
				<td><select name="timingslot">
						<option hidden>AVAILABILITY</option>
						<option>9.00 to 10.00</option>
						<option>10.00 to 11.00</option>
						<option>11.00 to 12.00</option>
						<option>12.00 to 1.00</option>
						<option>2.00 to 3.00</option>
						<option>3.00 to 4.00</option>
				</select></td>
			</tr>
			<tr></tr>
			<tr></tr>


		</table>
		<div align="center" style="padding-top: 40px">
			<input 
				style="height: 40px; width: 120px; background-color: #1a07ed; color: #eb020a; font-size: 20px"
				type="submit" name="Login">
		</div>
	</form>
</body>
</html>
