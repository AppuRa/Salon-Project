<%@page import="java.sql.*" %>
<%   
String contact=request.getParameter("mobilenumber");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/BookingSalon","root","ranjith");
Statement st=con.createStatement();
st.executeUpdate("delete from Booking where mobilenumber='"+contact+"'");
response.sendRedirect("viewappointment.jsp");
%>
<script>
alert("Data Deleted Done");

</script>