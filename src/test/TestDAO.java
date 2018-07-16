package test;

import java.sql.*;
import java.text.*;
import java.util.*;
import domain.*;
import pool.DBConstant;

public class TestDAO {
	public static TestDAO instance = new TestDAO();
	public static TestDAO getInstance() {return instance;}
	Connection conn;
	Statement stmt;
	private TestDAO() {
		try {
			Class.forName(DBConstant.ORACLE_DRIVER);
			conn = DriverManager.getConnection(DBConstant.CONNECTION_URL, DBConstant.USER_NAME, DBConstant.PASSWORD);
			stmt = conn.createStatement();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public List<String> getSnn(){
		
			List<String> list = new ArrayList<>();
			try {
				ResultSet rs = stmt.executeQuery("SELECT SNN FROM MEMBER");
				if(rs.next()) {
					 list.add(rs.getString("SSN")); 
				}
				System.out.println(list);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
		
	return list;					
	}
}


