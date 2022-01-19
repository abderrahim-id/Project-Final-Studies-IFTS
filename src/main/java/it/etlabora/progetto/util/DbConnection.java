package it.etlabora.progetto.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	// com.mysql.jdbc.Driver
	//public static final String DB_DRIVER = "org.sqlite.JDBC"; // per sqlite.
	public static final String DB_NAME = "jdbc:mysql://localhost:3306/ProgettoBiblioteca";
	//public static final String DB_NAME = "jdbc:sqlite:C:\\path\\to\\file.db"; // per sqlite.
	public static final String DB_USERNAME = "root";
	public static final String DB_PASSWORD = "root";

	public static Connection getConnection() throws Exception {
		Connection conn = null;
		Class.forName(DB_DRIVER);

		conn = DriverManager.getConnection(DB_NAME, DB_USERNAME, DB_PASSWORD);
		return conn;
	}
}