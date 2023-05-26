<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
    <title>Insert title here</title>
    <style>
        body {
            height: 100vh;
            display: inline-block;
            width: 100%;
            margin: 0px;
            background-color: rgb(144, 144, 144);
            font-family: 'Montserrat', sans-serif;
        }

        .section-style {
            min-height: calc(100vh - 80px);
            display: flex;
        }

        .header-style {
            padding: 0rem 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header-logo {
            width: 40%;
            float: left;
            font-family: algerian;
        }

        .header-button {
            width: 60%;
            float: right;
        }

        .column-1 {
            width: 20%;
            background-color: #F0F8FF;
            border: 0.1px solid #D8DFE5;
        }

        .column-2 {
            width: 80%;
            float: left;
            background-color: #F6F6F6;
        }

        .column-1-header {
            background-color: #D8DFE5;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            padding: 2rem 1rem;
        }

        .column-1-content {
            /* background-color: #F0F8FF; */
            display: flex;
            align-items: center;
            justify-content: flex-start;
            padding: 1.5rem 1rem;
            border: 0.1px solid #D8DFE5;
        }

        .admin-text {
            color: #36454F;
            font-size: 1.2rem;
            margin-left: 1rem;
        }

        .column-1-text {
            color: #36454F;
            text-decoration: none;
            font-size: 1rem;
            margin-left: 1rem;
        }

        .column-1-content:hover {
            background-color: rgb(226 241 255);
        }

        .column-2-header {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            padding: 1rem;
            color: #36454F;
            font-size: 1.5rem;
        }

        .column-2-section-2 {
            height: calc(100% - 61px);
            background-color: #F6F6F6;
            display: flex;
            justify-content: flex-start;
            flex-wrap: wrap;
            align-items: baseline;
        }

        .column-2-section-2-card {
            font-size: 1rem;
            padding: 1rem;
            background-color: #FAF9F8;
            display: inline-block;
            border: solid black 1px;
            min-height: 30vh;
            margin: 1rem;
            min-width: 20%;
        }
    </style>
</head>

<body>
    <form action="ViewAppointment" method="post">
        <header class="header-style">
            <div class="header-logo">
                <h1 style="color:#d8dbf4">HABIBI SALON</h1>
            </div>
            <div class="header-button">
                <h1 style="text-align: right">
                    <a href="Login.html" style="text-decoration: none;font-size: 25px; color: white">
                        <i class="fa fa-user"></i> Logout
                    </a>
                </h1>

            </div>
        </header>
        <section class="section-style">
            <aside class="column-1">
                <div id="admin" class="column-1-header">
                    <!-- <i class="fas fa-user-cog"></i> -->
                    <img src="admin.jpg" style="width: 20px; height: 20px;">
                    <b class="admin-text">Administrator</b>
                </div>
                <div>
                    <div id="dash" class="column-1-content">
                        <img src="lo5.png" style="width: 18px; height: 18px">
                        <a href="viewappointment.jsp" class="column-1-text">Appointment</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo1.png" style="with: 18px; height: 18px">
                        <a href="Services.jsp" class="column-1-text">Services</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo4.jpg" style="width: 18px; height: 18px">
                        <a href="viewappointment.jsp" class="column-1-text">Customers</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo3.jpg" style="width: 18px; height: 18px">
                        <a href="Emp.jsp" class="column-1-text">Employee</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo2.jpg" style="width: 18px; height: 18px">
                        <a href="NewFile1.jsp" class="column-1-text">Salary</a>
                    </div>
                </div>
            </aside>
            <section class="column-2">
                <aside class="column-2-header"> <b>Welcome to Habibi Salon</b> </aside>
			<section style="width:83%;height:600px;float:left">
			<div>
				<h2 style="font-size: 30px">Customar Details</h2>
				<hr>

			</div>
			<br>

			<table rules="colounm" border="2" align="center" width="1000"
				height="200">
				<tr>
					<th>Customar Name</th>
					<th>Mobile No</th>
					<th>Email</th>
					<th>Location</th>
					<th>Gender</th>
					<th>ServiceType</th>
					<th>Timing Slot</th>
				</tr>

				<%@ page import="java.sql.*"%>
				<%@ page import="java.util.*"%>
				<%@ page import="javax.sql.*"%>
				<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookingSalon", "root", "ranjith");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from Booking");
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td align="center"><a href="EditPage.jsp">Edit</a>      <a
						href="Delete.jsp?mobilenumber=<%=rs.getString("mobilenumber")%>">Delete</a></td>
				</tr>
				<%
				}
				%>

			</table>
		</div>
		</div>
		</section>
		</section>
</body>
</html>