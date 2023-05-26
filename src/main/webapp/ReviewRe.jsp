<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
</head>
<style>
*{
margin:0;
padding:0;
}
body{
background-color:#efefef;
font-family:sans-serif;
}
.contact-box
{
width:500px;
background-color:#fff;
box-shadow:0 0 20px 0 #999;
top:50%;
left:50%;
transform:translate(-50%,-50%);
position:absolute;
}
form{
margin:35px;

}
.input-field{
width:400px;
height:40px;
margin-top:20px;
padding-left:10px;
padding-right:10px;
border:1px solid #777;
border-radius:14px;
outline:none;
}
.textarea-field{
height:150px;
padding-top:10px;
}
.btn{
border-radius:20px;
color:#fff;
margin-top:18px;
padding:10px;
background-color:#47c35a;
font-size:12px;
border:none;
cursor:pointer;
}
</style>
<body>
<div class="contact-box">
<form action="Review" method="post">
<h1>Give Your Feedback</h1>
<input type="text"  class="input-field"  placeholder="Your Name">
<input type="email"   class="input-field" placeholder="Email">
<textarea type="text"  class="input-field textarea-field" placeholder="Your Message">
</textarea>
<input type="submit" value="Submit">
</form>

</div>
</body>
</html>