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
    <form action="viewappointment" method="post">
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
                        <a href="Cus.jsp" class="column-1-text">Customers</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo3.jpg" style="width: 18px; height: 18px">
                        <a href="Emp.jsp" class="column-1-text">Employee</a>
                    </div>
                    <div id="dash" class="column-1-content">
                        <img src="lo2.jpg" style="width: 18px; height: 18px">
                        <a href="EmpSalary.jsp" class="column-1-text">Salary</a>
                    </div>
                </div>
            </aside>
            <body style="background:rgba(0,0,0,0.5)url('ser.jpg');background-blend-mode:darken">
	<div align="center" style="float:right">
	<a href="BookAppointment.jsp" style="text-decoration: none"><input style="height:50px;width:300px;font-size:30px" type="button" value="BOOK NOW"></a> 
	</div>
	
	<section style="padding-bottom:200px"><aside>
	
		<h1 style="font-weight: bold">HAIR
			CUT&FINISH</h1>
			<ul><li>Cut and Hair Care</li>
			<li>Shampoo & Conditioning</li>
			<li>Head Massage</li>
			<li>Beard Styling</li>
			</ul></aside>
		<aside><h1 style=" font-weight: bold">HAIR
			COLOUR</h1>
			<ul><li>Hair Colour
                (Ammonia & Ammonia Free)</li>
             <li>Hi - Lites</li>
             <li>Beard Colour</li>
             <li>Hair/Beard Colouring</li>
             </ul></aside>
		<aside><h1 style=" font-weight: bold">HAIR
			TEXTURE</h1>
			<ul><li>Straightening</li>
			<li>Smoothening</li>
             <li>Rebonding</li>	
             <li>Perming</li>		
			</ul></aside></section>
		<section><aside><h1
			style=" font-weight: bold">HAIR
			TREATMENT</h1>
			<ul><li>Hair Spa</li>
                  <li> Advanced Moisturising</li>
                  <li>Scalp Treatments</li>
                  <li>Colour Protection</li></ul>
			</aside>
		<aside><h1 style=" font-weight: bold">SKIN
			CARE</h1>
			<ul><li>Clean Ups</li>
                <li>Facials</li>
                 <li>Organic Treatments</li>
                <li>Manicure</li></ul></aside>
		<aside><h1>BEARD
			GROOMING</h1>
			<ul><li>Beard Trim</li>
		<li>Beard Colour</li>
            <li>Beard Styling</li>
              <li>Shave</li></ul>
			</aside>
	</section>
	
        </section>

    </form>
</body>

</html>