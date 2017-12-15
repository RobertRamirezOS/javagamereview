package com.gamereview.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

// https://stackoverflow.com/questions/4393385/setting-up-an-embedded-derby-database-in-a-standalone-java-application
public class ConnectionDerby {

	private Connection conn = null;
	private Statement sttm = null;

	public Connection createTable(String query) {
		try {
			// Obtenemos el Driver de Derby
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			conn = DriverManager.getConnection("jdbc:derby:sample;create=true");
			if (conn != null) {
				try {
					PreparedStatement pstm = conn.prepareStatement(query);
					pstm.execute();
					pstm.close();
					System.out.println(query);
				} catch (SQLException ex) {
					System.out.println(ex.getMessage());
				}
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	public Connection updateQuery(String query, List<Object> params) {
		try {
			conn = getConnection();
			if (conn != null) {
				try {
					PreparedStatement pstm = conn.prepareStatement(query);
					for (int i=0;i<params.size();i++) {
						pstm.setObject(i+1, params.get(i)); 
					}
					pstm.execute();
					pstm.close();
				} catch (SQLException ex) {
					ex.printStackTrace(System.err);
				}
			}

		} catch (Exception e) {
			e.printStackTrace(System.err);
		} 
		return conn;
	}

	private Connection getConnection() {
		try {
			if (conn!=null) {return conn;}
			
			// Obtenemos el Driver de Derby
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			// Obtenemos la Conexión
			conn = DriverManager.getConnection("jdbc:derby:sample");
			if (conn != null) {
				System.out.println("No connection established.");
			}
		} catch (SQLException e) {
			
			// *************PRUEBAS*****************
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
			
			
		}
		return conn;
	}


	public ResultSet getData(String sql) {
		ResultSet rs = null;
		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			conn = getConnection();
			sttm = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			// String sqlcad = "Select nombre, m2xgal, pregal, precub, descripcion from
			// primer";
			rs = sttm.executeQuery(sql);
			return rs;
		} catch (Exception e) {
			System.out.println("Error= " + e.getMessage());
			return rs;
		}
	}
}