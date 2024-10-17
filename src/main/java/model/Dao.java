package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Dao {
	String url = "jdbc:mysql://localhost:3306/myBoard";
	String id = "root";
	String pass = "qwer1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConn() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,id,pass);
			System.out.println("DataBase Access Successed");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void joinUser(User user) {
		try {
			//			
			String sql = "INSERT INTO User VALUES(?,?,?,?,?,?,?,?)";
			getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPass());
			pstmt.setString(3, user.getTel());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getLastname());
			pstmt.setString(6, user.getFirstname());
			pstmt.setDate(7, Date.valueOf(user.getBirthday()));
			pstmt.setString(8, user.getGender());
			pstmt.executeUpdate();
			
			conn.close();
			System.out.println("joinUser Method Executed..");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Boolean loginUser(String id,String pass) {
		try {
			String sql = "SELECT id,pass FROM user WHERE id = ?";
			getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("id = ["+id+"]");
			System.out.println("pass = ["+pass+"]");
			if(rs.next()) { 
				if (id.equals(rs.getString("id")) && pass.equals(rs.getString("pass")) ) {
					System.out.println(id);
					System.out.println(rs.getString("id"));
					conn.close();
					return true;
				}
			} else {
				conn.close();
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	// 아이디로 WHERE id = "somthing" 이 somthing 이 없으면 아이디 확인하라는 멘트 보내야 할거고
	// 있으면 비밀번호 체킹하는 로직 있어야될거고
	
	
	
	
}
