package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static String url;
	private static String user;
	private static String password;
	
	static void setUrl(String url) {
		DBUtil.url = url;
	}

	static void setUser(String user) {
		DBUtil.user = user;
	}

	static void setPassword(String password) {
		DBUtil.password = password;
	}
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
