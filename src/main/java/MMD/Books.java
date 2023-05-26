package MMD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Books {
	public String dburl = "jdbc:mysql://localhost:3306/BookingSalon";
	public String dbuname = "root";
	public String dbpassword = "ranjith";
	public String dbdriver = "com.mysql.jdbc.Driver";

	public void loadDriver(String dbdriver) {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dburl, dbuname, dbpassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public String insert(Book book) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		String result = "Booking SucessFully";
		String sql = "insert into BookingSalon.Booking"+"(username,mobilenumber,email,location,gender,servicetype,timingslot)"+ "values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, book.getCname());
			ps.setString(2, book.getContact());
			ps.setString(3, book.getEmail());
            ps.setString(4, book.getLocation());
            ps.setString(5, book.getGender());
            ps.setString(6, book.getServicetype());
            ps.setString(7, book.getTimingslot());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result = "Booking Failed";
		}
		return result;
		
	}
}
	