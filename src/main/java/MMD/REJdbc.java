package MMD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class REJdbc {
	public String dburl = "jdbc:mysql://localhost:3306/Feedback";
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

	public String insert(Re re) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		String result = "Login Successfully";
		String sql = "insert into Feedback.Inform "+"(yourname,email,message)"+"values(?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, re.getYourname());
			ps.setString(2, re.getEmail());
			ps.setString(2, re.getMessage());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = "Admin Login Failed";
		}
		return result;
		
	}
}
	
	
	


