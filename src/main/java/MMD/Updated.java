package MMD;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updated
 */
@WebServlet("/Updated")
public class Updated extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Updated() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cname=request.getParameter("username");
		String contact=request.getParameter("mobilenumber");
		String email=request.getParameter("email");
		String location=request.getParameter("location");
		String gender=request.getParameter("gender");
		String servicetype=request.getParameter("servicetype");
		String timingslot=request.getParameter("timingslot");
		try {

			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookingSalon","root","ranjith");
			PreparedStatement ps = conn.prepareStatement("update Booking set username=?,email=?,location=?,gender=?,servicetype=?,timingslot=? where mobilenumber=?");
			ps.setString(1, cname);
			ps.setString(2,email );
			ps.setString(3,location );
			ps.setString(4,gender );
			ps.setString(5,servicetype);
			ps.setString(6,timingslot );
			ps.setString(7, contact);
			int r=ps.executeUpdate();
			PrintWriter out = response.getWriter();
			out.print("<html><body>");
			if(r>0)
			{
				out.print("<center><h1>Done</h1></center>");
			}
			else
			{
				out.print("<center><h1>Failed</h1></center>");
			}
			out.print("<html><body>");
			conn.close();
	}
catch(Exception e)
		{
		e.printStackTrace();
		}
	}
}
