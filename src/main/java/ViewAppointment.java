
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewAppointment
 */
@WebServlet("/ViewAppointment")
public class ViewAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	static final String DB_URL = "jdbc:mysql://localhost:3306/BookingSalon";
	static final String USER = "root";
	static final String PASSWORD = "ranjith";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
			PreparedStatement ps = conn.prepareStatement("select * from Booking");
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();
			out.println(
					"<html><body><center><table border=1><tr><td><h1 style=color:red>CustomerName</td><td><h1 style=color:red>MobileNumber</td><td><h1 style=color:red>Email</td><td><h1 style=color:red>Location</td><td><h1 style=color:red>Gender</td><td><h1 style=color:red>Servicetype</td><td><h1 style=color:red>Timing Slot</td>");
			while (rs.next()) {
				out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3)
						+ "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6)+"</td><td>" + rs.getString(7)
						+ "</td></tr>");

			}
			out.println("</table></body></html>");

		} catch (Exception e) {

		}
	}
}