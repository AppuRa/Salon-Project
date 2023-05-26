package MMD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	public String dburl = "jdbc:mysql://localhost:3306/Salon";
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

	public String insert(Register register) {
		loadDriver(dbdriver);
		Connection con = getConnection();
		String result = "Login Successfully";
		String sql = "insert into Salon.Login values(?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, register.getUname());
			ps.setString(2, register.getPassword());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result = "Admin Login Failed";
		}
		return result;
		
	}
}
	
	
	
	

