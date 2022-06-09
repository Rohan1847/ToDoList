package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {
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
	public boolean insert(User user)
	{
		loadDriver(driver);
		boolean res = true;
		Connection con = getConnection();
		String query = "insert into userinfo values(?,?,?);";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getUname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPass());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			res =false;
		}

		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
}
