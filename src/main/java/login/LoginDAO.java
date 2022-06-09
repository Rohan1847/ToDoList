package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDAO {
	private String url = "jdbc:mysql://localhost:3306/subhadeep";
	private String username = "root";
	private String password = "Rohan@123";
	private String driver = "com.mysql.cj.jdbc.Driver";
	public void loadDriver(String driver)
	{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		Connection con=null;
		try {
			con = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	public ResultSet getInfo(String email,String pass)
	{
		loadDriver(driver);
		Connection con = getConnection();
		ResultSet rs = null;
		String query = "select * from userinfo where userinfo.email = ? and userinfo.password = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
